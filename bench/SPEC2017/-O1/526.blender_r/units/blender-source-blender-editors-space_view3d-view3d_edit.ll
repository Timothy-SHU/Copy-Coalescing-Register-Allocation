; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_edit.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.ObjectTfmProtectedChannels = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ViewOpsData = type { ptr, ptr, ptr, ptr, ptr, double, [4 x float], [4 x float], [3 x float], [3 x float], float, float, float, float, float, i8, float, [3 x float], [3 x float], i8, i32, i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.anon = type { ptr, i32, float }
%struct.anon.0 = type { ptr, i32, float }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@viewrotate_modal_keymap.modal_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem { i32 2, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.4 }, %struct.EnumPropertyItem { i32 3, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.4 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr null }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"AXIS_SNAP_ENABLE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Enable Axis Snap\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"AXIS_SNAP_DISABLE\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Disable Axis Snap\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SWITCH_TO_ZOOM\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Switch to Zoom\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SWITCH_TO_MOVE\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Switch to Move\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"View3D Rotate Modal\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_rotate\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Rotate View\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Rotate the view\00", align 1
@__const.view3d_ndof_fly.view_direction = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"NDOF Orbit View\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Orbit the view using the 3D mouse\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_ndof_orbit\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"NDOF Orbit View with Zoom\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Orbit and zoom the view using the 3D mouse\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_ndof_orbit_zoom\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"NDOF Pan View\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Pan the view with the 3D mouse\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_ndof_pan\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"NDOF Move View\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Pan and rotate the view with the 3D mouse\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_ndof_all\00", align 1
@viewmove_modal_keymap.modal_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.29, i32 0, ptr @.str.30, ptr null }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [17 x i8] c"SWITCH_TO_ROTATE\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Switch to Rotate\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"View3D Move Modal\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_move\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Move View\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Move the view\00", align 1
@viewzoom_modal_keymap.modal_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem { i32 6, ptr @.str.29, i32 0, ptr @.str.30, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr null }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [18 x i8] c"View3D Zoom Modal\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_zoom\00", align 1
@viewdolly_modal_keymap.modal_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.4 }, %struct.EnumPropertyItem { i32 6, ptr @.str.29, i32 0, ptr @.str.30, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr null }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [19 x i8] c"View3D Dolly Modal\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"VIEW3D_OT_dolly\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Zoom View\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"Zoom in/out in the view\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"Zoom Position X\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Zoom Position Y\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Dolly View\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Dolly in/out in the view\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"View all objects in scene\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_view_all\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"use_all_regions\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"All Regions\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"View selected for all regions\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"Move the view to the selection center\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_view_selected\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"View Lock Clear\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"Clear all view locking\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_view_lock_clear\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"View Lock to Active\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"Lock the view to the active object/bone\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"VIEW3D_OT_view_lock_to_active\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"Center View to Cursor\00", align 1
@.str.67 = private unnamed_addr constant [64 x i8] c"Center the view so that the cursor is in the middle of the view\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_view_center_cursor\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Center View to Mouse\00", align 1
@.str.70 = private unnamed_addr constant [63 x i8] c"Center the view to the Z-depth position under the mouse cursor\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_view_center_pick\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"View Camera Center\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"Center the camera view\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_view_center_camera\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"View Lock Center\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Center the view lock offset\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_view_center_lock\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"Set Render Border\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"Set the boundaries of the border render and enable border render\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_render_border\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"camera_only\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"Camera Only\00", align 1
@.str.83 = private unnamed_addr constant [56 x i8] c"Set render border for camera view and final render only\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"Clear Render Border\00", align 1
@.str.85 = private unnamed_addr constant [68 x i8] c"Clear the boundaries of the border render and disable border render\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"VIEW3D_OT_clear_render_border\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"Zoom to Border\00", align 1
@.str.88 = private unnamed_addr constant [63 x i8] c"Zoom in the view to the nearest object contained in the border\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_zoom_border\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"Zoom Camera 1:1\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"Match the camera to 1:1 to the render output\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_zoom_camera_1_to_1\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"View Numpad\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Use a preset viewpoint\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_viewnumpad\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_view_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.169, i32 6, ptr @.str.170, ptr @.str.171 }, %struct.EnumPropertyItem { i32 4, ptr @.str.172, i32 4, ptr @.str.173, ptr @.str.174 }, %struct.EnumPropertyItem { i32 6, ptr @.str.175, i32 5, ptr @.str.176, ptr @.str.177 }, %struct.EnumPropertyItem { i32 5, ptr @.str.178, i32 7, ptr @.str.179, ptr @.str.180 }, %struct.EnumPropertyItem { i32 1, ptr @.str.181, i32 0, ptr @.str.182, ptr @.str.183 }, %struct.EnumPropertyItem { i32 2, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.186 }, %struct.EnumPropertyItem { i32 8, ptr @.str.187, i32 168, ptr @.str.188, ptr @.str.189 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.97 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Preset viewpoint to use\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"align_active\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Align Active\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"Align to the active object's axis\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"View Orbit\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"Orbit the view\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_view_orbit\00", align 1
@prop_view_orbit_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.190, i32 0, ptr @.str.191, ptr @.str.192 }, %struct.EnumPropertyItem { i32 2, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.195 }, %struct.EnumPropertyItem { i32 4, ptr @.str.196, i32 0, ptr @.str.197, ptr @.str.198 }, %struct.EnumPropertyItem { i32 3, ptr @.str.199, i32 0, ptr @.str.200, ptr @.str.201 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.105 = private unnamed_addr constant [6 x i8] c"Orbit\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"Direction of View Orbit\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"View Roll\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"Roll the view\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_view_roll\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"Roll\00", align 1
@prop_view_roll_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.202, i32 0, ptr @.str.203, ptr @.str.204 }, %struct.EnumPropertyItem { i32 1, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.207 }, %struct.EnumPropertyItem { i32 2, ptr @.str.208, i32 0, ptr @.str.209, ptr @.str.210 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.112 = private unnamed_addr constant [18 x i8] c"Roll Angle Source\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"How roll angle is calculated\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"View Pan\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Pan the view\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_view_pan\00", align 1
@prop_view_pan_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 5, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.213 }, %struct.EnumPropertyItem { i32 6, ptr @.str.214, i32 0, ptr @.str.215, ptr @.str.216 }, %struct.EnumPropertyItem { i32 8, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.219 }, %struct.EnumPropertyItem { i32 7, ptr @.str.220, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.117 = private unnamed_addr constant [4 x i8] c"Pan\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"Direction of View Pan\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"View Persp/Ortho\00", align 1
@.str.120 = private unnamed_addr constant [65 x i8] c"Switch the current view from perspective/orthographic projection\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"VIEW3D_OT_view_persportho\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"View Navigation\00", align 1
@.str.123 = private unnamed_addr constant [78 x i8] c"Interactively navigate around the scene (uses the mode (walk/fly) preference)\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_navigate\00", align 1
@.str.125 = private unnamed_addr constant [45 x i8] c"Add Background Image (Ctrl for Empty Object)\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"Add a new background image\00", align 1
@.str.127 = private unnamed_addr constant [31 x i8] c"VIEW3D_OT_background_image_add\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"Image name to assign\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"Filepath\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"Path to image file\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"Remove Background Image\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"Remove a background image from the 3D view\00", align 1
@.str.138 = private unnamed_addr constant [34 x i8] c"VIEW3D_OT_background_image_remove\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"Background image index to remove\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"Clipping Border\00", align 1
@.str.143 = private unnamed_addr constant [29 x i8] c"Set the view clipping border\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_clip_border\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"Set 3D Cursor\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"Set the location of the 3D cursor\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"VIEW3D_OT_cursor3d\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"3D Manipulator\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"Manipulate selected item by axis\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_manipulator\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"Enable 3D Manipulator\00", align 1
@.str.152 = private unnamed_addr constant [41 x i8] c"Enable the transform manipulator for use\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"VIEW3D_OT_enable_manipulator\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"Translate\00", align 1
@.str.156 = private unnamed_addr constant [33 x i8] c"Enable the translate manipulator\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"Enable the rotate manipulator\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"Enable the scale manipulator\00", align 1
@__const.ED_view3d_offset_distance.pos = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@__const.ED_view3d_offset_distance.dir = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.163 = private unnamed_addr constant [17 x i8] c"Background Image\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.164 = private unnamed_addr constant [7 x i8] c"clipbb\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.165 = private unnamed_addr constant [13 x i8] c"viewops data\00", align 1
@view3d_orbit_calc_center.lastofs = internal global [3 x float] zeroinitializer, align 4
@__const.view3d_ndof_orbit.xvec = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@.str.166 = private unnamed_addr constant [22 x i8] c"View offset is locked\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Depth too large\00", align 1
@viewnumpad_exec.perspo = internal unnamed_addr global i32 1, align 4
@.str.169 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c"View From the Left\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"View From the Right\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"BOTTOM\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"View From the Bottom\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"View From the Top\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"FRONT\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"View From the Front\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.186 = private unnamed_addr constant [19 x i8] c"View From the Back\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.189 = private unnamed_addr constant [28 x i8] c"View From the Active Camera\00", align 1
@__const.vieworbit_exec.zvec = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.190 = private unnamed_addr constant [10 x i8] c"ORBITLEFT\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"Orbit Left\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"Orbit the view around to the Left\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"ORBITRIGHT\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"Orbit Right\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c"Orbit the view around to the Right\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c"ORBITUP\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"Orbit Up\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"Orbit the view Up\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"ORBITDOWN\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"Orbit Down\00", align 1
@.str.201 = private unnamed_addr constant [20 x i8] c"Orbit the view Down\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"ROLLANGLE\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"Roll Angle\00", align 1
@.str.204 = private unnamed_addr constant [35 x i8] c"Roll the view using an angle value\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"ROLLLEFT\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"Roll Left\00", align 1
@.str.207 = private unnamed_addr constant [33 x i8] c"Roll the view around to the Left\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"ROLLTRIGHT\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"Roll Right\00", align 1
@.str.210 = private unnamed_addr constant [34 x i8] c"Roll the view around to the Right\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"PANLEFT\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"Pan Left\00", align 1
@.str.213 = private unnamed_addr constant [25 x i8] c"Pan the view to the Left\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"PANRIGHT\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"Pan Right\00", align 1
@.str.216 = private unnamed_addr constant [26 x i8] c"Pan the view to the Right\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"PANUP\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"Pan Up\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"Pan the view Up\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"PANDOWN\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"Pan Down\00", align 1
@.str.222 = private unnamed_addr constant [18 x i8] c"Pan the view Down\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"VIEW3D_OT_fly\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_walk\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_view3d_offset_lock_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 25
  %8 = load i16, ptr %7, align 2, !tbaa !41
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %10, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %6 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_view3d_camera_lock_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %12 = load i16, ptr %11, align 2, !tbaa !53
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 2
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %10, %6, %2
  %21 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %2 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_camera_lock_init_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %16 = load i16, ptr %15, align 2, !tbaa !53
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %28 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %26, ptr noundef nonnull %27, float noundef 1.000000e+00)
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  store float %28, ptr %29, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %25, %23
  %31 = load ptr, ptr %7, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  %35 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %35) #11
  call void @normalize_m3(ptr noundef nonnull %4) #11
  %36 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !55
  %38 = fneg float %37
  store float %38, ptr %32, align 4, !tbaa !55
  %39 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !55
  %41 = fneg float %40
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 1
  store float %41, ptr %42, align 4, !tbaa !55
  %43 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !55
  %45 = fneg float %44
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 2
  store float %45, ptr %46, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %47 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  call void @mat3_to_quat(ptr noundef nonnull %33, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %48 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %48, align 4, !tbaa !55
  %49 = getelementptr inbounds float, ptr %6, i64 2
  %50 = load float, ptr %34, align 4, !tbaa !55
  %51 = fneg float %50
  store float %51, ptr %49, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %52 = load float, ptr %6, align 4, !tbaa !55
  %53 = load float, ptr %32, align 4, !tbaa !55
  %54 = fsub float %53, %52
  store float %54, ptr %32, align 4, !tbaa !55
  %55 = load float, ptr %48, align 4, !tbaa !55
  %56 = load float, ptr %42, align 4, !tbaa !55
  %57 = fsub float %56, %55
  store float %57, ptr %42, align 4, !tbaa !55
  %58 = load float, ptr %49, align 4, !tbaa !55
  %59 = load float, ptr %46, align 4, !tbaa !55
  %60 = fsub float %59, %58
  store float %60, ptr %46, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %61

61:                                               ; preds = %14, %10, %3, %30, %19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @ED_view3d_offset_distance(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_view3d_offset_distance.pos, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_view3d_offset_distance.dir, i64 16, i1 false)
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %4) #11
  %6 = load float, ptr %1, align 4, !tbaa !55
  %7 = load float, ptr %4, align 16, !tbaa !55
  %8 = fadd float %6, %7
  store float %8, ptr %4, align 16, !tbaa !55
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !55
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = fadd float %10, %12
  store float %13, ptr %11, align 4, !tbaa !55
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !55
  %16 = getelementptr inbounds float, ptr %4, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !55
  %18 = fadd float %15, %17
  store float %18, ptr %16, align 8, !tbaa !55
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %5) #11
  %19 = load float, ptr %5, align 16, !tbaa !55
  %20 = getelementptr inbounds float, ptr %5, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !55
  %22 = fmul float %21, %21
  %23 = call float @llvm.fmuladd.f32(float %19, float %19, float %22)
  %24 = getelementptr inbounds float, ptr %5, i64 2
  %25 = load float, ptr %24, align 8, !tbaa !55
  %26 = call float @llvm.fmuladd.f32(float %25, float %25, float %23)
  %27 = fcmp ogt float %26, 0x38AA95A5C0000000
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = call float @sqrtf(float noundef %26) #11
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %5, align 16, !tbaa !55
  %32 = fmul float %31, %30
  store float %32, ptr %5, align 16, !tbaa !55
  %33 = load float, ptr %20, align 4, !tbaa !55
  %34 = fmul float %30, %33
  store float %34, ptr %20, align 4, !tbaa !55
  %35 = load float, ptr %24, align 8, !tbaa !55
  %36 = fmul float %30, %35
  br label %38

37:                                               ; preds = %3
  store float 0.000000e+00, ptr %5, align 16, !tbaa !55
  store float 0.000000e+00, ptr %20, align 4, !tbaa !55
  br label %38

38:                                               ; preds = %28, %37
  %39 = phi float [ 0.000000e+00, %37 ], [ %36, %28 ]
  store float %39, ptr %24, align 8, !tbaa !55
  %40 = load float, ptr %4, align 16, !tbaa !55
  %41 = load float, ptr %5, align 16, !tbaa !55
  %42 = load float, ptr %11, align 4, !tbaa !55
  %43 = load float, ptr %20, align 4, !tbaa !55
  %44 = fmul float %42, %43
  %45 = call float @llvm.fmuladd.f32(float %40, float %41, float %44)
  %46 = load float, ptr %16, align 8, !tbaa !55
  %47 = call float @llvm.fmuladd.f32(float %46, float %39, float %45)
  %48 = fcmp olt float %47, 0x3E80000000000000
  %49 = fcmp une float %2, 0.000000e+00
  %50 = and i1 %49, %48
  %51 = select i1 %50, float %2, float %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret float %51
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.CameraParams, align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @ED_view3d_from_m4(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %8 = icmp eq ptr %4, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #11
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #11
  call void @BKE_camera_params_from_object(ptr noundef nonnull %6, ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !56
  store float %11, ptr %4, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #11
  br label %12

12:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_camera_lock_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_lock_sync(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.ObjectTfmProtectedChannels, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %130, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %23 = load i16, ptr %22, align 2, !tbaa !53
  %24 = and i16 %23, 32
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %130, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = icmp eq i8 %28, 2
  br i1 %29, label %30, label %130

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #11
  %31 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %32 = and i32 %31, 524288
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %90

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = icmp eq ptr %36, null
  br i1 %37, label %90, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  br label %39

39:                                               ; preds = %39, %38
  %40 = phi ptr [ %36, %38 ], [ %42, %39 ]
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39, !llvm.loop !63

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  %48 = load float, ptr %47, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %49 = load float, ptr %46, align 4, !tbaa !55
  %50 = fneg float %49
  store float %50, ptr %5, align 16, !tbaa !55
  %51 = getelementptr inbounds float, ptr %5, i64 1
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !55
  store float %53, ptr %51, align 4, !tbaa !55
  %54 = getelementptr inbounds float, ptr %5, i64 2
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !55
  store float %56, ptr %54, align 8, !tbaa !55
  %57 = getelementptr inbounds float, ptr %5, i64 3
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !55
  store float %59, ptr %57, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %60 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !55
  %61 = getelementptr inbounds float, ptr %6, i64 2
  store float %48, ptr %61, align 4, !tbaa !55
  call void @quat_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %5) #11
  call void @mul_mat3_m4_v3(ptr noundef nonnull %11, ptr noundef nonnull %6) #11
  %62 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %63 = load float, ptr %6, align 4, !tbaa !55
  %64 = load float, ptr %45, align 4, !tbaa !55
  %65 = fsub float %63, %64
  store float %65, ptr %62, align 16, !tbaa !55
  %66 = load float, ptr %60, align 4, !tbaa !55
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !55
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  store float %69, ptr %70, align 4, !tbaa !55
  %71 = load float, ptr %61, align 4, !tbaa !55
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !55
  %74 = fsub float %71, %73
  %75 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  store float %74, ptr %75, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %76 = load ptr, ptr %14, align 8, !tbaa !47
  %77 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %77) #11
  %78 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #11
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #11
  %79 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %79) #11
  call void @BKE_object_tfm_protected_backup(ptr noundef nonnull %40, ptr noundef nonnull %8) #11
  call void @BKE_object_apply_mat4(ptr noundef nonnull %40, ptr noundef nonnull %13, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %80 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 56
  %81 = load i16, ptr %80, align 2, !tbaa !66
  call void @BKE_object_tfm_protected_restore(ptr noundef nonnull %40, ptr noundef nonnull %8, i16 noundef signext %81) #11
  %82 = load ptr, ptr %14, align 8, !tbaa !67
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %44, %84
  %85 = phi ptr [ %87, %84 ], [ %82, %44 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %85, i16 noundef signext 1) #11
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef nonnull %85) #11
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !67
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %84, !llvm.loop !68

89:                                               ; preds = %84, %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %129

90:                                               ; preds = %34, %30
  call void @BKE_object_tfm_protected_backup(ptr noundef nonnull %15, ptr noundef nonnull %8) #11
  %91 = load ptr, ptr %14, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  %95 = load float, ptr %94, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %96 = load float, ptr %93, align 4, !tbaa !55
  %97 = fneg float %96
  store float %97, ptr %3, align 16, !tbaa !55
  %98 = getelementptr inbounds float, ptr %3, i64 1
  %99 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !55
  store float %100, ptr %98, align 4, !tbaa !55
  %101 = getelementptr inbounds float, ptr %3, i64 2
  %102 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !55
  store float %103, ptr %101, align 8, !tbaa !55
  %104 = getelementptr inbounds float, ptr %3, i64 3
  %105 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17, i64 3
  %106 = load float, ptr %105, align 4, !tbaa !55
  store float %106, ptr %104, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  %107 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %107, align 4, !tbaa !55
  %108 = getelementptr inbounds float, ptr %4, i64 2
  store float %95, ptr %108, align 4, !tbaa !55
  call void @quat_to_mat4(ptr noundef nonnull %7, ptr noundef nonnull %3) #11
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  %109 = getelementptr inbounds [4 x float], ptr %7, i64 3
  %110 = load float, ptr %4, align 4, !tbaa !55
  %111 = load float, ptr %92, align 4, !tbaa !55
  %112 = fsub float %110, %111
  store float %112, ptr %109, align 16, !tbaa !55
  %113 = load float, ptr %107, align 4, !tbaa !55
  %114 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !55
  %116 = fsub float %113, %115
  %117 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 1
  store float %116, ptr %117, align 4, !tbaa !55
  %118 = load float, ptr %108, align 4, !tbaa !55
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !55
  %121 = fsub float %118, %120
  %122 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 2
  store float %121, ptr %122, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @BKE_object_apply_mat4(ptr noundef %91, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  %123 = load ptr, ptr %14, align 8, !tbaa !47
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 56
  %125 = load i16, ptr %124, align 2, !tbaa !66
  %126 = or i16 %125, 448
  call void @BKE_object_tfm_protected_restore(ptr noundef %123, ptr noundef nonnull %8, i16 noundef signext %126) #11
  %127 = load ptr, ptr %14, align 8, !tbaa !47
  call void @DAG_id_tag_update(ptr noundef %127, i16 noundef signext 1) #11
  %128 = load ptr, ptr %14, align 8, !tbaa !47
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef %128) #11
  br label %129

129:                                              ; preds = %90, %89
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #11
  br label %130

130:                                              ; preds = %21, %17, %2, %26, %129
  %131 = phi i8 [ 1, %129 ], [ 0, %26 ], [ 0, %2 ], [ 0, %17 ], [ 0, %21 ]
  ret i8 %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_to_m4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %7 = load float, ptr %2, align 4, !tbaa !55
  %8 = fneg float %7
  store float %8, ptr %5, align 16, !tbaa !55
  %9 = getelementptr inbounds float, ptr %5, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !55
  store float %11, ptr %9, align 4, !tbaa !55
  %12 = getelementptr inbounds float, ptr %5, i64 2
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !55
  store float %14, ptr %12, align 8, !tbaa !55
  %15 = getelementptr inbounds float, ptr %5, i64 3
  %16 = getelementptr inbounds float, ptr %2, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !55
  store float %17, ptr %15, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %18 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds float, ptr %6, i64 2
  store float %3, ptr %19, align 4, !tbaa !55
  call void @quat_to_mat4(ptr noundef %0, ptr noundef nonnull %5) #11
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %6) #11
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %21 = load float, ptr %6, align 4, !tbaa !55
  %22 = load float, ptr %1, align 4, !tbaa !55
  %23 = fsub float %21, %22
  store float %23, ptr %20, align 4, !tbaa !55
  %24 = load float, ptr %18, align 4, !tbaa !55
  %25 = getelementptr inbounds float, ptr %1, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !55
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float %27, ptr %28, align 4, !tbaa !55
  %29 = load float, ptr %19, align 4, !tbaa !55
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !55
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %32, ptr %33, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_object_tfm_protected_backup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare void @BKE_object_tfm_protected_restore(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_to_object(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %8 = load float, ptr %2, align 4, !tbaa !55
  %9 = fneg float %8
  store float %9, ptr %5, align 16, !tbaa !55
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !55
  store float %12, ptr %10, align 4, !tbaa !55
  %13 = getelementptr inbounds float, ptr %5, i64 2
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !55
  store float %15, ptr %13, align 8, !tbaa !55
  %16 = getelementptr inbounds float, ptr %5, i64 3
  %17 = getelementptr inbounds float, ptr %2, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !55
  store float %18, ptr %16, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %19 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds float, ptr %6, i64 2
  store float %3, ptr %20, align 4, !tbaa !55
  call void @quat_to_mat4(ptr noundef nonnull %7, ptr noundef nonnull %5) #11
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #11
  %21 = getelementptr inbounds [4 x float], ptr %7, i64 3
  %22 = load float, ptr %6, align 4, !tbaa !55
  %23 = load float, ptr %1, align 4, !tbaa !55
  %24 = fsub float %22, %23
  store float %24, ptr %21, align 16, !tbaa !55
  %25 = load float, ptr %19, align 4, !tbaa !55
  %26 = getelementptr inbounds float, ptr %1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !55
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 1
  store float %28, ptr %29, align 4, !tbaa !55
  %30 = load float, ptr %20, align 4, !tbaa !55
  %31 = getelementptr inbounds float, ptr %1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !55
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 2
  store float %33, ptr %34, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_autokey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %0, ptr noundef %1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, ptr noundef null) #11
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #11
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = sitofp i32 %14 to float
  %16 = call i32 @ANIM_apply_keyingset(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef %12, i16 noundef signext 0, float noundef %15) #11
  br label %17

17:                                               ; preds = %11, %9
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #11
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !69
  %23 = sitofp i32 %22 to float
  %24 = call i32 @ANIM_apply_keyingset(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef %20, i16 noundef signext 0, float noundef %23) #11
  br label %25

25:                                               ; preds = %19, %17
  call void @BLI_freelistN(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %26

26:                                               ; preds = %5, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %5 ]
  ret i8 %27
}

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #4

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_lock_autokey(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %15 = load i16, ptr %14, align 2, !tbaa !53
  %16 = and i16 %15, 32
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = tail call ptr @CTX_data_scene(ptr noundef %2) #11
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %25 = and i32 %24, 524288
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load ptr, ptr %6, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %32, !llvm.loop !87

37:                                               ; preds = %27, %22
  %38 = load ptr, ptr %6, align 8, !tbaa !47
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %38, %37 ], [ %33, %32 ]
  %41 = tail call zeroext i8 @ED_view3d_camera_autokey(ptr noundef %23, ptr noundef %40, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4), !range !88
  br label %42

42:                                               ; preds = %13, %9, %5, %18, %39
  %43 = phi i8 [ %41, %39 ], [ 0, %18 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ]
  ret i8 %43
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @view3d_boxview_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 18
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22, i64 1
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22, i64 2
  br label %13

13:                                               ; preds = %6, %40
  %14 = phi ptr [ %4, %6 ], [ %42, %40 ]
  %15 = phi i8 [ 0, %6 ], [ %41, %40 ]
  %16 = icmp eq ptr %14, %1
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !92
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 27
  %25 = load i8, ptr %24, align 1, !tbaa !93
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  %28 = load float, ptr %9, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 18
  store float %28, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 22
  %31 = load float, ptr %10, align 4, !tbaa !55
  store float %31, ptr %30, align 4, !tbaa !55
  %32 = load float, ptr %11, align 4, !tbaa !55
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 22, i64 1
  store float %32, ptr %33, align 4, !tbaa !55
  %34 = load float, ptr %12, align 4, !tbaa !55
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 22, i64 2
  store float %34, ptr %35, align 4, !tbaa !55
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %14) #11
  %36 = load i8, ptr %24, align 1, !tbaa !93
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 1
  %39 = or i8 %38, %15
  br label %40

40:                                               ; preds = %21, %27, %13, %17
  %41 = phi i8 [ %15, %17 ], [ %15, %13 ], [ %39, %27 ], [ %15, %21 ]
  %42 = load ptr, ptr %14, align 8, !tbaa !67
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !94

44:                                               ; preds = %40
  %45 = icmp eq i8 %41, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  tail call fastcc void @view3d_boxview_clip(ptr noundef %0)
  br label %47

47:                                               ; preds = %2, %46, %44
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_boxview_clip(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [6 x [4 x float]], align 16
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %4 = tail call ptr %3(i64 noundef 104, ptr noundef nonnull @.str.164) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %91, %1
  %9 = phi float [ 0.000000e+00, %1 ], [ %92, %91 ]
  %10 = phi float [ 0.000000e+00, %1 ], [ %93, %91 ]
  %11 = phi float [ 0.000000e+00, %1 ], [ %94, %91 ]
  %12 = phi float [ 0.000000e+00, %1 ], [ %95, %91 ]
  %13 = phi float [ 0.000000e+00, %1 ], [ %96, %91 ]
  %14 = phi float [ 0.000000e+00, %1 ], [ %97, %91 ]
  %15 = fneg float %14
  %16 = fneg float %12
  %17 = fneg float %13
  br label %100

18:                                               ; preds = %1, %91
  %19 = phi ptr [ %98, %91 ], [ %6, %1 ]
  %20 = phi float [ %97, %91 ], [ 0.000000e+00, %1 ]
  %21 = phi float [ %96, %91 ], [ 0.000000e+00, %1 ]
  %22 = phi float [ %95, %91 ], [ 0.000000e+00, %1 ]
  %23 = phi float [ %94, %91 ], [ 0.000000e+00, %1 ]
  %24 = phi float [ %93, %91 ], [ 0.000000e+00, %1 ]
  %25 = phi float [ %92, %91 ], [ 0.000000e+00, %1 ]
  %26 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !92
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 27
  %33 = load i8, ptr %32, align 1, !tbaa !93
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %91, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 26
  %38 = load i8, ptr %37, align 2, !tbaa !95
  switch i8 %38, label %91 [
    i8 5, label %39
    i8 6, label %39
    i8 1, label %73
    i8 2, label %73
  ]

39:                                               ; preds = %36, %36
  %40 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 5
  %41 = load i16, ptr %40, align 8, !tbaa !96
  %42 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !97
  %44 = icmp sgt i16 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %47 = load float, ptr %46, align 8, !tbaa !54
  br label %55

48:                                               ; preds = %39
  %49 = sitofp i16 %41 to float
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %51 = load float, ptr %50, align 8, !tbaa !54
  %52 = fmul float %51, %49
  %53 = sitofp i16 %43 to float
  %54 = fdiv float %52, %53
  br label %55

55:                                               ; preds = %48, %45
  %56 = phi float [ %47, %45 ], [ %54, %48 ]
  br i1 %44, label %57, label %64

57:                                               ; preds = %55
  %58 = sitofp i16 %43 to float
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %60 = load float, ptr %59, align 8, !tbaa !54
  %61 = fmul float %60, %58
  %62 = sitofp i16 %41 to float
  %63 = fdiv float %61, %62
  br label %67

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %66 = load float, ptr %65, align 8, !tbaa !54
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi float [ %63, %57 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 22
  %70 = load float, ptr %69, align 4, !tbaa !55
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 22, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !55
  br label %91

73:                                               ; preds = %36, %36
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 22, i64 2
  %75 = load float, ptr %74, align 8, !tbaa !55
  %76 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 5
  %77 = load i16, ptr %76, align 8, !tbaa !96
  %78 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 6
  %79 = load i16, ptr %78, align 2, !tbaa !97
  %80 = icmp sgt i16 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = sitofp i16 %79 to float
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %84 = load float, ptr %83, align 8, !tbaa !54
  %85 = fmul float %84, %82
  %86 = sitofp i16 %77 to float
  %87 = fdiv float %85, %86
  br label %91

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 18
  %90 = load float, ptr %89, align 8, !tbaa !54
  br label %91

91:                                               ; preds = %29, %88, %81, %67, %36, %18
  %92 = phi float [ %25, %29 ], [ %25, %36 ], [ %25, %81 ], [ %25, %88 ], [ %70, %67 ], [ %25, %18 ]
  %93 = phi float [ %24, %29 ], [ %24, %36 ], [ %24, %81 ], [ %24, %88 ], [ %72, %67 ], [ %24, %18 ]
  %94 = phi float [ %23, %29 ], [ %23, %36 ], [ %75, %81 ], [ %75, %88 ], [ %23, %67 ], [ %23, %18 ]
  %95 = phi float [ %22, %29 ], [ %22, %36 ], [ %22, %81 ], [ %22, %88 ], [ %68, %67 ], [ %22, %18 ]
  %96 = phi float [ %21, %29 ], [ %21, %36 ], [ %87, %81 ], [ %90, %88 ], [ %21, %67 ], [ %21, %18 ]
  %97 = phi float [ %20, %29 ], [ %20, %36 ], [ %20, %81 ], [ %20, %88 ], [ %56, %67 ], [ %20, %18 ]
  %98 = load ptr, ptr %19, align 8, !tbaa !67
  %99 = icmp eq ptr %98, null
  br i1 %99, label %8, label %18, !llvm.loop !98

100:                                              ; preds = %8, %104
  %101 = phi i64 [ 0, %8 ], [ %119, %104 ]
  %102 = trunc i64 %101 to i32
  switch i32 %102, label %103 [
    i32 7, label %104
    i32 4, label %104
    i32 3, label %104
    i32 0, label %104
  ]

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %100, %100, %100, %100, %103
  %105 = phi float [ %14, %103 ], [ %15, %100 ], [ %15, %100 ], [ %15, %100 ], [ %15, %100 ]
  %106 = fsub float %105, %9
  %107 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 %101
  store float %106, ptr %107, align 4, !tbaa !55
  %108 = icmp ult i64 %101, 2
  %109 = and i64 %101, 6
  %110 = icmp eq i64 %109, 4
  %111 = or i1 %108, %110
  %112 = select i1 %111, float %16, float %12
  %113 = fsub float %112, %10
  %114 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 %101, i64 1
  store float %113, ptr %114, align 4, !tbaa !55
  %115 = icmp ugt i64 %101, 3
  %116 = select i1 %115, float %17, float %13
  %117 = fsub float %116, %11
  %118 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 %101, i64 2
  store float %117, ptr %118, align 4, !tbaa !55
  %119 = add nuw nsw i64 %101, 1
  %120 = icmp eq i64 %119, 8
  br i1 %120, label %121, label %100, !llvm.loop !99

121:                                              ; preds = %104
  %122 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 1
  %123 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 4
  %124 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull %122, ptr noundef nonnull %123) #11
  %125 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 1
  %126 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 2
  %127 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 5
  %128 = call float @normal_tri_v3(ptr noundef nonnull %125, ptr noundef nonnull %122, ptr noundef nonnull %126, ptr noundef nonnull %127) #11
  %129 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 2
  %130 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 3
  %131 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 6
  %132 = call float @normal_tri_v3(ptr noundef nonnull %129, ptr noundef nonnull %126, ptr noundef nonnull %130, ptr noundef nonnull %131) #11
  %133 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 3
  %134 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 7
  %135 = call float @normal_tri_v3(ptr noundef nonnull %133, ptr noundef nonnull %130, ptr noundef %4, ptr noundef nonnull %134) #11
  %136 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 4
  %137 = call float @normal_tri_v3(ptr noundef nonnull %136, ptr noundef nonnull %123, ptr noundef nonnull %127, ptr noundef nonnull %131) #11
  %138 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 5
  %139 = call float @normal_tri_v3(ptr noundef nonnull %138, ptr noundef %4, ptr noundef nonnull %126, ptr noundef nonnull %122) #11
  br label %143

140:                                              ; preds = %143
  %141 = load ptr, ptr %5, align 8, !tbaa !67
  %142 = icmp eq ptr %141, null
  br i1 %142, label %195, label %167

143:                                              ; preds = %121, %143
  %144 = phi i64 [ 0, %121 ], [ %165, %143 ]
  %145 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 %144
  %146 = trunc i64 %144 to i32
  %147 = urem i32 %146, 5
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 %148
  %150 = load float, ptr %145, align 16, !tbaa !55
  %151 = load float, ptr %149, align 4, !tbaa !55
  %152 = getelementptr inbounds float, ptr %145, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !55
  %154 = getelementptr inbounds float, ptr %149, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !55
  %156 = fmul float %153, %155
  %157 = call float @llvm.fmuladd.f32(float %150, float %151, float %156)
  %158 = getelementptr inbounds float, ptr %145, i64 2
  %159 = load float, ptr %158, align 8, !tbaa !55
  %160 = getelementptr inbounds float, ptr %149, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = call float @llvm.fmuladd.f32(float %159, float %161, float %157)
  %163 = fneg float %162
  %164 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 %144, i64 3
  store float %163, ptr %164, align 4, !tbaa !55
  %165 = add nuw nsw i64 %144, 1
  %166 = icmp eq i64 %165, 6
  br i1 %166, label %140, label %143, !llvm.loop !100

167:                                              ; preds = %140, %192
  %168 = phi ptr [ %193, %192 ], [ %141, %140 ]
  %169 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 8
  %170 = load i16, ptr %169, align 2, !tbaa !92
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 30
  %174 = load ptr, ptr %173, align 8, !tbaa !89
  %175 = getelementptr inbounds %struct.RegionView3D, ptr %174, i64 0, i32 27
  %176 = load i8, ptr %175, align 1, !tbaa !93
  %177 = and i8 %176, 4
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.RegionView3D, ptr %174, i64 0, i32 32
  %181 = load i16, ptr %180, align 2, !tbaa !101
  %182 = or i16 %181, 4
  store i16 %182, ptr %180, align 2, !tbaa !101
  %183 = getelementptr inbounds %struct.RegionView3D, ptr %174, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %183, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  %184 = getelementptr inbounds %struct.RegionView3D, ptr %174, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !102
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %179
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %188(ptr noundef nonnull %185) #11
  br label %189

189:                                              ; preds = %187, %179
  %190 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !67
  %191 = call ptr %190(ptr noundef %4) #11
  store ptr %191, ptr %184, align 8, !tbaa !102
  br label %192

192:                                              ; preds = %172, %189, %167
  %193 = load ptr, ptr %168, align 8, !tbaa !67
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %167, !llvm.loop !103

195:                                              ; preds = %192, %140
  %196 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %196(ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_quadview_update(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %7 = load i8, ptr %6, align 1, !tbaa !93
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = lshr i8 %7, 2
  %13 = and i8 %12, 1
  br label %20

14:                                               ; preds = %3
  %15 = and i32 %8, 6
  %16 = icmp eq i32 %15, 4
  %17 = and i8 %7, -7
  %18 = select i1 %16, i8 1, i8 %2
  %19 = select i1 %16, i8 %17, i8 %7
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i8 [ %13, %11 ], [ %18, %14 ]
  %22 = phi i8 [ 0, %11 ], [ %19, %14 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %20
  %25 = icmp ne i8 %21, 0
  %26 = and i8 %22, 4
  %27 = icmp eq i8 %26, 0
  %28 = and i1 %25, %27
  br label %29

29:                                               ; preds = %24, %44
  %30 = phi ptr [ %5, %24 ], [ %46, %44 ]
  %31 = phi ptr [ null, %24 ], [ %45, %44 ]
  %32 = phi ptr [ %1, %24 ], [ %48, %44 ]
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 9
  %34 = load i16, ptr %33, align 8, !tbaa !104
  %35 = icmp eq i16 %34, 8
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 30
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 27
  store i8 %22, ptr %39, align 1, !tbaa !93
  br i1 %28, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 32
  %42 = load i16, ptr %41, align 2, !tbaa !101
  %43 = and i16 %42, -5
  store i16 %43, ptr %41, align 2, !tbaa !101
  br label %44

44:                                               ; preds = %36, %40, %29
  %45 = phi ptr [ %31, %29 ], [ %32, %40 ], [ %32, %36 ]
  %46 = phi ptr [ %30, %29 ], [ %38, %40 ], [ %38, %36 ]
  %47 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !105
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %29, !llvm.loop !106

50:                                               ; preds = %44, %20
  %51 = phi ptr [ null, %20 ], [ %45, %44 ]
  %52 = phi ptr [ %5, %20 ], [ %46, %44 ]
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 27
  %54 = load i8, ptr %53, align 1, !tbaa !93
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = icmp eq ptr %51, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !107
  br label %62

62:                                               ; preds = %57, %59
  %63 = phi ptr [ %61, %59 ], [ %51, %57 ]
  tail call fastcc void @view3d_boxview_sync(ptr noundef %0, ptr noundef %63)
  br label %64

64:                                               ; preds = %62, %50
  %65 = and i8 %22, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %67, %94
  %72 = phi ptr [ %96, %94 ], [ %69, %67 ]
  %73 = phi i32 [ %95, %94 ], [ 0, %67 ]
  %74 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 9
  %75 = load i16, ptr %74, align 8, !tbaa !104
  %76 = icmp eq i16 %75, 8
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 30
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %79, i64 0, i32 27
  %81 = load i8, ptr %80, align 1, !tbaa !93
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %79, i64 0, i32 26
  %85 = load i8, ptr %84, align 2, !tbaa !95
  %86 = add i8 %85, -1
  %87 = icmp ult i8 %86, 6
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef %73) #11
  store i8 %89, ptr %84, align 2, !tbaa !95
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %79, i64 0, i32 25
  store i8 0, ptr %90, align 1, !tbaa !34
  %91 = tail call zeroext i8 @ED_view3d_lock(ptr noundef %79) #11
  br label %92

92:                                               ; preds = %83, %88, %77
  %93 = add nsw i32 %73, 1
  br label %94

94:                                               ; preds = %71, %92
  %95 = phi i32 [ %93, %92 ], [ %73, %71 ]
  %96 = load ptr, ptr %72, align 8, !tbaa !67
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %71, !llvm.loop !109

98:                                               ; preds = %94, %67, %64
  tail call void @ED_area_tag_redraw(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_boxview_sync(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 18
  %12 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1
  %13 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %14 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2
  %15 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 1
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 26
  br label %18

18:                                               ; preds = %10, %78
  %19 = phi ptr [ %8, %10 ], [ %80, %78 ]
  %20 = phi i16 [ 0, %10 ], [ %79, %78 ]
  %21 = icmp eq ptr %19, %1
  br i1 %21, label %78, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 27
  %30 = load i8, ptr %29, align 1, !tbaa !93
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %26
  %34 = load float, ptr %11, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 18
  store float %34, ptr %35, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %4, align 16
  store float 1.000000e+00, ptr %13, align 16
  store float 1.000000e+00, ptr %14, align 8
  store float 1.000000e+00, ptr %16, align 8
  %36 = load i8, ptr %17, align 2, !tbaa !95
  %37 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %36, ptr noundef nonnull %3) #11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %33
  call void @invert_qt(ptr noundef nonnull %3) #11
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %12) #11
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 26
  %41 = load i8, ptr %40, align 2, !tbaa !95
  %42 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %41, ptr noundef nonnull %3) #11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %39
  call void @invert_qt(ptr noundef nonnull %3) #11
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %14) #11
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %15) #11
  br label %45

45:                                               ; preds = %44, %70
  %46 = phi i64 [ 0, %44 ], [ %71, %70 ]
  %47 = getelementptr inbounds float, ptr %4, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !55
  %49 = call float @llvm.fabs.f32(float %48)
  %50 = fcmp ogt float %49, 5.000000e-01
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds float, ptr %12, i64 %46
  %53 = load float, ptr %52, align 4, !tbaa !55
  %54 = call float @llvm.fabs.f32(float %53)
  %55 = fcmp ogt float %54, 5.000000e-01
  br i1 %55, label %56, label %70

56:                                               ; preds = %51, %45
  %57 = getelementptr inbounds float, ptr %14, i64 %46
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = call float @llvm.fabs.f32(float %58)
  %60 = fcmp ogt float %59, 5.000000e-01
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds float, ptr %15, i64 %46
  %63 = load float, ptr %62, align 4, !tbaa !55
  %64 = call float @llvm.fabs.f32(float %63)
  %65 = fcmp ogt float %64, 5.000000e-01
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 %46
  %68 = load float, ptr %67, align 4, !tbaa !55
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 22, i64 %46
  store float %68, ptr %69, align 4, !tbaa !55
  br label %70

70:                                               ; preds = %66, %61, %51
  %71 = add nuw nsw i64 %46, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %45, !llvm.loop !110

73:                                               ; preds = %70, %33, %39
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %74 = load i8, ptr %29, align 1, !tbaa !93
  %75 = and i8 %74, 4
  %76 = zext nneg i8 %75 to i16
  %77 = or i16 %20, %76
  call void @ED_region_tag_redraw(ptr noundef nonnull %19) #11
  br label %78

78:                                               ; preds = %26, %73, %18, %22
  %79 = phi i16 [ %20, %22 ], [ %20, %18 ], [ %77, %73 ], [ %20, %26 ]
  %80 = load ptr, ptr %19, align 8, !tbaa !67
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %18, !llvm.loop !111

82:                                               ; preds = %78
  %83 = icmp eq i16 %79, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  call fastcc void @view3d_boxview_clip(ptr noundef %0)
  br label %85

85:                                               ; preds = %2, %84, %82
  ret void
}

declare zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef) local_unnamed_addr #4

declare zeroext i8 @ED_view3d_lock(ptr noundef) local_unnamed_addr #4

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @viewrotate_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.13) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @viewrotate_modal_keymap.modal_items) #11
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #11
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #11
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.14) #11
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_rotate(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewrotate_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewrotate_modal, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewrotate_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewrotate_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %8 = tail call ptr %7(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !124
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %10, ptr %8, align 8, !tbaa !126
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !129
  %13 = load ptr, ptr %8, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !131
  %17 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !132
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %21 = lshr i32 %20, 14
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = lshr i32 %20, 15
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %23, i8 noundef zeroext %26)
  %27 = load ptr, ptr %9, align 8, !tbaa !124
  %28 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !132
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %29, i64 0, i32 27
  %31 = load i8, ptr %30, align 1, !tbaa !93
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %171

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !129
  %40 = getelementptr inbounds %struct.ARegion, ptr %39, i64 0, i32 30
  %41 = load ptr, ptr %40, align 8, !tbaa !89
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 29
  %52 = load i16, ptr %51, align 2, !tbaa !53
  %53 = and i16 %52, 32
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 25
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %136, label %59

59:                                               ; preds = %55, %50, %46, %35
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 25
  %61 = load i8, ptr %60, align 1, !tbaa !34
  switch i8 %61, label %124 [
    i8 1, label %136
    i8 2, label %62
  ]

62:                                               ; preds = %59
  %63 = and i32 %42, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 35
  %67 = load i16, ptr %66, align 2, !tbaa !133
  %68 = add i16 %67, -1
  %69 = icmp ult i16 %68, 6
  br i1 %69, label %74, label %70

70:                                               ; preds = %65, %62
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 34
  %72 = load i16, ptr %71, align 4, !tbaa !134
  %73 = trunc i16 %72 to i8
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i8 [ %73, %70 ], [ 1, %65 ]
  br i1 %45, label %109, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 47
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 22
  %79 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %77, ptr noundef nonnull %78, float noundef 1.000000e+00)
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 18
  store float %79, ptr %80, align 8, !tbaa !54
  %81 = load ptr, ptr %43, align 8, !tbaa !47
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 17
  %83 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %83) #11
  call void @normalize_m3(ptr noundef nonnull %4) #11
  %84 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47, i64 3
  %85 = load float, ptr %84, align 4, !tbaa !55
  %86 = fneg float %85
  store float %86, ptr %78, align 4, !tbaa !55
  %87 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47, i64 3, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !55
  %89 = fneg float %88
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 22, i64 1
  store float %89, ptr %90, align 4, !tbaa !55
  %91 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47, i64 3, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !55
  %93 = fneg float %92
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 22, i64 2
  store float %93, ptr %94, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %95 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  call void @mat3_to_quat(ptr noundef nonnull %82, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %96 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %96, align 4, !tbaa !55
  %97 = getelementptr inbounds float, ptr %6, i64 2
  %98 = load float, ptr %80, align 4, !tbaa !55
  %99 = fneg float %98
  store float %99, ptr %97, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %100 = load float, ptr %6, align 4, !tbaa !55
  %101 = load float, ptr %78, align 4, !tbaa !55
  %102 = fsub float %101, %100
  store float %102, ptr %78, align 4, !tbaa !55
  %103 = load float, ptr %96, align 4, !tbaa !55
  %104 = load float, ptr %90, align 4, !tbaa !55
  %105 = fsub float %104, %103
  store float %105, ptr %90, align 4, !tbaa !55
  %106 = load float, ptr %97, align 4, !tbaa !55
  %107 = load float, ptr %94, align 4, !tbaa !55
  %108 = fsub float %107, %106
  store float %108, ptr %94, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %109

109:                                              ; preds = %76, %74
  %110 = load ptr, ptr %43, align 8, !tbaa !47
  %111 = icmp eq ptr %110, null
  br i1 %111, label %132, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !48
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 29
  %118 = load i16, ptr %117, align 2, !tbaa !53
  %119 = and i16 %118, 32
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %116
  %122 = load i8, ptr %60, align 1, !tbaa !34
  %123 = icmp eq i8 %122, 2
  br i1 %123, label %134, label %132

124:                                              ; preds = %59
  %125 = and i32 %42, 2048
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 26
  %129 = load i8, ptr %128, align 2, !tbaa !95
  %130 = add i8 %129, -1
  %131 = icmp ult i8 %130, 6
  br i1 %131, label %132, label %134

132:                                              ; preds = %127, %109, %112, %116, %121
  %133 = phi i8 [ %75, %121 ], [ %75, %116 ], [ %75, %112 ], [ %75, %109 ], [ 1, %127 ]
  store i8 %133, ptr %60, align 1, !tbaa !34
  br label %134

134:                                              ; preds = %132, %127, %124, %121
  %135 = load ptr, ptr %38, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %135) #11
  br label %136

136:                                              ; preds = %55, %59, %134
  %137 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %138 = load i16, ptr %137, align 8, !tbaa !135
  switch i16 %138, label %169 [
    i16 14, label %139
    i16 16, label %163
  ]

139:                                              ; preds = %136
  %140 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !137
  %141 = and i32 %140, 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %145 = load i32, ptr %144, align 4, !tbaa !138
  %146 = shl nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %148 = load i32, ptr %147, align 8, !tbaa !139
  %149 = sub nsw i32 %146, %148
  %150 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %151 = load i32, ptr %150, align 8, !tbaa !140
  %152 = shl nsw i32 %151, 1
  %153 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %154 = load i32, ptr %153, align 4, !tbaa !141
  %155 = sub nsw i32 %152, %154
  call fastcc void @viewrotate_apply(ptr noundef %27, i32 noundef %149, i32 noundef %155)
  br label %161

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %158 = load i32, ptr %157, align 8, !tbaa !139
  %159 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %160 = load i32, ptr %159, align 4, !tbaa !141
  call fastcc void @viewrotate_apply(ptr noundef %27, i32 noundef %158, i32 noundef %160)
  br label %161

161:                                              ; preds = %156, %143
  %162 = load ptr, ptr %28, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %162) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %171

163:                                              ; preds = %136
  %164 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %165 = load i32, ptr %164, align 8, !tbaa !139
  %166 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %167 = load i32, ptr %166, align 8, !tbaa !140
  call fastcc void @viewrotate_apply(ptr noundef %27, i32 noundef %165, i32 noundef %167)
  %168 = load ptr, ptr %28, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %168) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %171

169:                                              ; preds = %136
  %170 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %171

171:                                              ; preds = %169, %163, %161, %34
  %172 = phi i32 [ 8, %34 ], [ 4, %161 ], [ 4, %163 ], [ 1, %169 ]
  ret i32 %172
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewrotate_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !135
  switch i16 %7, label %20 [
    i16 4, label %29
    i16 20514, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !142
  switch i16 %10, label %29 [
    i16 1, label %11
    i16 2, label %12
    i16 3, label %14
    i16 4, label %16
    i16 5, label %18
  ]

11:                                               ; preds = %8
  br label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 15
  store i8 1, ptr %13, align 4, !tbaa !143
  br label %29

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 15
  store i8 0, ptr %15, align 4, !tbaa !143
  br label %29

16:                                               ; preds = %8
  %17 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.36, i16 noundef signext 0, ptr noundef null) #11
  br label %29

18:                                               ; preds = %8
  %19 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.32, i16 noundef signext 0, ptr noundef null) #11
  br label %29

20:                                               ; preds = %3
  %21 = sext i16 %7 to i32
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = icmp eq i16 %27, 2
  br label %29

29:                                               ; preds = %25, %3, %8, %18, %16, %14, %12, %11, %20
  %30 = phi i1 [ false, %8 ], [ false, %18 ], [ false, %16 ], [ true, %14 ], [ true, %12 ], [ false, %11 ], [ false, %20 ], [ true, %3 ], [ false, %25 ]
  %31 = phi i1 [ false, %8 ], [ true, %18 ], [ true, %16 ], [ false, %14 ], [ false, %12 ], [ true, %11 ], [ false, %20 ], [ false, %3 ], [ %28, %25 ]
  br i1 %30, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !138
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !140
  tail call fastcc void @viewrotate_apply(ptr noundef %5, i32 noundef %34, i32 noundef %36)
  br label %81

37:                                               ; preds = %29
  br i1 %31, label %38, label %81

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !131
  %41 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %79, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.View3D, ptr %40, i64 0, i32 29
  %52 = load i16, ptr %51, align 2, !tbaa !53
  %53 = and i16 %52, 32
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %42, i64 0, i32 25
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %61 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %62 = and i32 %61, 524288
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load ptr, ptr %43, align 8, !tbaa !47
  %66 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %69
  %70 = phi ptr [ %72, %69 ], [ %67, %64 ]
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %69, !llvm.loop !87

74:                                               ; preds = %64, %59
  %75 = load ptr, ptr %43, align 8, !tbaa !47
  br label %76

76:                                               ; preds = %69, %74
  %77 = phi ptr [ %75, %74 ], [ %70, %69 ]
  %78 = tail call zeroext i8 @ED_view3d_camera_autokey(ptr noundef %60, ptr noundef %77, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1), !range !88
  br label %79

79:                                               ; preds = %38, %46, %50, %55, %76
  %80 = load ptr, ptr %41, align 8, !tbaa !132
  tail call void @ED_view3d_depth_tag_update(ptr noundef %80) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %81

81:                                               ; preds = %32, %37, %79
  %82 = phi i32 [ 4, %79 ], [ 1, %37 ], [ 1, %32 ]
  ret i32 %82
}

declare i32 @ED_operator_region_view3d_active(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @viewrotate_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @view3d_ndof_fly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #2 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 25
  %21 = load i16, ptr %20, align 2, !tbaa !41
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %7, %19, %23
  %29 = phi i8 [ 0, %7 ], [ 1, %19 ], [ %27, %23 ]
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load float, ptr %0, align 4, !tbaa !55
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds float, ptr %0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !55
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds float, ptr %0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !55
  %41 = fcmp oeq float %40, 0.000000e+00
  br label %42

42:                                               ; preds = %38, %34, %31, %28
  %43 = phi i1 [ true, %28 ], [ false, %34 ], [ false, %31 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 27
  %45 = load i8, ptr %44, align 1, !tbaa !93
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !55
  %51 = fcmp oeq float %50, 0.000000e+00
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !55
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = fcmp oeq float %58, 0.000000e+00
  br label %60

60:                                               ; preds = %56, %52, %48, %42
  %61 = phi i1 [ true, %42 ], [ false, %52 ], [ false, %48 ], [ %59, %56 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %62) #11
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 38
  store float 0.000000e+00, ptr %63, align 8, !tbaa !145
  br i1 %43, label %138, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  store float 0.000000e+00, ptr %9, align 4, !tbaa !55
  %65 = getelementptr inbounds float, ptr %9, i64 1
  store float 0.000000e+00, ptr %65, align 4, !tbaa !55
  %66 = getelementptr inbounds float, ptr %9, i64 2
  store float 1.000000e+00, ptr %66, align 4, !tbaa !55
  call void @invert_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %62) #11
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 21
  %68 = load float, ptr %67, align 4, !tbaa !146
  %69 = fmul float %68, 6.000000e+02
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %71 = load i8, ptr %70, align 8, !tbaa !147
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = call float @ED_view3d_calc_zfac(ptr noundef %2, ptr noundef nonnull %9, ptr noundef null) #11
  %75 = fmul float %69, %74
  br label %76

76:                                               ; preds = %64, %73
  %77 = phi float [ %75, %73 ], [ %69, %64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %78 = icmp eq i8 %3, 0
  %79 = fmul float %77, 0x3FC99999A0000000
  %80 = select i1 %78, float %77, float %79
  call void @WM_event_ndof_pan_get(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 0) #11
  %81 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !148
  %83 = fmul float %80, %82
  %84 = load float, ptr %11, align 4, !tbaa !55
  %85 = fmul float %84, %83
  store float %85, ptr %11, align 4, !tbaa !55
  %86 = getelementptr inbounds float, ptr %11, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !55
  %88 = fmul float %83, %87
  store float %88, ptr %86, align 4, !tbaa !55
  %89 = getelementptr inbounds float, ptr %11, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !55
  %91 = fmul float %83, %90
  store float %91, ptr %89, align 4, !tbaa !55
  %92 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %76
  store float 0.000000e+00, ptr %86, align 4, !tbaa !55
  br label %96

96:                                               ; preds = %95, %76
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %97 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store float %88, ptr %89, align 4, !tbaa !55
  br label %101

101:                                              ; preds = %100, %96
  %102 = load i8, ptr %16, align 1, !tbaa !34
  %103 = icmp eq i8 %102, 2
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = zext i16 %4 to i32
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store float 0.000000e+00, ptr %11, align 4, !tbaa !55
  br label %109

109:                                              ; preds = %108, %104
  %110 = and i32 %105, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store float 0.000000e+00, ptr %86, align 4, !tbaa !55
  br label %113

113:                                              ; preds = %112, %109
  %114 = and i32 %105, 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store float 0.000000e+00, ptr %89, align 4, !tbaa !55
  br label %117

117:                                              ; preds = %113, %116, %101
  %118 = load float, ptr %11, align 4, !tbaa !55
  %119 = fcmp une float %118, 0.000000e+00
  %120 = load float, ptr %86, align 4
  %121 = fcmp une float %120, 0.000000e+00
  %122 = select i1 %119, i1 true, i1 %121
  %123 = load float, ptr %89, align 4
  %124 = fcmp une float %123, 0.000000e+00
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %128 = load float, ptr %127, align 4, !tbaa !55
  %129 = fsub float %128, %118
  store float %129, ptr %127, align 4, !tbaa !55
  %130 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !55
  %132 = fsub float %131, %120
  store float %132, ptr %130, align 4, !tbaa !55
  %133 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !55
  %135 = fsub float %134, %123
  store float %135, ptr %133, align 4, !tbaa !55
  br label %136

136:                                              ; preds = %117, %126
  %137 = phi i8 [ 1, %126 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  br label %138

138:                                              ; preds = %136, %60
  %139 = phi i8 [ %137, %136 ], [ 0, %60 ]
  br i1 %61, label %160, label %140

140:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %141 = call float @WM_event_ndof_to_axis_angle(ptr noundef %0, ptr noundef nonnull %13) #11
  %142 = call float @llvm.fabs.f32(float %141)
  %143 = fcmp ogt float %142, 0x3F1A36E2E0000000
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = icmp eq i8 %3, 0
  %146 = fmul float %141, 0x3FC99999A0000000
  %147 = select i1 %145, float %141, float %146
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %13) #11
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef %147) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %62, ptr noundef nonnull %62, ptr noundef nonnull %12) #11
  %148 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_fly.view_direction, i64 12, i1 false)
  call void @invert_qt_qt(ptr noundef nonnull %10, ptr noundef nonnull %62) #11
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %14) #11
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef nonnull %15) #11
  %152 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !55
  %154 = call float @asinf(float noundef %153) #11
  %155 = fneg float %154
  call void @axis_angle_to_quat(ptr noundef nonnull %12, ptr noundef nonnull %15, float noundef %155) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %62, ptr noundef nonnull %62, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %156

156:                                              ; preds = %151, %144
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 26
  store i8 0, ptr %157, align 2, !tbaa !95
  br label %158

158:                                              ; preds = %140, %156
  %159 = phi i8 [ 1, %156 ], [ 0, %140 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %160

160:                                              ; preds = %158, %138
  %161 = phi i8 [ %159, %158 ], [ 0, %138 ]
  store i8 %139, ptr %5, align 1, !tbaa !151
  store i8 %161, ptr %6, align 1, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  ret void
}

declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @WM_event_ndof_to_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_orbit(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_orbit_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ndof_orbit_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !135
  %6 = icmp eq i16 %5, 400
  br i1 %6, label %7, label %106

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %11 = tail call ptr %10(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !124
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %13, ptr %11, align 8, !tbaa !126
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %11, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !129
  %16 = load ptr, ptr %11, align 8, !tbaa !126
  %17 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct.ViewOpsData, ptr %11, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !131
  %20 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %11, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !132
  %23 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %24 = lshr i32 %23, 14
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %26, i8 noundef zeroext 0)
  %27 = load ptr, ptr %12, align 8, !tbaa !124
  %28 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !131
  %30 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 38
  store float 0.000000e+00, ptr %32, align 8, !tbaa !145
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %29, ptr noundef %31, i8 noundef zeroext 0)
  %33 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !153
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %102, label %36

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 27
  %38 = load i8, ptr %37, align 1, !tbaa !93
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !55
  %44 = fcmp oeq float %43, 0.000000e+00
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !55
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !55
  %52 = fcmp oeq float %51, 0.000000e+00
  br label %53

53:                                               ; preds = %49, %45, %41, %36
  %54 = phi i1 [ true, %36 ], [ false, %45 ], [ false, %41 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 25
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 25
  %60 = load i16, ptr %59, align 2, !tbaa !41
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 16
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %53, %62
  %67 = load float, ptr %9, align 4, !tbaa !55
  %68 = fcmp oeq float %67, 0.000000e+00
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = getelementptr inbounds float, ptr %9, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !55
  %72 = fcmp oeq float %71, 0.000000e+00
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds float, ptr %9, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !55
  %76 = fcmp une float %75, 0.000000e+00
  %77 = select i1 %76, i8 %39, i8 0
  br label %78

78:                                               ; preds = %73, %69, %66, %58, %62
  %79 = phi i8 [ 0, %62 ], [ 0, %58 ], [ %39, %69 ], [ %39, %66 ], [ %77, %73 ]
  %80 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !55
  %82 = fcmp une float %81, 0.000000e+00
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 24
  %85 = load i8, ptr %84, align 8, !tbaa !147
  %86 = icmp eq i8 %85, 0
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i8 [ 0, %78 ], [ %87, %83 ]
  %90 = icmp ne i8 %79, 0
  %91 = icmp ne i8 %89, 0
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load ptr, ptr %27, align 8, !tbaa !126
  %95 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !129
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef %9, ptr noundef %94, ptr noundef %96, i8 noundef zeroext %79, i8 noundef zeroext %89)
  br label %97

97:                                               ; preds = %88, %93
  br i1 %54, label %102, label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %27, align 8, !tbaa !126
  %100 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !129
  tail call fastcc void @view3d_ndof_orbit(ptr noundef %9, ptr noundef %99, ptr noundef %101, ptr noundef nonnull %27)
  br label %102

102:                                              ; preds = %97, %98, %7
  %103 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %29, ptr noundef %31), !range !88
  %104 = getelementptr inbounds %struct.ViewOpsData, ptr %27, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !129
  tail call void @ED_region_tag_redraw(ptr noundef %105) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %106

106:                                              ; preds = %3, %102
  %107 = phi i32 [ 4, %102 ], [ 2, %3 ]
  ret i32 %107
}

declare i32 @ED_operator_view3d_active(ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_orbit_zoom(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_orbit_zoom_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ndof_orbit_zoom_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !135
  %11 = icmp eq i16 %10, 400
  br i1 %11, label %12, label %252

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !124
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %18, ptr %16, align 8, !tbaa !126
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %20 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !129
  %21 = load ptr, ptr %16, align 8, !tbaa !126
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !131
  %25 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !132
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %29 = lshr i32 %28, 14
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %31, i8 noundef zeroext 0)
  %32 = load ptr, ptr %17, align 8, !tbaa !124
  %33 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !132
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 38
  store float 0.000000e+00, ptr %37, align 8, !tbaa !145
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %34, ptr noundef %36, i8 noundef zeroext 0)
  %38 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !153
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %248, label %41

41:                                               ; preds = %12
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 25
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 26
  %47 = load i8, ptr %46, align 2, !tbaa !95
  %48 = add i8 %47, -1
  %49 = icmp ult i8 %48, 6
  br i1 %49, label %50, label %91

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 25
  %52 = load i16, ptr %51, align 2, !tbaa !41
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 16
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load float, ptr %14, align 4, !tbaa !55
  %60 = fcmp oeq float %59, 0.000000e+00
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds float, ptr %14, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !55
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds float, ptr %14, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !55
  %68 = fcmp une float %67, 0.000000e+00
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %50, %65, %61, %58, %54
  %71 = phi i8 [ 0, %54 ], [ 1, %61 ], [ 1, %58 ], [ %69, %65 ], [ 0, %50 ]
  %72 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !55
  %74 = fcmp oeq float %73, 0.000000e+00
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 25
  %77 = load i16, ptr %76, align 2, !tbaa !41
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 16
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp ne ptr %81, null
  br label %83

83:                                               ; preds = %79, %75, %70
  %84 = phi i1 [ false, %70 ], [ true, %75 ], [ %82, %79 ]
  %85 = icmp ne i8 %71, 0
  %86 = select i1 %85, i1 true, i1 %84
  br i1 %86, label %87, label %248

87:                                               ; preds = %83
  %88 = load ptr, ptr %32, align 8, !tbaa !126
  %89 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !129
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef %14, ptr noundef %88, ptr noundef %90, i8 noundef zeroext %71, i8 noundef zeroext 1)
  br label %248

91:                                               ; preds = %45, %41
  %92 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %93 = and i32 %92, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = icmp eq i8 %43, 2
  br i1 %96, label %154, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 25
  %99 = load i16, ptr %98, align 2, !tbaa !41
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 16
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = icmp eq ptr %103, null
  br i1 %104, label %154, label %105

105:                                              ; preds = %97, %101, %91
  %106 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 27
  %107 = load i8, ptr %106, align 1, !tbaa !93
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !55
  %113 = fcmp oeq float %112, 0.000000e+00
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !55
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !55
  %121 = fcmp oeq float %120, 0.000000e+00
  br label %122

122:                                              ; preds = %118, %114, %110, %105
  %123 = phi i1 [ true, %105 ], [ false, %114 ], [ false, %110 ], [ %121, %118 ]
  %124 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !55
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = getelementptr inbounds %struct.ARegion, ptr %129, i64 0, i32 30
  %131 = load ptr, ptr %130, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @WM_event_ndof_pan_get(ptr noundef %14, ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  %132 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %132, align 4, !tbaa !55
  %133 = load float, ptr %124, align 4, !tbaa !55
  %134 = fcmp une float %133, 0.000000e+00
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.RegionView3D, ptr %131, i64 0, i32 18
  %137 = load float, ptr %136, align 8, !tbaa !54
  %138 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 2
  %139 = load float, ptr %138, align 4, !tbaa !148
  %140 = fmul float %137, %139
  %141 = fmul float %133, %140
  %142 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %143 = and i32 %142, 256
  %144 = icmp eq i32 %143, 0
  %145 = fneg float %141
  %146 = select i1 %144, float %141, float %145
  %147 = fadd float %137, %146
  store float %147, ptr %136, align 8, !tbaa !54
  br label %148

148:                                              ; preds = %127, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %149

149:                                              ; preds = %148, %122
  br i1 %123, label %248, label %150

150:                                              ; preds = %149
  %151 = load ptr, ptr %32, align 8, !tbaa !126
  %152 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !129
  call fastcc void @view3d_ndof_orbit(ptr noundef %14, ptr noundef %151, ptr noundef %153, ptr noundef nonnull %32)
  br label %248

154:                                              ; preds = %95, %101
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 27
  %156 = load i8, ptr %155, align 1, !tbaa !93
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = fcmp oeq float %161, 0.000000e+00
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !55
  %166 = fcmp oeq float %165, 0.000000e+00
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %14, i64 0, i32 1, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !55
  %170 = fcmp oeq float %169, 0.000000e+00
  br label %171

171:                                              ; preds = %167, %163, %159, %154
  %172 = phi i1 [ true, %154 ], [ false, %163 ], [ false, %159 ], [ %170, %167 ]
  br i1 %96, label %181, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 25
  %175 = load i16, ptr %174, align 2, !tbaa !41
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.View3D, ptr %34, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %171, %177
  %182 = load float, ptr %14, align 4, !tbaa !55
  %183 = fcmp oeq float %182, 0.000000e+00
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = getelementptr inbounds float, ptr %14, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !55
  %187 = fcmp oeq float %186, 0.000000e+00
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = getelementptr inbounds float, ptr %14, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !55
  %191 = fcmp une float %190, 0.000000e+00
  %192 = zext i1 %191 to i8
  br label %193

193:                                              ; preds = %173, %188, %184, %181, %177
  %194 = phi i8 [ 0, %177 ], [ 1, %184 ], [ 1, %181 ], [ %192, %188 ], [ 0, %173 ]
  %195 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %196 = load float, ptr %195, align 4, !tbaa !55
  %197 = fcmp une float %196, 0.000000e+00
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 24
  %200 = load i8, ptr %199, align 8, !tbaa !147
  %201 = icmp eq i8 %200, 0
  %202 = zext i1 %201 to i8
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i8 [ 0, %193 ], [ %202, %198 ]
  %205 = icmp ne i8 %194, 0
  %206 = icmp ne i8 %204, 0
  %207 = select i1 %205, i1 true, i1 %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load ptr, ptr %32, align 8, !tbaa !126
  %210 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !129
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef %14, ptr noundef %209, ptr noundef %211, i8 noundef zeroext %194, i8 noundef zeroext %204)
  br label %212

212:                                              ; preds = %203, %208
  %213 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 18
  %214 = load float, ptr %213, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store float 0.000000e+00, ptr %7, align 4, !tbaa !55
  %215 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %215, align 4, !tbaa !55
  %216 = getelementptr inbounds float, ptr %7, i64 2
  store float %214, ptr %216, align 4, !tbaa !55
  %217 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %217) #11
  call void @mul_qt_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %218 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 22
  %219 = load float, ptr %7, align 4, !tbaa !55
  %220 = load float, ptr %218, align 4, !tbaa !55
  %221 = fsub float %220, %219
  store float %221, ptr %218, align 4, !tbaa !55
  %222 = load float, ptr %215, align 4, !tbaa !55
  %223 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 22, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !55
  %225 = fsub float %224, %222
  store float %225, ptr %223, align 4, !tbaa !55
  %226 = load float, ptr %216, align 4, !tbaa !55
  %227 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 22, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !55
  %229 = fsub float %228, %226
  store float %229, ptr %227, align 4, !tbaa !55
  store float 0.000000e+00, ptr %213, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br i1 %172, label %234, label %230

230:                                              ; preds = %212
  %231 = load ptr, ptr %32, align 8, !tbaa !126
  %232 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !129
  call fastcc void @view3d_ndof_orbit(ptr noundef %14, ptr noundef %231, ptr noundef %233, ptr noundef null)
  br label %234

234:                                              ; preds = %230, %212
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %235 = load float, ptr %213, align 8, !tbaa !54
  %236 = fsub float %235, %214
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  %237 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %237, align 4, !tbaa !55
  %238 = getelementptr inbounds float, ptr %5, i64 2
  store float %236, ptr %238, align 4, !tbaa !55
  call void @invert_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %217) #11
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %239 = load float, ptr %5, align 4, !tbaa !55
  %240 = load float, ptr %218, align 4, !tbaa !55
  %241 = fsub float %240, %239
  store float %241, ptr %218, align 4, !tbaa !55
  %242 = load float, ptr %237, align 4, !tbaa !55
  %243 = load float, ptr %223, align 4, !tbaa !55
  %244 = fsub float %243, %242
  store float %244, ptr %223, align 4, !tbaa !55
  %245 = load float, ptr %238, align 4, !tbaa !55
  %246 = load float, ptr %227, align 4, !tbaa !55
  %247 = fsub float %246, %245
  store float %247, ptr %227, align 4, !tbaa !55
  store float %214, ptr %213, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %248

248:                                              ; preds = %149, %150, %87, %83, %234, %12
  %249 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %34, ptr noundef %36), !range !88
  %250 = getelementptr inbounds %struct.ViewOpsData, ptr %32, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %251) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %252

252:                                              ; preds = %3, %248
  %253 = phi i32 [ 4, %248 ], [ 2, %3 ]
  ret i32 %253
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_pan(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_pan_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ndof_pan_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !135
  %6 = icmp eq i16 %5, 400
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 25
  %17 = load i16, ptr %16, align 2, !tbaa !41
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %7, %19
  %24 = load float, ptr %11, align 4, !tbaa !55
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr inbounds float, ptr %11, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !55
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds float, ptr %11, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !55
  %33 = fcmp une float %32, 0.000000e+00
  %34 = zext i1 %33 to i8
  br label %35

35:                                               ; preds = %15, %30, %26, %23, %19
  %36 = phi i8 [ 0, %19 ], [ 1, %26 ], [ 1, %23 ], [ %34, %30 ], [ 0, %15 ]
  %37 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 24
  %42 = load i8, ptr %41, align 8, !tbaa !147
  %43 = icmp eq i8 %42, 0
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i8 [ 0, %35 ], [ %44, %40 ]
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 38
  store float 0.000000e+00, ptr %47, align 8, !tbaa !145
  %48 = icmp ne i8 %36, 0
  %49 = icmp ne i8 %46, 0
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %8, ptr noundef %9, i8 noundef zeroext 0)
  %52 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %11, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !153
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %57 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef %11, ptr noundef %56, ptr noundef %57, i8 noundef zeroext %36, i8 noundef zeroext %46)
  br label %58

58:                                               ; preds = %55, %51
  %59 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %8, ptr noundef %9), !range !88
  %60 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  tail call void @ED_region_tag_redraw(ptr noundef %60) #11
  br label %61

61:                                               ; preds = %58, %45, %3
  %62 = phi i32 [ 2, %3 ], [ 4, %58 ], [ 2, %45 ]
  ret i32 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_all_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ndof_all_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %5 = and i32 %4, -65
  store i32 %5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %6 = tail call i32 @ndof_orbit_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !154
  store i32 %4, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @viewmove_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.31) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @viewmove_modal_keymap.modal_items) #11
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.32) #11
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_move(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewmove_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewmove_modal, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewmove_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewmove_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %5 = tail call ptr %4(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !124
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %7, ptr %5, align 8, !tbaa !126
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !129
  %10 = load ptr, ptr %5, align 8, !tbaa !126
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !132
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %18 = lshr i32 %17, 14
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = lshr i32 %17, 15
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %20, i8 noundef zeroext %23)
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !135
  %26 = icmp eq i16 %25, 14
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load ptr, ptr %6, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !138
  %31 = shl nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %33 = load i32, ptr %32, align 8, !tbaa !139
  %34 = sub nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !140
  %37 = shl nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %39 = load i32, ptr %38, align 4, !tbaa !141
  %40 = sub nsw i32 %37, %39
  tail call fastcc void @viewmove_apply(ptr noundef %28, i32 noundef %34, i32 noundef %40)
  %41 = getelementptr inbounds %struct.ViewOpsData, ptr %28, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  tail call void @ED_view3d_depth_tag_update(ptr noundef %42) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %45

43:                                               ; preds = %3
  %44 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i32 [ 4, %27 ], [ 1, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewmove_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !135
  %9 = sext i16 %8 to i32
  %10 = icmp eq i16 %8, 4
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = icmp eq i16 %8, 20514
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !142
  switch i16 %15, label %29 [
    i16 1, label %16
    i16 4, label %17
    i16 6, label %19
  ]

16:                                               ; preds = %13
  br label %29

17:                                               ; preds = %13
  %18 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.36, i16 noundef signext 0, ptr noundef null) #11
  br label %29

19:                                               ; preds = %13
  %20 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.14, i16 noundef signext 0, ptr noundef null) #11
  br label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = icmp eq i16 %27, 2
  br label %29

29:                                               ; preds = %25, %3, %13, %19, %17, %16, %21
  %30 = phi i1 [ false, %13 ], [ true, %19 ], [ true, %17 ], [ true, %16 ], [ false, %21 ], [ false, %3 ], [ %28, %25 ]
  br i1 %10, label %31, label %36

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !138
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !140
  tail call fastcc void @viewmove_apply(ptr noundef %6, i32 noundef %33, i32 noundef %35)
  br label %87

36:                                               ; preds = %29
  br i1 %30, label %37, label %87

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !131
  %40 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.View3D, ptr %39, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %85, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.View3D, ptr %39, i64 0, i32 29
  %51 = load i16, ptr %50, align 2, !tbaa !53
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 25
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = icmp eq i8 %56, 2
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %60 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %61 = and i32 %60, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load ptr, ptr %42, align 8, !tbaa !47
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %63, %68
  %69 = phi ptr [ %71, %68 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %68, !llvm.loop !87

73:                                               ; preds = %63, %58
  %74 = load ptr, ptr %42, align 8, !tbaa !47
  br label %75

75:                                               ; preds = %68, %73
  %76 = phi ptr [ %74, %73 ], [ %69, %68 ]
  %77 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %59, ptr noundef %76) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %4, ptr noundef %76, ptr noundef null, ptr noundef null) #11
  %80 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #11
  %81 = getelementptr inbounds %struct.Scene, ptr %59, i64 0, i32 22, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !69
  %83 = sitofp i32 %82 to float
  %84 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef %80, i16 noundef signext 0, float noundef %83) #11
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %85

85:                                               ; preds = %79, %75, %37, %45, %49, %54
  %86 = load ptr, ptr %40, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %86) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %87

87:                                               ; preds = %31, %36, %85
  %88 = phi i32 [ 4, %85 ], [ 1, %36 ], [ 1, %31 ]
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal void @viewmove_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @viewzoom_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @viewzoom_modal_keymap.modal_items) #11
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.36) #11
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @viewdolly_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.37) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @viewdolly_modal_keymap.modal_items) #11
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #11
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.38) #11
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_zoom(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewzoom_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewzoom_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewzoom_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewzoom_cancel, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #11
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 524288) #11
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #11
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewzoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %5 = tail call ptr %4(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !124
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %7, ptr %5, align 8, !tbaa !126
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !129
  %10 = load ptr, ptr %5, align 8, !tbaa !126
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !132
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %18 = lshr i32 %17, 14
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = lshr i32 %17, 15
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %20, i8 noundef zeroext %23)
  %24 = load ptr, ptr %6, align 8, !tbaa !124
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !157
  %27 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %26, ptr noundef nonnull @.str.43) #11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load ptr, ptr %25, align 8, !tbaa !157
  %31 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %30, ptr noundef nonnull @.str.45) #11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %3
  %34 = load ptr, ptr %25, align 8, !tbaa !157
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !138
  tail call void @RNA_int_set(ptr noundef %34, ptr noundef nonnull @.str.43, i32 noundef %36) #11
  %37 = load ptr, ptr %25, align 8, !tbaa !157
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !140
  tail call void @RNA_int_set(ptr noundef %37, ptr noundef nonnull @.str.45, i32 noundef %39) #11
  br label %40

40:                                               ; preds = %33, %29
  %41 = load ptr, ptr %25, align 8, !tbaa !157
  %42 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %41, ptr noundef nonnull @.str.41) #11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @viewzoom_exec(ptr noundef %0, ptr noundef %1)
  br label %90

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !135
  %49 = and i16 %48, -2
  %50 = icmp eq i16 %49, 14
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %53 = and i32 %52, 67108864
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !138
  %58 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 22
  store i32 %57, ptr %58, align 8, !tbaa !158
  %59 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 20
  store i32 %57, ptr %59, align 8, !tbaa !159
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  br label %71

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 21
  %63 = load i32, ptr %62, align 4, !tbaa !160
  %64 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !138
  %66 = add nsw i32 %65, %63
  %67 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %68 = load i32, ptr %67, align 8, !tbaa !139
  %69 = sub i32 %66, %68
  %70 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 23
  store i32 %69, ptr %70, align 4, !tbaa !161
  store i32 %69, ptr %62, align 4, !tbaa !160
  br label %71

71:                                               ; preds = %61, %55
  %72 = phi ptr [ %67, %61 ], [ %60, %55 ]
  %73 = lshr i32 %52, 25
  %74 = trunc i32 %73 to i16
  %75 = and i16 %74, 1
  tail call fastcc void @viewzoom_apply(ptr noundef %24, ptr noundef nonnull %72, i16 noundef signext 2, i16 noundef signext %75)
  %76 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !132
  tail call void @ED_view3d_depth_tag_update(ptr noundef %77) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %90

78:                                               ; preds = %46
  %79 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !162
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %83 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %84 = tail call ptr @WM_event_add_timer(ptr noundef %82, ptr noundef %83, i32 noundef 272, double noundef 0x3F847AE140000000) #11
  %85 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 4
  store ptr %84, ptr %85, align 8, !tbaa !163
  %86 = tail call double @PIL_check_seconds_timer() #11
  %87 = getelementptr inbounds %struct.ViewOpsData, ptr %24, i64 0, i32 5
  store double %86, ptr %87, align 8, !tbaa !164
  br label %88

88:                                               ; preds = %81, %78
  %89 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %90

90:                                               ; preds = %44, %88, %71
  %91 = phi i32 [ 4, %44 ], [ 4, %71 ], [ 1, %88 ]
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewzoom_exec(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.41) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !126
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  br label %17

14:                                               ; preds = %2
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %13, %10 ], [ %16, %14 ]
  %19 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = load ptr, ptr %4, align 8, !tbaa !157
  %25 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %24, ptr noundef nonnull @.str.43) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %4, align 8, !tbaa !157
  %29 = tail call i32 @RNA_int_get(ptr noundef %28, ptr noundef nonnull @.str.43) #11
  br label %35

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %32 = load i16, ptr %31, align 8, !tbaa !96
  %33 = sdiv i16 %32, 2
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ %29, %27 ], [ %34, %30 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !157
  %38 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %37, ptr noundef nonnull @.str.45) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 8, !tbaa !157
  %42 = tail call i32 @RNA_int_get(ptr noundef %41, ptr noundef nonnull @.str.45) #11
  br label %48

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !97
  %46 = sdiv i16 %45, 2
  %47 = sext i16 %46 to i32
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i32 [ %42, %40 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 25
  %51 = load i8, ptr %50, align 1, !tbaa !34
  %52 = icmp eq i8 %51, 2
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 24
  %55 = load i8, ptr %54, align 8, !tbaa !147
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.View3D, ptr %21, i64 0, i32 15
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.View3D, ptr %21, i64 0, i32 29
  %67 = load i16, ptr %66, align 2, !tbaa !53
  %68 = and i16 %67, 32
  %69 = icmp ne i16 %68, 0
  br label %70

70:                                               ; preds = %61, %57, %65, %53, %48
  %71 = phi i1 [ true, %48 ], [ false, %53 ], [ false, %61 ], [ false, %57 ], [ %69, %65 ]
  call void @ED_view3d_dist_range_get(ptr noundef %21, ptr noundef nonnull %3) #11
  %72 = icmp slt i32 %6, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  br i1 %71, label %80, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 23
  %76 = load float, ptr %75, align 4, !tbaa !165
  %77 = fadd float %76, -1.000000e+01
  store float %77, ptr %75, align 4, !tbaa !165
  %78 = fcmp olt float %77, -3.000000e+01
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  store float -3.000000e+01, ptr %75, align 4, !tbaa !165
  br label %100

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 18
  %82 = load float, ptr %81, align 8, !tbaa !54
  %83 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !55
  %85 = fcmp olt float %82, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  call fastcc void @view_zoom_mouseloc(ptr noundef %18, float noundef 0x3FF3333340000000, i32 noundef %36, i32 noundef %49)
  br label %100

87:                                               ; preds = %70
  br i1 %71, label %94, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 23
  %90 = load float, ptr %89, align 4, !tbaa !165
  %91 = fadd float %90, 1.000000e+01
  store float %91, ptr %89, align 4, !tbaa !165
  %92 = fcmp ogt float %91, 6.000000e+02
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  store float 6.000000e+02, ptr %89, align 4, !tbaa !165
  br label %100

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 18
  %96 = load float, ptr %95, align 8, !tbaa !54
  %97 = load float, ptr %3, align 4, !tbaa !55
  %98 = fcmp ogt float %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call fastcc void @view_zoom_mouseloc(ptr noundef %18, float noundef 0x3FEAAAA3A0000000, i32 noundef %36, i32 noundef %49)
  br label %100

100:                                              ; preds = %93, %88, %99, %94, %79, %74, %86, %80
  %101 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 27
  %102 = load i8, ptr %101, align 1, !tbaa !93
  %103 = and i8 %102, 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  call fastcc void @view3d_boxview_sync(ptr noundef %19, ptr noundef %18)
  br label %106

106:                                              ; preds = %105, %100
  call void @ED_view3d_depth_tag_update(ptr noundef %23) #11
  %107 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %21, ptr noundef %23), !range !88
  call void @ED_region_tag_redraw(ptr noundef %18) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewzoom_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !135
  switch i16 %8, label %24 [
    i16 272, label %9
    i16 4, label %33
    i16 20514, label %16
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  switch i16 %8, label %24 [
    i16 4, label %33
    i16 20514, label %16
  ]

16:                                               ; preds = %3, %15
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !142
  switch i16 %18, label %33 [
    i16 1, label %19
    i16 5, label %20
    i16 6, label %22
  ]

19:                                               ; preds = %16
  br label %33

20:                                               ; preds = %16
  %21 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.32, i16 noundef signext 0, ptr noundef null) #11
  br label %33

22:                                               ; preds = %16
  %23 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.14, i16 noundef signext 0, ptr noundef null) #11
  br label %33

24:                                               ; preds = %3, %15
  %25 = sext i16 %8 to i32
  %26 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 24
  %27 = load i32, ptr %26, align 8, !tbaa !144
  %28 = icmp eq i32 %27, %25
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !142
  %32 = icmp eq i16 %31, 2
  br label %33

33:                                               ; preds = %3, %29, %15, %9, %24, %19, %20, %22, %16
  %34 = phi i1 [ false, %16 ], [ false, %22 ], [ false, %20 ], [ false, %19 ], [ false, %24 ], [ true, %9 ], [ true, %15 ], [ false, %29 ], [ true, %3 ]
  %35 = phi i1 [ false, %16 ], [ true, %22 ], [ true, %20 ], [ true, %19 ], [ false, %24 ], [ false, %9 ], [ false, %15 ], [ %32, %29 ], [ false, %3 ]
  br i1 %34, label %36, label %43

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !162
  %39 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %40 = lshr i32 %39, 25
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, 1
  tail call fastcc void @viewzoom_apply(ptr noundef %6, ptr noundef nonnull %37, i16 noundef signext %38, i16 noundef signext %42)
  br label %94

43:                                               ; preds = %33
  br i1 %35, label %44, label %94

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !131
  %47 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !132
  %49 = getelementptr inbounds %struct.View3D, ptr %46, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = icmp eq ptr %50, null
  br i1 %51, label %92, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.View3D, ptr %46, i64 0, i32 29
  %58 = load i16, ptr %57, align 2, !tbaa !53
  %59 = and i16 %58, 32
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 25
  %63 = load i8, ptr %62, align 1, !tbaa !34
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %68 = and i32 %67, 524288
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load ptr, ptr %49, align 8, !tbaa !47
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70, %75
  %76 = phi ptr [ %78, %75 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 9
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %75, !llvm.loop !87

80:                                               ; preds = %70, %65
  %81 = load ptr, ptr %49, align 8, !tbaa !47
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi ptr [ %81, %80 ], [ %76, %75 ]
  %84 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %66, ptr noundef %83) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %4, ptr noundef %83, ptr noundef null, ptr noundef null) #11
  %87 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #11
  %88 = getelementptr inbounds %struct.Scene, ptr %66, i64 0, i32 22, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !69
  %90 = sitofp i32 %89 to float
  %91 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef %87, i16 noundef signext 0, float noundef %90) #11
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %92

92:                                               ; preds = %86, %82, %44, %52, %56, %61
  %93 = load ptr, ptr %47, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %93) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %94

94:                                               ; preds = %36, %43, %92
  %95 = phi i32 [ 4, %92 ], [ 1, %43 ], [ 1, %36 ]
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal void @viewzoom_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret void
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_dolly(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewdolly_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewdolly_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewdolly_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewdolly_cancel, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef -2147483648, i32 noundef 2147483647) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #11
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewdolly_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 25
  %14 = load i16, ptr %13, align 2, !tbaa !41
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  tail call void @BKE_report(ptr noundef %22, i32 noundef 16, ptr noundef nonnull @.str.166) #11
  br label %204

23:                                               ; preds = %16, %3
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %25 = tail call ptr %24(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !124
  %27 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %27, ptr %25, align 8, !tbaa !126
  %28 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %29 = getelementptr inbounds %struct.ViewOpsData, ptr %25, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !129
  %30 = load ptr, ptr %25, align 8, !tbaa !126
  %31 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.ViewOpsData, ptr %25, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 30
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %25, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !132
  %37 = load ptr, ptr %26, align 8, !tbaa !124
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 27
  %41 = load i8, ptr %40, align 1, !tbaa !93
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %23
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %204

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 25
  %47 = load i8, ptr %46, align 1, !tbaa !34
  switch i8 %47, label %102 [
    i8 1, label %106
    i8 2, label %48
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  %51 = getelementptr inbounds %struct.View3D, ptr %50, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 47
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 22
  %57 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %55, ptr noundef nonnull %56, float noundef 1.000000e+00)
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 18
  store float %57, ptr %58, align 8, !tbaa !54
  %59 = load ptr, ptr %51, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 17
  %61 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %61) #11
  call void @normalize_m3(ptr noundef nonnull %4) #11
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !55
  %64 = fneg float %63
  store float %64, ptr %56, align 4, !tbaa !55
  %65 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47, i64 3, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !55
  %67 = fneg float %66
  %68 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 22, i64 1
  store float %67, ptr %68, align 4, !tbaa !55
  %69 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47, i64 3, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !55
  %71 = fneg float %70
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 22, i64 2
  store float %71, ptr %72, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %73 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  call void @mat3_to_quat(ptr noundef nonnull %60, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %74 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %74, align 4, !tbaa !55
  %75 = getelementptr inbounds float, ptr %6, i64 2
  %76 = load float, ptr %58, align 4, !tbaa !55
  %77 = fneg float %76
  store float %77, ptr %75, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %78 = load float, ptr %6, align 4, !tbaa !55
  %79 = load float, ptr %56, align 4, !tbaa !55
  %80 = fsub float %79, %78
  store float %80, ptr %56, align 4, !tbaa !55
  %81 = load float, ptr %74, align 4, !tbaa !55
  %82 = load float, ptr %68, align 4, !tbaa !55
  %83 = fsub float %82, %81
  store float %83, ptr %68, align 4, !tbaa !55
  %84 = load float, ptr %75, align 4, !tbaa !55
  %85 = load float, ptr %72, align 4, !tbaa !55
  %86 = fsub float %85, %84
  store float %86, ptr %72, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  br label %87

87:                                               ; preds = %54, %48
  %88 = load ptr, ptr %51, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ID, ptr %88, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.View3D, ptr %50, i64 0, i32 29
  %96 = load i16, ptr %95, align 2, !tbaa !53
  %97 = and i16 %96, 32
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i8, ptr %46, align 1, !tbaa !34
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %103, label %102

102:                                              ; preds = %45, %87, %90, %94, %99
  store i8 1, ptr %46, align 1, !tbaa !34
  br label %103

103:                                              ; preds = %102, %99
  %104 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %105) #11
  br label %106

106:                                              ; preds = %45, %103
  %107 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %108 = lshr i32 %107, 14
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = lshr i32 %107, 15
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %110, i8 noundef zeroext %113)
  %114 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !157
  %116 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %115, ptr noundef nonnull @.str.43) #11
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %106
  %119 = load ptr, ptr %114, align 8, !tbaa !157
  %120 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %119, ptr noundef nonnull @.str.45) #11
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118, %106
  %123 = load ptr, ptr %114, align 8, !tbaa !157
  %124 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %125 = load i32, ptr %124, align 4, !tbaa !138
  call void @RNA_int_set(ptr noundef %123, ptr noundef nonnull @.str.43, i32 noundef %125) #11
  %126 = load ptr, ptr %114, align 8, !tbaa !157
  %127 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !140
  call void @RNA_int_set(ptr noundef %126, ptr noundef nonnull @.str.45, i32 noundef %128) #11
  br label %129

129:                                              ; preds = %122, %118
  %130 = load ptr, ptr %114, align 8, !tbaa !157
  %131 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %130, ptr noundef nonnull @.str.41) #11
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = call i32 @viewdolly_exec(ptr noundef %0, ptr noundef %1)
  br label %204

135:                                              ; preds = %129
  %136 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %137 = and i32 %136, 1048576
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %169

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 9
  %141 = load ptr, ptr %38, align 8, !tbaa !132
  %142 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 2, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !55
  %144 = fneg float %143
  store float %144, ptr %140, align 4, !tbaa !55
  %145 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 2, i64 2, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !55
  %147 = fneg float %146
  %148 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 9, i64 1
  store float %147, ptr %148, align 4, !tbaa !55
  %149 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 2, i64 2, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !55
  %151 = fneg float %150
  %152 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 9, i64 2
  store float %151, ptr %152, align 4, !tbaa !55
  %153 = fmul float %146, %146
  %154 = call float @llvm.fmuladd.f32(float %143, float %143, float %153)
  %155 = call float @llvm.fmuladd.f32(float %150, float %150, float %154)
  %156 = fcmp ogt float %155, 0x38AA95A5C0000000
  br i1 %156, label %157, label %166

157:                                              ; preds = %139
  %158 = call float @sqrtf(float noundef %155) #11
  %159 = fdiv float 1.000000e+00, %158
  %160 = load float, ptr %140, align 4, !tbaa !55
  %161 = fmul float %160, %159
  store float %161, ptr %140, align 4, !tbaa !55
  %162 = load float, ptr %148, align 4, !tbaa !55
  %163 = fmul float %159, %162
  store float %163, ptr %148, align 4, !tbaa !55
  %164 = load float, ptr %152, align 4, !tbaa !55
  %165 = fmul float %159, %164
  br label %167

166:                                              ; preds = %139
  store float 0.000000e+00, ptr %140, align 4, !tbaa !55
  store float 0.000000e+00, ptr %148, align 4, !tbaa !55
  br label %167

167:                                              ; preds = %157, %166
  %168 = phi float [ 0.000000e+00, %166 ], [ %165, %157 ]
  store float %168, ptr %152, align 4, !tbaa !55
  br label %169

169:                                              ; preds = %167, %135
  %170 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %171 = load i16, ptr %170, align 8, !tbaa !135
  %172 = icmp eq i16 %171, 15
  br i1 %172, label %173, label %202

173:                                              ; preds = %169
  %174 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %175 = and i32 %174, 67108864
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %179 = load i32, ptr %178, align 4, !tbaa !138
  %180 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 22
  store i32 %179, ptr %180, align 8, !tbaa !158
  %181 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 20
  store i32 %179, ptr %181, align 8, !tbaa !159
  %182 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %183 = load i32, ptr %182, align 8, !tbaa !139
  br label %194

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 21
  %186 = load i32, ptr %185, align 4, !tbaa !160
  %187 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %188 = load i32, ptr %187, align 4, !tbaa !138
  %189 = add nsw i32 %188, %186
  %190 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %191 = load i32, ptr %190, align 8, !tbaa !139
  %192 = sub i32 %189, %191
  %193 = getelementptr inbounds %struct.ViewOpsData, ptr %37, i64 0, i32 23
  store i32 %192, ptr %193, align 4, !tbaa !161
  store i32 %192, ptr %185, align 4, !tbaa !160
  br label %194

194:                                              ; preds = %184, %177
  %195 = phi i32 [ %191, %184 ], [ %183, %177 ]
  %196 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %197 = load i32, ptr %196, align 4, !tbaa !141
  %198 = and i32 %174, 33554432
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i16
  call fastcc void @viewdolly_apply(ptr noundef %37, i32 noundef %195, i32 noundef %197, i16 noundef signext %200)
  %201 = load ptr, ptr %38, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %201) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %204

202:                                              ; preds = %169
  %203 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %204

204:                                              ; preds = %20, %133, %202, %194, %44
  %205 = phi i32 [ 8, %44 ], [ 4, %133 ], [ 4, %194 ], [ 1, %202 ], [ 2, %20 ]
  ret i32 %205
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewdolly_exec(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.41) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !126
  %11 = getelementptr inbounds %struct.ViewOpsData, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %7, i64 0, i32 9
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %7, i64 0, i32 9, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.ViewOpsData, ptr %7, i64 0, i32 9, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !55
  br label %43

19:                                               ; preds = %2
  %20 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !55
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 2, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !55
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 2, i64 2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !55
  %30 = fmul float %27, %27
  %31 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %31)
  %33 = fcmp ogt float %32, 0x38AA95A5C0000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = fneg float %29
  %36 = fneg float %25
  %37 = fneg float %27
  %38 = tail call float @sqrtf(float noundef %32) #11
  %39 = fdiv float 1.000000e+00, %38
  %40 = fmul float %39, %36
  %41 = fmul float %39, %37
  %42 = fmul float %39, %35
  br label %43

43:                                               ; preds = %34, %19, %9
  %44 = phi float [ %18, %9 ], [ %42, %34 ], [ 0.000000e+00, %19 ]
  %45 = phi float [ %16, %9 ], [ %41, %34 ], [ 0.000000e+00, %19 ]
  %46 = phi float [ %14, %9 ], [ %40, %34 ], [ 0.000000e+00, %19 ]
  %47 = phi ptr [ %12, %9 ], [ %21, %34 ], [ %21, %19 ]
  %48 = phi ptr [ %10, %9 ], [ %20, %34 ], [ %20, %19 ]
  %49 = getelementptr inbounds %struct.ScrArea, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !130
  %51 = getelementptr inbounds %struct.ARegion, ptr %47, i64 0, i32 30
  %52 = load ptr, ptr %51, align 8, !tbaa !89
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %54 = and i32 %53, 1048576
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 2, i64 2, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !55
  %61 = fmul float %60, %60
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 2, i64 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !55
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %62)
  %66 = fcmp ogt float %65, 0x38AA95A5C0000000
  br i1 %66, label %67, label %76

67:                                               ; preds = %56
  %68 = tail call float @sqrtf(float noundef %65) #11
  %69 = fdiv float 1.000000e+00, %68
  %70 = load float, ptr %57, align 4, !tbaa !55
  %71 = fmul float %70, %69
  %72 = load float, ptr %59, align 4, !tbaa !55
  %73 = fmul float %69, %72
  %74 = load float, ptr %63, align 4, !tbaa !55
  %75 = fmul float %69, %74
  br label %76

76:                                               ; preds = %67, %56, %43
  %77 = phi float [ %44, %43 ], [ %75, %67 ], [ 0.000000e+00, %56 ]
  %78 = phi float [ %45, %43 ], [ %73, %67 ], [ 0.000000e+00, %56 ]
  %79 = phi float [ %46, %43 ], [ %71, %67 ], [ 0.000000e+00, %56 ]
  %80 = icmp slt i32 %5, 0
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 22
  %82 = load ptr, ptr %51, align 8, !tbaa !89
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %82, i64 0, i32 22
  %84 = load float, ptr %81, align 4, !tbaa !55
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 22, i64 1
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %82, i64 0, i32 22, i64 1
  %87 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 22, i64 2
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %82, i64 0, i32 22, i64 2
  br i1 %80, label %89, label %95

89:                                               ; preds = %76
  %90 = tail call float @llvm.fmuladd.f32(float %79, float 0xBFE99999A0000000, float %84)
  store float %90, ptr %83, align 4, !tbaa !55
  %91 = load float, ptr %85, align 4, !tbaa !55
  %92 = tail call float @llvm.fmuladd.f32(float %78, float 0xBFE99999A0000000, float %91)
  store float %92, ptr %86, align 4, !tbaa !55
  %93 = load float, ptr %87, align 4, !tbaa !55
  %94 = tail call float @llvm.fmuladd.f32(float %77, float 0xBFE99999A0000000, float %93)
  br label %101

95:                                               ; preds = %76
  %96 = tail call float @llvm.fmuladd.f32(float %79, float 0x3FE9999980000000, float %84)
  store float %96, ptr %83, align 4, !tbaa !55
  %97 = load float, ptr %85, align 4, !tbaa !55
  %98 = tail call float @llvm.fmuladd.f32(float %78, float 0x3FE9999980000000, float %97)
  store float %98, ptr %86, align 4, !tbaa !55
  %99 = load float, ptr %87, align 4, !tbaa !55
  %100 = tail call float @llvm.fmuladd.f32(float %77, float 0x3FE9999980000000, float %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi float [ %100, %95 ], [ %94, %89 ]
  store float %102, ptr %88, align 4, !tbaa !55
  %103 = getelementptr inbounds %struct.RegionView3D, ptr %52, i64 0, i32 27
  %104 = load i8, ptr %103, align 1, !tbaa !93
  %105 = and i8 %104, 2
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call fastcc void @view3d_boxview_sync(ptr noundef %48, ptr noundef %47)
  br label %108

108:                                              ; preds = %107, %101
  tail call void @ED_view3d_depth_tag_update(ptr noundef %52) #11
  %109 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %50, ptr noundef %52), !range !88
  tail call void @ED_region_tag_redraw(ptr noundef %47) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewdolly_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !135
  %9 = sext i16 %8 to i32
  %10 = icmp eq i16 %8, 4
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = icmp eq i16 %8, 20514
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !142
  switch i16 %15, label %29 [
    i16 1, label %16
    i16 5, label %17
    i16 6, label %19
  ]

16:                                               ; preds = %13
  br label %29

17:                                               ; preds = %13
  %18 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.32, i16 noundef signext 0, ptr noundef null) #11
  br label %29

19:                                               ; preds = %13
  %20 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.14, i16 noundef signext 0, ptr noundef null) #11
  br label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = icmp eq i16 %27, 2
  br label %29

29:                                               ; preds = %25, %3, %13, %19, %17, %16, %21
  %30 = phi i1 [ false, %13 ], [ true, %19 ], [ true, %17 ], [ true, %16 ], [ false, %21 ], [ false, %3 ], [ %28, %25 ]
  br i1 %10, label %31, label %40

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !138
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !140
  %36 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %37 = lshr i32 %36, 25
  %38 = trunc i32 %37 to i16
  %39 = and i16 %38, 1
  tail call fastcc void @viewdolly_apply(ptr noundef %6, i32 noundef %33, i32 noundef %35, i16 noundef signext %39)
  br label %91

40:                                               ; preds = %29
  br i1 %30, label %41, label %91

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !131
  %44 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !132
  %46 = getelementptr inbounds %struct.View3D, ptr %43, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = icmp eq ptr %47, null
  br i1 %48, label %89, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.View3D, ptr %43, i64 0, i32 29
  %55 = load i16, ptr %54, align 2, !tbaa !53
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %89, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %45, i64 0, i32 25
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %64 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %65 = and i32 %64, 524288
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load ptr, ptr %46, align 8, !tbaa !47
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67, %72
  %73 = phi ptr [ %75, %72 ], [ %70, %67 ]
  %74 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !62
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %72, !llvm.loop !87

77:                                               ; preds = %67, %62
  %78 = load ptr, ptr %46, align 8, !tbaa !47
  br label %79

79:                                               ; preds = %72, %77
  %80 = phi ptr [ %78, %77 ], [ %73, %72 ]
  %81 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %63, ptr noundef %80) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %4, ptr noundef %80, ptr noundef null, ptr noundef null) #11
  %84 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #11
  %85 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 22, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !69
  %87 = sitofp i32 %86 to float
  %88 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef %84, i16 noundef signext 0, float noundef %87) #11
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %89

89:                                               ; preds = %83, %79, %41, %49, %53, %58
  %90 = load ptr, ptr %44, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %90) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %91

91:                                               ; preds = %31, %40, %89
  %92 = phi i32 [ 4, %89 ], [ 1, %40 ], [ 1, %31 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal void @viewdolly_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_all_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_all_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.52) #11
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 29
  %22 = load i16, ptr %21, align 2, !tbaa !53
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %37, label %29

29:                                               ; preds = %20, %16, %2, %25
  %30 = and i32 %10, 255
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 29
  %34 = load i16, ptr %33, align 2, !tbaa !53
  %35 = and i16 %34, 32
  %36 = icmp eq i16 %35, 0
  br label %37

37:                                               ; preds = %29, %32, %25
  %38 = phi i1 [ false, %25 ], [ true, %29 ], [ %36, %32 ]
  %39 = load ptr, ptr %8, align 8, !tbaa !157
  %40 = tail call i32 @RNA_boolean_get(ptr noundef %39, ptr noundef nonnull @.str.55) #11
  %41 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %42 = and i32 %40, 255
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %6) #11
  store float 0.000000e+00, ptr %3, align 4, !tbaa !55
  %46 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !55
  %47 = getelementptr inbounds float, ptr %3, i64 2
  store float 0.000000e+00, ptr %47, align 4, !tbaa !55
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  %48 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %48, align 4, !tbaa !55
  %49 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %49, align 4, !tbaa !55
  store float 0.000000e+00, ptr %45, align 4, !tbaa !55
  %50 = getelementptr inbounds float, ptr %45, i64 1
  store float 0.000000e+00, ptr %50, align 4, !tbaa !55
  %51 = getelementptr inbounds float, ptr %45, i64 2
  store float 0.000000e+00, ptr %51, align 4, !tbaa !55
  br label %57

52:                                               ; preds = %37
  %53 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %53, align 4, !tbaa !55
  %54 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %54, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !55
  %55 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %55, align 4, !tbaa !55
  %56 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %56, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !55
  br label %57

57:                                               ; preds = %52, %44
  %58 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !67
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  br label %63

63:                                               ; preds = %61, %83
  %64 = phi ptr [ %59, %61 ], [ %85, %83 ]
  %65 = phi i8 [ 0, %61 ], [ %84, %83 ]
  %66 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !167
  %68 = load i32, ptr %62, align 8, !tbaa !169
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !170
  %74 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 102
  %75 = load i8, ptr %74, align 8, !tbaa !171
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  br i1 %38, label %82, label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %13, align 8, !tbaa !47
  %81 = icmp eq ptr %73, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %79, %78
  call void @BKE_object_minmax(ptr noundef %73, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %83

83:                                               ; preds = %63, %71, %82, %79
  %84 = phi i8 [ 1, %79 ], [ 1, %82 ], [ %65, %71 ], [ %65, %63 ]
  %85 = load ptr, ptr %64, align 8, !tbaa !67
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %63, !llvm.loop !172

87:                                               ; preds = %83
  %88 = icmp eq i8 %84, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %57, %87
  call void @ED_region_tag_redraw(ptr noundef %5) #11
  br label %131

90:                                               ; preds = %87
  %91 = and i32 %10, 255
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %130, label %93

93:                                               ; preds = %90
  %94 = call ptr @CTX_wm_area(ptr noundef %0) #11
  %95 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 29
  br label %100

100:                                              ; preds = %127, %98
  %101 = phi ptr [ %96, %98 ], [ %128, %127 ]
  %102 = getelementptr inbounds %struct.ARegion, ptr %101, i64 0, i32 8
  %103 = load i16, ptr %102, align 2, !tbaa !92
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.ARegion, ptr %101, i64 0, i32 30
  %107 = load ptr, ptr %106, align 8, !tbaa !89
  %108 = getelementptr inbounds %struct.RegionView3D, ptr %107, i64 0, i32 25
  %109 = load i8, ptr %108, align 1, !tbaa !34
  %110 = icmp eq i8 %109, 2
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load ptr, ptr %13, align 8, !tbaa !47
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.ID, ptr %112, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i16, ptr %99, align 2, !tbaa !53
  %120 = trunc i16 %119 to i8
  %121 = lshr i8 %120, 5
  %122 = and i8 %121, 1
  br label %123

123:                                              ; preds = %118, %114, %111
  %124 = phi i8 [ 0, %114 ], [ 0, %111 ], [ %122, %118 ]
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123, %105
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %101, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef %41)
  br label %127

127:                                              ; preds = %126, %123, %100
  %128 = load ptr, ptr %101, align 8, !tbaa !67
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %100, !llvm.loop !173

130:                                              ; preds = %90
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %6, ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef %41)
  br label %131

131:                                              ; preds = %127, %93, %130, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_view_selected(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewselected_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewselected_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !174
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !157
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.52) #11
  %21 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 29
  %32 = load i16, ptr %31, align 2, !tbaa !53
  %33 = and i16 %32, 32
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 25
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = icmp eq i8 %37, 2
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %15, %26, %30, %35
  %41 = phi i8 [ 0, %30 ], [ 0, %26 ], [ 0, %15 ], [ %39, %35 ]
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = and i32 %20, 255
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 29
  %48 = load i16, ptr %47, align 2, !tbaa !53
  %49 = and i16 %48, 32
  %50 = icmp ne i16 %49, 0
  br label %51

51:                                               ; preds = %43, %46, %40
  %52 = phi i1 [ true, %40 ], [ false, %43 ], [ %50, %46 ]
  %53 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  %54 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %54, align 4, !tbaa !55
  %55 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %55, align 4, !tbaa !55
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !55
  %56 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %56, align 4, !tbaa !55
  %57 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %57, align 4, !tbaa !55
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !55
  %58 = icmp eq ptr %16, null
  br i1 %58, label %105, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 27
  %61 = load i32, ptr %60, align 8, !tbaa !175
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %105, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !67
  %67 = icmp eq ptr %66, null
  br i1 %67, label %105, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  br label %70

70:                                               ; preds = %68, %102
  %71 = phi ptr [ %66, %68 ], [ %103, %102 ]
  %72 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !176
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !167
  %79 = load i32, ptr %69, align 8, !tbaa !169
  %80 = and i32 %79, %78
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !170
  %85 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !48
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 102
  %90 = load i8, ptr %89, align 8, !tbaa !171
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 3
  %95 = load i16, ptr %94, align 8, !tbaa !177
  %96 = icmp eq i16 %95, 25
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 27
  %99 = load i32, ptr %98, align 8, !tbaa !175
  %100 = and i32 %99, 64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %70, %76, %82, %88, %97, %93
  %103 = load ptr, ptr %71, align 8, !tbaa !67
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %70, !llvm.loop !178

105:                                              ; preds = %102, %97, %64, %59, %51
  %106 = phi ptr [ %16, %59 ], [ null, %51 ], [ %16, %64 ], [ %84, %97 ], [ %16, %102 ]
  %107 = icmp eq ptr %17, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call zeroext i8 @ED_view3d_minmax_verts(ptr noundef nonnull %17, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %215

110:                                              ; preds = %105
  %111 = icmp eq ptr %106, null
  br i1 %111, label %157, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 27
  %114 = load i32, ptr %113, align 8, !tbaa !175
  %115 = and i32 %114, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %157, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 18
  %119 = load ptr, ptr %118, align 8, !tbaa !179
  %120 = icmp eq ptr %119, null
  br i1 %120, label %215, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %124 = load ptr, ptr %119, align 8, !tbaa !67
  %125 = icmp eq ptr %124, null
  br i1 %125, label %155, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.bArmature, ptr %123, i64 0, i32 15
  %128 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 47
  br label %129

129:                                              ; preds = %126, %151
  %130 = phi ptr [ %124, %126 ], [ %153, %151 ]
  %131 = phi i8 [ 0, %126 ], [ %152, %151 ]
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %130, i64 0, i32 12
  %133 = load ptr, ptr %132, align 8, !tbaa !181
  %134 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 10
  %135 = load i32, ptr %134, align 8, !tbaa !183
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 25
  %140 = load i32, ptr %139, align 8, !tbaa !185
  %141 = load i32, ptr %127, align 8, !tbaa !186
  %142 = and i32 %141, %140
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.bPoseChannel, ptr %130, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !188
  %147 = icmp eq ptr %146, null
  %148 = select i1 %147, ptr %130, ptr %146
  %149 = getelementptr inbounds %struct.bPoseChannel, ptr %148, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %128, ptr noundef nonnull %149) #11
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %150 = getelementptr inbounds %struct.bPoseChannel, ptr %148, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %128, ptr noundef nonnull %150) #11
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  br label %151

151:                                              ; preds = %129, %144, %138
  %152 = phi i8 [ 1, %144 ], [ %131, %138 ], [ %131, %129 ]
  %153 = load ptr, ptr %130, align 8, !tbaa !67
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %129, !llvm.loop !189

155:                                              ; preds = %151, %121
  %156 = phi i8 [ 0, %121 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %215

157:                                              ; preds = %112, %110
  %158 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %106) #11
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = call zeroext i8 @paintface_minmax(ptr noundef %106, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %215

162:                                              ; preds = %157
  br i1 %111, label %176, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 27
  %165 = load i32, ptr %164, align 8, !tbaa !175
  %166 = and i32 %165, 32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = call i32 @PE_minmax(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %170 = trunc i32 %169 to i8
  br label %215

171:                                              ; preds = %163
  %172 = and i32 %165, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = call zeroext i8 @ED_sculpt_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %215

176:                                              ; preds = %162, %171
  %177 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !67
  %179 = icmp eq ptr %178, null
  br i1 %179, label %215, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  br label %182

182:                                              ; preds = %180, %211
  %183 = phi ptr [ %178, %180 ], [ %213, %211 ]
  %184 = phi i8 [ 0, %180 ], [ %212, %211 ]
  %185 = getelementptr inbounds %struct.Base, ptr %183, i64 0, i32 4
  %186 = load i32, ptr %185, align 8, !tbaa !176
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %211, label %189

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.Base, ptr %183, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !167
  %192 = load i32, ptr %181, align 8, !tbaa !169
  %193 = and i32 %192, %191
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %211, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.Base, ptr %183, i64 0, i32 7
  %197 = load ptr, ptr %196, align 8, !tbaa !170
  %198 = getelementptr inbounds %struct.Object, ptr %197, i64 0, i32 102
  %199 = load i8, ptr %198, align 8, !tbaa !171
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  br i1 %52, label %203, label %206

203:                                              ; preds = %202
  %204 = load ptr, ptr %23, align 8, !tbaa !47
  %205 = icmp eq ptr %197, %204
  br i1 %205, label %211, label %206

206:                                              ; preds = %203, %202
  %207 = call zeroext i8 @BKE_object_minmax_dupli(ptr noundef %8, ptr noundef %197, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load ptr, ptr %196, align 8, !tbaa !170
  call void @BKE_object_minmax(ptr noundef %210, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %211

211:                                              ; preds = %206, %209, %182, %189, %195, %203
  %212 = phi i8 [ %184, %203 ], [ %184, %195 ], [ %184, %189 ], [ %184, %182 ], [ 1, %209 ], [ 1, %206 ]
  %213 = load ptr, ptr %183, align 8, !tbaa !67
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %182, !llvm.loop !190

215:                                              ; preds = %211, %176, %155, %117, %168, %174, %160, %108
  %216 = phi i8 [ 1, %108 ], [ 1, %155 ], [ 1, %117 ], [ 1, %160 ], [ 1, %168 ], [ 0, %174 ], [ 1, %176 ], [ 1, %211 ]
  %217 = phi i8 [ %109, %108 ], [ %156, %155 ], [ 0, %117 ], [ %161, %160 ], [ %170, %168 ], [ %175, %174 ], [ 0, %176 ], [ %212, %211 ]
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %260, label %219

219:                                              ; preds = %215
  %220 = and i32 %20, 255
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %259, label %222

222:                                              ; preds = %219
  %223 = call ptr @CTX_wm_area(ptr noundef %0) #11
  %224 = getelementptr inbounds %struct.ScrArea, ptr %223, i64 0, i32 20
  %225 = load ptr, ptr %224, align 8, !tbaa !67
  %226 = icmp eq ptr %225, null
  br i1 %226, label %260, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 29
  br label %229

229:                                              ; preds = %256, %227
  %230 = phi ptr [ %225, %227 ], [ %257, %256 ]
  %231 = getelementptr inbounds %struct.ARegion, ptr %230, i64 0, i32 8
  %232 = load i16, ptr %231, align 2, !tbaa !92
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %256

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.ARegion, ptr %230, i64 0, i32 30
  %236 = load ptr, ptr %235, align 8, !tbaa !89
  %237 = getelementptr inbounds %struct.RegionView3D, ptr %236, i64 0, i32 25
  %238 = load i8, ptr %237, align 1, !tbaa !34
  %239 = icmp eq i8 %238, 2
  br i1 %239, label %240, label %255

240:                                              ; preds = %234
  %241 = load ptr, ptr %23, align 8, !tbaa !47
  %242 = icmp eq ptr %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.ID, ptr %241, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !48
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = load i16, ptr %228, align 2, !tbaa !53
  %249 = trunc i16 %248 to i8
  %250 = lshr i8 %249, 5
  %251 = and i8 %250, 1
  br label %252

252:                                              ; preds = %247, %243, %240
  %253 = phi i8 [ 0, %243 ], [ 0, %240 ], [ %251, %247 ]
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252, %234
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %230, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %216, i32 noundef %53)
  br label %256

256:                                              ; preds = %255, %252, %229
  %257 = load ptr, ptr %230, align 8, !tbaa !67
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %229, !llvm.loop !173

259:                                              ; preds = %219
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %7, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %216, i32 noundef %53)
  br label %260

260:                                              ; preds = %256, %222, %259, %215
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_lock_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_lock_clear_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_lock_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 16
  store ptr null, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 21
  store i8 0, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 25
  store i16 0, ptr %8, align 2, !tbaa !41
  %9 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %10 = load i16, ptr %9, align 2, !tbaa !53
  %11 = and i16 %10, -33
  store i16 %11, ptr %9, align 2, !tbaa !53
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %3) #11
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_lock_to_active(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_lock_to_active_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_lock_to_active_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %5 = icmp eq ptr %3, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 16
  store ptr null, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 21
  store i8 0, ptr %8, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 25
  store i16 0, ptr %9, align 2, !tbaa !41
  %10 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %11 = load i16, ptr %10, align 2, !tbaa !53
  %12 = and i16 %11, -33
  store i16 %12, ptr %10, align 2, !tbaa !53
  store ptr %4, ptr %7, align 8, !tbaa !46
  %13 = icmp eq ptr %4, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !177
  %17 = icmp eq i16 %16, 25
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !175
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %4) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %24, i64 0, i32 4
  br label %36

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !180
  %31 = getelementptr inbounds %struct.bArmature, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !191
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 5
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi ptr [ %35, %34 ], [ %27, %26 ]
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %37, i64 noundef 64) #11
  br label %39

39:                                               ; preds = %36, %28, %23, %14, %6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %3) #11
  br label %40

40:                                               ; preds = %2, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %2 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_cursor(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewcenter_cursor_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewcenter_cursor_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = icmp eq ptr %5, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %10 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %11 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %4) #11
  %12 = load float, ptr %11, align 4, !tbaa !55
  %13 = fneg float %12
  store float %13, ptr %3, align 4, !tbaa !55
  %14 = getelementptr inbounds float, ptr %11, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !55
  %16 = fneg float %15
  %17 = getelementptr inbounds float, ptr %3, i64 1
  store float %16, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds float, ptr %11, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !55
  %20 = fneg float %19
  %21 = getelementptr inbounds float, ptr %3, i64 2
  store float %20, ptr %21, align 4, !tbaa !55
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %4, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  br label %22

22:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_pick(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.71, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewcenter_pick_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewcenter_pick_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %9 = icmp eq ptr %6, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %11 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = call zeroext i8 @ED_view3d_autodist(ptr noundef %7, ptr noundef %8, ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef null), !range !88
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = fneg float %17
  store float %18, ptr %4, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fneg float %20
  %22 = getelementptr inbounds float, ptr %4, i64 1
  store float %21, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !55
  %25 = fneg float %24
  %26 = getelementptr inbounds float, ptr %4, i64 2
  store float %25, ptr %26, align 4, !tbaa !55
  call void @ED_view3d_win_to_3d_int(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %4) #11
  br label %27

27:                                               ; preds = %10, %15
  %28 = load float, ptr %4, align 4, !tbaa !55
  %29 = fneg float %28
  store float %29, ptr %4, align 4, !tbaa !55
  %30 = getelementptr inbounds float, ptr %4, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !55
  %32 = fneg float %31
  store float %32, ptr %30, align 4, !tbaa !55
  %33 = getelementptr inbounds float, ptr %4, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !55
  %35 = fneg float %34
  store float %35, ptr %33, align 4, !tbaa !55
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %5, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %36

36:                                               ; preds = %27, %3
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_camera(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_center_camera_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_user_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_center_camera_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca [2 x float], align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 20
  store float 0.000000e+00, ptr %11, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 19
  store float 0.000000e+00, ptr %12, align 4, !tbaa !193
  %13 = load ptr, ptr %4, align 8, !tbaa !67
  call void @ED_view3d_calc_camera_border_size(ptr noundef %6, ptr noundef %8, ptr noundef %13, ptr noundef %10, ptr noundef nonnull %3) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !96
  %17 = sitofp i16 %16 to float
  %18 = load float, ptr %3, align 4, !tbaa !55
  %19 = fadd float %18, 4.000000e+00
  %20 = fdiv float %17, %19
  %21 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 6
  %22 = load i16, ptr %21, align 2, !tbaa !97
  %23 = sitofp i16 %22 to float
  %24 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !55
  %26 = fadd float %25, 4.000000e+00
  %27 = fdiv float %23, %26
  %28 = fcmp olt float %20, %27
  %29 = select i1 %28, float %20, float %27
  %30 = call float @BKE_screen_view3d_zoom_from_fac(float noundef %29) #11
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 23
  store float %30, ptr %31, align 4, !tbaa !165
  %32 = fcmp olt float %30, -3.000000e+01
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = fcmp ogt float %30, 6.000000e+02
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %2
  %36 = phi float [ -3.000000e+01, %2 ], [ 6.000000e+02, %33 ]
  store float %36, ptr %31, align 4, !tbaa !165
  br label %37

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %4, align 8, !tbaa !67
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_camera_user_poll(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %6, %1
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_lock(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.75, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.76, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.77, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_center_lock_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_lock_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_center_lock_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 30
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 30, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %6) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_lock_poll(ptr noundef %0) #2 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !41
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %11, %7, %4
  %21 = phi i32 [ undef, %4 ], [ 0, %7 ], [ 1, %11 ], [ %19, %15 ]
  br i1 %6, label %22, label %23

22:                                               ; preds = %20, %1
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi i32 [ 0, %22 ], [ %21, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_render_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.78, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.80, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_border_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !123
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #11
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #11
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @render_border_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #11
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.81) #11
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %132

18:                                               ; preds = %14, %2
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #11
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @ED_view3d_calc_camera_border(ptr noundef %8, ptr noundef %6, ptr noundef %5, ptr noundef %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %33

23:                                               ; preds = %18
  store float 0.000000e+00, ptr %4, align 4, !tbaa !194
  %24 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float 0.000000e+00, ptr %24, align 4, !tbaa !195
  %25 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !96
  %27 = sitofp i16 %26 to float
  %28 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  store float %27, ptr %28, align 4, !tbaa !196
  %29 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %30 = load i16, ptr %29, align 2, !tbaa !97
  %31 = sitofp i16 %30 to float
  %32 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %31, ptr %32, align 4, !tbaa !197
  br label %33

33:                                               ; preds = %23, %22
  %34 = load i32, ptr %3, align 4, !tbaa !198
  %35 = sitofp i32 %34 to float
  %36 = load float, ptr %4, align 4, !tbaa !194
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !196
  %40 = fsub float %39, %36
  %41 = fdiv float %37, %40
  %42 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !199
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !195
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !197
  %50 = fsub float %49, %46
  %51 = fdiv float %47, %50
  %52 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !200
  %54 = sitofp i32 %53 to float
  %55 = fsub float %54, %36
  %56 = fdiv float %55, %40
  %57 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !201
  %59 = sitofp i32 %58 to float
  %60 = fsub float %59, %46
  %61 = fdiv float %60, %50
  %62 = fcmp olt float %41, 0.000000e+00
  br i1 %62, label %66, label %63

63:                                               ; preds = %33
  %64 = fcmp ogt float %41, 1.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %33, %63, %65
  %67 = phi float [ 1.000000e+00, %65 ], [ %41, %63 ], [ 0.000000e+00, %33 ]
  %68 = fcmp olt float %51, 0.000000e+00
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = fcmp ogt float %51, 1.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %66, %69, %71
  %73 = phi float [ 1.000000e+00, %71 ], [ %51, %69 ], [ 0.000000e+00, %66 ]
  %74 = fcmp olt float %56, 0.000000e+00
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = fcmp ogt float %56, 1.000000e+00
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %72, %75, %77
  %79 = phi float [ 1.000000e+00, %77 ], [ %56, %75 ], [ 0.000000e+00, %72 ]
  %80 = fcmp olt float %61, 0.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = fcmp ogt float %61, 1.000000e+00
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %78, %81, %83
  %85 = phi float [ 1.000000e+00, %83 ], [ %61, %81 ], [ 0.000000e+00, %78 ]
  %86 = load i8, ptr %19, align 1, !tbaa !34
  %87 = icmp eq i8 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58
  store float %67, ptr %89, align 8, !tbaa.struct !202
  %90 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 1
  store float %79, ptr %90, align 4, !tbaa.struct !203
  %91 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 2
  store float %73, ptr %91, align 8, !tbaa.struct !204
  %92 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 3
  br label %98

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17
  store float %67, ptr %94, align 8, !tbaa.struct !202
  %95 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 1
  store float %79, ptr %95, align 4, !tbaa.struct !203
  %96 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 2
  store float %73, ptr %96, align 8, !tbaa.struct !204
  %97 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 3
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi ptr [ %97, %93 ], [ %92, %88 ]
  %100 = phi i32 [ 252248064, %93 ], [ 67371008, %88 ]
  store float %85, ptr %99, align 4
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %100, ptr noundef null) #11
  %101 = fcmp ole float %67, 0.000000e+00
  %102 = fcmp oge float %79, 1.000000e+00
  %103 = select i1 %101, i1 %102, i1 false
  %104 = fcmp ole float %73, 0.000000e+00
  %105 = select i1 %103, i1 %104, i1 false
  %106 = fcmp oge float %85, 1.000000e+00
  %107 = select i1 %105, i1 %106, i1 false
  %108 = fcmp oeq float %67, %79
  %109 = select i1 %107, i1 true, i1 %108
  %110 = fcmp oeq float %73, %85
  %111 = select i1 %109, i1 true, i1 %110
  %112 = load i8, ptr %19, align 1, !tbaa !34
  %113 = icmp eq i8 %112, 2
  br i1 %111, label %114, label %123

114:                                              ; preds = %98
  br i1 %113, label %115, label %119

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 47
  %117 = load i32, ptr %116, align 8, !tbaa !205
  %118 = and i32 %117, -513
  store i32 %118, ptr %116, align 8, !tbaa !205
  br label %132

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %121 = load i16, ptr %120, align 2, !tbaa !53
  %122 = and i16 %121, -2049
  store i16 %122, ptr %120, align 2, !tbaa !53
  br label %132

123:                                              ; preds = %98
  br i1 %113, label %124, label %128

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 47
  %126 = load i32, ptr %125, align 8, !tbaa !205
  %127 = or i32 %126, 512
  store i32 %127, ptr %125, align 8, !tbaa !205
  br label %132

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %130 = load i16, ptr %129, align 2, !tbaa !53
  %131 = or i16 %130, 2048
  store i16 %131, ptr %129, align 2, !tbaa !53
  br label %132

132:                                              ; preds = %119, %115, %128, %124, %14
  %133 = phi i32 [ 8, %14 ], [ 4, %124 ], [ 4, %128 ], [ 4, %115 ], [ 4, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %133
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #4

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #4

declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_clear_render_border(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.84, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.85, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_render_border_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_render_border_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %4 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 25
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 47
  %11 = load i32, ptr %10, align 8, !tbaa !205
  %12 = and i32 %11, -513
  store i32 %12, ptr %10, align 8, !tbaa !205
  %13 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 58
  br label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %16 = load i16, ptr %15, align 2, !tbaa !53
  %17 = and i16 %16, -2049
  store i16 %17, ptr %15, align 2, !tbaa !53
  %18 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ 252248064, %14 ], [ 67371008, %9 ]
  %21 = phi ptr [ %18, %14 ], [ %13, %9 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %20, ptr noundef null) #11
  store float 0.000000e+00, ptr %21, align 4, !tbaa !194
  %22 = getelementptr inbounds %struct.rctf, ptr %21, i64 0, i32 2
  store float 0.000000e+00, ptr %22, align 4, !tbaa !195
  %23 = getelementptr inbounds %struct.rctf, ptr %21, i64 0, i32 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !196
  %24 = getelementptr inbounds %struct.rctf, ptr %21, i64 0, i32 3
  store float 1.000000e+00, ptr %24, align 4, !tbaa !197
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_zoom_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.89, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_zoom_border_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_zoom_border_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !123
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_zoom_border_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 29
  %19 = load i16, ptr %18, align 2, !tbaa !53
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %3
  %23 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %24

24:                                               ; preds = %13, %9, %17, %22
  %25 = phi i32 [ %23, %22 ], [ 8, %17 ], [ 8, %9 ], [ 8, %13 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_zoom_border_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.bglMats, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca %struct.ViewDepths, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %15 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %16 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %18 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #11
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.167) #11
  call void @ED_view3d_dist_range_get(ptr noundef %15, ptr noundef nonnull %5) #11
  call void @bgl_get_mats(ptr noundef nonnull %8) #11
  call void @ED_view3d_draw_depth(ptr noundef %17, ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  call void @view3d_update_depths_rect(ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull %3) #11
  %22 = call float @view3d_depth_near(ptr noundef nonnull %10) #11
  %23 = getelementptr inbounds %struct.ViewDepths, ptr %10, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %27(ptr noundef nonnull %24) #11
  store ptr null, ptr %23, align 8, !tbaa !206
  br label %28

28:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #11
  %29 = load i32, ptr %3, align 4, !tbaa !198
  %30 = sitofp i32 %29 to double
  %31 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !200
  %33 = sitofp i32 %32 to double
  %34 = fadd double %30, %33
  %35 = fmul double %34, 5.000000e-01
  %36 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !199
  %38 = sitofp i32 %37 to double
  %39 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !201
  %41 = sitofp i32 %40 to double
  %42 = fadd double %38, %41
  %43 = fmul double %42, 5.000000e-01
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 24
  %45 = load i8, ptr %44, align 8, !tbaa !147
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %99, label %47

47:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %48 = fcmp oeq float %22, 0x47EFFFFFE0000000
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !166
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.168) #11
  br label %227

52:                                               ; preds = %47
  %53 = fpext float %22 to double
  %54 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %55 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %57 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %58 = call i32 @gluUnProject(double noundef %35, double noundef %43, double noundef %53, ptr noundef nonnull %8, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %9, ptr noundef nonnull %56, ptr noundef nonnull %57) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %227, label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %3, align 4, !tbaa !198
  %62 = sitofp i32 %61 to double
  %63 = load i32, ptr %36, align 4, !tbaa !199
  %64 = sitofp i32 %63 to double
  %65 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %66 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %67 = call i32 @gluUnProject(double noundef %62, double noundef %64, double noundef %53, ptr noundef nonnull %8, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %11, ptr noundef nonnull %65, ptr noundef nonnull %66) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %227, label %69

69:                                               ; preds = %60
  %70 = load double, ptr %9, align 16, !tbaa !208
  %71 = load double, ptr %11, align 16, !tbaa !208
  %72 = fsub double %70, %71
  %73 = fptrunc double %72 to float
  store float %73, ptr %4, align 4, !tbaa !55
  %74 = load double, ptr %56, align 8, !tbaa !208
  %75 = load double, ptr %65, align 8, !tbaa !208
  %76 = fsub double %74, %75
  %77 = fptrunc double %76 to float
  %78 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %77, ptr %78, align 4, !tbaa !55
  %79 = load double, ptr %57, align 16, !tbaa !208
  %80 = load double, ptr %66, align 16, !tbaa !208
  %81 = fsub double %79, %80
  %82 = fptrunc double %81 to float
  %83 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %82, ptr %83, align 4, !tbaa !55
  %84 = fptrunc double %70 to float
  %85 = fneg float %84
  store float %85, ptr %7, align 4, !tbaa !55
  %86 = fptrunc double %74 to float
  %87 = fneg float %86
  %88 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %87, ptr %88, align 4, !tbaa !55
  %89 = fptrunc double %79 to float
  %90 = fneg float %89
  %91 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %90, ptr %91, align 4, !tbaa !55
  %92 = fmul float %77, %77
  %93 = call float @llvm.fmuladd.f32(float %73, float %73, float %92)
  %94 = call float @llvm.fmuladd.f32(float %82, float %82, float %93)
  %95 = call float @sqrtf(float noundef %94) #11
  store float %95, ptr %6, align 4, !tbaa !55
  %96 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 32
  %97 = load float, ptr %96, align 4, !tbaa !209
  %98 = fmul float %97, 1.500000e+00
  store float %98, ptr %5, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  br label %183

99:                                               ; preds = %28
  %100 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 5
  %101 = load i16, ptr %100, align 8, !tbaa !96
  %102 = sitofp i16 %101 to float
  %103 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 6
  %104 = load i16, ptr %103, align 2, !tbaa !97
  %105 = sitofp i16 %104 to float
  %106 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %107 = load float, ptr %106, align 8, !tbaa !54
  store float %107, ptr %6, align 4, !tbaa !55
  %108 = fcmp une float %22, 0x47EFFFFFE0000000
  br i1 %108, label %109, label %129

109:                                              ; preds = %99
  %110 = fpext float %22 to double
  %111 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %112 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %113 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %114 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %115 = call i32 @gluUnProject(double noundef %35, double noundef %43, double noundef %110, ptr noundef nonnull %8, ptr noundef nonnull %111, ptr noundef nonnull %112, ptr noundef nonnull %9, ptr noundef nonnull %113, ptr noundef nonnull %114) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %109
  %118 = load double, ptr %9, align 16, !tbaa !208
  %119 = fptrunc double %118 to float
  %120 = fneg float %119
  store float %120, ptr %7, align 4, !tbaa !55
  %121 = load double, ptr %113, align 8, !tbaa !208
  %122 = fptrunc double %121 to float
  %123 = fneg float %122
  %124 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %123, ptr %124, align 4, !tbaa !55
  %125 = load double, ptr %114, align 16, !tbaa !208
  %126 = fptrunc double %125 to float
  %127 = fneg float %126
  %128 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %127, ptr %128, align 4, !tbaa !55
  br label %168

129:                                              ; preds = %109, %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %130 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  %131 = load float, ptr %130, align 4, !tbaa !55
  store float %131, ptr %7, align 4, !tbaa !55
  %132 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !55
  %134 = getelementptr inbounds float, ptr %7, i64 1
  store float %133, ptr %134, align 4, !tbaa !55
  %135 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !55
  %137 = getelementptr inbounds float, ptr %7, i64 2
  store float %136, ptr %137, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %138 = fneg float %131
  store float %138, ptr %13, align 4, !tbaa !55
  %139 = fneg float %133
  %140 = getelementptr inbounds float, ptr %13, i64 1
  store float %139, ptr %140, align 4, !tbaa !55
  %141 = fneg float %136
  %142 = getelementptr inbounds float, ptr %13, i64 2
  store float %141, ptr %142, align 4, !tbaa !55
  %143 = call float @ED_view3d_calc_zfac(ptr noundef %16, ptr noundef nonnull %13, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  %144 = load i32, ptr %3, align 4, !tbaa !198
  %145 = load i32, ptr %31, align 4, !tbaa !200
  %146 = add nsw i32 %145, %144
  %147 = sitofp i32 %146 to float
  %148 = fsub float %147, %102
  %149 = fmul float %148, 5.000000e-01
  store float %149, ptr %12, align 4, !tbaa !55
  %150 = load i32, ptr %36, align 4, !tbaa !199
  %151 = load i32, ptr %39, align 4, !tbaa !201
  %152 = add nsw i32 %151, %150
  %153 = sitofp i32 %152 to float
  %154 = fsub float %153, %105
  %155 = fmul float %154, 5.000000e-01
  %156 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float %155, ptr %156, align 4, !tbaa !55
  call void @ED_view3d_win_to_delta(ptr noundef %14, ptr noundef nonnull %12, ptr noundef nonnull %4, float noundef %143) #11
  %157 = load float, ptr %4, align 4, !tbaa !55
  %158 = load float, ptr %7, align 4, !tbaa !55
  %159 = fsub float %158, %157
  store float %159, ptr %7, align 4, !tbaa !55
  %160 = getelementptr inbounds float, ptr %4, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = load float, ptr %134, align 4, !tbaa !55
  %163 = fsub float %162, %161
  store float %163, ptr %134, align 4, !tbaa !55
  %164 = getelementptr inbounds float, ptr %4, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !55
  %166 = load float, ptr %137, align 4, !tbaa !55
  %167 = fsub float %166, %165
  store float %167, ptr %137, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %168

168:                                              ; preds = %129, %117
  %169 = load i32, ptr %31, align 4, !tbaa !200
  %170 = load i32, ptr %3, align 4, !tbaa !198
  %171 = sub nsw i32 %169, %170
  %172 = sitofp i32 %171 to float
  %173 = fdiv float %172, %102
  %174 = load i32, ptr %39, align 4, !tbaa !201
  %175 = load i32, ptr %36, align 4, !tbaa !199
  %176 = sub nsw i32 %174, %175
  %177 = sitofp i32 %176 to float
  %178 = fdiv float %177, %105
  %179 = fcmp ogt float %173, %178
  %180 = select i1 %179, float %173, float %178
  %181 = load float, ptr %6, align 4, !tbaa !55
  %182 = fmul float %181, %180
  store float %182, ptr %6, align 4, !tbaa !55
  br label %183

183:                                              ; preds = %69, %168
  %184 = icmp eq i32 %21, 10
  br i1 %184, label %185, label %210

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  %187 = load float, ptr %7, align 4, !tbaa !55
  %188 = load float, ptr %186, align 4, !tbaa !55
  %189 = fsub float %187, %188
  store float %189, ptr %4, align 4, !tbaa !55
  %190 = getelementptr inbounds float, ptr %7, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !55
  %192 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !55
  %194 = fsub float %191, %193
  %195 = getelementptr inbounds float, ptr %4, i64 1
  store float %194, ptr %195, align 4, !tbaa !55
  %196 = getelementptr inbounds float, ptr %7, i64 2
  %197 = load float, ptr %196, align 4, !tbaa !55
  %198 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !55
  %200 = fsub float %197, %199
  %201 = getelementptr inbounds float, ptr %4, i64 2
  store float %200, ptr %201, align 4, !tbaa !55
  %202 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %203 = load float, ptr %202, align 8, !tbaa !54
  %204 = load float, ptr %6, align 4, !tbaa !55
  %205 = fdiv float %203, %204
  %206 = fmul float %203, %205
  store float %206, ptr %6, align 4, !tbaa !55
  %207 = fadd float %188, %189
  store float %207, ptr %7, align 4, !tbaa !55
  %208 = fadd float %193, %194
  store float %208, ptr %190, align 4, !tbaa !55
  %209 = fadd float %199, %200
  store float %209, ptr %196, align 4, !tbaa !55
  br label %210

210:                                              ; preds = %185, %183
  %211 = load float, ptr %6, align 4, !tbaa !55
  %212 = load float, ptr %5, align 4, !tbaa !55
  %213 = fcmp olt float %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store float %212, ptr %6, align 4, !tbaa !55
  br label %220

215:                                              ; preds = %210
  %216 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !55
  %218 = fcmp ogt float %211, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store float %217, ptr %6, align 4, !tbaa !55
  br label %220

220:                                              ; preds = %215, %219, %214
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %15, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, i32 noundef %18) #11
  %221 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 27
  %222 = load i8, ptr %221, align 1, !tbaa !93
  %223 = and i8 %222, 2
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220
  %226 = call ptr @CTX_wm_area(ptr noundef %0) #11
  call fastcc void @view3d_boxview_sync(ptr noundef %226, ptr noundef %14)
  br label %228

227:                                              ; preds = %52, %60, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  br label %228

228:                                              ; preds = %220, %225, %227
  %229 = phi i32 [ 2, %227 ], [ 4, %225 ], [ 4, %220 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %229
}

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_zoom_camera_1_to_1(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.90, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.92, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_zoom_1_to_1_camera_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_user_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_zoom_1_to_1_camera_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca [2 x float], align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !67
  %9 = load ptr, ptr %4, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %12 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 30
  %13 = load i16, ptr %12, align 2, !tbaa !210
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !211
  %17 = mul nsw i32 %16, %14
  %18 = sdiv i32 %17, 100
  call void @ED_view3d_calc_camera_border_size(ptr noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %3) #11
  %19 = sitofp i32 %18 to float
  %20 = load float, ptr %3, align 4, !tbaa !55
  %21 = fdiv float %19, %20
  %22 = call float @BKE_screen_view3d_zoom_from_fac(float noundef %21) #11
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 23
  store float %22, ptr %23, align 4, !tbaa !165
  %24 = fcmp olt float %22, -3.000000e+01
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = fcmp ogt float %22, 6.000000e+02
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %2
  %28 = phi float [ -3.000000e+01, %2 ], [ 6.000000e+02, %25 ]
  store float %28, ptr %23, align 4, !tbaa !165
  br label %29

29:                                               ; preds = %27, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %30 = load ptr, ptr %4, align 8, !tbaa !67
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %30) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_viewnumpad(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewnumpad_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_items, i32 noundef 0, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !212
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #11
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewnumpad_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  %8 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %9 = load ptr, ptr %4, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.96) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !157
  %16 = call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.99) #11
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 27
  %19 = load i8, ptr %18, align 1, !tbaa !93
  %20 = and i8 %19, 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %21, i8 0, i8 %17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 25
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 34
  %28 = load i16, ptr %27, align 4, !tbaa !134
  %29 = sext i16 %28 to i32
  br label %32

30:                                               ; preds = %2
  %31 = load i32, ptr @viewnumpad_exec.perspo, align 4, !tbaa !213
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %34 = add i32 %14, -1
  %35 = icmp ult i32 %34, 6
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %37 = trunc i32 %14 to i8
  %38 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %37, ptr noundef nonnull %5) #11
  %39 = load ptr, ptr %3, align 8, !tbaa !67
  %40 = load ptr, ptr %4, align 8, !tbaa !67
  %41 = trunc i32 %14 to i16
  call fastcc void @axis_set_view(ptr noundef %0, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %5, i16 noundef signext %41, i32 noundef %33, i8 noundef zeroext %22, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %130

42:                                               ; preds = %32
  %43 = icmp ne i32 %14, 8
  %44 = select i1 %43, i1 true, i1 %21
  br i1 %44, label %130, label %45

45:                                               ; preds = %42
  br i1 %25, label %121, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !174
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Base, ptr %48, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !170
  br label %53

53:                                               ; preds = %46, %50
  %54 = phi ptr [ %52, %50 ], [ null, %46 ]
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !214
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 33
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %59, ptr noundef nonnull %60) #11
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 26
  %62 = load i8, ptr %61, align 2, !tbaa !95
  %63 = zext i8 %62 to i16
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 35
  store i16 %63, ptr %64, align 2, !tbaa !133
  %65 = load i8, ptr %23, align 1, !tbaa !34
  %66 = icmp eq i8 %65, 2
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = zext i8 %65 to i16
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 34
  store i16 %68, ptr %69, align 4, !tbaa !134
  br label %70

70:                                               ; preds = %67, %58, %53
  %71 = load ptr, ptr %3, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 26
  %73 = load i16, ptr %72, align 4, !tbaa !215
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !216
  %78 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 15
  store ptr %77, ptr %78, align 8, !tbaa !47
  br label %86

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 15
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !216
  store ptr %85, ptr %80, align 8, !tbaa !47
  br label %86

86:                                               ; preds = %79, %83, %75
  %87 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = icmp eq ptr %88, null
  %90 = icmp ne ptr %54, null
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %94 = load i16, ptr %93, align 8, !tbaa !177
  %95 = icmp eq i16 %94, 11
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store ptr %54, ptr %87, align 8, !tbaa !47
  br label %97

97:                                               ; preds = %96, %92, %86
  %98 = load ptr, ptr %87, align 8, !tbaa !47
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = call ptr @BKE_scene_camera_find(ptr noundef %6) #11
  %102 = load ptr, ptr %3, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct.View3D, ptr %102, i64 0, i32 15
  store ptr %101, ptr %103, align 8, !tbaa !47
  br label %104

104:                                              ; preds = %100, %97
  %105 = load ptr, ptr %3, align 8, !tbaa !67
  %106 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !47
  %108 = icmp eq ptr %107, null
  br i1 %108, label %135, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 26
  %111 = load i16, ptr %110, align 4, !tbaa !215
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  store ptr %107, ptr %114, align 8, !tbaa !216
  br label %115

115:                                              ; preds = %113, %109
  store i8 2, ptr %23, align 1, !tbaa !34
  %116 = load ptr, ptr %4, align 8, !tbaa !67
  %117 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 22
  %118 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 17
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 18
  %120 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 30
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %105, ptr noundef %116, ptr noundef null, ptr noundef nonnull %107, ptr noundef nonnull %117, ptr noundef nonnull %118, ptr noundef nonnull %119, ptr noundef nonnull %120, i32 noundef %7) #11
  br label %130

121:                                              ; preds = %45
  %122 = load ptr, ptr %3, align 8, !tbaa !67
  %123 = load ptr, ptr %4, align 8, !tbaa !67
  %124 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 33
  %125 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 35
  %126 = load i16, ptr %125, align 2, !tbaa !133
  %127 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 34
  %128 = load i16, ptr %127, align 4, !tbaa !134
  %129 = sext i16 %128 to i32
  call fastcc void @axis_set_view(ptr noundef %0, ptr noundef %122, ptr noundef %123, ptr noundef nonnull %124, i16 noundef signext %126, i32 noundef %129, i8 noundef zeroext 0, i32 noundef %7)
  br label %130

130:                                              ; preds = %42, %115, %121, %36
  %131 = load i8, ptr %23, align 1, !tbaa !34
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = zext i8 %131 to i32
  store i32 %134, ptr @viewnumpad_exec.perspo, align 4, !tbaa !213
  br label %135

135:                                              ; preds = %104, %130, %133
  %136 = phi i32 [ 4, %133 ], [ 4, %130 ], [ 2, %104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %136
}

declare i32 @ED_operator_rv3d_user_region_poll(ptr noundef) #4

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_view_orbit(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.103, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.104, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vieworbit_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_orbit_items, i32 noundef 0, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !212
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vieworbit_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %14 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %15 = load ptr, ptr %8, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 30
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !157
  %20 = call i32 @RNA_enum_get(ptr noundef %19, ptr noundef nonnull @.str.96) #11
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 27
  %22 = load i8, ptr %21, align 1, !tbaa !93
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %196

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 8, !tbaa !67
  %31 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %196, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %196

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %40 = load i16, ptr %39, align 2, !tbaa !53
  %41 = and i16 %40, 32
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %196, label %43

43:                                               ; preds = %38, %25
  %44 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !217
  %46 = sitofp i16 %45 to float
  %47 = fmul float %46, 0x3F91DF46A0000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %48 = load ptr, ptr %7, align 8, !tbaa !67
  %49 = load ptr, ptr %8, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 30
  %51 = load ptr, ptr %50, align 8, !tbaa !89
  %52 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %53 = getelementptr inbounds %struct.View3D, ptr %48, i64 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.View3D, ptr %48, i64 0, i32 29
  %62 = load i16, ptr %61, align 2, !tbaa !53
  %63 = and i16 %62, 32
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 25
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %144, label %69

69:                                               ; preds = %65, %60, %56, %43
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 25
  %71 = load i8, ptr %70, align 1, !tbaa !34
  switch i8 %71, label %134 [
    i8 1, label %144
    i8 2, label %72
  ]

72:                                               ; preds = %69
  %73 = and i32 %52, 2048
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 35
  %77 = load i16, ptr %76, align 2, !tbaa !133
  %78 = add i16 %77, -1
  %79 = icmp ult i16 %78, 6
  br i1 %79, label %84, label %80

80:                                               ; preds = %75, %72
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 34
  %82 = load i16, ptr %81, align 4, !tbaa !134
  %83 = trunc i16 %82 to i8
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i8 [ %83, %80 ], [ 1, %75 ]
  br i1 %55, label %119, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 22
  %89 = call float @ED_view3d_offset_distance(ptr noundef nonnull %87, ptr noundef nonnull %88, float noundef 1.000000e+00)
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 18
  store float %89, ptr %90, align 8, !tbaa !54
  %91 = load ptr, ptr %53, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 17
  %93 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %93) #11
  call void @normalize_m3(ptr noundef nonnull %3) #11
  %94 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 47, i64 3
  %95 = load float, ptr %94, align 4, !tbaa !55
  %96 = fneg float %95
  store float %96, ptr %88, align 4, !tbaa !55
  %97 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 47, i64 3, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !55
  %99 = fneg float %98
  %100 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 22, i64 1
  store float %99, ptr %100, align 4, !tbaa !55
  %101 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 47, i64 3, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !55
  %103 = fneg float %102
  %104 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 22, i64 2
  store float %103, ptr %104, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  %105 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  call void @mat3_to_quat(ptr noundef nonnull %92, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  store float 0.000000e+00, ptr %5, align 4, !tbaa !55
  %106 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %106, align 4, !tbaa !55
  %107 = getelementptr inbounds float, ptr %5, i64 2
  %108 = load float, ptr %90, align 4, !tbaa !55
  %109 = fneg float %108
  store float %109, ptr %107, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #11
  %110 = load float, ptr %5, align 4, !tbaa !55
  %111 = load float, ptr %88, align 4, !tbaa !55
  %112 = fsub float %111, %110
  store float %112, ptr %88, align 4, !tbaa !55
  %113 = load float, ptr %106, align 4, !tbaa !55
  %114 = load float, ptr %100, align 4, !tbaa !55
  %115 = fsub float %114, %113
  store float %115, ptr %100, align 4, !tbaa !55
  %116 = load float, ptr %107, align 4, !tbaa !55
  %117 = load float, ptr %104, align 4, !tbaa !55
  %118 = fsub float %117, %116
  store float %118, ptr %104, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  br label %119

119:                                              ; preds = %86, %84
  %120 = load ptr, ptr %53, align 8, !tbaa !47
  %121 = icmp eq ptr %120, null
  br i1 %121, label %142, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.View3D, ptr %48, i64 0, i32 29
  %128 = load i16, ptr %127, align 2, !tbaa !53
  %129 = and i16 %128, 32
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %126
  %132 = load i8, ptr %70, align 1, !tbaa !34
  %133 = icmp eq i8 %132, 2
  br i1 %133, label %144, label %142

134:                                              ; preds = %69
  %135 = and i32 %52, 2048
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 26
  %139 = load i8, ptr %138, align 2, !tbaa !95
  %140 = add i8 %139, -1
  %141 = icmp ult i8 %140, 6
  br i1 %141, label %142, label %144

142:                                              ; preds = %137, %119, %122, %126, %131
  %143 = phi i8 [ %85, %131 ], [ %85, %126 ], [ %85, %122 ], [ %85, %119 ], [ 1, %137 ]
  store i8 %143, ptr %70, align 1, !tbaa !34
  br label %144

144:                                              ; preds = %142, %131, %65, %69, %134, %137
  %145 = add i32 %20, -1
  %146 = icmp ult i32 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = icmp eq i32 %20, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  %149 = fneg float %47
  %150 = select i1 %148, float %149, float %47
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %12, float noundef %150) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  br label %156

151:                                              ; preds = %144
  %152 = icmp eq i32 %20, 3
  %153 = fneg float %47
  %154 = select i1 %152, float %153, float %47
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 2
  call void @axis_angle_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %155, float noundef %154) #11
  br label %156

156:                                              ; preds = %151, %147
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %157, ptr noundef nonnull %9) #11
  %158 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 26
  store i8 0, ptr %158, align 2, !tbaa !95
  %159 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %160 = and i32 %159, 16384
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %191, label %162

162:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  call fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr noundef nonnull %13)
  %163 = load float, ptr %13, align 4, !tbaa !55
  %164 = fneg float %163
  store float %164, ptr %13, align 4, !tbaa !55
  %165 = getelementptr inbounds float, ptr %13, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !55
  %167 = fneg float %166
  store float %167, ptr %165, align 4, !tbaa !55
  %168 = getelementptr inbounds float, ptr %13, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !55
  %170 = fneg float %169
  store float %170, ptr %168, align 4, !tbaa !55
  %171 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22
  %172 = load float, ptr %171, align 4, !tbaa !55
  store float %172, ptr %11, align 4, !tbaa !55
  %173 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !55
  %175 = getelementptr inbounds float, ptr %11, i64 1
  store float %174, ptr %175, align 4, !tbaa !55
  %176 = getelementptr inbounds %struct.RegionView3D, ptr %17, i64 0, i32 22, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !55
  %178 = getelementptr inbounds float, ptr %11, i64 2
  store float %177, ptr %178, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @conjugate_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %157) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %10) #11
  call void @conjugate_qt(ptr noundef nonnull %6) #11
  %179 = load float, ptr %11, align 4, !tbaa !55
  %180 = fadd float %163, %179
  store float %180, ptr %11, align 4, !tbaa !55
  %181 = load float, ptr %175, align 4, !tbaa !55
  %182 = fadd float %166, %181
  store float %182, ptr %175, align 4, !tbaa !55
  %183 = load float, ptr %178, align 4, !tbaa !55
  %184 = fadd float %169, %183
  store float %184, ptr %178, align 4, !tbaa !55
  call void @mul_qt_v3(ptr noundef nonnull %6, ptr noundef nonnull %11) #11
  %185 = load float, ptr %11, align 4, !tbaa !55
  %186 = fsub float %185, %163
  store float %186, ptr %11, align 4, !tbaa !55
  %187 = load float, ptr %175, align 4, !tbaa !55
  %188 = fsub float %187, %166
  store float %188, ptr %175, align 4, !tbaa !55
  %189 = load float, ptr %178, align 4, !tbaa !55
  %190 = fsub float %189, %169
  store float %190, ptr %178, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %191

191:                                              ; preds = %162, %156
  %192 = phi i32 [ 0, %162 ], [ %44, %156 ]
  %193 = phi ptr [ %11, %162 ], [ null, %156 ]
  %194 = load ptr, ptr %7, align 8, !tbaa !67
  %195 = load ptr, ptr %8, align 8, !tbaa !67
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %194, ptr noundef %195, ptr noundef null, ptr noundef null, ptr noundef %193, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, i32 noundef %192) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %196

196:                                              ; preds = %34, %29, %2, %38, %191
  %197 = phi i32 [ 4, %191 ], [ 2, %38 ], [ 2, %2 ], [ 2, %29 ], [ 2, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_view_roll(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.109, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewroll_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewroll_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewroll_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewroll_cancel, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.110, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.4, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #11
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !212
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !156
  %15 = tail call ptr @RNA_def_enum(ptr noundef %14, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_roll_items, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113) #11
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewroll_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.96) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !157
  %10 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.110) #11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 @viewroll_exec(ptr noundef %0, ptr noundef %1), !range !154
  br label %85

14:                                               ; preds = %8
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.165) #11
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !124
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  store ptr %18, ptr %16, align 8, !tbaa !126
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %20 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !129
  %21 = load ptr, ptr %16, align 8, !tbaa !126
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !131
  %25 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !132
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %29 = lshr i32 %28, 14
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = lshr i32 %28, 15
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %31, i8 noundef zeroext %34)
  %35 = load ptr, ptr %17, align 8, !tbaa !124
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9
  %37 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !132
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !55
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 2, i64 2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !55
  %43 = fmul float %42, %42
  %44 = tail call float @llvm.fmuladd.f32(float %40, float %40, float %43)
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %38, i64 0, i32 2, i64 2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !55
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %44)
  %48 = fcmp ogt float %47, 0x38AA95A5C0000000
  br i1 %48, label %49, label %59

49:                                               ; preds = %14
  %50 = tail call float @sqrtf(float noundef %47) #11
  %51 = fdiv float 1.000000e+00, %50
  %52 = load float, ptr %39, align 4, !tbaa !55
  %53 = fmul float %52, %51
  store float %53, ptr %36, align 4, !tbaa !55
  %54 = load float, ptr %41, align 4, !tbaa !55
  %55 = fmul float %51, %54
  %56 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9, i64 1
  store float %55, ptr %56, align 4, !tbaa !55
  %57 = load float, ptr %45, align 4, !tbaa !55
  %58 = fmul float %51, %57
  br label %61

59:                                               ; preds = %14
  store float 0.000000e+00, ptr %36, align 4, !tbaa !55
  %60 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !55
  br label %61

61:                                               ; preds = %49, %59
  %62 = phi float [ %58, %49 ], [ 0.000000e+00, %59 ]
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9, i64 2
  store float %62, ptr %63, align 4, !tbaa !55
  %64 = load float, ptr %36, align 4, !tbaa !55
  %65 = fneg float %64
  store float %65, ptr %36, align 4, !tbaa !55
  %66 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !55
  %68 = fneg float %67
  store float %68, ptr %66, align 4, !tbaa !55
  %69 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 9, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !55
  %71 = fneg float %70
  store float %71, ptr %69, align 4, !tbaa !55
  %72 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %73 = load i16, ptr %72, align 8, !tbaa !135
  %74 = icmp eq i16 %73, 16
  br i1 %74, label %75, label %83

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !138
  %78 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 22
  store i32 %77, ptr %78, align 8, !tbaa !158
  %79 = getelementptr inbounds %struct.ViewOpsData, ptr %35, i64 0, i32 20
  store i32 %77, ptr %79, align 8, !tbaa !159
  %80 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %81 = load i32, ptr %80, align 8, !tbaa !139
  tail call fastcc void @viewroll_apply(ptr noundef %35, i32 noundef %81)
  %82 = load ptr, ptr %37, align 8, !tbaa !132
  tail call void @ED_view3d_depth_tag_update(ptr noundef %82) #11
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %85

83:                                               ; preds = %61
  %84 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  br label %85

85:                                               ; preds = %12, %83, %75
  %86 = phi i32 [ 4, %12 ], [ 4, %75 ], [ 1, %83 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewroll_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  store ptr %13, ptr %5, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !131
  store ptr %15, ptr %4, align 8, !tbaa !67
  br label %18

16:                                               ; preds = %2
  %17 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %5, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 25
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %97, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 29
  %36 = load i16, ptr %35, align 2, !tbaa !53
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %97, label %39

39:                                               ; preds = %34, %18
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !157
  %42 = call i32 @RNA_enum_get(ptr noundef %41, ptr noundef nonnull @.str.96) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !157
  %46 = call float @RNA_float_get(ptr noundef %45, ptr noundef nonnull @.str.110) #11
  br label %51

47:                                               ; preds = %39
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !217
  %49 = sitofp i16 %48 to float
  %50 = fmul float %49, 0x3F91DF46A0000000
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi float [ %46, %44 ], [ %50, %47 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %53 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #11
  %54 = icmp eq i32 %42, 1
  %55 = fneg float %52
  %56 = select i1 %54, float %55, float %52
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !55
  %61 = fmul float %60, %60
  %62 = call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !55
  %65 = call float @llvm.fmuladd.f32(float %64, float %64, float %62)
  %66 = fcmp ogt float %65, 0x38AA95A5C0000000
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = call float @sqrtf(float noundef %65) #11
  %69 = fdiv float 1.000000e+00, %68
  %70 = load float, ptr %57, align 4, !tbaa !55
  %71 = fmul float %70, %69
  store float %71, ptr %6, align 4, !tbaa !55
  %72 = load float, ptr %59, align 4, !tbaa !55
  %73 = fmul float %69, %72
  %74 = getelementptr inbounds float, ptr %6, i64 1
  store float %73, ptr %74, align 4, !tbaa !55
  %75 = load float, ptr %63, align 4, !tbaa !55
  %76 = fmul float %69, %75
  br label %79

77:                                               ; preds = %51
  store float 0.000000e+00, ptr %6, align 4, !tbaa !55
  %78 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %78, align 4, !tbaa !55
  br label %79

79:                                               ; preds = %67, %77
  %80 = phi float [ %76, %67 ], [ 0.000000e+00, %77 ]
  %81 = getelementptr inbounds float, ptr %6, i64 2
  store float %80, ptr %81, align 4, !tbaa !55
  %82 = load float, ptr %6, align 4, !tbaa !55
  %83 = fneg float %82
  store float %83, ptr %6, align 4, !tbaa !55
  %84 = getelementptr inbounds float, ptr %6, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !55
  %86 = fneg float %85
  store float %86, ptr %84, align 4, !tbaa !55
  %87 = getelementptr inbounds float, ptr %6, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !55
  %89 = fneg float %88
  store float %89, ptr %87, align 4, !tbaa !55
  %90 = load ptr, ptr %5, align 8, !tbaa !67
  %91 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 17
  %92 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 30
  %93 = load ptr, ptr %92, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %6, float noundef %56) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %91, ptr noundef nonnull %3) #11
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %93, i64 0, i32 26
  store i8 0, ptr %94, align 2, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %95 = load ptr, ptr %4, align 8, !tbaa !67
  %96 = load ptr, ptr %5, align 8, !tbaa !67
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %95, ptr noundef %96, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, i32 noundef %53) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %98

97:                                               ; preds = %30, %25, %34
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %98

98:                                               ; preds = %97, %79
  %99 = phi i32 [ 4, %79 ], [ 2, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewroll_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !135
  %9 = sext i16 %8 to i32
  %10 = icmp eq i16 %8, 4
  br i1 %10, label %29, label %11

11:                                               ; preds = %3
  %12 = icmp eq i16 %8, 20514
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !142
  switch i16 %15, label %29 [
    i16 1, label %16
    i16 5, label %17
    i16 6, label %19
  ]

16:                                               ; preds = %13
  br label %29

17:                                               ; preds = %13
  %18 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.32, i16 noundef signext 0, ptr noundef null) #11
  br label %29

19:                                               ; preds = %13
  %20 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.14, i16 noundef signext 0, ptr noundef null) #11
  br label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = icmp eq i16 %27, 2
  br label %29

29:                                               ; preds = %25, %3, %13, %19, %17, %16, %21
  %30 = phi i1 [ false, %13 ], [ true, %19 ], [ true, %17 ], [ true, %16 ], [ false, %21 ], [ false, %3 ], [ %28, %25 ]
  br i1 %10, label %31, label %34

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !138
  tail call fastcc void @viewroll_apply(ptr noundef %6, i32 noundef %33)
  br label %85

34:                                               ; preds = %29
  br i1 %30, label %35, label %85

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !131
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 29
  %49 = load i16, ptr %48, align 2, !tbaa !53
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 25
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = icmp eq i8 %54, 2
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %58 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %59 = and i32 %58, 524288
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load ptr, ptr %40, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %61, %66
  %67 = phi ptr [ %69, %66 ], [ %64, %61 ]
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !62
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %66, !llvm.loop !87

71:                                               ; preds = %61, %56
  %72 = load ptr, ptr %40, align 8, !tbaa !47
  br label %73

73:                                               ; preds = %66, %71
  %74 = phi ptr [ %72, %71 ], [ %67, %66 ]
  %75 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %57, ptr noundef %74) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %4, ptr noundef %74, ptr noundef null, ptr noundef null) #11
  %78 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #11
  %79 = getelementptr inbounds %struct.Scene, ptr %57, i64 0, i32 22, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !69
  %81 = sitofp i32 %80 to float
  %82 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef %78, i16 noundef signext 0, float noundef %81) #11
  call void @BLI_freelistN(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %83

83:                                               ; preds = %77, %73, %35, %43, %47, %52
  %84 = load ptr, ptr %38, align 8, !tbaa !132
  call void @ED_view3d_depth_tag_update(ptr noundef %84) #11
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  br label %85

85:                                               ; preds = %31, %34, %83
  %86 = phi i32 [ 4, %83 ], [ 1, %34 ], [ 1, %31 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal void @viewroll_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1)
  ret void
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_view_pan(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.116, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewpan_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_pan_items, i32 noundef 0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !212
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewpan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %11 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 25
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 25
  %17 = load i16, ptr %16, align 2, !tbaa !41
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !166
  tail call void @BKE_report(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.166) #11
  br label %59

26:                                               ; preds = %19, %2
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !157
  %29 = tail call i32 @RNA_enum_get(ptr noundef %28, ptr noundef nonnull @.str.96) #11
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %8, ptr noundef %9, i8 noundef zeroext 1)
  %30 = call float @ED_view3d_calc_zfac(ptr noundef %9, ptr noundef nonnull %4, ptr noundef null) #11
  switch i32 %29, label %37 [
    i32 6, label %31
    i32 5, label %32
    i32 8, label %33
    i32 7, label %35
  ]

31:                                               ; preds = %26
  store float -3.200000e+01, ptr %5, align 8, !tbaa !55
  br label %37

32:                                               ; preds = %26
  store float 3.200000e+01, ptr %5, align 8, !tbaa !55
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float -2.500000e+01, ptr %34, align 4, !tbaa !55
  br label %37

35:                                               ; preds = %26
  %36 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 2.500000e+01, ptr %36, align 4, !tbaa !55
  br label %37

37:                                               ; preds = %26, %32, %35, %33, %31
  call void @ED_view3d_win_to_delta(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %3, float noundef %30) #11
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  %39 = load float, ptr %3, align 4, !tbaa !55
  %40 = load float, ptr %38, align 4, !tbaa !55
  %41 = fadd float %39, %40
  store float %41, ptr %38, align 4, !tbaa !55
  %42 = getelementptr inbounds float, ptr %3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !55
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !55
  %46 = fadd float %43, %45
  store float %46, ptr %44, align 4, !tbaa !55
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !55
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !55
  %51 = fadd float %48, %50
  store float %51, ptr %49, align 4, !tbaa !55
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %53 = load i8, ptr %52, align 1, !tbaa !93
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  call fastcc void @view3d_boxview_sync(ptr noundef %6, ptr noundef %7)
  br label %57

57:                                               ; preds = %56, %37
  call void @ED_view3d_depth_tag_update(ptr noundef %9) #11
  %58 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %8, ptr noundef %9), !range !88
  call void @ED_region_tag_redraw(ptr noundef %7) #11
  br label %59

59:                                               ; preds = %23, %57
  %60 = phi i32 [ 4, %57 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_persportho(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewpersportho_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewpersportho_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %6 = load ptr, ptr %4, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 27
  %10 = load i8, ptr %9, align 1, !tbaa !93
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %14, align 1, !tbaa !34
  call void @ED_region_tag_redraw(ptr noundef %6) #11
  br label %18

18:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_navigate(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_navigate_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_navigate_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  %4 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 99), align 2, !tbaa !218
  %5 = icmp eq i8 %4, 1
  %6 = select i1 %5, ptr @.str.223, ptr @.str.224
  %7 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext 0, ptr noundef null) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_background_image_add(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @background_image_add_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @background_image_add_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !123
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef 64, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef 1024, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @background_image_add_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.132) #11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.132, ptr noundef nonnull %5) #11
  %13 = call ptr @BKE_image_load_exists(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  br label %21

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !tbaa !157
  %16 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.128) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %19, ptr noundef nonnull @.str.128, ptr noundef nonnull %4) #11
  %20 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %4) #11
  br label %21

21:                                               ; preds = %14, %18, %11
  %22 = phi ptr [ %13, %11 ], [ %20, %18 ], [ null, %14 ]
  %23 = call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %25 = call ptr %24(i64 noundef 104, ptr noundef nonnull @.str.163) #11
  %26 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 8
  store float 5.000000e+00, ptr %26, align 8, !tbaa !219
  %27 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 9
  store float 5.000000e-01, ptr %27, align 4, !tbaa !223
  %28 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 3, i32 5
  store i8 2, ptr %28, align 8, !tbaa !224
  %29 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 3, i32 7
  store i8 1, ptr %29, align 2, !tbaa !225
  %30 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 10
  store i16 0, ptr %30, align 8, !tbaa !226
  %31 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 11
  %32 = load i16, ptr %31, align 2, !tbaa !227
  %33 = or i16 %32, 6
  store i16 %33, ptr %31, align 2, !tbaa !227
  %34 = getelementptr inbounds %struct.View3D, ptr %23, i64 0, i32 18
  call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef %25) #11
  %35 = icmp eq ptr %22, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 2
  store ptr %22, ptr %37, align 8, !tbaa !228
  call void @id_us_plus(ptr noundef nonnull %22) #11
  %38 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %39 = load i16, ptr %38, align 8, !tbaa !229
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = or disjoint i16 %39, 2
  store i16 %43, ptr %38, align 8, !tbaa !229
  br label %44

44:                                               ; preds = %36, %42, %21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @background_image_add_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str.163) #11
  %6 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 8
  store float 5.000000e+00, ptr %6, align 8, !tbaa !219
  %7 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 9
  store float 5.000000e-01, ptr %7, align 4, !tbaa !223
  %8 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 3, i32 5
  store i8 2, ptr %8, align 8, !tbaa !224
  %9 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 3, i32 7
  store i8 1, ptr %9, align 2, !tbaa !225
  %10 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 10
  store i16 0, ptr %10, align 8, !tbaa !226
  %11 = getelementptr inbounds %struct.BGpic, ptr %5, i64 0, i32 11
  %12 = load i16, ptr %11, align 2, !tbaa !227
  %13 = or i16 %12, 6
  store i16 %13, ptr %11, align 2, !tbaa !227
  %14 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %5) #11
  ret i32 4
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_background_image_remove(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @background_image_remove_exec, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @background_image_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.139) #11
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 18
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %6) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BGpic, ptr %8, i64 0, i32 12
  %12 = load i16, ptr %11, align 4, !tbaa !230
  switch i16 %12, label %20 [
    i16 0, label %13
    i16 1, label %15
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.BGpic, ptr %8, i64 0, i32 2
  br label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BGpic, ptr %8, i64 0, i32 4
  br label %17

17:                                               ; preds = %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void @id_us_min(ptr noundef %19) #11
  br label %20

20:                                               ; preds = %17, %10
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %21(ptr noundef nonnull %8) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %3) #11
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_clipping_local(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.BoundBox, align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 32
  %6 = load i16, ptr %5, align 2, !tbaa !101
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %12 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef %1) #11
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %17, %13 ]
  %15 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 %14
  %16 = getelementptr inbounds [8 x [3 x float]], ptr %11, i64 0, i64 %14
  call void @mul_v3_m4v3(ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef %16) #11
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %13, !llvm.loop !231

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 8
  %21 = call zeroext i8 @is_negative_m4(ptr noundef %1) #11
  %22 = icmp eq i8 %21, 0
  br label %23

23:                                               ; preds = %19, %44
  %24 = phi i64 [ 0, %19 ], [ %28, %44 ]
  %25 = getelementptr inbounds [4 x float], ptr %20, i64 %24
  %26 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 %24
  %27 = icmp eq i64 %24, 3
  %28 = add nuw nsw i64 %24, 1
  %29 = and i64 %28, 4294967295
  %30 = select i1 %27, i64 0, i64 %29
  %31 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 %30
  %32 = or disjoint i64 %24, 4
  %33 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 %32
  %34 = call float @normal_tri_v3(ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %31, ptr noundef nonnull %33) #11
  br i1 %22, label %44, label %35

35:                                               ; preds = %23
  %36 = load float, ptr %25, align 4, !tbaa !55
  %37 = fneg float %36
  store float %37, ptr %25, align 4, !tbaa !55
  %38 = getelementptr inbounds float, ptr %25, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !55
  %40 = fneg float %39
  store float %40, ptr %38, align 4, !tbaa !55
  %41 = getelementptr inbounds float, ptr %25, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !55
  %43 = fneg float %42
  store float %43, ptr %41, align 4, !tbaa !55
  br label %44

44:                                               ; preds = %35, %23
  %45 = load float, ptr %25, align 4, !tbaa !55
  %46 = load float, ptr %26, align 4, !tbaa !55
  %47 = getelementptr inbounds float, ptr %25, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !55
  %49 = getelementptr inbounds float, ptr %26, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !55
  %51 = fmul float %48, %50
  %52 = call float @llvm.fmuladd.f32(float %45, float %46, float %51)
  %53 = getelementptr inbounds float, ptr %25, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !55
  %55 = getelementptr inbounds float, ptr %26, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !55
  %57 = call float @llvm.fmuladd.f32(float %54, float %56, float %52)
  %58 = fneg float %57
  %59 = getelementptr inbounds [4 x float], ptr %20, i64 %24, i64 3
  store float %58, ptr %59, align 4, !tbaa !55
  %60 = icmp eq i64 %28, 4
  br i1 %60, label %61, label %23, !llvm.loop !232

61:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #11
  br label %62

62:                                               ; preds = %61, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_clip_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_clipping_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_clipping_exec, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !123
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_clipping_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 32
  %7 = load i16, ptr %6, align 2, !tbaa !101
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = and i16 %7, -5
  store i16 %11, ptr %6, align 2, !tbaa !101
  tail call void @ED_region_tag_redraw(ptr noundef %5) #11
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %16(ptr noundef nonnull %13) #11
  br label %17

17:                                               ; preds = %15, %10
  store ptr null, ptr %12, align 8, !tbaa !102
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 4, %17 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_clipping_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca %struct.bglMats, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %5) #11
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 32
  %8 = load i16, ptr %7, align 2, !tbaa !101
  %9 = or i16 %8, 4
  store i16 %9, ptr %7, align 2, !tbaa !101
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %11 = call ptr %10(i64 noundef 104, ptr noundef nonnull @.str.164) #11
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 9
  store ptr %11, ptr %12, align 8, !tbaa !102
  call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #11
  %13 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !235
  call void @view3d_get_transformation(ptr noundef %14, ptr noundef %16, ptr noundef null, ptr noundef nonnull %4) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 7
  call void @ED_view3d_clipping_calc(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %3
  %12 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %4) #11
  %13 = load i8, ptr %4, align 1, !tbaa !151
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = fneg float %17
  store float %18, ptr %1, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fneg float %20
  %22 = getelementptr inbounds float, ptr %1, i64 1
  store float %21, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !55
  %25 = fneg float %24
  %26 = getelementptr inbounds float, ptr %1, i64 2
  store float %25, ptr %26, align 4, !tbaa !55
  %27 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %9, ptr noundef nonnull %1, ptr noundef null) #11
  br label %28

28:                                               ; preds = %15, %11
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %33 = call zeroext i8 @ED_view3d_autodist(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %2, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null), !range !88
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28, %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %36 = load float, ptr %1, align 4, !tbaa !55
  store float %36, ptr %5, align 4, !tbaa !55
  %37 = getelementptr inbounds float, ptr %1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = getelementptr inbounds float, ptr %5, i64 1
  store float %38, ptr %39, align 4, !tbaa !55
  %40 = getelementptr inbounds float, ptr %1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !55
  %42 = getelementptr inbounds float, ptr %5, i64 2
  store float %41, ptr %42, align 4, !tbaa !55
  call void @ED_view3d_win_to_3d_int(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %43

43:                                               ; preds = %32, %35, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #4

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_autodist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.ViewDepths, align 8
  %9 = alloca %struct.rcti, align 4
  %10 = alloca %struct.bglMats, align 8
  %11 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call void @bgl_get_mats(ptr noundef nonnull %10) #11
  call void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %12 = load i32, ptr %3, align 4, !tbaa !213
  %13 = add nsw i32 %12, 4
  %14 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !200
  %15 = getelementptr inbounds i32, ptr %3, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !213
  %17 = add nsw i32 %16, 4
  %18 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 3
  store i32 %17, ptr %18, align 4, !tbaa !201
  %19 = add nsw i32 %12, -4
  store i32 %19, ptr %9, align 4, !tbaa !198
  %20 = add nsw i32 %16, -4
  %21 = getelementptr inbounds %struct.rcti, ptr %9, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !199
  call void @view3d_update_depths_rect(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %22 = call float @view3d_depth_near(ptr noundef nonnull %8) #11
  %23 = getelementptr inbounds %struct.ViewDepths, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %27(ptr noundef nonnull %24) #11
  store ptr null, ptr %23, align 8, !tbaa !206
  br label %28

28:                                               ; preds = %7, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  %29 = fcmp une float %22, 0x47EFFFFFE0000000
  br i1 %29, label %30, label %51

30:                                               ; preds = %28
  %31 = load i32, ptr %3, align 4, !tbaa !213
  %32 = sitofp i32 %31 to double
  %33 = load i32, ptr %15, align 4, !tbaa !213
  %34 = sitofp i32 %33 to double
  %35 = fpext float %22 to double
  %36 = getelementptr inbounds %struct.bglMats, ptr %10, i64 0, i32 1
  %37 = getelementptr inbounds %struct.bglMats, ptr %10, i64 0, i32 2
  %38 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %39 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %40 = call i32 @gluUnProject(double noundef %32, double noundef %34, double noundef %35, ptr noundef nonnull %10, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %11, ptr noundef nonnull %38, ptr noundef nonnull %39) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %30
  %43 = load double, ptr %11, align 16, !tbaa !208
  %44 = fptrunc double %43 to float
  store float %44, ptr %4, align 4, !tbaa !55
  %45 = load double, ptr %38, align 8, !tbaa !208
  %46 = fptrunc double %45 to float
  %47 = getelementptr inbounds float, ptr %4, i64 1
  store float %46, ptr %47, align 4, !tbaa !55
  %48 = load double, ptr %39, align 16, !tbaa !208
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds float, ptr %4, i64 2
  store float %49, ptr %50, align 4, !tbaa !55
  br label %54

51:                                               ; preds = %30, %28
  %52 = icmp eq ptr %6, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  call void @ED_view3d_win_to_3d_int(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %4) #11
  br label %54

54:                                               ; preds = %51, %53, %42
  %55 = phi i8 [ 1, %42 ], [ 1, %53 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %10) #11
  ret i8 %55
}

declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #11
  tail call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef %5, ptr noundef %1)
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !236
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %4) #11
  br label %13

12:                                               ; preds = %7, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %3) #11
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_cursor3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  store ptr @.str.145, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.146, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_cursor3d_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_cursor3d_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef nonnull %4)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_manipulator(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @manipulator_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 64) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @manipulator_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 42
  %6 = load i8, ptr %5, align 1, !tbaa !237
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 21
  %11 = load i16, ptr %10, align 8, !tbaa !238
  %12 = icmp ult i16 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %14 = tail call i32 @BIF_do_manipulator(ptr noundef %0, ptr noundef %2, ptr noundef %1) #11
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 8, i32 4
  br label %17

17:                                               ; preds = %9, %13, %3
  %18 = phi i32 [ 8, %3 ], [ 8, %9 ], [ %16, %13 ]
  ret i32 %18
}

declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_enable_manipulator(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.151, ptr %0, align 8, !tbaa !114
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.152, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.153, ptr %3, align 8, !tbaa !118
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @enable_manipulator_invoke, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.154, i32 noundef 0, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156) #11
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159) #11
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162) #11
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @enable_manipulator_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 40
  store i8 0, ptr %5, align 1, !tbaa !239
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.154) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8, ptr %5, align 1, !tbaa !239
  %12 = or i8 %11, 1
  store i8 %12, ptr %5, align 1, !tbaa !239
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %6, align 8, !tbaa !157
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.157) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %5, align 1, !tbaa !239
  %19 = or i8 %18, 2
  store i8 %19, ptr %5, align 1, !tbaa !239
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %6, align 8, !tbaa !157
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.160) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %5, align 1, !tbaa !239
  %26 = or i8 %25, 4
  store i8 %26, ptr %5, align 1, !tbaa !239
  br label %27

27:                                               ; preds = %24, %20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #11
  ret i32 4
}

declare void @bgl_get_mats(ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_draw_depth(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_autodist_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  switch i32 %3, label %7 [
    i32 0, label %5
    i32 1, label %6
  ]

5:                                                ; preds = %4
  tail call void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #11
  br label %7

6:                                                ; preds = %4
  tail call void @ED_view3d_draw_depth_gpencil(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  br label %7

7:                                                ; preds = %4, %6, %5
  ret void
}

declare void @ED_view3d_draw_depth_gpencil(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_autodist_simple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ViewDepths, align 8
  %7 = alloca %struct.rcti, align 4
  %8 = alloca %struct.bglMats, align 8
  %9 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load float, ptr %4, align 4, !tbaa !55
  br label %42

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %14 = icmp eq i32 %3, 0
  %15 = load i32, ptr %1, align 4, !tbaa !213
  br i1 %14, label %16, label %24

16:                                               ; preds = %13
  store i32 %15, ptr %7, align 4, !tbaa !198
  %17 = getelementptr inbounds i32, ptr %1, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !213
  %19 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  store i32 %18, ptr %19, align 4, !tbaa !199
  %20 = add nsw i32 %15, 1
  %21 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !200
  %22 = add nsw i32 %18, 1
  %23 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !201
  br label %34

24:                                               ; preds = %13
  %25 = add nsw i32 %15, %3
  %26 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !200
  %27 = getelementptr inbounds i32, ptr %1, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !213
  %29 = add nsw i32 %28, %3
  %30 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !201
  %31 = sub nsw i32 %15, %3
  store i32 %31, ptr %7, align 4, !tbaa !198
  %32 = sub nsw i32 %28, %3
  %33 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !199
  br label %34

34:                                               ; preds = %24, %16
  call void @view3d_update_depths_rect(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %35 = call float @view3d_depth_near(ptr noundef nonnull %6) #11
  %36 = getelementptr inbounds %struct.ViewDepths, ptr %6, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %40(ptr noundef nonnull %37) #11
  store ptr null, ptr %36, align 8, !tbaa !206
  br label %41

41:                                               ; preds = %34, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br label %42

42:                                               ; preds = %41, %11
  %43 = phi float [ %12, %11 ], [ %35, %41 ]
  %44 = fcmp oeq float %43, 0x47EFFFFFE0000000
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %1, align 4, !tbaa !213
  %47 = sitofp i32 %46 to double
  %48 = getelementptr inbounds i32, ptr %1, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !213
  %50 = sitofp i32 %49 to double
  call void @bgl_get_mats(ptr noundef nonnull %8) #11
  %51 = fpext float %43 to double
  %52 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %53 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %54 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %55 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %56 = call i32 @gluUnProject(double noundef %47, double noundef %50, double noundef %51, ptr noundef nonnull %8, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %9, ptr noundef nonnull %54, ptr noundef nonnull %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %45
  %59 = load double, ptr %9, align 16, !tbaa !208
  %60 = fptrunc double %59 to float
  store float %60, ptr %2, align 4, !tbaa !55
  %61 = load double, ptr %54, align 8, !tbaa !208
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds float, ptr %2, i64 1
  store float %62, ptr %63, align 4, !tbaa !55
  %64 = load double, ptr %55, align 16, !tbaa !208
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds float, ptr %2, i64 2
  store float %65, ptr %66, align 4, !tbaa !55
  br label %67

67:                                               ; preds = %45, %42, %58
  %68 = phi i8 [ 1, %58 ], [ 0, %42 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #11
  ret i8 %68
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_autodist_depth(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ViewDepths, align 8
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = icmp eq i32 %2, 0
  %8 = load i32, ptr %1, align 4, !tbaa !213
  br i1 %7, label %9, label %17

9:                                                ; preds = %4
  store i32 %8, ptr %6, align 4, !tbaa !198
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !213
  %12 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !199
  %13 = add nsw i32 %8, 1
  %14 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !200
  %15 = add nsw i32 %11, 1
  %16 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !201
  br label %27

17:                                               ; preds = %4
  %18 = add nsw i32 %8, %2
  %19 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  store i32 %18, ptr %19, align 4, !tbaa !200
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !213
  %22 = add nsw i32 %21, %2
  %23 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !201
  %24 = sub nsw i32 %8, %2
  store i32 %24, ptr %6, align 4, !tbaa !198
  %25 = sub nsw i32 %21, %2
  %26 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !199
  br label %27

27:                                               ; preds = %17, %9
  call void @view3d_update_depths_rect(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %28 = call float @view3d_depth_near(ptr noundef nonnull %5) #11
  %29 = getelementptr inbounds %struct.ViewDepths, ptr %5, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %33(ptr noundef nonnull %30) #11
  store ptr null, ptr %29, align 8, !tbaa !206
  br label %34

34:                                               ; preds = %27, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  store float %28, ptr %3, align 4, !tbaa !55
  %35 = fcmp une float %28, 0x47EFFFFFE0000000
  %36 = zext i1 %35 to i8
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.anon, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr %0, ptr %6, align 8, !tbaa !240
  %9 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store i32 %3, ptr %9, align 8, !tbaa !242
  %10 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %10, align 4, !tbaa !243
  %11 = load i32, ptr %1, align 4, !tbaa !213
  store i32 %11, ptr %7, align 4, !tbaa !213
  %12 = getelementptr inbounds i32, ptr %1, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !213
  %14 = getelementptr inbounds i32, ptr %7, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !213
  %15 = load i32, ptr %2, align 4, !tbaa !213
  store i32 %15, ptr %8, align 4, !tbaa !213
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !213
  %18 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !213
  call void @plot_line_v2v2i(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull @depth_segment_cb, ptr noundef nonnull %6) #11
  %19 = load float, ptr %10, align 4, !tbaa !243
  store float %19, ptr %4, align 4, !tbaa !55
  %20 = fcmp une float %19, 0x47EFFFFFE0000000
  %21 = zext i1 %20 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i8 %21
}

declare void @plot_line_v2v2i(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @depth_segment_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.ViewDepths, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !240
  %7 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  store i32 %0, ptr %5, align 4, !tbaa !198
  %11 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %1, ptr %11, align 4, !tbaa !199
  %12 = add nsw i32 %0, 1
  %13 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !200
  %14 = add nsw i32 %1, 1
  %15 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !201
  br label %24

16:                                               ; preds = %3
  %17 = add nsw i32 %8, %0
  %18 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !200
  %19 = add nsw i32 %8, %1
  %20 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !201
  %21 = sub nsw i32 %0, %8
  store i32 %21, ptr %5, align 4, !tbaa !198
  %22 = sub nsw i32 %1, %8
  %23 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !199
  br label %24

24:                                               ; preds = %16, %10
  call void @view3d_update_depths_rect(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %25 = call float @view3d_depth_near(ptr noundef nonnull %4) #11
  %26 = getelementptr inbounds %struct.ViewDepths, ptr %4, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !206
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %30(ptr noundef nonnull %27) #11
  store ptr null, ptr %26, align 8, !tbaa !206
  br label %31

31:                                               ; preds = %24, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  %32 = fcmp une float %25, 0x47EFFFFFE0000000
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 2
  store float %25, ptr %34, align 4, !tbaa !243
  br label %35

35:                                               ; preds = %31, %33
  %36 = phi i8 [ 0, %33 ], [ 1, %31 ]
  ret i8 %36
}

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_distance_set(ptr noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 18
  %6 = load float, ptr %5, align 8, !tbaa !54
  %7 = fsub float %6, %1
  store float 0.000000e+00, ptr %4, align 4, !tbaa !55
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds float, ptr %4, i64 2
  store float %7, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %3, ptr noundef nonnull %10) #11
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22
  %12 = load float, ptr %4, align 4, !tbaa !55
  %13 = load float, ptr %11, align 4, !tbaa !55
  %14 = fsub float %13, %12
  store float %14, ptr %11, align 4, !tbaa !55
  %15 = load float, ptr %8, align 4, !tbaa !55
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = fsub float %17, %15
  store float %18, ptr %16, align 4, !tbaa !55
  %19 = load float, ptr %9, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !55
  %22 = fsub float %21, %19
  store float %22, ptr %20, align 4, !tbaa !55
  store float %1, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_from_m4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %0) #11
  call void @normalize_m3(ptr noundef nonnull %5) #11
  %8 = icmp ne ptr %1, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !55
  %12 = fneg float %11
  store float %12, ptr %1, align 4, !tbaa !55
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !55
  %15 = fneg float %14
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = fneg float %18
  %20 = getelementptr inbounds float, ptr %1, i64 2
  store float %19, ptr %20, align 4, !tbaa !55
  br label %21

21:                                               ; preds = %9, %4
  %22 = icmp eq ptr %2, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  %24 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  call void @mat3_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  br label %25

25:                                               ; preds = %23, %21
  %26 = icmp ne ptr %3, null
  %27 = and i1 %8, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store float 0.000000e+00, ptr %7, align 4, !tbaa !55
  %29 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %29, align 4, !tbaa !55
  %30 = getelementptr inbounds float, ptr %7, i64 2
  %31 = load float, ptr %3, align 4, !tbaa !55
  %32 = fneg float %31
  store float %32, ptr %30, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  %33 = load float, ptr %7, align 4, !tbaa !55
  %34 = load float, ptr %1, align 4, !tbaa !55
  %35 = fsub float %34, %33
  store float %35, ptr %1, align 4, !tbaa !55
  %36 = load float, ptr %29, align 4, !tbaa !55
  %37 = getelementptr inbounds float, ptr %1, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !55
  %39 = fsub float %38, %36
  store float %39, ptr %37, align 4, !tbaa !55
  %40 = load float, ptr %30, align 4, !tbaa !55
  %41 = getelementptr inbounds float, ptr %1, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !55
  %43 = fsub float %42, %40
  store float %43, ptr %41, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %44

44:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @normalize_m3(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #4

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_lastview_store(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 33
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %5 = load i8, ptr %4, align 2, !tbaa !95
  %6 = zext i8 %5 to i16
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 35
  store i16 %6, ptr %7, align 2, !tbaa !133
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 25
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = zext i8 %9 to i16
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 34
  store i16 %12, ptr %13, align 4, !tbaa !134
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ED_view3D_background_image_new(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %3 = tail call ptr %2(i64 noundef 104, ptr noundef nonnull @.str.163) #11
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 8
  store float 5.000000e+00, ptr %4, align 8, !tbaa !219
  %5 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 9
  store float 5.000000e-01, ptr %5, align 4, !tbaa !223
  %6 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 3, i32 5
  store i8 2, ptr %6, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 3, i32 7
  store i8 1, ptr %7, align 2, !tbaa !225
  %8 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 10
  store i16 0, ptr %8, align 8, !tbaa !226
  %9 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %10 = load i16, ptr %9, align 2, !tbaa !227
  %11 = or i16 %10, 6
  store i16 %11, ptr %9, align 2, !tbaa !227
  %12 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %3) #11
  ret ptr %3
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3D_background_image_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #11
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %4(ptr noundef %1) #11
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3D_background_image_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !245
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %6) #11
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %8(ptr noundef nonnull %6) #11
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5, !llvm.loop !246

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_view3D_lock_clear(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 16
  store ptr null, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 21
  store i8 0, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 25
  store i16 0, ptr %4, align 2, !tbaa !41
  %5 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %6 = load i16, ptr %5, align 2, !tbaa !53
  %7 = and i16 %6, -33
  store i16 %7, ptr %5, align 2, !tbaa !53
  ret void
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare void @invert_qt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewops_data_free(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 32
  %13 = load i16, ptr %12, align 2, !tbaa !101
  %14 = and i16 %13, -9
  store i16 %14, ptr %12, align 2, !tbaa !101
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %7
  %19 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %20 = load ptr, ptr %15, align 8, !tbaa !163
  %21 = getelementptr inbounds %struct.wmTimer, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !247
  tail call void @WM_event_remove_timer(ptr noundef %19, ptr noundef %22, ptr noundef %20) #11
  br label %23

23:                                               ; preds = %18, %7
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  tail call void %24(ptr noundef nonnull %5) #11
  store ptr null, ptr %4, align 8, !tbaa !124
  br label %27

25:                                               ; preds = %2
  %26 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %9, %23 ], [ %26, %25 ]
  %29 = icmp eq ptr %3, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !249
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @ED_region_tag_redraw(ptr noundef %28) #11
  br label %36

36:                                               ; preds = %35, %30, %27
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @viewrotate_apply(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x float], align 16
  %21 = alloca [4 x float], align 16
  %22 = alloca [4 x float], align 16
  %23 = alloca [3 x [3 x float]], align 16
  %24 = alloca [3 x [3 x float]], align 16
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 26
  store i8 0, ptr %29, align 2, !tbaa !95
  %30 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !251
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %173, label %33

33:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #11
  %34 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !198
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !200
  %40 = add nsw i32 %39, %37
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 %41, %1
  %43 = sitofp i32 %42 to float
  %44 = sub nsw i32 %39, %37
  %45 = sdiv i32 %44, 4
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %43, %46
  %48 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !199
  %50 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !201
  %52 = add nsw i32 %51, %49
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 %53, %2
  %55 = sitofp i32 %54 to float
  %56 = sub nsw i32 %51, %49
  %57 = sdiv i32 %56, 2
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %55, %58
  %60 = fmul float %59, %59
  %61 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %60)
  %62 = tail call float @sqrtf(float noundef %61) #11
  %63 = fcmp olt float %62, 0x3FE8E3E180000000
  br i1 %63, label %64, label %68

64:                                               ; preds = %33
  %65 = fmul float %62, %62
  %66 = fsub float 0x3FF35C2900000000, %65
  %67 = tail call float @sqrtf(float noundef %66) #11
  br label %70

68:                                               ; preds = %33
  %69 = fdiv float 0x3FE35C2900000000, %62
  br label %70

70:                                               ; preds = %64, %68
  %71 = phi float [ %67, %64 ], [ %69, %68 ]
  %72 = fneg float %71
  %73 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 8
  %74 = load float, ptr %73, align 4, !tbaa !55
  %75 = fsub float %47, %74
  %76 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 8, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !55
  %78 = fsub float %59, %77
  %79 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 8, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !55
  %81 = fsub float %72, %80
  %82 = fmul float %78, %78
  %83 = tail call float @llvm.fmuladd.f32(float %75, float %75, float %82)
  %84 = tail call float @llvm.fmuladd.f32(float %81, float %81, float %83)
  %85 = tail call float @sqrtf(float noundef %84) #11
  %86 = fdiv float %85, 0x40019999A0000000
  %87 = getelementptr inbounds float, ptr %20, i64 1
  %88 = load float, ptr %76, align 4, !tbaa !55
  %89 = load float, ptr %79, align 4, !tbaa !55
  %90 = fneg float %89
  %91 = fmul float %59, %90
  %92 = tail call float @llvm.fmuladd.f32(float %88, float %72, float %91)
  store float %92, ptr %87, align 4, !tbaa !55
  %93 = load float, ptr %73, align 4, !tbaa !55
  %94 = fmul float %71, %93
  %95 = tail call float @llvm.fmuladd.f32(float %89, float %47, float %94)
  %96 = getelementptr inbounds float, ptr %20, i64 2
  store float %95, ptr %96, align 8, !tbaa !55
  %97 = fneg float %88
  %98 = fmul float %47, %97
  %99 = tail call float @llvm.fmuladd.f32(float %93, float %59, float %98)
  %100 = getelementptr inbounds float, ptr %20, i64 3
  store float %99, ptr %100, align 4, !tbaa !55
  %101 = fmul float %95, %95
  %102 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %99, float %99, float %102)
  %104 = fcmp ogt float %103, 0x38AA95A5C0000000
  br i1 %104, label %105, label %114

105:                                              ; preds = %70
  %106 = tail call float @sqrtf(float noundef %103) #11
  %107 = fdiv float 1.000000e+00, %106
  %108 = load float, ptr %87, align 4, !tbaa !55
  %109 = fmul float %108, %107
  store float %109, ptr %87, align 4, !tbaa !55
  %110 = load float, ptr %96, align 8, !tbaa !55
  %111 = fmul float %107, %110
  store float %111, ptr %96, align 8, !tbaa !55
  %112 = load float, ptr %100, align 4, !tbaa !55
  %113 = fmul float %107, %112
  br label %115

114:                                              ; preds = %70
  store float 0.000000e+00, ptr %87, align 4, !tbaa !55
  store float 0.000000e+00, ptr %96, align 8, !tbaa !55
  br label %115

115:                                              ; preds = %105, %114
  %116 = phi float [ 0.000000e+00, %114 ], [ %113, %105 ]
  store float %116, ptr %100, align 4, !tbaa !55
  %117 = fcmp ogt float %86, 1.000000e+00
  br i1 %117, label %118, label %122

118:                                              ; preds = %115, %118
  %119 = phi float [ %120, %118 ], [ %86, %115 ]
  %120 = fadd float %119, -2.000000e+00
  %121 = fcmp ogt float %120, 1.000000e+00
  br i1 %121, label %118, label %122, !llvm.loop !252

122:                                              ; preds = %118, %115
  %123 = phi float [ %86, %115 ], [ %120, %118 ]
  %124 = fmul float %123, 0x3FF921FB60000000
  %125 = tail call float @cosf(float noundef %124) #11
  store float %125, ptr %20, align 16, !tbaa !55
  %126 = tail call float @sinf(float noundef %124) #11
  %127 = load float, ptr %87, align 4, !tbaa !55
  %128 = fmul float %126, %127
  store float %128, ptr %87, align 4, !tbaa !55
  %129 = load float, ptr %96, align 8, !tbaa !55
  %130 = fmul float %126, %129
  store float %130, ptr %96, align 8, !tbaa !55
  %131 = load float, ptr %100, align 4, !tbaa !55
  %132 = fmul float %126, %131
  store float %132, ptr %100, align 4, !tbaa !55
  %133 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  %134 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef nonnull %133, ptr noundef nonnull %20, ptr noundef nonnull %134) #11
  %135 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 19
  %136 = load i8, ptr %135, align 4, !tbaa !253
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %122
  %139 = load ptr, ptr %27, align 8, !tbaa !132
  %140 = getelementptr inbounds %struct.RegionView3D, ptr %139, i64 0, i32 22
  %141 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  %142 = load float, ptr %141, align 4, !tbaa !55
  store float %142, ptr %140, align 4, !tbaa !55
  %143 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !55
  %145 = getelementptr inbounds %struct.RegionView3D, ptr %139, i64 0, i32 22, i64 1
  store float %144, ptr %145, align 4, !tbaa !55
  %146 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !55
  %148 = getelementptr inbounds %struct.RegionView3D, ptr %139, i64 0, i32 22, i64 2
  store float %147, ptr %148, align 4, !tbaa !55
  %149 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @conjugate_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %134) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %133) #11
  call void @conjugate_qt(ptr noundef nonnull %6) #11
  %150 = load float, ptr %149, align 4, !tbaa !55
  %151 = load float, ptr %140, align 4, !tbaa !55
  %152 = fsub float %151, %150
  store float %152, ptr %140, align 4, !tbaa !55
  %153 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !55
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %139, i64 0, i32 22, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !55
  %157 = fsub float %156, %154
  store float %157, ptr %155, align 4, !tbaa !55
  %158 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !55
  %160 = getelementptr inbounds %struct.RegionView3D, ptr %139, i64 0, i32 22, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !55
  %162 = fsub float %161, %159
  store float %162, ptr %160, align 4, !tbaa !55
  call void @mul_qt_v3(ptr noundef nonnull %6, ptr noundef nonnull %140) #11
  %163 = load float, ptr %149, align 4, !tbaa !55
  %164 = load float, ptr %140, align 4, !tbaa !55
  %165 = fadd float %163, %164
  store float %165, ptr %140, align 4, !tbaa !55
  %166 = load float, ptr %153, align 4, !tbaa !55
  %167 = load float, ptr %155, align 4, !tbaa !55
  %168 = fadd float %166, %167
  store float %168, ptr %155, align 4, !tbaa !55
  %169 = load float, ptr %158, align 4, !tbaa !55
  %170 = load float, ptr %160, align 4, !tbaa !55
  %171 = fadd float %169, %170
  store float %171, ptr %160, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %172

172:                                              ; preds = %122, %138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #11
  br label %287

173:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %25, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %174 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  call void @quat_to_mat3(ptr noundef nonnull %23, ptr noundef nonnull %174) #11
  %175 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %24, ptr noundef nonnull %23) #11
  %176 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2
  %177 = load float, ptr %176, align 8, !tbaa !55
  %178 = load float, ptr %25, align 4, !tbaa !55
  %179 = fsub float %177, %178
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !55
  %182 = getelementptr inbounds float, ptr %25, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !55
  %184 = fsub float %181, %183
  %185 = getelementptr inbounds [3 x [3 x float]], ptr %24, i64 0, i64 2, i64 2
  %186 = load float, ptr %185, align 16, !tbaa !55
  %187 = getelementptr inbounds float, ptr %25, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !55
  %189 = fsub float %186, %188
  %190 = fmul float %184, %184
  %191 = call float @llvm.fmuladd.f32(float %179, float %179, float %190)
  %192 = call float @llvm.fmuladd.f32(float %189, float %189, float %191)
  %193 = fcmp ogt float %192, 0x3F50624DE0000000
  br i1 %193, label %194, label %226

194:                                              ; preds = %173
  %195 = fneg float %188
  %196 = fmul float %181, %195
  %197 = call float @llvm.fmuladd.f32(float %183, float %186, float %196)
  store float %197, ptr %26, align 4, !tbaa !55
  %198 = fneg float %178
  %199 = fmul float %186, %198
  %200 = call float @llvm.fmuladd.f32(float %188, float %177, float %199)
  %201 = getelementptr inbounds float, ptr %26, i64 1
  store float %200, ptr %201, align 4, !tbaa !55
  %202 = fneg float %183
  %203 = fmul float %177, %202
  %204 = call float @llvm.fmuladd.f32(float %178, float %181, float %203)
  %205 = getelementptr inbounds float, ptr %26, i64 2
  store float %204, ptr %205, align 4, !tbaa !55
  %206 = load float, ptr %24, align 16, !tbaa !55
  %207 = getelementptr inbounds float, ptr %24, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !55
  %209 = fmul float %200, %208
  %210 = call float @llvm.fmuladd.f32(float %197, float %206, float %209)
  %211 = getelementptr inbounds float, ptr %24, i64 2
  %212 = load float, ptr %211, align 8, !tbaa !55
  %213 = call float @llvm.fmuladd.f32(float %204, float %212, float %210)
  %214 = fcmp olt float %213, 0.000000e+00
  br i1 %214, label %215, label %219

215:                                              ; preds = %194
  %216 = fneg float %197
  store float %216, ptr %26, align 4, !tbaa !55
  %217 = fneg float %200
  store float %217, ptr %201, align 4, !tbaa !55
  %218 = fneg float %204
  store float %218, ptr %205, align 4, !tbaa !55
  br label %219

219:                                              ; preds = %215, %194
  %220 = call float @angle_normalized_v3v3(ptr noundef nonnull %25, ptr noundef nonnull %176) #11
  %221 = fdiv float %220, 0x400921FB60000000
  %222 = fadd float %221, -5.000000e-01
  %223 = call float @llvm.fabs.f32(float %222)
  %224 = fmul float %223, 2.000000e+00
  %225 = fmul float %224, %224
  call void @interp_v3_v3v3(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef nonnull %24, float noundef %225) #11
  br label %234

226:                                              ; preds = %173
  %227 = load float, ptr %24, align 16, !tbaa !55
  store float %227, ptr %26, align 4, !tbaa !55
  %228 = getelementptr inbounds float, ptr %24, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !55
  %230 = getelementptr inbounds float, ptr %26, i64 1
  store float %229, ptr %230, align 4, !tbaa !55
  %231 = getelementptr inbounds float, ptr %24, i64 2
  %232 = load float, ptr %231, align 8, !tbaa !55
  %233 = getelementptr inbounds float, ptr %26, i64 2
  store float %232, ptr %233, align 4, !tbaa !55
  br label %234

234:                                              ; preds = %226, %219
  %235 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %236 = load i32, ptr %235, align 4, !tbaa !161
  %237 = sub nsw i32 %236, %2
  %238 = sitofp i32 %237 to float
  %239 = fmul float %238, 0x3F7CAC0840000000
  call void @axis_angle_to_quat(ptr noundef nonnull %21, ptr noundef nonnull %26, float noundef %239) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %21, ptr noundef nonnull %174, ptr noundef nonnull %21) #11
  %240 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 10
  %241 = load float, ptr %240, align 8, !tbaa !254
  %242 = fmul float %241, 0x3F7CAC0840000000
  %243 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %244 = load i32, ptr %243, align 8, !tbaa !158
  %245 = sub nsw i32 %1, %244
  %246 = sitofp i32 %245 to float
  %247 = fmul float %242, %246
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %22, ptr noundef nonnull %25, float noundef %247) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %174, ptr noundef nonnull %21, ptr noundef nonnull %22) #11
  %248 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 19
  %249 = load i8, ptr %248, align 4, !tbaa !253
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %286, label %251

251:                                              ; preds = %234
  %252 = load ptr, ptr %27, align 8, !tbaa !132
  %253 = getelementptr inbounds %struct.RegionView3D, ptr %252, i64 0, i32 22
  %254 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  %255 = load float, ptr %254, align 4, !tbaa !55
  store float %255, ptr %253, align 4, !tbaa !55
  %256 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !55
  %258 = getelementptr inbounds %struct.RegionView3D, ptr %252, i64 0, i32 22, i64 1
  store float %257, ptr %258, align 4, !tbaa !55
  %259 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !55
  %261 = getelementptr inbounds %struct.RegionView3D, ptr %252, i64 0, i32 22, i64 2
  store float %260, ptr %261, align 4, !tbaa !55
  %262 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18
  %263 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @conjugate_qt_qt(ptr noundef nonnull %5, ptr noundef nonnull %263) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %174) #11
  call void @conjugate_qt(ptr noundef nonnull %5) #11
  %264 = load float, ptr %262, align 4, !tbaa !55
  %265 = load float, ptr %253, align 4, !tbaa !55
  %266 = fsub float %265, %264
  store float %266, ptr %253, align 4, !tbaa !55
  %267 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !55
  %269 = getelementptr inbounds %struct.RegionView3D, ptr %252, i64 0, i32 22, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !55
  %271 = fsub float %270, %268
  store float %271, ptr %269, align 4, !tbaa !55
  %272 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !55
  %274 = getelementptr inbounds %struct.RegionView3D, ptr %252, i64 0, i32 22, i64 2
  %275 = load float, ptr %274, align 4, !tbaa !55
  %276 = fsub float %275, %273
  store float %276, ptr %274, align 4, !tbaa !55
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef nonnull %253) #11
  %277 = load float, ptr %262, align 4, !tbaa !55
  %278 = load float, ptr %253, align 4, !tbaa !55
  %279 = fadd float %277, %278
  store float %279, ptr %253, align 4, !tbaa !55
  %280 = load float, ptr %267, align 4, !tbaa !55
  %281 = load float, ptr %269, align 4, !tbaa !55
  %282 = fadd float %280, %281
  store float %282, ptr %269, align 4, !tbaa !55
  %283 = load float, ptr %272, align 4, !tbaa !55
  %284 = load float, ptr %274, align 4, !tbaa !55
  %285 = fadd float %283, %284
  store float %285, ptr %274, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %286

286:                                              ; preds = %234, %251
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #11
  br label %287

287:                                              ; preds = %286, %172
  %288 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  %289 = call float @normalize_qt(ptr noundef nonnull %288) #11
  %290 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %290, ptr noundef nonnull %288) #11
  %291 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 15
  %292 = load i8, ptr %291, align 4, !tbaa !143
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %444, label %294

294:                                              ; preds = %287
  %295 = load ptr, ptr %27, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @invert_qt_qt(ptr noundef nonnull %7, ptr noundef nonnull %288) #11
  call void @mul_qt_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %296 = load float, ptr %8, align 4, !tbaa !55
  %297 = getelementptr inbounds float, ptr %8, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !55
  %299 = fmul float %298, %298
  %300 = call float @llvm.fmuladd.f32(float %296, float %296, float %299)
  %301 = getelementptr inbounds float, ptr %8, i64 2
  %302 = load float, ptr %301, align 4, !tbaa !55
  %303 = call float @llvm.fmuladd.f32(float %302, float %302, float %300)
  %304 = fcmp ogt float %303, 0x38AA95A5C0000000
  br i1 %304, label %305, label %314

305:                                              ; preds = %294
  %306 = call float @sqrtf(float noundef %303) #11
  %307 = fdiv float 1.000000e+00, %306
  %308 = load float, ptr %8, align 4, !tbaa !55
  %309 = fmul float %308, %307
  store float %309, ptr %8, align 4, !tbaa !55
  %310 = load float, ptr %297, align 4, !tbaa !55
  %311 = fmul float %307, %310
  store float %311, ptr %297, align 4, !tbaa !55
  %312 = load float, ptr %301, align 4, !tbaa !55
  %313 = fmul float %307, %312
  br label %315

314:                                              ; preds = %294
  store float 0.000000e+00, ptr %8, align 4, !tbaa !55
  store float 0.000000e+00, ptr %297, align 4, !tbaa !55
  br label %315

315:                                              ; preds = %314, %305
  %316 = phi float [ 0.000000e+00, %314 ], [ %313, %305 ]
  store float %316, ptr %301, align 4, !tbaa !55
  %317 = getelementptr inbounds float, ptr %10, i64 1
  %318 = getelementptr inbounds float, ptr %10, i64 2
  %319 = getelementptr inbounds float, ptr %9, i64 1
  %320 = getelementptr inbounds float, ptr %9, i64 2
  br label %321

321:                                              ; preds = %315, %368
  %322 = phi i32 [ -1, %315 ], [ %369, %368 ]
  %323 = phi i8 [ 0, %315 ], [ %362, %368 ]
  %324 = sitofp i32 %322 to float
  br label %325

325:                                              ; preds = %321, %365
  %326 = phi i8 [ %323, %321 ], [ %362, %365 ]
  %327 = phi i32 [ -1, %321 ], [ %366, %365 ]
  %328 = or i32 %327, %322
  %329 = sitofp i32 %327 to float
  %330 = fmul float %329, %329
  %331 = call float @llvm.fmuladd.f32(float %324, float %324, float %330)
  br label %332

332:                                              ; preds = %325, %361
  %333 = phi i8 [ %326, %325 ], [ %362, %361 ]
  %334 = phi i32 [ -1, %325 ], [ %363, %361 ]
  %335 = or i32 %328, %334
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %361, label %337

337:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  store float %324, ptr %10, align 4, !tbaa !55
  store float %329, ptr %317, align 4, !tbaa !55
  %338 = sitofp i32 %334 to float
  store float %338, ptr %318, align 4, !tbaa !55
  %339 = call float @llvm.fmuladd.f32(float %338, float %338, float %331)
  %340 = fcmp ogt float %339, 0x38AA95A5C0000000
  br i1 %340, label %341, label %350

341:                                              ; preds = %337
  %342 = call float @sqrtf(float noundef %339) #11
  %343 = fdiv float 1.000000e+00, %342
  %344 = load float, ptr %10, align 4, !tbaa !55
  %345 = fmul float %344, %343
  store float %345, ptr %10, align 4, !tbaa !55
  %346 = load float, ptr %317, align 4, !tbaa !55
  %347 = fmul float %343, %346
  store float %347, ptr %317, align 4, !tbaa !55
  %348 = load float, ptr %318, align 4, !tbaa !55
  %349 = fmul float %343, %348
  br label %351

350:                                              ; preds = %337
  store float 0.000000e+00, ptr %10, align 4, !tbaa !55
  store float 0.000000e+00, ptr %317, align 4, !tbaa !55
  br label %351

351:                                              ; preds = %350, %341
  %352 = phi float [ 0.000000e+00, %350 ], [ %349, %341 ]
  store float %352, ptr %318, align 4, !tbaa !55
  %353 = call float @angle_normalized_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #11
  %354 = fcmp olt float %353, 0x3FD0C15240000000
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load float, ptr %10, align 4, !tbaa !55
  store float %356, ptr %9, align 4, !tbaa !55
  %357 = load float, ptr %317, align 4, !tbaa !55
  store float %357, ptr %319, align 4, !tbaa !55
  %358 = load float, ptr %318, align 4, !tbaa !55
  store float %358, ptr %320, align 4, !tbaa !55
  br label %359

359:                                              ; preds = %355, %351
  %360 = phi i8 [ 1, %355 ], [ %333, %351 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %361

361:                                              ; preds = %359, %332
  %362 = phi i8 [ %360, %359 ], [ %333, %332 ]
  %363 = add nsw i32 %334, 1
  %364 = icmp eq i32 %363, 2
  br i1 %364, label %365, label %332, !llvm.loop !255

365:                                              ; preds = %361
  %366 = add nsw i32 %327, 1
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %325, !llvm.loop !256

368:                                              ; preds = %365
  %369 = add nsw i32 %322, 1
  %370 = icmp eq i32 %369, 2
  br i1 %370, label %371, label %321, !llvm.loop !257

371:                                              ; preds = %368
  %372 = icmp eq i8 %362, 0
  br i1 %372, label %443, label %373

373:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #11
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %15, ptr noundef nonnull %9, ptr noundef nonnull %8) #11
  %374 = call float @normalize_qt(ptr noundef nonnull %15) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %15, ptr noundef nonnull %288, ptr noundef nonnull %15) #11
  %375 = call float @normalize_qt(ptr noundef nonnull %15) #11
  call void @invert_qt_qt(ptr noundef nonnull %16, ptr noundef nonnull %15) #11
  call void @vec_to_quat(ptr noundef nonnull %14, ptr noundef nonnull %9, i16 noundef signext 5, i16 noundef signext 1) #11
  call void @invert_qt(ptr noundef nonnull %14) #11
  %376 = call float @normalize_qt(ptr noundef nonnull %14) #11
  br label %377

377:                                              ; preds = %373, %388
  %378 = phi i32 [ 0, %373 ], [ %391, %388 ]
  %379 = phi float [ 0x3FD0C15240000000, %373 ], [ %390, %388 ]
  %380 = phi i8 [ 0, %373 ], [ %389, %388 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #11
  %381 = sitofp i32 %378 to float
  %382 = fmul float %381, 0x3FE921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %11, ptr noundef nonnull %9, float noundef %382) #11
  %383 = call float @normalize_qt(ptr noundef nonnull %11) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %11) #11
  %384 = call float @normalize_qt(ptr noundef nonnull %12) #11
  call void @invert_qt_qt(ptr noundef nonnull %19, ptr noundef nonnull %12) #11
  call void @mul_qt_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #11
  call void @mul_qt_v3(ptr noundef nonnull %19, ptr noundef nonnull %18) #11
  %385 = call float @angle_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #11
  %386 = fcmp ugt float %385, %379
  br i1 %386, label %388, label %387

387:                                              ; preds = %377
  call void @copy_qt_qt(ptr noundef nonnull %13, ptr noundef nonnull %12) #11
  br label %388

388:                                              ; preds = %387, %377
  %389 = phi i8 [ 1, %387 ], [ %380, %377 ]
  %390 = phi float [ %385, %387 ], [ %379, %377 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  %391 = add nuw nsw i32 %378, 1
  %392 = icmp eq i32 %391, 8
  br i1 %392, label %393, label %377, !llvm.loop !258

393:                                              ; preds = %388
  %394 = icmp eq i8 %389, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %393
  %396 = call zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef nonnull %13, float noundef 0x3F847AE140000000) #11
  %397 = getelementptr inbounds %struct.RegionView3D, ptr %295, i64 0, i32 26
  store i8 %396, ptr %397, align 2, !tbaa !95
  %398 = icmp eq i8 %396, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %395
  %400 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %396, ptr noundef nonnull %13) #11
  br label %402

401:                                              ; preds = %393
  call void @copy_qt_qt(ptr noundef nonnull %13, ptr noundef nonnull %15) #11
  br label %402

402:                                              ; preds = %401, %399, %395
  %403 = getelementptr inbounds %struct.RegionView3D, ptr %295, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %403, ptr noundef nonnull %13) #11
  %404 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 19
  %405 = load i8, ptr %404, align 4, !tbaa !253
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %442, label %407

407:                                              ; preds = %402
  %408 = load ptr, ptr %27, align 8, !tbaa !132
  %409 = getelementptr inbounds %struct.RegionView3D, ptr %408, i64 0, i32 22
  %410 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  %411 = load float, ptr %410, align 4, !tbaa !55
  store float %411, ptr %409, align 4, !tbaa !55
  %412 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !55
  %414 = getelementptr inbounds %struct.RegionView3D, ptr %408, i64 0, i32 22, i64 1
  store float %413, ptr %414, align 4, !tbaa !55
  %415 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 2
  %416 = load float, ptr %415, align 4, !tbaa !55
  %417 = getelementptr inbounds %struct.RegionView3D, ptr %408, i64 0, i32 22, i64 2
  store float %416, ptr %417, align 4, !tbaa !55
  %418 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18
  %419 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @conjugate_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %419) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %403) #11
  call void @conjugate_qt(ptr noundef nonnull %4) #11
  %420 = load float, ptr %418, align 4, !tbaa !55
  %421 = load float, ptr %409, align 4, !tbaa !55
  %422 = fsub float %421, %420
  store float %422, ptr %409, align 4, !tbaa !55
  %423 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 1
  %424 = load float, ptr %423, align 4, !tbaa !55
  %425 = getelementptr inbounds %struct.RegionView3D, ptr %408, i64 0, i32 22, i64 1
  %426 = load float, ptr %425, align 4, !tbaa !55
  %427 = fsub float %426, %424
  store float %427, ptr %425, align 4, !tbaa !55
  %428 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18, i64 2
  %429 = load float, ptr %428, align 4, !tbaa !55
  %430 = getelementptr inbounds %struct.RegionView3D, ptr %408, i64 0, i32 22, i64 2
  %431 = load float, ptr %430, align 4, !tbaa !55
  %432 = fsub float %431, %429
  store float %432, ptr %430, align 4, !tbaa !55
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %409) #11
  %433 = load float, ptr %418, align 4, !tbaa !55
  %434 = load float, ptr %409, align 4, !tbaa !55
  %435 = fadd float %433, %434
  store float %435, ptr %409, align 4, !tbaa !55
  %436 = load float, ptr %423, align 4, !tbaa !55
  %437 = load float, ptr %425, align 4, !tbaa !55
  %438 = fadd float %436, %437
  store float %438, ptr %425, align 4, !tbaa !55
  %439 = load float, ptr %428, align 4, !tbaa !55
  %440 = load float, ptr %430, align 4, !tbaa !55
  %441 = fadd float %439, %440
  store float %441, ptr %430, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %442

442:                                              ; preds = %407, %402
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %443

443:                                              ; preds = %371, %442
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %444

444:                                              ; preds = %443, %287
  %445 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  store i32 %1, ptr %445, align 8, !tbaa !158
  %446 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  store i32 %2, ptr %446, align 4, !tbaa !161
  %447 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !131
  %449 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %448, ptr noundef %28), !range !88
  %450 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %451) #11
  ret void
}

declare void @ED_view3d_depth_tag_update(ptr noundef) local_unnamed_addr #4

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewops_data_create_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %20, ptr noundef %18, i8 noundef zeroext 1)
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 18
  %22 = load float, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 11
  store float %22, ptr %23, align 4, !tbaa !259
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 23
  %25 = load float, ptr %24, align 4, !tbaa !165
  %26 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 12
  store float %25, ptr %26, align 8, !tbaa !260
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 7
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %27, ptr noundef nonnull %28) #11
  %29 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 6
  tail call void @copy_qt_qt(ptr noundef nonnull %29, ptr noundef nonnull %28) #11
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !138
  %32 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 22
  store i32 %31, ptr %32, align 8, !tbaa !158
  %33 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 20
  store i32 %31, ptr %33, align 8, !tbaa !159
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !140
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 23
  store i32 %35, ptr %36, align 4, !tbaa !161
  %37 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 21
  store i32 %35, ptr %37, align 4, !tbaa !160
  %38 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !135
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 24
  store i32 %40, ptr %41, align 8, !tbaa !144
  %42 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 19
  store i8 0, ptr %42, align 4, !tbaa !253
  %43 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 17
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22
  %45 = load float, ptr %44, align 4, !tbaa !55
  store float %45, ptr %43, align 4, !tbaa !55
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !55
  %48 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 17, i64 1
  store float %47, ptr %48, align 4, !tbaa !55
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !55
  %51 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 17, i64 2
  store float %50, ptr %51, align 4, !tbaa !55
  %52 = icmp eq i8 %3, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %5
  store i8 1, ptr %42, align 4, !tbaa !253
  %54 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18
  tail call fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr noundef nonnull %54)
  %55 = load float, ptr %54, align 4, !tbaa !55
  %56 = fneg float %55
  store float %56, ptr %54, align 4, !tbaa !55
  %57 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = fneg float %58
  store float %59, ptr %57, align 4, !tbaa !55
  %60 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !55
  %62 = fneg float %61
  store float %62, ptr %60, align 4, !tbaa !55
  br label %165

63:                                               ; preds = %5
  %64 = icmp eq i8 %4, 0
  br i1 %64, label %165, label %65

65:                                               ; preds = %63
  %66 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #11
  %67 = load float, ptr %44, align 4, !tbaa !55
  %68 = fneg float %67
  store float %68, ptr %6, align 4, !tbaa !55
  %69 = load float, ptr %46, align 4, !tbaa !55
  %70 = fneg float %69
  %71 = getelementptr inbounds float, ptr %6, i64 1
  store float %70, ptr %71, align 4, !tbaa !55
  %72 = load float, ptr %49, align 4, !tbaa !55
  %73 = fneg float %72
  %74 = getelementptr inbounds float, ptr %6, i64 2
  store float %73, ptr %74, align 4, !tbaa !55
  %75 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !129
  %77 = load ptr, ptr %19, align 8, !tbaa !131
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %79 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18
  %80 = call zeroext i8 @ED_view3d_autodist(ptr noundef %66, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %78, ptr noundef nonnull %79, i8 noundef zeroext 1, ptr noundef nonnull %6), !range !88
  store i8 %80, ptr %42, align 4, !tbaa !253
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %164, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 24
  %84 = load i8, ptr %83, align 8, !tbaa !147
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %135, label %86

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %87 = load float, ptr %44, align 4, !tbaa !55
  %88 = fneg float %87
  store float %88, ptr %7, align 4, !tbaa !55
  %89 = load float, ptr %46, align 4, !tbaa !55
  %90 = fneg float %89
  %91 = getelementptr inbounds float, ptr %7, i64 1
  store float %90, ptr %91, align 4, !tbaa !55
  %92 = load float, ptr %49, align 4, !tbaa !55
  %93 = fneg float %92
  %94 = getelementptr inbounds float, ptr %7, i64 2
  store float %93, ptr %94, align 4, !tbaa !55
  %95 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float 0.000000e+00, ptr %95, align 4, !tbaa !55
  store float 0.000000e+00, ptr %11, align 4, !tbaa !55
  %96 = load float, ptr %21, align 8, !tbaa !54
  %97 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %96, ptr %97, align 4, !tbaa !55
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %98) #11
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %99 = load float, ptr %44, align 4, !tbaa !55
  %100 = load float, ptr %11, align 4, !tbaa !55
  %101 = fsub float %99, %100
  store float %101, ptr %8, align 4, !tbaa !55
  %102 = load float, ptr %46, align 4, !tbaa !55
  %103 = load float, ptr %95, align 4, !tbaa !55
  %104 = fsub float %102, %103
  %105 = getelementptr inbounds float, ptr %8, i64 1
  store float %104, ptr %105, align 4, !tbaa !55
  %106 = load float, ptr %49, align 4, !tbaa !55
  %107 = load float, ptr %97, align 4, !tbaa !55
  %108 = fsub float %106, %107
  %109 = getelementptr inbounds float, ptr %8, i64 2
  store float %108, ptr %109, align 4, !tbaa !55
  %110 = fneg float %101
  store float %110, ptr %8, align 4, !tbaa !55
  %111 = fneg float %104
  store float %111, ptr %105, align 4, !tbaa !55
  %112 = fneg float %108
  store float %112, ptr %109, align 4, !tbaa !55
  %113 = call float @closest_to_line_v3(ptr noundef nonnull %9, ptr noundef nonnull %79, ptr noundef nonnull %8, ptr noundef nonnull %7) #11
  %114 = load float, ptr %9, align 4, !tbaa !55
  %115 = load float, ptr %8, align 4, !tbaa !55
  %116 = fsub float %114, %115
  %117 = getelementptr inbounds float, ptr %9, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !55
  %119 = load float, ptr %105, align 4, !tbaa !55
  %120 = fsub float %118, %119
  %121 = getelementptr inbounds float, ptr %9, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !55
  %123 = load float, ptr %109, align 4, !tbaa !55
  %124 = fsub float %122, %123
  %125 = fmul float %120, %120
  %126 = call float @llvm.fmuladd.f32(float %116, float %116, float %125)
  %127 = call float @llvm.fmuladd.f32(float %124, float %124, float %126)
  %128 = call float @sqrtf(float noundef %127) #11
  store float %128, ptr %21, align 8, !tbaa !54
  store float %128, ptr %23, align 4, !tbaa !259
  %129 = load float, ptr %9, align 4, !tbaa !55
  %130 = fneg float %129
  store float %130, ptr %44, align 4, !tbaa !55
  %131 = load float, ptr %117, align 4, !tbaa !55
  %132 = fneg float %131
  store float %132, ptr %46, align 4, !tbaa !55
  %133 = load float, ptr %121, align 4, !tbaa !55
  %134 = fneg float %133
  store float %134, ptr %49, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  br label %152

135:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %136 = load ptr, ptr %75, align 8, !tbaa !129
  %137 = getelementptr inbounds %struct.ARegion, ptr %136, i64 0, i32 5
  %138 = load i16, ptr %137, align 8, !tbaa !96
  %139 = sitofp i16 %138 to float
  %140 = fmul float %139, 5.000000e-01
  store float %140, ptr %12, align 4, !tbaa !55
  %141 = getelementptr inbounds float, ptr %12, i64 1
  %142 = getelementptr inbounds %struct.ARegion, ptr %136, i64 0, i32 6
  %143 = load i16, ptr %142, align 2, !tbaa !97
  %144 = sitofp i16 %143 to float
  %145 = fmul float %144, 5.000000e-01
  store float %145, ptr %141, align 4, !tbaa !55
  call void @ED_view3d_win_to_3d(ptr noundef %136, ptr noundef nonnull %79, ptr noundef nonnull %12, ptr noundef nonnull %44) #11
  %146 = load float, ptr %44, align 4, !tbaa !55
  %147 = fneg float %146
  store float %147, ptr %44, align 4, !tbaa !55
  %148 = load float, ptr %46, align 4, !tbaa !55
  %149 = fneg float %148
  store float %149, ptr %46, align 4, !tbaa !55
  %150 = load float, ptr %49, align 4, !tbaa !55
  %151 = fneg float %150
  store float %151, ptr %49, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br label %152

152:                                              ; preds = %135, %86
  %153 = load float, ptr %79, align 4, !tbaa !55
  %154 = fneg float %153
  store float %154, ptr %79, align 4, !tbaa !55
  %155 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !55
  %157 = fneg float %156
  store float %157, ptr %155, align 4, !tbaa !55
  %158 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !55
  %160 = fneg float %159
  store float %160, ptr %158, align 4, !tbaa !55
  %161 = load float, ptr %44, align 4, !tbaa !55
  store float %161, ptr %43, align 4, !tbaa !55
  %162 = load float, ptr %46, align 4, !tbaa !55
  store float %162, ptr %48, align 4, !tbaa !55
  %163 = load float, ptr %49, align 4, !tbaa !55
  store float %163, ptr %51, align 4, !tbaa !55
  br label %164

164:                                              ; preds = %152, %65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %165

165:                                              ; preds = %63, %164, %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %166 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %167 = load i32, ptr %166, align 4, !tbaa !213
  %168 = sitofp i32 %167 to float
  store float %168, ptr %13, align 4, !tbaa !55
  %169 = getelementptr inbounds float, ptr %13, i64 1
  %170 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %171 = load i32, ptr %170, align 4, !tbaa !213
  %172 = sitofp i32 %171 to float
  store float %172, ptr %169, align 4, !tbaa !55
  %173 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !129
  %175 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 9
  call void @ED_view3d_win_to_vector(ptr noundef %174, ptr noundef nonnull %13, ptr noundef nonnull %175) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %176 = load ptr, ptr %19, align 8, !tbaa !131
  %177 = getelementptr inbounds %struct.View3D, ptr %176, i64 0, i32 31
  %178 = load float, ptr %177, align 8, !tbaa !261
  %179 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 13
  store float %178, ptr %179, align 4, !tbaa !262
  %180 = getelementptr inbounds %struct.View3D, ptr %176, i64 0, i32 33
  %181 = load float, ptr %180, align 8, !tbaa !263
  %182 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 14
  store float %181, ptr %182, align 8, !tbaa !264
  %183 = load ptr, ptr %173, align 8, !tbaa !129
  %184 = getelementptr inbounds %struct.ARegion, ptr %183, i64 0, i32 3
  %185 = load i32, ptr %30, align 4, !tbaa !138
  %186 = load i32, ptr %34, align 8, !tbaa !140
  %187 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 8
  %188 = load i32, ptr %184, align 4, !tbaa !198
  %189 = getelementptr inbounds %struct.ARegion, ptr %183, i64 0, i32 3, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !200
  %191 = add nsw i32 %190, %188
  %192 = sdiv i32 %191, 2
  %193 = sub nsw i32 %192, %185
  %194 = sitofp i32 %193 to float
  %195 = sub nsw i32 %190, %188
  %196 = sdiv i32 %195, 4
  %197 = sitofp i32 %196 to float
  %198 = fdiv float %194, %197
  %199 = getelementptr inbounds %struct.ARegion, ptr %183, i64 0, i32 3, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !199
  %201 = getelementptr inbounds %struct.ARegion, ptr %183, i64 0, i32 3, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !201
  %203 = add nsw i32 %202, %200
  %204 = sdiv i32 %203, 2
  %205 = sub nsw i32 %204, %186
  %206 = sitofp i32 %205 to float
  %207 = sub nsw i32 %202, %200
  %208 = sdiv i32 %207, 2
  %209 = sitofp i32 %208 to float
  %210 = fdiv float %206, %209
  %211 = fmul float %210, %210
  %212 = call float @llvm.fmuladd.f32(float %198, float %198, float %211)
  %213 = call float @sqrtf(float noundef %212) #11
  %214 = fcmp olt float %213, 0x3FE8E3E180000000
  br i1 %214, label %215, label %219

215:                                              ; preds = %165
  %216 = fmul float %213, %213
  %217 = fsub float 0x3FF35C2900000000, %216
  %218 = call float @sqrtf(float noundef %217) #11
  br label %221

219:                                              ; preds = %165
  %220 = fdiv float 0x3FE35C2900000000, %213
  br label %221

221:                                              ; preds = %215, %219
  %222 = phi float [ %218, %215 ], [ %220, %219 ]
  store float %198, ptr %187, align 4, !tbaa !55
  %223 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 8, i64 1
  store float %210, ptr %223, align 4, !tbaa !55
  %224 = fneg float %222
  %225 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 8, i64 2
  store float %224, ptr %225, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %226 = load float, ptr %44, align 4, !tbaa !55
  %227 = fneg float %226
  store float %227, ptr %14, align 4, !tbaa !55
  %228 = load float, ptr %46, align 4, !tbaa !55
  %229 = fneg float %228
  %230 = getelementptr inbounds float, ptr %14, i64 1
  store float %229, ptr %230, align 4, !tbaa !55
  %231 = load float, ptr %49, align 4, !tbaa !55
  %232 = fneg float %231
  %233 = getelementptr inbounds float, ptr %14, i64 2
  store float %232, ptr %233, align 4, !tbaa !55
  %234 = call float @ED_view3d_calc_zfac(ptr noundef %18, ptr noundef nonnull %14, ptr noundef null) #11
  %235 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 16
  store float %234, ptr %235, align 8, !tbaa !265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  %236 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 10
  store float 1.000000e+00, ptr %236, align 8, !tbaa !254
  %237 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 3, i64 2, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !55
  %239 = fcmp olt float %238, 0.000000e+00
  br i1 %239, label %240, label %241

240:                                              ; preds = %221
  store float -1.000000e+00, ptr %236, align 8, !tbaa !254
  br label %241

241:                                              ; preds = %240, %221
  %242 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 32
  %243 = load i16, ptr %242, align 2, !tbaa !101
  %244 = or i16 %243, 8
  store i16 %244, ptr %242, align 2, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !174
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !175
  %18 = and i32 %17, 30
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %13) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, ptr %16, align 8, !tbaa !175
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @ED_sculpt_stroke_get_average(ptr noundef nonnull %13, ptr noundef nonnull %3) #11
  %28 = load float, ptr %3, align 4, !tbaa !55
  store float %28, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !55
  store float %30, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !55
  store float %32, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 2), align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  br label %155

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47, i64 3
  %35 = load float, ptr %34, align 4, !tbaa !55
  store float %35, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  %36 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47, i64 3, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !55
  store float %37, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %38 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47, i64 3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !55
  store float %39, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 2), align 4, !tbaa !55
  br label %155

40:                                               ; preds = %15, %20
  %41 = load i32, ptr %16, align 8, !tbaa !175
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !177
  %47 = icmp eq i16 %46, 4
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !180
  %51 = getelementptr inbounds %struct.Curve, ptr %50, i64 0, i32 53
  %52 = load ptr, ptr %51, align 8, !tbaa !266
  store float 0.000000e+00, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  store float 0.000000e+00, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  store float 0.000000e+00, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 2), align 4, !tbaa !55
  br label %53

53:                                               ; preds = %48, %53
  %54 = phi i64 [ 0, %48 ], [ %63, %53 ]
  %55 = phi float [ 0.000000e+00, %48 ], [ %59, %53 ]
  %56 = phi float [ 0.000000e+00, %48 ], [ %62, %53 ]
  %57 = getelementptr inbounds %struct.EditFont, ptr %52, i64 0, i32 5, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = fadd float %58, %55
  store float %59, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  %60 = getelementptr inbounds float, ptr %57, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !55
  %62 = fadd float %61, %56
  store float %62, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %63 = add nuw nsw i64 %54, 1
  %64 = icmp eq i64 %63, 4
  br i1 %64, label %65, label %53, !llvm.loop !269

65:                                               ; preds = %53
  %66 = load float, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  %67 = fmul float %66, 2.500000e-01
  store float %67, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  %68 = load float, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %69 = fmul float %68, 2.500000e-01
  store float %69, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %70 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %70, ptr noundef nonnull @view3d_orbit_calc_center.lastofs) #11
  br label %155

71:                                               ; preds = %40, %44
  %72 = icmp eq i32 %41, 0
  br i1 %72, label %73, label %153

73:                                               ; preds = %12, %71
  %74 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %75 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = icmp eq ptr %76, null
  br i1 %77, label %141, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.View3D, ptr %74, i64 0, i32 22
  %80 = getelementptr inbounds float, ptr %4, i64 1
  %81 = getelementptr inbounds float, ptr %4, i64 2
  br label %82

82:                                               ; preds = %78, %134
  %83 = phi ptr [ %76, %78 ], [ %139, %134 ]
  %84 = phi i32 [ 0, %78 ], [ %138, %134 ]
  %85 = phi float [ 0.000000e+00, %78 ], [ %137, %134 ]
  %86 = phi float [ 0.000000e+00, %78 ], [ %136, %134 ]
  %87 = phi float [ 0.000000e+00, %78 ], [ %135, %134 ]
  %88 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !176
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %134, label %92

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !167
  %95 = load i32, ptr %79, align 8, !tbaa !169
  %96 = and i32 %95, %94
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %134, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !170
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 102
  %102 = load i8, ptr %101, align 8, !tbaa !171
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !270
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.BoundBox, ptr %107, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !271
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @BKE_boundbox_calc_center_aabb(ptr noundef nonnull %107, ptr noundef nonnull %4) #11
  %115 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %115, ptr noundef nonnull %4) #11
  %116 = load float, ptr %4, align 4, !tbaa !55
  %117 = load float, ptr %80, align 4, !tbaa !55
  %118 = load float, ptr %81, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %126

119:                                              ; preds = %109, %105
  %120 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 47, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !55
  %122 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 47, i64 3, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !55
  %124 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 47, i64 3, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !55
  br label %126

126:                                              ; preds = %119, %114
  %127 = phi float [ %125, %119 ], [ %118, %114 ]
  %128 = phi float [ %123, %119 ], [ %117, %114 ]
  %129 = phi float [ %121, %119 ], [ %116, %114 ]
  %130 = fadd float %85, %129
  %131 = fadd float %86, %128
  %132 = fadd float %87, %127
  %133 = add i32 %84, 1
  br label %134

134:                                              ; preds = %82, %92, %98, %126
  %135 = phi float [ %87, %82 ], [ %87, %92 ], [ %132, %126 ], [ %87, %98 ]
  %136 = phi float [ %86, %82 ], [ %86, %92 ], [ %131, %126 ], [ %86, %98 ]
  %137 = phi float [ %85, %82 ], [ %85, %92 ], [ %130, %126 ], [ %85, %98 ]
  %138 = phi i32 [ %84, %82 ], [ %84, %92 ], [ %133, %126 ], [ %84, %98 ]
  %139 = load ptr, ptr %83, align 8, !tbaa !67
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %82, !llvm.loop !273

141:                                              ; preds = %134, %73
  %142 = phi float [ 0.000000e+00, %73 ], [ %135, %134 ]
  %143 = phi float [ 0.000000e+00, %73 ], [ %136, %134 ]
  %144 = phi float [ 0.000000e+00, %73 ], [ %137, %134 ]
  %145 = phi i32 [ 0, %73 ], [ %138, %134 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = uitofp i32 %145 to float
  %149 = fdiv float 1.000000e+00, %148
  %150 = fmul float %144, %149
  %151 = fmul float %143, %149
  %152 = fmul float %142, %149
  store float %150, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  store float %151, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  store float %152, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 2), align 4, !tbaa !55
  br label %155

153:                                              ; preds = %71
  %154 = tail call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @view3d_orbit_calc_center.lastofs, ptr noundef null) #11
  br label %155

155:                                              ; preds = %141, %147, %27, %33, %65, %153
  %156 = load float, ptr @view3d_orbit_calc_center.lastofs, align 4, !tbaa !55
  store float %156, ptr %1, align 4, !tbaa !55
  %157 = load float, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 1), align 4, !tbaa !55
  %158 = getelementptr inbounds float, ptr %1, i64 1
  store float %157, ptr %158, align 4, !tbaa !55
  %159 = load float, ptr getelementptr inbounds ([3 x float], ptr @view3d_orbit_calc_center.lastofs, i64 0, i64 2), align 4, !tbaa !55
  %160 = getelementptr inbounds float, ptr %1, i64 2
  store float %159, ptr %160, align 4, !tbaa !55
  ret void
}

declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #4

declare void @ED_sculpt_stroke_get_average(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BKE_boundbox_calc_center_aabb(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @calculateTransformCenter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #4

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare void @axis_angle_normalized_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare float @normalize_qt(ptr noundef) local_unnamed_addr #4

declare void @conjugate_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @conjugate_qt(ptr noundef) local_unnamed_addr #4

declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef, float noundef) local_unnamed_addr #4

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_ndof_pan_zoom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  %11 = or i8 %4, %3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %5
  call void @WM_event_ndof_pan_get(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = fcmp une float %18, 0.000000e+00
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 18
  %22 = load float, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !148
  %25 = fmul float %22, %24
  %26 = fmul float %18, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = fneg float %26
  %31 = select i1 %29, float %26, float %30
  %32 = fadd float %22, %31
  store float %32, ptr %21, align 8, !tbaa !54
  br label %33

33:                                               ; preds = %13, %15, %20
  %34 = icmp eq i8 %3, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 22
  %37 = load float, ptr %36, align 4, !tbaa !55
  %38 = fneg float %37
  store float %38, ptr %6, align 4, !tbaa !55
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 22, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !55
  %41 = fneg float %40
  %42 = getelementptr inbounds float, ptr %6, i64 1
  store float %41, ptr %42, align 4, !tbaa !55
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 22, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !55
  %45 = fneg float %44
  %46 = getelementptr inbounds float, ptr %6, i64 2
  store float %45, ptr %46, align 4, !tbaa !55
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 21
  %48 = load float, ptr %47, align 4, !tbaa !146
  %49 = fmul float %48, 6.000000e+02
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 24
  %51 = load i8, ptr %50, align 8, !tbaa !147
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = call float @ED_view3d_calc_zfac(ptr noundef %10, ptr noundef nonnull %6, ptr noundef null) #11
  %55 = fmul float %49, %54
  br label %56

56:                                               ; preds = %35, %53
  %57 = phi float [ %55, %53 ], [ %49, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  %58 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !148
  %60 = fmul float %57, %59
  %61 = load float, ptr %8, align 4, !tbaa !55
  %62 = fmul float %61, %60
  store float %62, ptr %8, align 4, !tbaa !55
  %63 = getelementptr inbounds float, ptr %8, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !55
  %65 = fmul float %60, %64
  store float %65, ptr %63, align 4, !tbaa !55
  %66 = getelementptr inbounds float, ptr %8, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !55
  %68 = fmul float %60, %67
  store float %68, ptr %66, align 4, !tbaa !55
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %7, ptr noundef nonnull %69) #11
  call void @mul_qt_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %70 = load float, ptr %8, align 4, !tbaa !55
  %71 = load float, ptr %36, align 4, !tbaa !55
  %72 = fsub float %71, %70
  store float %72, ptr %36, align 4, !tbaa !55
  %73 = load float, ptr %63, align 4, !tbaa !55
  %74 = load float, ptr %39, align 4, !tbaa !55
  %75 = fsub float %74, %73
  store float %75, ptr %39, align 4, !tbaa !55
  %76 = load float, ptr %66, align 4, !tbaa !55
  %77 = load float, ptr %43, align 4, !tbaa !55
  %78 = fsub float %77, %76
  store float %78, ptr %43, align 4, !tbaa !55
  %79 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 27
  %80 = load i8, ptr %79, align 1, !tbaa !93
  %81 = and i8 %80, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %56
  call fastcc void @view3d_boxview_sync(ptr noundef %1, ptr noundef %2)
  br label %84

84:                                               ; preds = %33, %83, %56, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_ndof_orbit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %19 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %20 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 29
  %29 = load i16, ptr %28, align 2, !tbaa !53
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 25
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %111, label %36

36:                                               ; preds = %32, %27, %23, %4
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 25
  %38 = load i8, ptr %37, align 1, !tbaa !34
  switch i8 %38, label %101 [
    i8 1, label %111
    i8 2, label %39
  ]

39:                                               ; preds = %36
  %40 = and i32 %19, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 35
  %44 = load i16, ptr %43, align 2, !tbaa !133
  %45 = add i16 %44, -1
  %46 = icmp ult i16 %45, 6
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %39
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 34
  %49 = load i16, ptr %48, align 4, !tbaa !134
  %50 = trunc i16 %49 to i8
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i8 [ %50, %47 ], [ 1, %42 ]
  br i1 %22, label %86, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22
  %56 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %54, ptr noundef nonnull %55, float noundef 1.000000e+00)
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 18
  store float %56, ptr %57, align 8, !tbaa !54
  %58 = load ptr, ptr %20, align 8, !tbaa !47
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 17
  %60 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %60) #11
  call void @normalize_m3(ptr noundef nonnull %5) #11
  %61 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3
  %62 = load float, ptr %61, align 4, !tbaa !55
  %63 = fneg float %62
  store float %63, ptr %55, align 4, !tbaa !55
  %64 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !55
  %66 = fneg float %65
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 1
  store float %66, ptr %67, align 4, !tbaa !55
  %68 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 47, i64 3, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !55
  %70 = fneg float %69
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22, i64 2
  store float %70, ptr %71, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  %72 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #11
  call void @mat3_to_quat(ptr noundef nonnull %59, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  store float 0.000000e+00, ptr %7, align 4, !tbaa !55
  %73 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %73, align 4, !tbaa !55
  %74 = getelementptr inbounds float, ptr %7, i64 2
  %75 = load float, ptr %57, align 4, !tbaa !55
  %76 = fneg float %75
  store float %76, ptr %74, align 4, !tbaa !55
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  %77 = load float, ptr %7, align 4, !tbaa !55
  %78 = load float, ptr %55, align 4, !tbaa !55
  %79 = fsub float %78, %77
  store float %79, ptr %55, align 4, !tbaa !55
  %80 = load float, ptr %73, align 4, !tbaa !55
  %81 = load float, ptr %67, align 4, !tbaa !55
  %82 = fsub float %81, %80
  store float %82, ptr %67, align 4, !tbaa !55
  %83 = load float, ptr %74, align 4, !tbaa !55
  %84 = load float, ptr %71, align 4, !tbaa !55
  %85 = fsub float %84, %83
  store float %85, ptr %71, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  br label %86

86:                                               ; preds = %53, %51
  %87 = load ptr, ptr %20, align 8, !tbaa !47
  %88 = icmp eq ptr %87, null
  br i1 %88, label %109, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ID, ptr %87, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 29
  %95 = load i16, ptr %94, align 2, !tbaa !53
  %96 = and i16 %95, 32
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load i8, ptr %37, align 1, !tbaa !34
  %100 = icmp eq i8 %99, 2
  br i1 %100, label %111, label %109

101:                                              ; preds = %36
  %102 = and i32 %19, 2048
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 26
  %106 = load i8, ptr %105, align 2, !tbaa !95
  %107 = add i8 %106, -1
  %108 = icmp ult i8 %107, 6
  br i1 %108, label %109, label %111

109:                                              ; preds = %104, %86, %89, %93, %98
  %110 = phi i8 [ %52, %98 ], [ %52, %93 ], [ %52, %89 ], [ %52, %86 ], [ 1, %104 ]
  store i8 %110, ptr %37, align 1, !tbaa !34
  br label %111

111:                                              ; preds = %109, %98, %32, %36, %101, %104
  %112 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 26
  store i8 0, ptr %112, align 2, !tbaa !95
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %113) #11
  %114 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !150
  %115 = and i32 %114, 32768
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @WM_event_ndof_rotate_get(ptr noundef %0, ptr noundef nonnull %10) #11
  call void @mul_qt_v3(ptr noundef nonnull %9, ptr noundef nonnull %12) #11
  %118 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %119 = load float, ptr %118, align 4, !tbaa !148
  %120 = load float, ptr %10, align 4, !tbaa !55
  %121 = fmul float %119, %120
  %122 = call float @cosf(float noundef %121) #11
  store float %122, ptr %11, align 16, !tbaa !55
  %123 = getelementptr inbounds float, ptr %11, i64 1
  %124 = call float @sinf(float noundef %121) #11
  %125 = load float, ptr %12, align 4, !tbaa !55
  %126 = fmul float %124, %125
  store float %126, ptr %123, align 4, !tbaa !55
  %127 = getelementptr inbounds float, ptr %12, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !55
  %129 = fmul float %124, %128
  %130 = getelementptr inbounds float, ptr %11, i64 2
  store float %129, ptr %130, align 8, !tbaa !55
  %131 = getelementptr inbounds float, ptr %12, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !55
  %133 = fmul float %124, %132
  %134 = getelementptr inbounds float, ptr %11, i64 3
  store float %133, ptr %134, align 4, !tbaa !55
  call void @mul_qt_qtqt(ptr noundef nonnull %113, ptr noundef nonnull %113, ptr noundef nonnull %11) #11
  %135 = load float, ptr %118, align 4, !tbaa !148
  %136 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !55
  %138 = fmul float %135, %137
  %139 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 38
  store float %138, ptr %139, align 8, !tbaa !145
  %140 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39
  store float 0.000000e+00, ptr %140, align 4, !tbaa !55
  %141 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39, i64 1
  store float 0.000000e+00, ptr %141, align 4, !tbaa !55
  %142 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39, i64 2
  store float 1.000000e+00, ptr %142, align 4, !tbaa !55
  %143 = call float @cosf(float noundef %138) #11
  store float %143, ptr %11, align 16, !tbaa !55
  store float 0.000000e+00, ptr %123, align 4, !tbaa !55
  store float 0.000000e+00, ptr %130, align 8, !tbaa !55
  %144 = call float @sinf(float noundef %138) #11
  store float %144, ptr %134, align 4, !tbaa !55
  call void @mul_qt_qtqt(ptr noundef nonnull %113, ptr noundef nonnull %113, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %156

145:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %146 = call float @WM_event_ndof_to_axis_angle(ptr noundef %0, ptr noundef nonnull %14) #11
  call void @mul_qt_v3(ptr noundef nonnull %9, ptr noundef nonnull %14) #11
  %147 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 38
  store float %146, ptr %147, align 8, !tbaa !145
  %148 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39
  %149 = load float, ptr %14, align 4, !tbaa !55
  store float %149, ptr %148, align 4, !tbaa !55
  %150 = getelementptr inbounds float, ptr %14, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !55
  %152 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39, i64 1
  store float %151, ptr %152, align 4, !tbaa !55
  %153 = getelementptr inbounds float, ptr %14, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !55
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 39, i64 2
  store float %154, ptr %155, align 4, !tbaa !55
  call void @axis_angle_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef %146) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %113, ptr noundef nonnull %113, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #11
  br label %156

156:                                              ; preds = %145, %117
  %157 = icmp eq ptr %3, null
  br i1 %157, label %198, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 19
  %160 = load i8, ptr %159, align 4, !tbaa !253
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %198, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !132
  %165 = getelementptr inbounds %struct.RegionView3D, ptr %164, i64 0, i32 22
  %166 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 17
  %167 = load float, ptr %166, align 4, !tbaa !55
  store float %167, ptr %165, align 4, !tbaa !55
  %168 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 17, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !55
  %170 = getelementptr inbounds %struct.RegionView3D, ptr %164, i64 0, i32 22, i64 1
  store float %169, ptr %170, align 4, !tbaa !55
  %171 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 17, i64 2
  %172 = load float, ptr %171, align 4, !tbaa !55
  %173 = getelementptr inbounds %struct.RegionView3D, ptr %164, i64 0, i32 22, i64 2
  store float %172, ptr %173, align 4, !tbaa !55
  %174 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 18
  %175 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @conjugate_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %175) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %113) #11
  call void @conjugate_qt(ptr noundef nonnull %8) #11
  %176 = load float, ptr %174, align 4, !tbaa !55
  %177 = load float, ptr %165, align 4, !tbaa !55
  %178 = fsub float %177, %176
  store float %178, ptr %165, align 4, !tbaa !55
  %179 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 18, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !55
  %181 = getelementptr inbounds %struct.RegionView3D, ptr %164, i64 0, i32 22, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !55
  %183 = fsub float %182, %180
  store float %183, ptr %181, align 4, !tbaa !55
  %184 = getelementptr inbounds %struct.ViewOpsData, ptr %3, i64 0, i32 18, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !55
  %186 = getelementptr inbounds %struct.RegionView3D, ptr %164, i64 0, i32 22, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !55
  %188 = fsub float %187, %185
  store float %188, ptr %186, align 4, !tbaa !55
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %165) #11
  %189 = load float, ptr %174, align 4, !tbaa !55
  %190 = load float, ptr %165, align 4, !tbaa !55
  %191 = fadd float %189, %190
  store float %191, ptr %165, align 4, !tbaa !55
  %192 = load float, ptr %179, align 4, !tbaa !55
  %193 = load float, ptr %181, align 4, !tbaa !55
  %194 = fadd float %192, %193
  store float %194, ptr %181, align 4, !tbaa !55
  %195 = load float, ptr %184, align 4, !tbaa !55
  %196 = load float, ptr %186, align 4, !tbaa !55
  %197 = fadd float %195, %196
  store float %197, ptr %186, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %198

198:                                              ; preds = %162, %158, %156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  ret void
}

declare void @WM_event_ndof_rotate_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewmove_apply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %49, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 25
  %15 = load i16, ptr %14, align 2, !tbaa !41
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %13, %17
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %23 = load i32, ptr %22, align 8, !tbaa !158
  %24 = sub nsw i32 %23, %1
  %25 = sitofp i32 %24 to float
  %26 = fmul float %25, 2.000000e+00
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !96
  %31 = sitofp i16 %30 to float
  %32 = fdiv float %26, %31
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 30
  %34 = load float, ptr %33, align 8, !tbaa !55
  %35 = fsub float %34, %32
  store float %35, ptr %33, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %37 = load i32, ptr %36, align 4, !tbaa !161
  %38 = sub nsw i32 %37, %2
  %39 = sitofp i32 %38 to float
  %40 = fmul float %39, 2.000000e+00
  %41 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 6
  %42 = load i16, ptr %41, align 2, !tbaa !97
  %43 = sitofp i16 %42 to float
  %44 = fdiv float %40, %43
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 30, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !55
  %47 = fsub float %46, %44
  store float %47, ptr %45, align 4, !tbaa !55
  br label %142

48:                                               ; preds = %17
  br i1 %12, label %49, label %105

49:                                               ; preds = %3, %48
  %50 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 29
  %59 = load i16, ptr %58, align 2, !tbaa !53
  %60 = and i16 %59, 32
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %53, %49, %57
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 23
  %64 = load float, ptr %63, align 4, !tbaa !165
  %65 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %64) #11
  %66 = fmul float %65, 2.000000e+00
  %67 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %68 = load i32, ptr %67, align 8, !tbaa !158
  %69 = sub nsw i32 %68, %1
  %70 = sitofp i32 %69 to float
  %71 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !129
  %73 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 5
  %74 = load i16, ptr %73, align 8, !tbaa !96
  %75 = sitofp i16 %74 to float
  %76 = fmul float %66, %75
  %77 = fdiv float %70, %76
  %78 = load ptr, ptr %8, align 8, !tbaa !132
  %79 = getelementptr inbounds %struct.RegionView3D, ptr %78, i64 0, i32 19
  %80 = load float, ptr %79, align 4, !tbaa !193
  %81 = fadd float %80, %77
  store float %81, ptr %79, align 4, !tbaa !193
  %82 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %83 = load i32, ptr %82, align 4, !tbaa !161
  %84 = sub nsw i32 %83, %2
  %85 = sitofp i32 %84 to float
  %86 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 6
  %87 = load i16, ptr %86, align 2, !tbaa !97
  %88 = sitofp i16 %87 to float
  %89 = fmul float %66, %88
  %90 = fdiv float %85, %89
  %91 = getelementptr inbounds %struct.RegionView3D, ptr %78, i64 0, i32 20
  %92 = load float, ptr %91, align 8, !tbaa !192
  %93 = fadd float %92, %90
  store float %93, ptr %91, align 8, !tbaa !192
  %94 = fcmp olt float %81, -1.000000e+00
  br i1 %94, label %97, label %95

95:                                               ; preds = %62
  %96 = fcmp ogt float %81, 1.000000e+00
  br i1 %96, label %97, label %99

97:                                               ; preds = %95, %62
  %98 = phi float [ -1.000000e+00, %62 ], [ 1.000000e+00, %95 ]
  store float %98, ptr %79, align 4, !tbaa !193
  br label %99

99:                                               ; preds = %97, %95
  %100 = fcmp olt float %93, -1.000000e+00
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  store float -1.000000e+00, ptr %91, align 8, !tbaa !192
  br label %142

102:                                              ; preds = %99
  %103 = fcmp ogt float %93, 1.000000e+00
  br i1 %103, label %104, label %142

104:                                              ; preds = %102
  store float 1.000000e+00, ptr %91, align 8, !tbaa !192
  br label %142

105:                                              ; preds = %57, %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %106 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %107 = load i32, ptr %106, align 8, !tbaa !158
  %108 = sub nsw i32 %1, %107
  %109 = sitofp i32 %108 to float
  store float %109, ptr %5, align 4, !tbaa !55
  %110 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %111 = load i32, ptr %110, align 4, !tbaa !161
  %112 = sub nsw i32 %2, %111
  %113 = sitofp i32 %112 to float
  %114 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %113, ptr %114, align 4, !tbaa !55
  %115 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !129
  %117 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 16
  %118 = load float, ptr %117, align 8, !tbaa !265
  call void @ED_view3d_win_to_delta(ptr noundef %116, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %118) #11
  %119 = load ptr, ptr %8, align 8, !tbaa !132
  %120 = getelementptr inbounds %struct.RegionView3D, ptr %119, i64 0, i32 22
  %121 = load float, ptr %4, align 4, !tbaa !55
  %122 = load float, ptr %120, align 4, !tbaa !55
  %123 = fadd float %121, %122
  store float %123, ptr %120, align 4, !tbaa !55
  %124 = getelementptr inbounds float, ptr %4, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !55
  %126 = getelementptr inbounds %struct.RegionView3D, ptr %119, i64 0, i32 22, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !55
  %128 = fadd float %125, %127
  store float %128, ptr %126, align 4, !tbaa !55
  %129 = getelementptr inbounds float, ptr %4, i64 2
  %130 = load float, ptr %129, align 4, !tbaa !55
  %131 = getelementptr inbounds %struct.RegionView3D, ptr %119, i64 0, i32 22, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !55
  %133 = fadd float %130, %132
  store float %133, ptr %131, align 4, !tbaa !55
  %134 = getelementptr inbounds %struct.RegionView3D, ptr %119, i64 0, i32 27
  %135 = load i8, ptr %134, align 1, !tbaa !93
  %136 = and i8 %135, 2
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %105
  %139 = load ptr, ptr %0, align 8, !tbaa !126
  %140 = load ptr, ptr %115, align 8, !tbaa !129
  call fastcc void @view3d_boxview_sync(ptr noundef %139, ptr noundef %140)
  br label %141

141:                                              ; preds = %138, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %142

142:                                              ; preds = %101, %104, %102, %141, %21
  %143 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  store i32 %1, ptr %143, align 8, !tbaa !158
  %144 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  store i32 %2, ptr %144, align 4, !tbaa !161
  %145 = load ptr, ptr %6, align 8, !tbaa !131
  %146 = load ptr, ptr %8, align 8, !tbaa !132
  %147 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %145, ptr noundef %146), !range !88
  %148 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %149) #11
  ret void
}

declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #4

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewzoom_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 24
  %13 = load i8, ptr %12, align 8, !tbaa !147
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 29
  %27 = load i16, ptr %26, align 2, !tbaa !53
  %28 = and i16 %27, 32
  %29 = icmp eq i16 %28, 0
  br label %30

30:                                               ; preds = %11, %25, %15, %21, %4
  %31 = phi i1 [ false, %4 ], [ true, %11 ], [ true, %21 ], [ true, %15 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  call void @ED_view3d_dist_range_get(ptr noundef %33, ptr noundef nonnull %5) #11
  br i1 %31, label %34, label %60

34:                                               ; preds = %30
  %35 = load i32, ptr %1, align 4, !tbaa !213
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %37 = load i32, ptr %36, align 8, !tbaa !159
  %38 = getelementptr inbounds i32, ptr %1, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !213
  %40 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %41 = load i32, ptr %40, align 4, !tbaa !160
  %42 = add i32 %35, %39
  %43 = add i32 %37, %41
  %44 = sub i32 %42, %43
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %45, 1.000000e+01
  %47 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 12
  %48 = load float, ptr %47, align 8, !tbaa !260
  %49 = icmp eq i16 %3, 0
  %50 = fneg float %46
  %51 = select i1 %49, float %46, float %50
  %52 = fadd float %48, %51
  %53 = load ptr, ptr %6, align 8, !tbaa !132
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %53, i64 0, i32 23
  store float %52, ptr %54, align 4, !tbaa !165
  %55 = fcmp olt float %52, -3.000000e+01
  br i1 %55, label %58, label %56

56:                                               ; preds = %34
  %57 = fcmp ogt float %52, 6.000000e+02
  br i1 %57, label %58, label %60

58:                                               ; preds = %56, %34
  %59 = phi float [ -3.000000e+01, %34 ], [ 6.000000e+02, %56 ]
  store float %59, ptr %54, align 4, !tbaa !165
  br label %60

60:                                               ; preds = %58, %56, %30
  switch i16 %2, label %132 [
    i16 0, label %61
    i16 1, label %84
  ]

61:                                               ; preds = %60
  %62 = call double @PIL_check_seconds_timer() #11
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 5
  %64 = load double, ptr %63, align 8, !tbaa !164
  %65 = fsub double %62, %64
  %66 = fptrunc double %65 to float
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %68 = and i32 %67, 67108864
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %71 = getelementptr inbounds i32, ptr %1, i64 1
  %72 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %73 = select i1 %69, ptr %71, ptr %1
  %74 = select i1 %69, ptr %70, ptr %72
  %75 = load i32, ptr %74, align 4, !tbaa !213
  %76 = load i32, ptr %73, align 4, !tbaa !213
  %77 = sub nsw i32 %75, %76
  %78 = sitofp i32 %77 to float
  %79 = icmp eq i16 %3, 0
  %80 = fneg float %78
  %81 = select i1 %79, float %78, float %80
  %82 = fdiv float %81, 2.000000e+01
  %83 = call float @llvm.fmuladd.f32(float %82, float %66, float 1.000000e+00)
  store double %62, ptr %63, align 8, !tbaa !164
  br label %176

84:                                               ; preds = %60
  %85 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !129
  %87 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !198
  %89 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 3, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !200
  %91 = add nsw i32 %90, %88
  %92 = sdiv i32 %91, 2
  %93 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 3, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !199
  %95 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 3, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !201
  %97 = add nsw i32 %96, %94
  %98 = sdiv i32 %97, 2
  %99 = load i32, ptr %1, align 4, !tbaa !213
  %100 = sub nsw i32 %92, %99
  %101 = sitofp i32 %100 to float
  %102 = getelementptr inbounds i32, ptr %1, i64 1
  %103 = load i32, ptr %102, align 4, !tbaa !213
  %104 = sub nsw i32 %98, %103
  %105 = sitofp i32 %104 to float
  %106 = fmul float %105, %105
  %107 = call float @llvm.fmuladd.f32(float %101, float %101, float %106)
  %108 = call float @sqrtf(float noundef %107) #11
  %109 = fadd float %108, 5.000000e+00
  %110 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %111 = load i32, ptr %110, align 4, !tbaa !213
  %112 = sub nsw i32 %92, %111
  %113 = sitofp i32 %112 to float
  %114 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %115 = load i32, ptr %114, align 4, !tbaa !213
  %116 = sub nsw i32 %98, %115
  %117 = sitofp i32 %116 to float
  %118 = fmul float %117, %117
  %119 = call float @llvm.fmuladd.f32(float %113, float %113, float %118)
  %120 = call float @sqrtf(float noundef %119) #11
  %121 = fadd float %120, 5.000000e+00
  %122 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 11
  %123 = load float, ptr %122, align 4, !tbaa !259
  %124 = fadd float %121, 5.000000e+00
  %125 = fadd float %109, 5.000000e+00
  %126 = fdiv float %124, %125
  %127 = fmul float %123, %126
  %128 = load ptr, ptr %6, align 8, !tbaa !132
  %129 = getelementptr inbounds %struct.RegionView3D, ptr %128, i64 0, i32 18
  %130 = load float, ptr %129, align 8, !tbaa !54
  %131 = fdiv float %127, %130
  br label %176

132:                                              ; preds = %60
  %133 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %134 = and i32 %133, 67108864
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !129
  br i1 %135, label %146, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.ARegion, ptr %137, i64 0, i32 3, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !274
  %141 = load i32, ptr %1, align 4, !tbaa !213
  %142 = sub nsw i32 %140, %141
  %143 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %144 = load i32, ptr %143, align 8, !tbaa !159
  %145 = sub nsw i32 %140, %144
  br label %155

146:                                              ; preds = %132
  %147 = getelementptr inbounds %struct.ARegion, ptr %137, i64 0, i32 3, i32 3
  %148 = load i32, ptr %147, align 4, !tbaa !275
  %149 = getelementptr inbounds i32, ptr %1, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !213
  %151 = sub nsw i32 %148, %150
  %152 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %153 = load i32, ptr %152, align 4, !tbaa !160
  %154 = sub nsw i32 %148, %153
  br label %155

155:                                              ; preds = %146, %138
  %156 = phi i32 [ %145, %138 ], [ %154, %146 ]
  %157 = phi i32 [ %142, %138 ], [ %151, %146 ]
  br i1 %31, label %176, label %158

158:                                              ; preds = %155
  %159 = icmp eq i16 %3, 0
  %160 = add nsw i32 %157, 5
  %161 = sitofp i32 %160 to float
  %162 = add nsw i32 %156, 5
  %163 = sitofp i32 %162 to float
  %164 = select i1 %159, float %161, float %163
  %165 = select i1 %159, float %163, float %161
  %166 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 11
  %167 = load float, ptr %166, align 4, !tbaa !259
  %168 = fdiv float %164, %165
  %169 = fadd float %168, -1.000000e+00
  %170 = call float @llvm.fmuladd.f32(float %169, float 2.000000e+00, float 1.000000e+00)
  %171 = fmul float %170, %167
  %172 = load ptr, ptr %6, align 8, !tbaa !132
  %173 = getelementptr inbounds %struct.RegionView3D, ptr %172, i64 0, i32 18
  %174 = load float, ptr %173, align 8, !tbaa !54
  %175 = fdiv float %171, %174
  br label %176

176:                                              ; preds = %158, %155, %84, %61
  %177 = phi float [ %83, %61 ], [ %131, %84 ], [ 1.000000e+00, %155 ], [ %175, %158 ]
  %178 = fcmp oeq float %177, 1.000000e+00
  %179 = select i1 %31, i1 true, i1 %178
  br i1 %179, label %203, label %180

180:                                              ; preds = %176
  %181 = load float, ptr %5, align 4, !tbaa !55
  %182 = load ptr, ptr %6, align 8, !tbaa !132
  %183 = getelementptr inbounds %struct.RegionView3D, ptr %182, i64 0, i32 18
  %184 = load float, ptr %183, align 8, !tbaa !54
  %185 = fdiv float %181, %184
  %186 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !55
  %188 = fdiv float %187, %184
  %189 = fcmp olt float %177, %185
  br i1 %189, label %193, label %190

190:                                              ; preds = %180
  %191 = fcmp ogt float %177, %188
  br i1 %191, label %192, label %193

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %180, %190, %192
  %194 = phi float [ %188, %192 ], [ %177, %190 ], [ %185, %180 ]
  %195 = fcmp une float %194, 1.000000e+00
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !129
  %199 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %200 = load i32, ptr %199, align 8, !tbaa !158
  %201 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %202 = load i32, ptr %201, align 4, !tbaa !161
  call fastcc void @view_zoom_mouseloc(ptr noundef %198, float noundef %194, i32 noundef %200, i32 noundef %202)
  br label %203

203:                                              ; preds = %193, %196, %176
  %204 = load ptr, ptr %6, align 8, !tbaa !132
  %205 = getelementptr inbounds %struct.RegionView3D, ptr %204, i64 0, i32 18
  %206 = load float, ptr %205, align 8, !tbaa !54
  %207 = load float, ptr %5, align 4, !tbaa !55
  %208 = fcmp olt float %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !55
  %212 = fcmp ogt float %206, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209, %203
  %214 = phi float [ %207, %203 ], [ %211, %209 ]
  store float %214, ptr %205, align 8, !tbaa !54
  br label %215

215:                                              ; preds = %213, %209
  %216 = getelementptr inbounds %struct.RegionView3D, ptr %204, i64 0, i32 27
  %217 = load i8, ptr %216, align 1, !tbaa !93
  %218 = and i8 %217, 2
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = load ptr, ptr %0, align 8, !tbaa !126
  %222 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !129
  call fastcc void @view3d_boxview_sync(ptr noundef %221, ptr noundef %223)
  br label %224

224:                                              ; preds = %220, %215
  %225 = load ptr, ptr %32, align 8, !tbaa !131
  %226 = load ptr, ptr %6, align 8, !tbaa !132
  %227 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %225, ptr noundef %226), !range !88
  %228 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %229) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

declare double @PIL_check_seconds_timer() local_unnamed_addr #4

declare void @ED_view3d_dist_range_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @view_zoom_mouseloc(ptr noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  %15 = load float, ptr %14, align 4, !tbaa !55
  %16 = fneg float %15
  store float %16, ptr %6, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = fneg float %18
  %20 = getelementptr inbounds float, ptr %6, i64 1
  store float %19, ptr %20, align 4, !tbaa !55
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !55
  %23 = fneg float %22
  %24 = getelementptr inbounds float, ptr %6, i64 2
  store float %23, ptr %24, align 4, !tbaa !55
  %25 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !276
  %27 = sub nsw i32 %2, %26
  %28 = shl nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !96
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 %28, %31
  %33 = sitofp i32 %32 to float
  %34 = fmul float %33, 5.000000e-01
  store float %34, ptr %7, align 4, !tbaa !55
  %35 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !277
  %37 = sub nsw i32 %3, %36
  %38 = shl nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !97
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %38, %41
  %43 = sitofp i32 %42 to float
  %44 = fmul float %43, 5.000000e-01
  %45 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !55
  %46 = call float @ED_view3d_calc_zfac(ptr noundef %9, ptr noundef nonnull %6, ptr noundef null) #11
  call void @ED_view3d_win_to_delta(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %5, float noundef %46) #11
  %47 = load float, ptr %6, align 4, !tbaa !55
  %48 = load float, ptr %5, align 4, !tbaa !55
  %49 = fadd float %47, %48
  %50 = load float, ptr %20, align 4, !tbaa !55
  %51 = getelementptr inbounds float, ptr %5, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !55
  %53 = fadd float %50, %52
  %54 = load float, ptr %24, align 4, !tbaa !55
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !55
  %57 = fadd float %54, %56
  %58 = fneg float %49
  %59 = fneg float %53
  %60 = fneg float %57
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 18
  %62 = load float, ptr %61, align 8, !tbaa !54
  %63 = fmul float %62, %1
  store float %58, ptr %14, align 4, !tbaa !55
  store float %59, ptr %17, align 4, !tbaa !55
  store float %60, ptr %21, align 4, !tbaa !55
  store float %63, ptr %61, align 8, !tbaa !54
  %64 = call float @llvm.fmuladd.f32(float %48, float %1, float %58)
  store float %64, ptr %14, align 4, !tbaa !55
  %65 = call float @llvm.fmuladd.f32(float %52, float %1, float %59)
  store float %65, ptr %17, align 4, !tbaa !55
  %66 = call float @llvm.fmuladd.f32(float %56, float %1, float %60)
  store float %66, ptr %21, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %71

67:                                               ; preds = %4
  %68 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 18
  %69 = load float, ptr %68, align 8, !tbaa !54
  %70 = fmul float %69, %1
  store float %70, ptr %68, align 8, !tbaa !54
  br label %71

71:                                               ; preds = %67, %13
  ret void
}

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewdolly_apply(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  br i1 %7, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !274
  %13 = sub nsw i32 %12, %1
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !159
  %16 = sub nsw i32 %12, %15
  br label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !275
  %20 = sub nsw i32 %19, %2
  %21 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %22 = load i32, ptr %21, align 4, !tbaa !160
  %23 = sub nsw i32 %19, %22
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i32 [ %13, %10 ], [ %20, %17 ]
  %26 = phi i32 [ %16, %10 ], [ %23, %17 ]
  %27 = add nsw i32 %26, 5
  %28 = sitofp i32 %27 to float
  %29 = add nsw i32 %25, 5
  %30 = sitofp i32 %29 to float
  %31 = icmp eq i16 %3, 0
  %32 = select i1 %31, float %30, float %28
  %33 = select i1 %31, float %28, float %30
  %34 = fsub float %32, %33
  %35 = fmul float %34, 0x3F847AE140000000
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !132
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 18
  %39 = load float, ptr %38, align 8, !tbaa !54
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %39, float 1.000000e+00)
  %41 = fcmp une float %40, 1.000000e+00
  br i1 %41, label %42, label %67

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !129
  %45 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  %46 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9
  %47 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 30
  %48 = load ptr, ptr %47, align 8, !tbaa !89
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 22
  %50 = fsub float 1.000000e+00, %40
  %51 = fneg float %50
  %52 = load float, ptr %45, align 4, !tbaa !55
  %53 = load float, ptr %46, align 4, !tbaa !55
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %51, float %52)
  store float %54, ptr %49, align 4, !tbaa !55
  %55 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !55
  %57 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !55
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %51, float %56)
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 22, i64 1
  store float %59, ptr %60, align 4, !tbaa !55
  %61 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !55
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !55
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %51, float %62)
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 22, i64 2
  store float %65, ptr %66, align 4, !tbaa !55
  br label %67

67:                                               ; preds = %42, %24
  %68 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 27
  %69 = load i8, ptr %68, align 1, !tbaa !93
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %0, align 8, !tbaa !126
  %74 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !129
  tail call fastcc void @view3d_boxview_sync(ptr noundef %73, ptr noundef %75)
  br label %76

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !131
  %79 = load ptr, ptr %36, align 8, !tbaa !132
  %80 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %78, ptr noundef %79), !range !88
  %81 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  tail call void @ED_region_tag_redraw(ptr noundef %82) #11
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #4

declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #2 {
  %8 = alloca [3 x float], align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.CameraParams, align 4
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %13 = load float, ptr %4, align 4, !tbaa !55
  %14 = load float, ptr %3, align 4, !tbaa !55
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds float, ptr %4, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !55
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !55
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %4, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !55
  %23 = getelementptr inbounds float, ptr %3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !55
  %25 = fsub float %22, %24
  %26 = fcmp ogt float %15, %20
  %27 = select i1 %26, float %15, float %20
  %28 = fcmp ogt float %27, %25
  %29 = select i1 %28, float %27, float %25
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %92, label %31

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 24
  %33 = load i8, ptr %32, align 8, !tbaa !147
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %37 = load i8, ptr %36, align 1, !tbaa !34
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %49 = load i16, ptr %48, align 2, !tbaa !53
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %10) #11
  call void @BKE_camera_params_init(ptr noundef nonnull %10) #11
  %53 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %54 = load float, ptr %53, align 4, !tbaa !209
  %55 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 11
  store float %54, ptr %55, align 4, !tbaa !278
  %56 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 33
  %57 = load float, ptr %56, align 8, !tbaa !263
  %58 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 12
  store float %57, ptr %58, align 4, !tbaa !279
  %59 = load ptr, ptr %40, align 8, !tbaa !47
  call void @BKE_camera_params_from_object(ptr noundef nonnull %10, ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !56
  %62 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 10
  %63 = load i32, ptr %62, align 4, !tbaa !280
  %64 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 8
  %65 = load float, ptr %64, align 4, !tbaa !281
  %66 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 9
  %67 = load float, ptr %66, align 4, !tbaa !282
  %68 = call float @BKE_camera_sensor_size(i32 noundef %63, float noundef %65, float noundef %67) #11
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %10) #11
  br label %72

69:                                               ; preds = %43, %39, %47, %35
  %70 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %71 = load float, ptr %70, align 4, !tbaa !283
  br label %72

72:                                               ; preds = %69, %52
  %73 = phi float [ %61, %52 ], [ %71, %69 ]
  %74 = phi float [ %68, %52 ], [ 3.200000e+01, %69 ]
  %75 = call float @focallength_to_fov(float noundef %73, float noundef %74) #11
  %76 = fmul float %29, 5.000000e-01
  %77 = call float @ED_view3d_radius_to_persp_dist(float noundef %75, float noundef %76) #11
  %78 = fmul float %77, 0x3FF6666660000000
  %79 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %80 = load float, ptr %79, align 4, !tbaa !209
  %81 = fmul float %80, 1.500000e+00
  %82 = fcmp ogt float %78, %81
  %83 = select i1 %82, float %78, float %81
  br label %92

84:                                               ; preds = %31
  %85 = fcmp olt float %29, 0x3F1A36E2E0000000
  br i1 %85, label %92, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %88 = load float, ptr %87, align 4, !tbaa !283
  %89 = fmul float %29, 5.000000e-01
  %90 = tail call float @ED_view3d_radius_to_ortho_dist(float noundef %88, float noundef %89) #11
  %91 = fmul float %90, 0x3FF6666660000000
  br label %92

92:                                               ; preds = %84, %72, %86, %7
  %93 = phi i1 [ false, %72 ], [ false, %86 ], [ true, %7 ], [ true, %84 ]
  %94 = phi float [ %83, %72 ], [ %91, %86 ], [ %29, %7 ], [ %29, %84 ]
  call void @mid_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %95 = load float, ptr %8, align 4, !tbaa !55
  %96 = fneg float %95
  store float %96, ptr %8, align 4, !tbaa !55
  %97 = getelementptr inbounds float, ptr %8, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !55
  %99 = fneg float %98
  store float %99, ptr %97, align 4, !tbaa !55
  %100 = getelementptr inbounds float, ptr %8, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !55
  %102 = fneg float %101
  store float %102, ptr %100, align 4, !tbaa !55
  store float %94, ptr %9, align 4, !tbaa !55
  %103 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %104 = load i16, ptr %103, align 2, !tbaa !97
  %105 = icmp sgt i16 %104, 2
  br i1 %105, label %106, label %118

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %108 = load i16, ptr %107, align 8, !tbaa !96
  %109 = icmp sgt i16 %108, 2
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = sitofp i16 %108 to float
  %112 = sitofp i16 %104 to float
  %113 = fdiv float %111, %112
  %114 = fcmp olt float %113, 1.000000e+00
  %115 = fdiv float 1.000000e+00, %113
  %116 = select i1 %114, float %115, float %113
  %117 = fmul float %94, %116
  store float %117, ptr %9, align 4, !tbaa !55
  br label %118

118:                                              ; preds = %110, %106, %92
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %120 = load i8, ptr %119, align 1, !tbaa !34
  %121 = icmp eq i8 %120, 2
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %124 = load ptr, ptr %123, align 8, !tbaa !47
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ID, ptr %124, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !48
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %132 = load i16, ptr %131, align 2, !tbaa !53
  %133 = and i16 %132, 32
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126, %122, %130
  store i8 1, ptr %119, align 1, !tbaa !34
  br label %136

136:                                              ; preds = %118, %130, %135
  %137 = phi ptr [ %124, %135 ], [ null, %130 ], [ null, %118 ]
  %138 = select i1 %93, ptr null, ptr %9
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %137, ptr noundef null, ptr noundef nonnull %8, ptr noundef null, ptr noundef %138, ptr noundef null, i32 noundef %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  ret void
}

declare float @BKE_camera_sensor_size(i32 noundef, float noundef, float noundef) local_unnamed_addr #4

declare float @ED_view3d_radius_to_persp_dist(float noundef, float noundef) local_unnamed_addr #4

declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #4

declare float @ED_view3d_radius_to_ortho_dist(float noundef, float noundef) local_unnamed_addr #4

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_smooth_view(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ED_view3d_minmax_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @paintface_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PE_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ED_sculpt_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BKE_object_minmax_dupli(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_calc_camera_border_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @BKE_screen_view3d_zoom_from_fac(float noundef) local_unnamed_addr #4

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #4

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @view3d_update_depths_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @view3d_depth_near(ptr noundef) local_unnamed_addr #4

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @axis_set_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7) unnamed_addr #2 {
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %14 = call float @normalize_qt_qt(ptr noundef nonnull %9, ptr noundef %3) #11
  %15 = icmp eq i8 %6, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = call ptr @CTX_data_active_object(ptr noundef %0) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #11
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 1) #11
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  call void @invert_qt(ptr noundef nonnull %10) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  store i8 0, ptr %20, align 2, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  br label %21

21:                                               ; preds = %19, %16, %8
  %22 = phi i1 [ true, %8 ], [ %18, %16 ], [ false, %19 ]
  %23 = phi i16 [ %4, %8 ], [ %4, %16 ], [ 0, %19 ]
  br i1 %22, label %24, label %58

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 27
  %26 = load i8, ptr %25, align 1, !tbaa !93
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  %31 = load i8, ptr %30, align 2, !tbaa !95
  %32 = icmp eq i8 %31, 1
  %33 = icmp eq i16 %23, 2
  %34 = and i1 %33, %32
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = icmp eq i8 %31, 2
  %37 = icmp eq i16 %23, 1
  %38 = and i1 %37, %36
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = icmp eq i8 %31, 4
  %41 = icmp eq i16 %23, 3
  %42 = and i1 %41, %40
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = icmp eq i8 %31, 3
  %45 = icmp eq i16 %23, 4
  %46 = and i1 %45, %44
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = icmp eq i8 %31, 6
  %49 = icmp eq i16 %23, 5
  %50 = and i1 %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = icmp eq i8 %31, 5
  %53 = icmp eq i16 %23, 6
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %91

55:                                               ; preds = %29, %35, %39, %43, %47, %51, %24
  %56 = trunc i16 %23 to i8
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  store i8 %56, ptr %57, align 2, !tbaa !95
  br label %58

58:                                               ; preds = %55, %21
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 27
  %60 = load i8, ptr %59, align 1, !tbaa !93
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void @ED_region_tag_redraw(ptr noundef %2) #11
  br label %91

64:                                               ; preds = %58
  %65 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !58
  %66 = and i32 %65, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = add i16 %23, -1
  %70 = icmp ult i16 %69, 6
  %71 = trunc i32 %5 to i8
  %72 = select i1 %70, i8 0, i8 %71
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  store i8 %72, ptr %73, align 1, !tbaa !34
  br label %80

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = trunc i32 %5 to i8
  store i8 %79, ptr %75, align 1, !tbaa !34
  br label %80

80:                                               ; preds = %74, %78, %68
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %82 = load i8, ptr %81, align 1, !tbaa !34
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 22
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %86, ptr noundef null, ptr noundef nonnull %89, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %7) #11
  br label %91

90:                                               ; preds = %84, %80
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %7) #11
  br label %91

91:                                               ; preds = %88, %90, %51, %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  ret void
}

declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #4

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_getTransformOrientationMatrix(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @viewroll_apply(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !274
  %9 = load i32, ptr %6, align 8, !tbaa !276
  %10 = sub nsw i32 %8, %9
  %11 = sitofp i32 %10 to float
  %12 = sub nsw i32 %8, %1
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, %11
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !159
  %17 = sub nsw i32 %8, %16
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, %11
  %20 = fsub float %14, %19
  %21 = fmul float %20, 0x400921FB60000000
  %22 = fmul float %21, 4.000000e+00
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %26, i64 0, i32 17
  %28 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9
  %30 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %3, ptr noundef nonnull %29, float noundef %22) #11
  call void @mul_qt_qtqt(ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %3) #11
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %31, i64 0, i32 26
  store i8 0, ptr %32, align 2, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %33

33:                                               ; preds = %24, %2
  %34 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !132
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %35, i64 0, i32 27
  %37 = load i8, ptr %36, align 1, !tbaa !93
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %0, align 8, !tbaa !126
  %42 = load ptr, ptr %4, align 8, !tbaa !129
  call fastcc void @view3d_boxview_sync(ptr noundef %41, ptr noundef %42)
  br label %43

43:                                               ; preds = %40, %33
  %44 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  %46 = load ptr, ptr %34, align 8, !tbaa !132
  %47 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %45, ptr noundef %46), !range !88
  %48 = load ptr, ptr %4, align 8, !tbaa !129
  call void @ED_region_tag_redraw(ptr noundef %48) #11
  ret void
}

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #4

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #4

declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @id_us_min(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #4

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BIF_do_manipulator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!34 = !{!35, !36, i64 809}
!35 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !38, i64 640, !38, i64 648, !38, i64 656, !38, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !36, i64 696, !36, i64 760, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !36, i64 792, !39, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !40, i64 824, !40, i64 826, !36, i64 828, !40, i64 844, !40, i64 846, !39, i64 848, !36, i64 852, !39, i64 864, !36, i64 868}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!"short", !36, i64 0}
!41 = !{!42, !40, i64 234}
!42 = !{!"View3D", !38, i64 0, !38, i64 8, !43, i64 16, !44, i64 32, !39, i64 36, !36, i64 40, !36, i64 56, !39, i64 72, !39, i64 76, !36, i64 80, !36, i64 81, !44, i64 84, !44, i64 88, !40, i64 92, !40, i64 94, !38, i64 96, !38, i64 104, !45, i64 112, !43, i64 128, !38, i64 144, !38, i64 152, !36, i64 160, !44, i64 224, !44, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !43, i64 296, !43, i64 312, !43, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !38, i64 352, !38, i64 360, !38, i64 368}
!43 = !{!"ListBase", !38, i64 0, !38, i64 8}
!44 = !{!"int", !36, i64 0}
!45 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!46 = !{!42, !38, i64 104}
!47 = !{!42, !38, i64 96}
!48 = !{!49, !38, i64 24}
!49 = !{!"Object", !50, i64 0, !38, i64 120, !38, i64 128, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !51, i64 312, !38, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !44, i64 432, !44, i64 436, !38, i64 440, !38, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !38, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !39, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !52, i64 1304, !52, i64 1312, !44, i64 1320, !44, i64 1324, !43, i64 1328, !43, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !36, i64 1384, !38, i64 1392, !43, i64 1400, !38, i64 1416}
!50 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !40, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !38, i64 112}
!51 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!52 = !{!"long", !36, i64 0}
!53 = !{!42, !40, i64 242}
!54 = !{!35, !39, i64 776}
!55 = !{!39, !39, i64 0}
!56 = !{!57, !39, i64 4}
!57 = !{!"CameraParams", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !44, i64 40, !39, i64 44, !39, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !45, i64 76, !36, i64 92}
!58 = !{!59, !44, i64 8484}
!59 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !40, i64 8496, !40, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !36, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !44, i64 8912, !44, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !39, i64 8956, !39, i64 8960, !44, i64 8964, !40, i64 8968, !40, i64 8970, !39, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !60, i64 8984, !36, i64 9760, !36, i64 9772, !40, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !39, i64 10904, !39, i64 10908, !44, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !61, i64 10928}
!60 = !{!"ColorBand", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!61 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !36, i64 26}
!62 = !{!49, !38, i64 216}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!49, !40, i64 954}
!67 = !{!38, !38, i64 0}
!68 = distinct !{!68, !64, !65}
!69 = !{!70, !44, i64 680}
!70 = !{!"Scene", !50, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !43, i64 152, !38, i64 168, !38, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !71, i64 280, !79, i64 4264, !43, i64 4296, !43, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !40, i64 4376, !40, i64 4378, !44, i64 4380, !43, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !38, i64 4608, !85, i64 4616, !38, i64 4640, !52, i64 4648, !52, i64 4656, !73, i64 4664, !74, i64 4824, !86, i64 4888, !38, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !38, i64 248, !38, i64 256, !75, i64 264, !76, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !39, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !44, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !44, i64 484, !44, i64 488, !40, i64 492, !40, i64 494, !44, i64 496, !44, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !45, i64 544, !45, i64 560, !77, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !44, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !44, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !44, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !38, i64 2568, !44, i64 2576, !39, i64 2580, !36, i64 2584, !78, i64 2616, !44, i64 3976, !44, i64 3980}
!72 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !38, i64 144, !38, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!75 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !40, i64 48, !40, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!76 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !39, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !38, i64 64}
!77 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!78 = !{!"BakeData", !72, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!79 = !{!"AudioData", !44, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !44, i64 16, !40, i64 20, !40, i64 22, !39, i64 24, !39, i64 28}
!80 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!81 = !{!"GameData", !80, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !82, i64 40, !40, i64 64, !40, i64 66, !39, i64 68, !83, i64 72, !39, i64 128, !39, i64 132, !44, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!82 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !39, i64 8, !39, i64 12, !38, i64 16}
!83 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !44, i64 40, !39, i64 44, !39, i64 48, !40, i64 52, !40, i64 54}
!84 = !{!"UnitSettings", !39, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!85 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!86 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!87 = distinct !{!87, !64, !65}
!88 = !{i8 0, i8 2}
!89 = !{!90, !38, i64 376}
!90 = !{!"ARegion", !38, i64 0, !38, i64 8, !91, i64 16, !77, i64 176, !77, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !38, i64 240, !43, i64 248, !43, i64 264, !43, i64 280, !43, i64 296, !43, i64 312, !43, i64 328, !43, i64 344, !38, i64 360, !38, i64 368, !38, i64 376}
!91 = !{!"View2D", !45, i64 0, !45, i64 16, !77, i64 32, !77, i64 48, !77, i64 64, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !38, i64 128, !44, i64 136, !44, i64 140, !38, i64 144, !38, i64 152}
!92 = !{!90, !40, i64 214}
!93 = !{!35, !36, i64 811}
!94 = distinct !{!94, !64, !65}
!95 = !{!35, !36, i64 810}
!96 = !{!90, !40, i64 208}
!97 = !{!90, !40, i64 210}
!98 = distinct !{!98, !64, !65}
!99 = distinct !{!99, !64, !65}
!100 = distinct !{!100, !64, !65}
!101 = !{!35, !40, i64 826}
!102 = !{!35, !38, i64 640}
!103 = distinct !{!103, !64, !65}
!104 = !{!90, !40, i64 216}
!105 = !{!90, !38, i64 8}
!106 = distinct !{!106, !64, !65}
!107 = !{!108, !38, i64 120}
!108 = !{!"ScrArea", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !77, i64 56, !36, i64 72, !36, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !36, i64 86, !36, i64 87, !38, i64 88, !43, i64 96, !43, i64 112, !43, i64 128, !43, i64 144}
!109 = distinct !{!109, !64, !65}
!110 = distinct !{!110, !64, !65}
!111 = distinct !{!111, !64, !65}
!112 = !{!113, !38, i64 128}
!113 = !{!"wmKeyMap", !38, i64 0, !38, i64 8, !43, i64 16, !43, i64 32, !36, i64 48, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !38, i64 120, !38, i64 128}
!114 = !{!115, !38, i64 0}
!115 = !{!"wmOperatorType", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !43, i64 112, !38, i64 128, !38, i64 136, !38, i64 144, !116, i64 152, !40, i64 184}
!116 = !{!"ExtensionRNA", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!117 = !{!115, !38, i64 24}
!118 = !{!115, !38, i64 8}
!119 = !{!115, !38, i64 48}
!120 = !{!115, !38, i64 64}
!121 = !{!115, !38, i64 72}
!122 = !{!115, !38, i64 56}
!123 = !{!115, !40, i64 184}
!124 = !{!125, !38, i64 96}
!125 = !{!"wmOperator", !38, i64 0, !38, i64 8, !36, i64 16, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !43, i64 128, !38, i64 144, !38, i64 152, !40, i64 160, !36, i64 162}
!126 = !{!127, !38, i64 0}
!127 = !{!"ViewOpsData", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !128, i64 40, !36, i64 48, !36, i64 64, !36, i64 80, !36, i64 92, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !36, i64 124, !39, i64 128, !36, i64 132, !36, i64 144, !36, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176}
!128 = !{!"double", !36, i64 0}
!129 = !{!127, !38, i64 8}
!130 = !{!108, !38, i64 96}
!131 = !{!127, !38, i64 16}
!132 = !{!127, !38, i64 24}
!133 = !{!35, !40, i64 846}
!134 = !{!35, !40, i64 844}
!135 = !{!136, !40, i64 16}
!136 = !{!"wmEvent", !38, i64 0, !38, i64 8, !40, i64 16, !40, i64 18, !44, i64 20, !44, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !40, i64 44, !40, i64 46, !44, i64 48, !44, i64 52, !128, i64 56, !44, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !38, i64 88, !38, i64 96, !40, i64 104, !40, i64 106, !44, i64 108, !38, i64 112}
!137 = !{!59, !44, i64 8488}
!138 = !{!136, !44, i64 20}
!139 = !{!136, !44, i64 48}
!140 = !{!136, !44, i64 24}
!141 = !{!136, !44, i64 52}
!142 = !{!136, !40, i64 18}
!143 = !{!127, !36, i64 124}
!144 = !{!127, !44, i64 176}
!145 = !{!35, !39, i64 864}
!146 = !{!35, !39, i64 788}
!147 = !{!35, !36, i64 808}
!148 = !{!149, !39, i64 24}
!149 = !{!"wmNDOFMotionData", !36, i64 0, !36, i64 12, !39, i64 24, !44, i64 28}
!150 = !{!59, !44, i64 8964}
!151 = !{!36, !36, i64 0}
!152 = !{!136, !38, i64 112}
!153 = !{!149, !44, i64 28}
!154 = !{i32 2, i32 5}
!155 = !{!115, !38, i64 32}
!156 = !{!115, !38, i64 88}
!157 = !{!125, !38, i64 112}
!158 = !{!127, !44, i64 168}
!159 = !{!127, !44, i64 160}
!160 = !{!127, !44, i64 164}
!161 = !{!127, !44, i64 172}
!162 = !{!59, !40, i64 8498}
!163 = !{!127, !38, i64 32}
!164 = !{!127, !128, i64 40}
!165 = !{!35, !39, i64 804}
!166 = !{!125, !38, i64 120}
!167 = !{!168, !44, i64 16}
!168 = !{!"Base", !38, i64 0, !38, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !40, i64 28, !40, i64 30, !38, i64 32}
!169 = !{!42, !44, i64 224}
!170 = !{!168, !38, i64 32}
!171 = !{!49, !36, i64 1160}
!172 = distinct !{!172, !64, !65}
!173 = distinct !{!173, !64, !65}
!174 = !{!70, !38, i64 168}
!175 = !{!49, !44, i64 432}
!176 = !{!168, !44, i64 24}
!177 = !{!49, !40, i64 136}
!178 = distinct !{!178, !64, !65}
!179 = !{!49, !38, i64 288}
!180 = !{!49, !38, i64 296}
!181 = !{!182, !38, i64 120}
!182 = !{!"bPoseChannel", !38, i64 0, !38, i64 8, !38, i64 16, !43, i64 24, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !38, i64 120, !38, i64 128, !38, i64 136, !43, i64 144, !43, i64 160, !38, i64 176, !38, i64 184, !38, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !39, i64 264, !40, i64 268, !40, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !39, i64 524, !39, i64 528, !39, i64 532, !38, i64 536}
!183 = !{!184, !44, i64 176}
!184 = !{!"Bone", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !43, i64 32, !36, i64 48, !39, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !44, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !36, i64 308, !44, i64 320, !40, i64 324, !36, i64 326}
!185 = !{!184, !44, i64 320}
!186 = !{!187, !44, i64 216}
!187 = !{!"bArmature", !50, i64 0, !38, i64 120, !43, i64 128, !43, i64 144, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252}
!188 = !{!182, !38, i64 192}
!189 = distinct !{!189, !64, !65}
!190 = distinct !{!190, !64, !65}
!191 = !{!187, !38, i64 176}
!192 = !{!35, !39, i64 784}
!193 = !{!35, !39, i64 780}
!194 = !{!45, !39, i64 0}
!195 = !{!45, !39, i64 8}
!196 = !{!45, !39, i64 4}
!197 = !{!45, !39, i64 12}
!198 = !{!77, !44, i64 0}
!199 = !{!77, !44, i64 8}
!200 = !{!77, !44, i64 4}
!201 = !{!77, !44, i64 12}
!202 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55}
!203 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55}
!204 = !{i64 0, i64 4, !55, i64 4, i64 4, !55}
!205 = !{!70, !44, i64 800}
!206 = !{!207, !38, i64 8}
!207 = !{!"ViewDepths", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !36, i64 16, !36, i64 32}
!208 = !{!128, !128, i64 0}
!209 = !{!42, !39, i64 252}
!210 = !{!70, !40, i64 758}
!211 = !{!70, !44, i64 764}
!212 = !{!115, !38, i64 104}
!213 = !{!44, !44, i64 0}
!214 = !{!35, !38, i64 688}
!215 = !{!42, !40, i64 236}
!216 = !{!70, !38, i64 128}
!217 = !{!59, !40, i64 8922}
!218 = !{!59, !36, i64 9790}
!219 = !{!220, !39, i64 88}
!220 = !{!"BGpic", !38, i64 0, !38, i64 8, !38, i64 16, !221, i64 24, !38, i64 64, !222, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!221 = !{!"ImageUser", !38, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !44, i64 36}
!222 = !{!"MovieClipUser", !44, i64 0, !40, i64 4, !40, i64 6}
!223 = !{!220, !39, i64 92}
!224 = !{!220, !36, i64 48}
!225 = !{!220, !36, i64 50}
!226 = !{!220, !40, i64 96}
!227 = !{!220, !40, i64 98}
!228 = !{!220, !38, i64 16}
!229 = !{!42, !40, i64 240}
!230 = !{!220, !40, i64 100}
!231 = distinct !{!231, !64, !65}
!232 = distinct !{!232, !64, !65}
!233 = !{!234, !38, i64 24}
!234 = !{!"ViewContext", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !36, i64 56}
!235 = !{!234, !38, i64 40}
!236 = !{!42, !38, i64 152}
!237 = !{!42, !36, i64 293}
!238 = !{!136, !40, i64 80}
!239 = !{!42, !36, i64 291}
!240 = !{!241, !38, i64 0}
!241 = !{!"", !38, i64 0, !44, i64 8, !39, i64 12}
!242 = !{!241, !44, i64 8}
!243 = !{!241, !39, i64 12}
!244 = !{!42, !38, i64 128}
!245 = !{!220, !38, i64 0}
!246 = distinct !{!246, !64, !65}
!247 = !{!248, !38, i64 16}
!248 = !{!"wmTimer", !38, i64 0, !38, i64 8, !38, i64 16, !128, i64 24, !44, i64 32, !38, i64 40, !128, i64 48, !128, i64 56, !128, i64 64, !128, i64 72, !128, i64 80, !44, i64 88}
!249 = !{!250, !44, i64 28}
!250 = !{!"Paint", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!251 = !{!59, !44, i64 8}
!252 = distinct !{!252, !64, !65}
!253 = !{!127, !36, i64 156}
!254 = !{!127, !39, i64 104}
!255 = distinct !{!255, !64, !65}
!256 = distinct !{!256, !64, !65}
!257 = distinct !{!257, !64, !65}
!258 = distinct !{!258, !64, !65}
!259 = !{!127, !39, i64 108}
!260 = !{!127, !39, i64 112}
!261 = !{!42, !39, i64 248}
!262 = !{!127, !39, i64 116}
!263 = !{!42, !39, i64 256}
!264 = !{!127, !39, i64 120}
!265 = !{!127, !39, i64 128}
!266 = !{!267, !38, i64 376}
!267 = !{!"Curve", !50, i64 0, !38, i64 120, !38, i64 128, !43, i64 136, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !39, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !44, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !44, i64 292, !44, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !38, i64 368, !38, i64 376, !36, i64 384, !38, i64 448, !38, i64 456, !38, i64 464, !38, i64 472, !38, i64 480, !44, i64 488, !44, i64 492, !38, i64 496, !268, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!268 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!269 = distinct !{!269, !64, !65}
!270 = !{!49, !38, i64 264}
!271 = !{!272, !44, i64 96}
!272 = !{!"BoundBox", !36, i64 0, !44, i64 96, !44, i64 100}
!273 = distinct !{!273, !64, !65}
!274 = !{!90, !44, i64 180}
!275 = !{!90, !44, i64 188}
!276 = !{!90, !44, i64 176}
!277 = !{!90, !44, i64 184}
!278 = !{!57, !39, i64 44}
!279 = !{!57, !39, i64 48}
!280 = !{!57, !44, i64 40}
!281 = !{!57, !39, i64 32}
!282 = !{!57, !39, i64 36}
!283 = !{!42, !39, i64 244}
