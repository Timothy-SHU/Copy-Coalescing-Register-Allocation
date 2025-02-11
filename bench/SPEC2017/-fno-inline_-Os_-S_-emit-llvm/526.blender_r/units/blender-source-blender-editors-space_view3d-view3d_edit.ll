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
@view3d_orbit_calc_center.lastofs = internal global [3 x float] zeroinitializer, align 8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ED_view3d_offset_lock_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 25
  %8 = load i16, ptr %7, align 2, !tbaa !12
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %10, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %6 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_view3d_camera_lock_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %12 = load i16, ptr %11, align 2, !tbaa !24
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 2
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %10, %6, %2
  %21 = phi i8 [ 0, %10 ], [ 0, %6 ], [ 0, %2 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_camera_lock_init_ex(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %0, ptr noundef %1) #17, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %13 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %11, ptr noundef nonnull %12, float noundef 1.000000e+00) #17
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  store float %13, ptr %14, align 8, !tbaa !26
  br label %15

15:                                               ; preds = %8, %6
  %16 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  tail call void @ED_view3d_from_object(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef null) #17
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_view3d_offset_distance(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_view3d_offset_distance.pos, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_view3d_offset_distance.dir, i64 16, i1 false)
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %4) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #17
  call void @mul_m4_v4(ptr noundef %0, ptr noundef nonnull %5) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #17
  %6 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %7 = fcmp olt float %6, 0x3E80000000000000
  %8 = fcmp une float %2, 0.000000e+00
  %9 = and i1 %8, %7
  %10 = select i1 %9, float %2, float %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.CameraParams, align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @ED_view3d_from_m4(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  %8 = icmp eq ptr %4, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #18
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #19
  call void @BKE_camera_params_from_object(ptr noundef nonnull %6, ptr noundef %0) #19
  %10 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !27
  store float %11, ptr %4, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #18
  br label %12

12:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_camera_lock_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_lock_sync(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ObjectTfmProtectedChannels, align 4
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %0, ptr noundef %1) #17, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #18
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  br i1 %14, label %17, label %46

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  br label %22

22:                                               ; preds = %22, %21
  %23 = phi ptr [ %19, %21 ], [ %25, %22 ]
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !35

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  %31 = load float, ptr %30, align 8, !tbaa !26
  call void @ED_view3d_to_m4(ptr noundef nonnull %6, ptr noundef nonnull %28, ptr noundef nonnull %29, float noundef %31) #17
  %32 = load ptr, ptr %15, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %33) #19
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %35 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %35) #19
  call void @BKE_object_tfm_protected_backup(ptr noundef nonnull %23, ptr noundef nonnull %3) #19
  call void @BKE_object_apply_mat4(ptr noundef nonnull %23, ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #19
  %36 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 56
  %37 = load i16, ptr %36, align 2, !tbaa !37
  call void @BKE_object_tfm_protected_restore(ptr noundef nonnull %23, ptr noundef nonnull %3, i16 noundef signext %37) #19
  %38 = load ptr, ptr %15, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %27, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %27 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %41, i16 noundef signext 1) #19
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef nonnull %41) #19
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !39

45:                                               ; preds = %40, %27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %59

46:                                               ; preds = %11, %17
  %47 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  call void @BKE_object_tfm_protected_backup(ptr noundef %16, ptr noundef nonnull %3) #19
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  %52 = load float, ptr %51, align 8, !tbaa !26
  call void @ED_view3d_to_object(ptr noundef %48, ptr noundef nonnull %49, ptr noundef nonnull %50, float noundef %52) #17
  %53 = load ptr, ptr %47, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 56
  %55 = load i16, ptr %54, align 2, !tbaa !37
  %56 = or i16 %55, 448
  call void @BKE_object_tfm_protected_restore(ptr noundef %53, ptr noundef nonnull %3, i16 noundef signext %56) #19
  %57 = load ptr, ptr %47, align 8, !tbaa !18
  call void @DAG_id_tag_update(ptr noundef %57, i16 noundef signext 1) #19
  %58 = load ptr, ptr %47, align 8, !tbaa !18
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef %58) #19
  br label %59

59:                                               ; preds = %46, %45
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #18
  br label %60

60:                                               ; preds = %2, %59
  %61 = phi i8 [ 1, %59 ], [ 0, %2 ]
  ret i8 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_to_m4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %7 = load float, ptr %2, align 4, !tbaa !29
  %8 = fneg float %7
  store float %8, ptr %5, align 16, !tbaa !29
  %9 = getelementptr inbounds float, ptr %5, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load <2 x float>, ptr %10, align 4, !tbaa !29
  store <2 x float> %11, ptr %9, align 4, !tbaa !29
  %12 = getelementptr inbounds float, ptr %5, i64 3
  %13 = getelementptr inbounds float, ptr %2, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !29
  store float %14, ptr %12, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !29
  %15 = getelementptr inbounds float, ptr %6, i64 2
  store float %3, ptr %15, align 8, !tbaa !29
  call void @quat_to_mat4(ptr noundef %0, ptr noundef nonnull %5) #19
  call void @mul_mat3_m4_v3(ptr noundef %0, ptr noundef nonnull %6) #19
  %16 = getelementptr inbounds [4 x float], ptr %0, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_object_tfm_protected_backup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_object_tfm_protected_restore(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_to_object(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  call void @ED_view3d_to_m4(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, float noundef %3) #17
  call void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_autokey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %0, ptr noundef %1) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, ptr noundef null) #19
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #19
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !40
  %15 = sitofp i32 %14 to float
  %16 = call i32 @ANIM_apply_keyingset(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef %12, i16 noundef signext 0, float noundef %15) #19
  br label %17

17:                                               ; preds = %11, %9
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #19
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = sitofp i32 %22 to float
  %24 = call i32 @ANIM_apply_keyingset(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef %20, i16 noundef signext 0, float noundef %23) #19
  br label %25

25:                                               ; preds = %19, %17
  call void @BLI_freelistN(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %26

26:                                               ; preds = %5, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %5 ]
  ret i8 %27
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_camera_lock_autokey(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %0, ptr noundef %1) #17, !range !25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @CTX_data_scene(ptr noundef %2) #19
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %11 = and i32 %10, 524288
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  br i1 %12, label %15, label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !58

24:                                               ; preds = %19, %8, %15
  %25 = phi ptr [ %14, %15 ], [ %14, %8 ], [ %20, %19 ]
  %26 = tail call zeroext i8 @ED_view3d_camera_autokey(ptr noundef %9, ptr noundef %25, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #17, !range !25
  br label %27

27:                                               ; preds = %5, %24
  %28 = phi i8 [ %26, %24 ], [ 0, %5 ]
  ret i8 %28
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_boxview_copy(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 18
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22
  br label %11

11:                                               ; preds = %6, %33
  %12 = phi ptr [ %4, %6 ], [ %35, %33 ]
  %13 = phi i8 [ 0, %6 ], [ %34, %33 ]
  %14 = icmp eq ptr %12, %1
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  %17 = load i16, ptr %16, align 2, !tbaa !62
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 27
  %23 = load i8, ptr %22, align 1, !tbaa !63
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load float, ptr %9, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 18
  store float %26, ptr %27, align 8, !tbaa !26
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %10) #17
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %12) #19
  %29 = load i8, ptr %22, align 1, !tbaa !63
  %30 = lshr i8 %29, 2
  %31 = and i8 %30, 1
  %32 = or i8 %31, %13
  br label %33

33:                                               ; preds = %19, %25, %11, %15
  %34 = phi i8 [ %13, %15 ], [ %13, %11 ], [ %32, %25 ], [ %13, %19 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !64

37:                                               ; preds = %33
  %38 = icmp eq i8 %34, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call fastcc void @view3d_boxview_clip(ptr noundef %0) #17
  br label %40

40:                                               ; preds = %2, %39, %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  store float %3, ptr %0, align 4, !tbaa !29
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_boxview_clip(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [6 x [4 x float]], align 16
  %3 = alloca [3 x float], align 8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str.164) #19
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %23

11:                                               ; preds = %83
  %12 = load <2 x float>, ptr %3, align 8
  %13 = load float, ptr %10, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi float [ 0.000000e+00, %1 ], [ %13, %11 ]
  %16 = phi float [ 0.000000e+00, %1 ], [ %84, %11 ]
  %17 = phi float [ 0.000000e+00, %1 ], [ %85, %11 ]
  %18 = phi float [ 0.000000e+00, %1 ], [ %86, %11 ]
  %19 = phi <2 x float> [ zeroinitializer, %1 ], [ %12, %11 ]
  %20 = fneg float %18
  %21 = fneg float %16
  %22 = fneg float %17
  br label %89

23:                                               ; preds = %9, %83
  %24 = phi ptr [ %7, %9 ], [ %87, %83 ]
  %25 = phi float [ 0.000000e+00, %9 ], [ %86, %83 ]
  %26 = phi float [ 0.000000e+00, %9 ], [ %85, %83 ]
  %27 = phi float [ 0.000000e+00, %9 ], [ %84, %83 ]
  %28 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !62
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 30
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 27
  %35 = load i8, ptr %34, align 1, !tbaa !63
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 26
  %40 = load i8, ptr %39, align 2, !tbaa !65
  switch i8 %40, label %83 [
    i8 5, label %41
    i8 6, label %41
    i8 1, label %65
    i8 2, label %65
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 5
  %43 = load i16, ptr %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !67
  %46 = icmp sgt i16 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 18
  %49 = load float, ptr %48, align 8, !tbaa !26
  %50 = sitofp i16 %45 to float
  %51 = fmul float %49, %50
  %52 = sitofp i16 %43 to float
  %53 = fdiv float %51, %52
  br label %61

54:                                               ; preds = %41
  %55 = sitofp i16 %43 to float
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 18
  %57 = load float, ptr %56, align 8, !tbaa !26
  %58 = fmul float %57, %55
  %59 = sitofp i16 %45 to float
  %60 = fdiv float %58, %59
  br label %61

61:                                               ; preds = %54, %47
  %62 = phi float [ %49, %47 ], [ %60, %54 ]
  %63 = phi float [ %53, %47 ], [ %57, %54 ]
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 22
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %64) #17
  br label %83

65:                                               ; preds = %38, %38
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 22, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !29
  store float %67, ptr %10, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 5
  %69 = load i16, ptr %68, align 8, !tbaa !66
  %70 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 6
  %71 = load i16, ptr %70, align 2, !tbaa !67
  %72 = icmp sgt i16 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = sitofp i16 %71 to float
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 18
  %76 = load float, ptr %75, align 8, !tbaa !26
  %77 = fmul float %76, %74
  %78 = sitofp i16 %69 to float
  %79 = fdiv float %77, %78
  br label %83

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %33, i64 0, i32 18
  %82 = load float, ptr %81, align 8, !tbaa !26
  br label %83

83:                                               ; preds = %31, %80, %73, %61, %38, %23
  %84 = phi float [ %27, %23 ], [ %63, %61 ], [ %27, %73 ], [ %27, %80 ], [ %27, %31 ], [ %27, %38 ]
  %85 = phi float [ %26, %23 ], [ %26, %61 ], [ %79, %73 ], [ %82, %80 ], [ %26, %31 ], [ %26, %38 ]
  %86 = phi float [ %25, %23 ], [ %62, %61 ], [ %25, %73 ], [ %25, %80 ], [ %25, %31 ], [ %25, %38 ]
  %87 = load ptr, ptr %24, align 8, !tbaa !38
  %88 = icmp eq ptr %87, null
  br i1 %88, label %11, label %23, !llvm.loop !68

89:                                               ; preds = %14, %93
  %90 = phi i64 [ 0, %14 ], [ %108, %93 ]
  %91 = trunc i64 %90 to i32
  switch i32 %91, label %92 [
    i32 7, label %93
    i32 4, label %93
    i32 3, label %93
    i32 0, label %93
  ]

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %89, %89, %89, %92
  %94 = phi float [ %18, %92 ], [ %20, %89 ], [ %20, %89 ], [ %20, %89 ], [ %20, %89 ]
  %95 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %90
  %96 = icmp ult i64 %90, 2
  %97 = and i32 %91, 6
  %98 = icmp eq i32 %97, 4
  %99 = or i1 %96, %98
  %100 = select i1 %99, float %21, float %16
  %101 = insertelement <2 x float> poison, float %94, i64 0
  %102 = insertelement <2 x float> %101, float %100, i64 1
  %103 = fsub <2 x float> %102, %19
  store <2 x float> %103, ptr %95, align 4
  %104 = icmp ugt i64 %90, 3
  %105 = select i1 %104, float %22, float %17
  %106 = fsub float %105, %15
  %107 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %90, i64 2
  store float %106, ptr %107, align 4
  %108 = add nuw nsw i64 %90, 1
  %109 = icmp eq i64 %108, 8
  br i1 %109, label %110, label %89, !llvm.loop !69

110:                                              ; preds = %93
  %111 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 1
  %112 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 4
  %113 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %111, ptr noundef nonnull %112) #19
  %114 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 1
  %115 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 2
  %116 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 5
  %117 = call float @normal_tri_v3(ptr noundef nonnull %114, ptr noundef nonnull %111, ptr noundef nonnull %115, ptr noundef nonnull %116) #19
  %118 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 2
  %119 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 3
  %120 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 6
  %121 = call float @normal_tri_v3(ptr noundef nonnull %118, ptr noundef nonnull %115, ptr noundef nonnull %119, ptr noundef nonnull %120) #19
  %122 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 3
  %123 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 7
  %124 = call float @normal_tri_v3(ptr noundef nonnull %122, ptr noundef nonnull %119, ptr noundef nonnull %5, ptr noundef nonnull %123) #19
  %125 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 4
  %126 = call float @normal_tri_v3(ptr noundef nonnull %125, ptr noundef nonnull %112, ptr noundef nonnull %116, ptr noundef nonnull %120) #19
  %127 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 5
  %128 = call float @normal_tri_v3(ptr noundef nonnull %127, ptr noundef nonnull %5, ptr noundef nonnull %115, ptr noundef nonnull %111) #19
  br label %132

129:                                              ; preds = %132
  %130 = load ptr, ptr %6, align 8, !tbaa !38
  %131 = icmp eq ptr %130, null
  br i1 %131, label %172, label %144

132:                                              ; preds = %110, %132
  %133 = phi i64 [ 0, %110 ], [ %142, %132 ]
  %134 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 %133
  %135 = icmp eq i64 %133, 5
  %136 = and i64 %133, 4294967295
  %137 = select i1 %135, i64 0, i64 %136
  %138 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %137
  %139 = call fastcc float @dot_v3v3(ptr noundef nonnull %134, ptr noundef %138) #17
  %140 = fneg float %139
  %141 = getelementptr inbounds [6 x [4 x float]], ptr %2, i64 0, i64 %133, i64 3
  store float %140, ptr %141, align 4, !tbaa !29
  %142 = add nuw nsw i64 %133, 1
  %143 = icmp eq i64 %142, 6
  br i1 %143, label %129, label %132, !llvm.loop !70

144:                                              ; preds = %129, %169
  %145 = phi ptr [ %170, %169 ], [ %130, %129 ]
  %146 = getelementptr inbounds %struct.ARegion, ptr %145, i64 0, i32 8
  %147 = load i16, ptr %146, align 2, !tbaa !62
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ARegion, ptr %145, i64 0, i32 30
  %151 = load ptr, ptr %150, align 8, !tbaa !59
  %152 = getelementptr inbounds %struct.RegionView3D, ptr %151, i64 0, i32 27
  %153 = load i8, ptr %152, align 1, !tbaa !63
  %154 = and i8 %153, 4
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %151, i64 0, i32 32
  %158 = load i16, ptr %157, align 2, !tbaa !71
  %159 = or i16 %158, 4
  store i16 %159, ptr %157, align 2, !tbaa !71
  %160 = getelementptr inbounds %struct.RegionView3D, ptr %151, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %160, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  %161 = getelementptr inbounds %struct.RegionView3D, ptr %151, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !72
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %156
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %165(ptr noundef nonnull %162) #19
  br label %166

166:                                              ; preds = %164, %156
  %167 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !38
  %168 = call ptr %167(ptr noundef %5) #19
  store ptr %168, ptr %161, align 8, !tbaa !72
  br label %169

169:                                              ; preds = %149, %166, %144
  %170 = load ptr, ptr %145, align 8, !tbaa !38
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %144, !llvm.loop !73

172:                                              ; preds = %169, %129
  %173 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %173(ptr noundef %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_quadview_update(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %7 = load i8, ptr %6, align 1, !tbaa !63
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

20:                                               ; preds = %11, %14
  %21 = phi i8 [ %13, %11 ], [ %18, %14 ]
  %22 = phi i8 [ 0, %11 ], [ %19, %14 ]
  %23 = icmp ne i8 %21, 0
  %24 = and i8 %22, 4
  %25 = icmp eq i8 %24, 0
  %26 = and i1 %23, %25
  br label %27

27:                                               ; preds = %20, %42
  %28 = phi ptr [ %5, %20 ], [ %44, %42 ]
  %29 = phi ptr [ null, %20 ], [ %43, %42 ]
  %30 = phi ptr [ %1, %20 ], [ %46, %42 ]
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !74
  %33 = icmp eq i16 %32, 8
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 27
  store i8 %22, ptr %37, align 1, !tbaa !63
  br i1 %26, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 32
  %40 = load i16, ptr %39, align 2, !tbaa !71
  %41 = and i16 %40, -5
  store i16 %41, ptr %39, align 2, !tbaa !71
  br label %42

42:                                               ; preds = %34, %38, %27
  %43 = phi ptr [ %29, %27 ], [ %30, %38 ], [ %30, %34 ]
  %44 = phi ptr [ %28, %27 ], [ %36, %38 ], [ %36, %34 ]
  %45 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %27, !llvm.loop !76

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 27
  %50 = load i8, ptr %49, align 1, !tbaa !63
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = icmp eq ptr %43, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi ptr [ %57, %55 ], [ %43, %53 ]
  tail call fastcc void @view3d_boxview_sync(ptr noundef %0, ptr noundef %59) #17
  br label %60

60:                                               ; preds = %58, %48
  %61 = and i8 %22, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = icmp eq ptr %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %63, %90
  %68 = phi ptr [ %92, %90 ], [ %65, %63 ]
  %69 = phi i32 [ %91, %90 ], [ 0, %63 ]
  %70 = getelementptr inbounds %struct.ARegion, ptr %68, i64 0, i32 9
  %71 = load i16, ptr %70, align 8, !tbaa !74
  %72 = icmp eq i16 %71, 8
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ARegion, ptr %68, i64 0, i32 30
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = getelementptr inbounds %struct.RegionView3D, ptr %75, i64 0, i32 27
  %77 = load i8, ptr %76, align 1, !tbaa !63
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.RegionView3D, ptr %75, i64 0, i32 26
  %81 = load i8, ptr %80, align 2, !tbaa !65
  %82 = add i8 %81, -1
  %83 = icmp ult i8 %82, 6
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef %69) #19
  store i8 %85, ptr %80, align 2, !tbaa !65
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %75, i64 0, i32 25
  store i8 0, ptr %86, align 1, !tbaa !5
  %87 = tail call zeroext i8 @ED_view3d_lock(ptr noundef nonnull %75) #19
  br label %88

88:                                               ; preds = %79, %84, %73
  %89 = add nsw i32 %69, 1
  br label %90

90:                                               ; preds = %67, %88
  %91 = phi i32 [ %89, %88 ], [ %69, %67 ]
  %92 = load ptr, ptr %68, align 8, !tbaa !38
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %67, !llvm.loop !79

94:                                               ; preds = %90, %63, %60
  tail call void @ED_area_tag_redraw(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_boxview_sync(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 18
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %12 = phi i16 [ 0, %8 ], [ %33, %32 ]
  %13 = icmp eq ptr %11, %1
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !62
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %20, i64 0, i32 27
  %22 = load i8, ptr %21, align 1, !tbaa !63
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load float, ptr %9, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %20, i64 0, i32 18
  store float %26, ptr %27, align 8, !tbaa !26
  tail call fastcc void @view3d_boxview_sync_axis(ptr noundef nonnull %20, ptr noundef %4) #17
  %28 = load i8, ptr %21, align 1, !tbaa !63
  %29 = and i8 %28, 4
  %30 = zext nneg i8 %29 to i16
  %31 = or i16 %12, %30
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %11) #19
  br label %32

32:                                               ; preds = %18, %25, %10, %14
  %33 = phi i16 [ %12, %14 ], [ %12, %10 ], [ %31, %25 ], [ %12, %18 ]
  %34 = load ptr, ptr %11, align 8, !tbaa !38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10, !llvm.loop !80

36:                                               ; preds = %32
  %37 = icmp eq i16 %33, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call fastcc void @view3d_boxview_clip(ptr noundef %0) #17
  br label %39

39:                                               ; preds = %2, %38, %36
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @viewrotate_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.13) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @viewrotate_modal_keymap.modal_items) #19
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #19
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 3) #19
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.14) #19
  br label %14

14:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_rotate(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewrotate_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewrotate_modal, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewrotate_cancel, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewrotate_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @viewops_data_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 27
  %9 = load i8, ptr %8, align 1, !tbaa !63
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %57

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = tail call fastcc zeroext i8 @view3d_ensure_persp(ptr noundef %15, ptr noundef %17) #17, !range !25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %16, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %21) #19
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !100
  switch i16 %24, label %55 [
    i16 14, label %25
    i16 16, label %49
  ]

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !102
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !103
  %32 = shl nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %34 = load i32, ptr %33, align 8, !tbaa !104
  %35 = sub nsw i32 %32, %34
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = shl nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %40 = load i32, ptr %39, align 4, !tbaa !106
  %41 = sub nsw i32 %38, %40
  tail call fastcc void @viewrotate_apply(ptr noundef nonnull %5, i32 noundef %35, i32 noundef %41) #17
  br label %47

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !104
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %46 = load i32, ptr %45, align 4, !tbaa !106
  tail call fastcc void @viewrotate_apply(ptr noundef nonnull %5, i32 noundef %44, i32 noundef %46) #17
  br label %47

47:                                               ; preds = %42, %29
  %48 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %48) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %57

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !104
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !105
  tail call fastcc void @viewrotate_apply(ptr noundef nonnull %5, i32 noundef %51, i32 noundef %53) #17
  %54 = load ptr, ptr %6, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %54) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %57

55:                                               ; preds = %22
  %56 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %57

57:                                               ; preds = %55, %49, %47, %12
  %58 = phi i32 [ 8, %12 ], [ 4, %47 ], [ 4, %49 ], [ 1, %55 ]
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewrotate_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !100
  switch i16 %7, label %13 [
    i16 4, label %21
    i16 20514, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !107
  switch i16 %10, label %40 [
    i16 1, label %33
    i16 2, label %18
    i16 3, label %11
    i16 4, label %30
    i16 5, label %12
  ]

11:                                               ; preds = %8
  br label %18

12:                                               ; preds = %8
  br label %30

13:                                               ; preds = %3
  %14 = sext i16 %7 to i32
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %16 = load i32, ptr %15, align 8, !tbaa !108
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %26, label %40

18:                                               ; preds = %8, %11
  %19 = phi i8 [ 0, %11 ], [ 1, %8 ]
  %20 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 15
  store i8 %19, ptr %20, align 4, !tbaa !109
  br label %21

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !105
  tail call fastcc void @viewrotate_apply(ptr noundef %5, i32 noundef %23, i32 noundef %25) #17
  br label %40

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !107
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %33, label %40

30:                                               ; preds = %8, %12
  %31 = phi ptr [ @.str.32, %12 ], [ @.str.36, %8 ]
  %32 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %31, i16 noundef signext 0, ptr noundef null) #19
  br label %33

33:                                               ; preds = %30, %8, %26
  %34 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  %38 = tail call zeroext i8 @ED_view3d_camera_lock_autokey(ptr noundef %35, ptr noundef %37, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #17, !range !25
  %39 = load ptr, ptr %36, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %39) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %40

40:                                               ; preds = %8, %13, %21, %26, %33
  %41 = phi i32 [ 4, %33 ], [ 1, %26 ], [ 1, %21 ], [ 1, %13 ], [ 1, %8 ]
  ret i32 %41
}

; Function Attrs: optsize
declare i32 @ED_operator_region_view3d_active(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @viewrotate_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_ndof_fly(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #2 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %1, ptr noundef %2) #17, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %0) #17, !range !25
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %16, %7
  %20 = phi i1 [ true, %7 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 27
  %22 = load i8, ptr %21, align 1, !tbaa !63
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 1
  %27 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %26) #17, !range !25
  %28 = icmp ne i8 %27, 0
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ true, %19 ], [ %28, %25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %31) #19
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 38
  store float 0.000000e+00, ptr %32, align 8, !tbaa !110
  br i1 %20, label %78, label %33

33:                                               ; preds = %29
  %34 = call fastcc float @view3d_ndof_pan_speed_calc_from_dist(ptr noundef nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  %35 = icmp eq i8 %3, 0
  %36 = fmul float %34, 0x3FC99999A0000000
  %37 = select i1 %35, float %34, float %36
  call void @WM_event_ndof_pan_get(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 0) #19
  %38 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !111
  %40 = fmul float %37, %39
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %40) #17
  %41 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !29
  %43 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store float 0.000000e+00, ptr %41, align 4, !tbaa !29
  br label %47

47:                                               ; preds = %46, %33
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %48 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %42, ptr %52, align 4, !tbaa !29
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %55 = load i8, ptr %54, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 2
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = zext i16 %4 to i32
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store float 0.000000e+00, ptr %9, align 4, !tbaa !29
  br label %62

62:                                               ; preds = %61, %57
  %63 = and i32 %58, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store float 0.000000e+00, ptr %41, align 4, !tbaa !29
  br label %66

66:                                               ; preds = %65, %62
  %67 = and i32 %58, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %70, align 4, !tbaa !29
  br label %71

71:                                               ; preds = %66, %69, %53
  %72 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #17, !range !25
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %75, ptr noundef nonnull %9) #17
  br label %76

76:                                               ; preds = %71, %74
  %77 = phi i8 [ 1, %74 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %78

78:                                               ; preds = %76, %29
  %79 = phi i8 [ %77, %76 ], [ 0, %29 ]
  br i1 %30, label %100, label %80

80:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  %81 = call float @WM_event_ndof_to_axis_angle(ptr noundef %0, ptr noundef nonnull %11) #19
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fcmp ogt float %82, 0x3F1A36E2E0000000
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = icmp eq i8 %3, 0
  %86 = fmul float %81, 0x3FC99999A0000000
  %87 = select i1 %85, float %81, float %86
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #19
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %87) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %31, ptr noundef nonnull %31, ptr noundef nonnull %10) #19
  %88 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_fly.view_direction, i64 12, i1 false)
  call void @invert_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %31) #19
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %12) #19
  call void @mul_qt_v3(ptr noundef nonnull %8, ptr noundef nonnull %13) #19
  %92 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !29
  %94 = call float @asinf(float noundef %93) #19
  %95 = fneg float %94
  call void @axis_angle_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %13, float noundef %95) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %31, ptr noundef nonnull %31, ptr noundef nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  br label %96

96:                                               ; preds = %91, %84
  %97 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 26
  store i8 0, ptr %97, align 2, !tbaa !65
  br label %98

98:                                               ; preds = %80, %96
  %99 = phi i8 [ 1, %96 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %100

100:                                              ; preds = %98, %78
  %101 = phi i8 [ %99, %98 ], [ 0, %78 ]
  store i8 %79, ptr %5, align 1, !tbaa !114
  store i8 %101, ptr %6, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load float, ptr %0, align 4, !tbaa !29
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !29
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !29
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @view3d_ndof_pan_speed_calc_from_dist(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %3, float noundef 1.000000e+00) #17
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %5 = call fastcc float @view3d_ndof_pan_speed_calc_ex(ptr noundef %0, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret float %5
}

; Function Attrs: optsize
declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !29
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  %4 = load float, ptr %0, align 4, !tbaa !29
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !29
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !29
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !29
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !29
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !29
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare float @WM_event_ndof_to_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_orbit(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_orbit_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ndof_orbit_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !100
  %6 = icmp eq i16 %5, 400
  br i1 %6, label %7, label %69

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %11 = lshr i32 %10, 14
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %13, i8 noundef zeroext 0) #17
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 38
  store float 0.000000e+00, ptr %20, align 8, !tbaa !110
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %17, ptr noundef %19, i8 noundef zeroext 0) #17
  %21 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !116
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %65, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %26 = load i8, ptr %25, align 1, !tbaa !63
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1
  %31 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %30) #17, !range !25
  %32 = icmp ne i8 %31, 0
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ true, %24 ], [ %32, %29 ]
  %35 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %17, ptr noundef nonnull %19) #17, !range !25
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #17, !range !25
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i8 %27, i8 0
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i8 [ 0, %33 ], [ %40, %37 ]
  %43 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !29
  %45 = fcmp une float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 24
  %48 = load i8, ptr %47, align 8, !tbaa !117
  %49 = icmp eq i8 %48, 0
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i8 [ 0, %41 ], [ %50, %46 ]
  %53 = icmp ne i8 %42, 0
  %54 = icmp ne i8 %52, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load ptr, ptr %15, align 8, !tbaa !118
  %58 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef nonnull %9, ptr noundef %57, ptr noundef %59, i8 noundef zeroext %42, i8 noundef zeroext %52) #17
  br label %60

60:                                               ; preds = %51, %56
  br i1 %34, label %65, label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %15, align 8, !tbaa !118
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_orbit(ptr noundef nonnull %9, ptr noundef %62, ptr noundef %64, ptr noundef nonnull %15) #17
  br label %65

65:                                               ; preds = %60, %61, %7
  %66 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %17, ptr noundef nonnull %19) #17, !range !25
  %67 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %68) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %69

69:                                               ; preds = %3, %65
  %70 = phi i32 [ 4, %65 ], [ 2, %3 ]
  ret i32 %70
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_orbit_zoom(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_orbit_zoom_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ndof_orbit_zoom_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !100
  %6 = icmp eq i16 %5, 400
  br i1 %6, label %7, label %124

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %11 = lshr i32 %10, 14
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %13, i8 noundef zeroext 0) #17
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 38
  store float 0.000000e+00, ptr %20, align 8, !tbaa !110
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %17, ptr noundef %19, i8 noundef zeroext 0) #17
  %21 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !116
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %120, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 25
  %26 = load i8, ptr %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 26
  %30 = load i8, ptr %29, align 2, !tbaa !65
  %31 = add i8 %30, -1
  %32 = icmp ult i8 %31, 6
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %17, ptr noundef nonnull %19) #17, !range !25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #17, !range !25
  %38 = xor i8 %37, 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i8 [ 0, %33 ], [ %38, %36 ]
  %41 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !29
  %43 = fcmp une float %42, 0.000000e+00
  %44 = icmp ne i8 %34, 0
  %45 = and i1 %44, %43
  %46 = icmp ne i8 %40, 0
  %47 = select i1 %46, i1 true, i1 %45
  br i1 %47, label %48, label %120

48:                                               ; preds = %39
  %49 = load ptr, ptr %15, align 8, !tbaa !118
  %50 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef nonnull %9, ptr noundef %49, ptr noundef %51, i8 noundef zeroext %40, i8 noundef zeroext 1) #17
  br label %120

52:                                               ; preds = %28, %24
  %53 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %54 = and i32 %53, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %17, ptr noundef nonnull %19) #17, !range !25
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %56, %52
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %61 = load i8, ptr %60, align 1, !tbaa !63
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1
  %66 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %65) #17, !range !25
  %67 = icmp ne i8 %66, 0
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i1 [ true, %59 ], [ %67, %64 ]
  %70 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !29
  %72 = fcmp une float %71, 0.000000e+00
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load ptr, ptr %15, align 8, !tbaa !118
  %75 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef nonnull %9, ptr noundef %74, ptr noundef %76, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  br label %77

77:                                               ; preds = %73, %68
  br i1 %69, label %120, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %15, align 8, !tbaa !118
  %80 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_orbit(ptr noundef nonnull %9, ptr noundef %79, ptr noundef %81, ptr noundef nonnull %15) #17
  br label %120

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %84 = load i8, ptr %83, align 1, !tbaa !63
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %9, i64 0, i32 1
  %89 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %88) #17, !range !25
  %90 = icmp ne i8 %89, 0
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i1 [ true, %82 ], [ %90, %87 ]
  %93 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %9) #17, !range !25
  %94 = xor i8 %93, 1
  %95 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !29
  %97 = fcmp une float %96, 0.000000e+00
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 24
  %100 = load i8, ptr %99, align 8, !tbaa !117
  %101 = icmp eq i8 %100, 0
  %102 = zext i1 %101 to i8
  br label %103

103:                                              ; preds = %98, %91
  %104 = phi i8 [ 0, %91 ], [ %102, %98 ]
  %105 = icmp ne i8 %94, 0
  %106 = icmp ne i8 %104, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load ptr, ptr %15, align 8, !tbaa !118
  %110 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef nonnull %9, ptr noundef %109, ptr noundef %111, i8 noundef zeroext %94, i8 noundef zeroext %104) #17
  br label %112

112:                                              ; preds = %103, %108
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 18
  %114 = load float, ptr %113, align 8, !tbaa !26
  tail call void @ED_view3d_distance_set(ptr noundef nonnull %19, float noundef 0.000000e+00) #17
  br i1 %92, label %119, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %15, align 8, !tbaa !118
  %117 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !99
  tail call fastcc void @view3d_ndof_orbit(ptr noundef nonnull %9, ptr noundef %116, ptr noundef %118, ptr noundef null) #17
  br label %119

119:                                              ; preds = %115, %112
  tail call void @ED_view3d_distance_set(ptr noundef nonnull %19, float noundef %114) #17
  br label %120

120:                                              ; preds = %77, %78, %48, %39, %119, %7
  %121 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %17, ptr noundef nonnull %19) #17, !range !25
  %122 = getelementptr inbounds %struct.ViewOpsData, ptr %15, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %123) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %124

124:                                              ; preds = %3, %120
  %125 = phi i32 [ 4, %120 ], [ 2, %3 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_pan(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_pan_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ndof_pan_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !100
  %6 = icmp eq i16 %5, 400
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %8, ptr noundef %9) #17, !range !25
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %11) #17, !range !25
  %16 = xor i8 %15, 1
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i8 [ 0, %7 ], [ %16, %14 ]
  %19 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !29
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 24
  %24 = load i8, ptr %23, align 8, !tbaa !117
  %25 = icmp eq i8 %24, 0
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i8 [ 0, %17 ], [ %26, %22 ]
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 38
  store float 0.000000e+00, ptr %29, align 8, !tbaa !110
  %30 = icmp ne i8 %18, 0
  %31 = icmp ne i8 %28, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  tail call void @ED_view3d_camera_lock_init_ex(ptr noundef %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #17
  %34 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %11, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !116
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %39 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  tail call fastcc void @view3d_ndof_pan_zoom(ptr noundef nonnull %11, ptr noundef %38, ptr noundef %39, i8 noundef zeroext %18, i8 noundef zeroext %28) #17
  br label %40

40:                                               ; preds = %37, %33
  %41 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %8, ptr noundef nonnull %9) #17, !range !25
  %42 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  tail call void @ED_region_tag_redraw(ptr noundef %42) #19
  br label %43

43:                                               ; preds = %40, %27, %3
  %44 = phi i32 [ 2, %3 ], [ 4, %40 ], [ 2, %27 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_ndof_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ndof_all_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ndof_all_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %5 = and i32 %4, -65
  store i32 %5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %6 = tail call i32 @ndof_orbit_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !range !119
  store i32 %4, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @viewmove_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @viewmove_modal_keymap.modal_items) #19
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.32) #19
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_move(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewmove_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewmove_modal, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewmove_cancel, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %8, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewmove_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @viewops_data_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !100
  %6 = icmp eq i16 %5, 14
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !103
  %12 = shl nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %14 = load i32, ptr %13, align 8, !tbaa !104
  %15 = sub nsw i32 %12, %14
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !105
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = sub nsw i32 %18, %20
  tail call fastcc void @viewmove_apply(ptr noundef %9, i32 noundef %15, i32 noundef %21) #17
  %22 = getelementptr inbounds %struct.ViewOpsData, ptr %9, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %23) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  br label %26

24:                                               ; preds = %3
  %25 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #19
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i32 [ 4, %7 ], [ 1, %24 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewmove_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !100
  switch i16 %7, label %12 [
    i16 4, label %17
    i16 20514, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !107
  switch i16 %10, label %36 [
    i16 1, label %29
    i16 4, label %26
    i16 6, label %11
  ]

11:                                               ; preds = %8
  br label %26

12:                                               ; preds = %3
  %13 = sext i16 %7 to i32
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %22, label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !103
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !105
  tail call fastcc void @viewmove_apply(ptr noundef %5, i32 noundef %19, i32 noundef %21) #17
  br label %36

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !107
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %29, label %36

26:                                               ; preds = %8, %11
  %27 = phi ptr [ @.str.14, %11 ], [ @.str.36, %8 ]
  %28 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %27, i16 noundef signext 0, ptr noundef null) #19
  br label %29

29:                                               ; preds = %26, %8, %22
  %30 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = tail call zeroext i8 @ED_view3d_camera_lock_autokey(ptr noundef %31, ptr noundef %33, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #17, !range !25
  %35 = load ptr, ptr %32, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %35) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %36

36:                                               ; preds = %8, %12, %17, %22, %29
  %37 = phi i32 [ 4, %29 ], [ 1, %22 ], [ 1, %17 ], [ 1, %12 ], [ 1, %8 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @viewmove_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @viewzoom_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.35) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @viewzoom_modal_keymap.modal_items) #19
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.36) #19
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @viewdolly_modal_keymap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.37) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @viewdolly_modal_keymap.modal_items) #19
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #19
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.38) #19
  br label %12

12:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_zoom(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewzoom_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewzoom_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewzoom_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewzoom_cancel, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef -2147483648, i32 noundef 2147483647) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !121
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #19
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 524288) #19
  %15 = load ptr, ptr %10, align 8, !tbaa !121
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #19
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewzoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  tail call fastcc void @viewops_data_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.43) #19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !122
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.45) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %6, align 8, !tbaa !122
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !103
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.43, i32 noundef %17) #19
  %18 = load ptr, ptr %6, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !105
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef %20) #19
  br label %21

21:                                               ; preds = %14, %10
  %22 = load ptr, ptr %6, align 8, !tbaa !122
  %23 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %22, ptr noundef nonnull @.str.41) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @viewzoom_exec(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %71

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !100
  %30 = and i16 %29, -2
  %31 = icmp eq i16 %30, 14
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %34 = and i32 %33, 67108864
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !103
  %39 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 22
  store i32 %38, ptr %39, align 8, !tbaa !123
  %40 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 20
  store i32 %38, ptr %40, align 8, !tbaa !124
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  br label %52

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 21
  %44 = load i32, ptr %43, align 4, !tbaa !125
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !103
  %47 = add nsw i32 %46, %44
  %48 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !104
  %50 = sub i32 %47, %49
  %51 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 23
  store i32 %50, ptr %51, align 4, !tbaa !126
  store i32 %50, ptr %43, align 4, !tbaa !125
  br label %52

52:                                               ; preds = %42, %36
  %53 = phi ptr [ %48, %42 ], [ %41, %36 ]
  %54 = lshr i32 %33, 25
  %55 = trunc i32 %54 to i16
  %56 = and i16 %55, 1
  tail call fastcc void @viewzoom_apply(ptr noundef %5, ptr noundef nonnull %53, i16 noundef signext 2, i16 noundef signext %56) #17
  %57 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %58) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %71

59:                                               ; preds = %27
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !127
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %64 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %65 = tail call ptr @WM_event_add_timer(ptr noundef %63, ptr noundef %64, i32 noundef 272, double noundef 0x3F847AE140000000) #19
  %66 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 4
  store ptr %65, ptr %66, align 8, !tbaa !128
  %67 = tail call double @PIL_check_seconds_timer() #19
  %68 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 5
  store double %67, ptr %68, align 8, !tbaa !129
  br label %69

69:                                               ; preds = %62, %59
  %70 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %71

71:                                               ; preds = %25, %69, %52
  %72 = phi i32 [ 4, %25 ], [ 4, %52 ], [ 1, %69 ]
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewzoom_exec(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.41) #19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  br label %17

14:                                               ; preds = %2
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %13, %10 ], [ %16, %14 ]
  %19 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = load ptr, ptr %4, align 8, !tbaa !122
  %25 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %24, ptr noundef nonnull @.str.43) #19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %4, align 8, !tbaa !122
  %29 = tail call i32 @RNA_int_get(ptr noundef %28, ptr noundef nonnull @.str.43) #19
  br label %35

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %32 = load i16, ptr %31, align 8, !tbaa !66
  %33 = sdiv i16 %32, 2
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ %29, %27 ], [ %34, %30 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !122
  %38 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %37, ptr noundef nonnull @.str.45) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 8, !tbaa !122
  %42 = tail call i32 @RNA_int_get(ptr noundef %41, ptr noundef nonnull @.str.45) #19
  br label %48

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !67
  %46 = sdiv i16 %45, 2
  %47 = sext i16 %46 to i32
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i32 [ %42, %40 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 25
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 2
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 24
  %55 = load i8, ptr %54, align 8, !tbaa !117
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %21, ptr noundef nonnull %23) #17, !range !25
  %59 = icmp eq i8 %58, 0
  call void @ED_view3d_dist_range_get(ptr noundef %21, ptr noundef nonnull %3) #19
  %60 = icmp slt i32 %6, 0
  br i1 %60, label %65, label %79

61:                                               ; preds = %48
  call void @ED_view3d_dist_range_get(ptr noundef %21, ptr noundef nonnull %3) #19
  %62 = icmp slt i32 %6, 0
  br i1 %62, label %72, label %86

63:                                               ; preds = %53
  call void @ED_view3d_dist_range_get(ptr noundef %21, ptr noundef nonnull %3) #19
  %64 = icmp slt i32 %6, 0
  br i1 %64, label %66, label %80

65:                                               ; preds = %57
  br i1 %59, label %66, label %72

66:                                               ; preds = %63, %65
  %67 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 23
  %68 = load float, ptr %67, align 4, !tbaa !131
  %69 = fadd float %68, -1.000000e+01
  store float %69, ptr %67, align 4, !tbaa !131
  %70 = fcmp olt float %69, -3.000000e+01
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  store float -3.000000e+01, ptr %67, align 4, !tbaa !131
  br label %92

72:                                               ; preds = %61, %65
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 18
  %74 = load float, ptr %73, align 8, !tbaa !26
  %75 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !29
  %77 = fcmp olt float %74, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  call fastcc void @view_zoom_mouseloc(ptr noundef nonnull %18, float noundef 0x3FF3333340000000, i32 noundef %36, i32 noundef %49) #17
  br label %92

79:                                               ; preds = %57
  br i1 %59, label %80, label %86

80:                                               ; preds = %63, %79
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 23
  %82 = load float, ptr %81, align 4, !tbaa !131
  %83 = fadd float %82, 1.000000e+01
  store float %83, ptr %81, align 4, !tbaa !131
  %84 = fcmp ogt float %83, 6.000000e+02
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  store float 6.000000e+02, ptr %81, align 4, !tbaa !131
  br label %92

86:                                               ; preds = %61, %79
  %87 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 18
  %88 = load float, ptr %87, align 8, !tbaa !26
  %89 = load float, ptr %3, align 4, !tbaa !29
  %90 = fcmp ogt float %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  call fastcc void @view_zoom_mouseloc(ptr noundef nonnull %18, float noundef 0x3FEAAAA3A0000000, i32 noundef %36, i32 noundef %49) #17
  br label %92

92:                                               ; preds = %85, %80, %91, %86, %71, %66, %78, %72
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 27
  %94 = load i8, ptr %93, align 1, !tbaa !63
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call fastcc void @view3d_boxview_sync(ptr noundef nonnull %19, ptr noundef nonnull %18) #17
  br label %98

98:                                               ; preds = %97, %92
  call void @ED_view3d_depth_tag_update(ptr noundef nonnull %23) #19
  %99 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %21, ptr noundef nonnull %23) #17, !range !25
  call void @ED_region_tag_redraw(ptr noundef nonnull %18) #19
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewzoom_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !100
  %8 = icmp eq i16 %7, 272
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %26, label %21

15:                                               ; preds = %3
  %16 = sext i16 %7 to i32
  switch i16 %7, label %21 [
    i16 4, label %26
    i16 20514, label %17
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !107
  switch i16 %19, label %47 [
    i16 1, label %40
    i16 5, label %37
    i16 6, label %20
  ]

20:                                               ; preds = %17
  br label %37

21:                                               ; preds = %9, %15
  %22 = phi i32 [ %16, %15 ], [ 272, %9 ]
  %23 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !108
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %33, label %47

26:                                               ; preds = %9, %15
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !127
  %29 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %30 = lshr i32 %29, 25
  %31 = trunc i32 %30 to i16
  %32 = and i16 %31, 1
  tail call fastcc void @viewzoom_apply(ptr noundef %5, ptr noundef nonnull %27, i16 noundef signext %28, i16 noundef signext %32) #17
  br label %47

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !107
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %40, label %47

37:                                               ; preds = %17, %20
  %38 = phi ptr [ @.str.14, %20 ], [ @.str.32, %17 ]
  %39 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %38, i16 noundef signext 0, ptr noundef null) #19
  br label %40

40:                                               ; preds = %37, %17, %33
  %41 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  %45 = tail call zeroext i8 @ED_view3d_camera_lock_autokey(ptr noundef %42, ptr noundef %44, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #17, !range !25
  %46 = load ptr, ptr %43, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %46) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %47

47:                                               ; preds = %17, %21, %26, %33, %40
  %48 = phi i32 [ 4, %40 ], [ 1, %33 ], [ 1, %26 ], [ 1, %21 ], [ 1, %17 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @viewzoom_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_dolly(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewdolly_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewdolly_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewdolly_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewdolly_cancel, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef -2147483648, i32 noundef 2147483647) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !121
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #19
  %15 = load ptr, ptr %10, align 8, !tbaa !121
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2147483647) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewdolly_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call fastcc zeroext i8 @view3d_operator_offset_lock_check(ptr noundef %0, ptr noundef %1) #17, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %91

6:                                                ; preds = %3
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef %1) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 27
  %12 = load i8, ptr %11, align 1, !tbaa !63
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %91

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 25
  %18 = load i8, ptr %17, align 1, !tbaa !5
  switch i8 %18, label %22 [
    i8 1, label %26
    i8 2, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  tail call fastcc void @view3d_persp_switch_from_camera(ptr noundef %21, ptr noundef nonnull %10, i8 noundef zeroext 1) #17
  br label %23

22:                                               ; preds = %16
  store i8 1, ptr %17, align 1, !tbaa !5
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %25) #19
  br label %26

26:                                               ; preds = %16, %23
  tail call fastcc void @viewops_data_create(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  %29 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %28, ptr noundef nonnull @.str.43) #19
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 8, !tbaa !122
  %33 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %32, ptr noundef nonnull @.str.45) #19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %26
  %36 = load ptr, ptr %27, align 8, !tbaa !122
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !103
  tail call void @RNA_int_set(ptr noundef %36, ptr noundef nonnull @.str.43, i32 noundef %38) #19
  %39 = load ptr, ptr %27, align 8, !tbaa !122
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !105
  tail call void @RNA_int_set(ptr noundef %39, ptr noundef nonnull @.str.45, i32 noundef %41) #19
  br label %42

42:                                               ; preds = %35, %31
  %43 = load ptr, ptr %27, align 8, !tbaa !122
  %44 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %43, ptr noundef nonnull @.str.41) #19
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @viewdolly_exec(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %91

48:                                               ; preds = %42
  %49 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 9
  %54 = load ptr, ptr %9, align 8, !tbaa !95
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %54, i64 0, i32 2, i64 2
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %55) #17
  tail call fastcc void @normalize_v3(ptr noundef nonnull %53) #17
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !100
  %59 = icmp eq i16 %58, 15
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %62 = and i32 %61, 67108864
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !103
  %67 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 22
  store i32 %66, ptr %67, align 8, !tbaa !123
  %68 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 20
  store i32 %66, ptr %68, align 8, !tbaa !124
  %69 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %70 = load i32, ptr %69, align 8, !tbaa !104
  br label %81

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 21
  %73 = load i32, ptr %72, align 4, !tbaa !125
  %74 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %75 = load i32, ptr %74, align 4, !tbaa !103
  %76 = add nsw i32 %75, %73
  %77 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %78 = load i32, ptr %77, align 8, !tbaa !104
  %79 = sub i32 %76, %78
  %80 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 23
  store i32 %79, ptr %80, align 4, !tbaa !126
  store i32 %79, ptr %72, align 4, !tbaa !125
  br label %81

81:                                               ; preds = %71, %64
  %82 = phi i32 [ %78, %71 ], [ %70, %64 ]
  %83 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %84 = load i32, ptr %83, align 4, !tbaa !106
  %85 = and i32 %61, 33554432
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i16
  tail call fastcc void @viewdolly_apply(ptr noundef nonnull %8, i32 noundef %82, i32 noundef %84, i16 noundef signext %87) #17
  %88 = load ptr, ptr %9, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %88) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %91

89:                                               ; preds = %56
  %90 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %91

91:                                               ; preds = %3, %46, %89, %81, %15
  %92 = phi i32 [ 8, %15 ], [ 4, %46 ], [ 4, %81 ], [ 1, %89 ], [ 2, %3 ]
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewdolly_exec(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.41) #19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %14) #17
  br label %21

15:                                               ; preds = %2
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 2, i64 2
  call fastcc void @negate_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %20) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #17
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi ptr [ %13, %10 ], [ %17, %15 ]
  %23 = phi ptr [ %11, %10 ], [ %16, %15 ]
  %24 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 30
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 2, i64 2
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %32) #17
  br label %33

33:                                               ; preds = %31, %21
  %34 = icmp slt i32 %6, 0
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 22
  %36 = select i1 %34, float 0x3FC99999A0000000, float 0x3FFCCCCCC0000000
  call fastcc void @view_dolly_mouseloc(ptr noundef nonnull %22, ptr noundef nonnull %35, ptr noundef nonnull %3, float noundef %36) #17
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 27
  %38 = load i8, ptr %37, align 1, !tbaa !63
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  tail call fastcc void @view3d_boxview_sync(ptr noundef nonnull %23, ptr noundef nonnull %22) #17
  br label %42

42:                                               ; preds = %41, %33
  tail call void @ED_view3d_depth_tag_update(ptr noundef nonnull %27) #19
  %43 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %25, ptr noundef nonnull %27) #17, !range !25
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %22) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewdolly_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !100
  switch i16 %7, label %12 [
    i16 4, label %17
    i16 20514, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !107
  switch i16 %10, label %40 [
    i16 1, label %33
    i16 5, label %30
    i16 6, label %11
  ]

11:                                               ; preds = %8
  br label %30

12:                                               ; preds = %3
  %13 = sext i16 %7 to i32
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %26, label %40

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !103
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !105
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %23 = lshr i32 %22, 25
  %24 = trunc i32 %23 to i16
  %25 = and i16 %24, 1
  tail call fastcc void @viewdolly_apply(ptr noundef %5, i32 noundef %19, i32 noundef %21, i16 noundef signext %25) #17
  br label %40

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !107
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %33, label %40

30:                                               ; preds = %8, %11
  %31 = phi ptr [ @.str.14, %11 ], [ @.str.32, %8 ]
  %32 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %31, i16 noundef signext 0, ptr noundef null) #19
  br label %33

33:                                               ; preds = %30, %8, %26
  %34 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  %38 = tail call zeroext i8 @ED_view3d_camera_lock_autokey(ptr noundef %35, ptr noundef %37, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #17, !range !25
  %39 = load ptr, ptr %36, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %39) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %40

40:                                               ; preds = %8, %12, %17, %26, %33
  %41 = phi i32 [ 4, %33 ], [ 1, %26 ], [ 1, %17 ], [ 1, %12 ], [ 1, %8 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @viewdolly_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_all_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !121
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_all_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.52) #19
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %6, ptr noundef %12) #17, !range !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = and i32 %10, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 29
  %20 = load i16, ptr %19, align 2, !tbaa !24
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br label %23

23:                                               ; preds = %15, %18, %2
  %24 = phi i1 [ false, %2 ], [ true, %15 ], [ %22, %18 ]
  %25 = load ptr, ptr %8, align 8, !tbaa !122
  %26 = tail call i32 @RNA_boolean_get(ptr noundef %25, ptr noundef nonnull @.str.55) #19
  %27 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %28 = and i32 %26, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %7, ptr noundef %6) #19
  call fastcc void @zero_v3(ptr noundef nonnull %3) #17
  call fastcc void @zero_v3(ptr noundef nonnull %4) #17
  tail call fastcc void @zero_v3(ptr noundef %31) #17
  br label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %33, align 8, !tbaa !29
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !29
  %34 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %34, align 8, !tbaa !29
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !29
  br label %35

35:                                               ; preds = %32, %30
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !38
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %41 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 15
  br label %42

42:                                               ; preds = %39, %62
  %43 = phi ptr [ %37, %39 ], [ %64, %62 ]
  %44 = phi i8 [ 0, %39 ], [ %63, %62 ]
  %45 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !132
  %47 = load i32, ptr %40, align 8, !tbaa !134
  %48 = and i32 %47, %46
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 102
  %54 = load i8, ptr %53, align 8, !tbaa !136
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  br i1 %24, label %61, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %41, align 8, !tbaa !18
  %60 = icmp eq ptr %52, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %57
  call void @BKE_object_minmax(ptr noundef nonnull %52, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  br label %62

62:                                               ; preds = %42, %50, %61, %58
  %63 = phi i8 [ 1, %58 ], [ 1, %61 ], [ %44, %50 ], [ %44, %42 ]
  %64 = load ptr, ptr %43, align 8, !tbaa !38
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %42, !llvm.loop !137

66:                                               ; preds = %62
  %67 = icmp eq i8 %63, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %35, %66
  call void @ED_region_tag_redraw(ptr noundef %5) #19
  br label %74

69:                                               ; preds = %66
  %70 = and i32 %10, 255
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call fastcc void @view3d_from_minmax_multi(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef %27) #17
  br label %74

73:                                               ; preds = %69
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 1, i32 noundef %27) #17
  br label %74

74:                                               ; preds = %72, %73, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_view_selected(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewselected_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewselected_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.52) #19
  %21 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %7, ptr noundef %22) #17, !range !25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = and i32 %20, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 29
  %30 = load i16, ptr %29, align 2, !tbaa !24
  %31 = and i16 %30, 32
  %32 = icmp ne i16 %31, 0
  br label %33

33:                                               ; preds = %25, %28, %15
  %34 = phi i1 [ true, %15 ], [ false, %25 ], [ %32, %28 ]
  %35 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef nonnull %1) #19
  %36 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %36, align 8, !tbaa !29
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 8, !tbaa !29
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %37, align 8, !tbaa !29
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 8, !tbaa !29
  %38 = icmp eq ptr %16, null
  br i1 %38, label %88, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 27
  %41 = load i32, ptr %40, align 8, !tbaa !139
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  br label %50

50:                                               ; preds = %48, %82
  %51 = phi ptr [ %46, %48 ], [ %83, %82 ]
  %52 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !140
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !132
  %59 = load i32, ptr %49, align 8, !tbaa !134
  %60 = and i32 %59, %58
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !135
  %65 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 102
  %70 = load i8, ptr %69, align 8, !tbaa !136
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 3
  %75 = load i16, ptr %74, align 8, !tbaa !141
  %76 = icmp eq i16 %75, 25
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 27
  %79 = load i32, ptr %78, align 8, !tbaa !139
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %50, %56, %62, %68, %77, %73
  %83 = load ptr, ptr %51, align 8, !tbaa !38
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %50, !llvm.loop !142

85:                                               ; preds = %82, %77, %44, %39
  %86 = phi ptr [ %16, %39 ], [ %16, %44 ], [ %16, %82 ], [ %64, %77 ]
  %87 = icmp eq ptr %17, null
  br i1 %87, label %92, label %90

88:                                               ; preds = %33
  %89 = icmp eq ptr %17, null
  br i1 %89, label %145, label %90

90:                                               ; preds = %88, %85
  %91 = call zeroext i8 @ED_view3d_minmax_verts(ptr noundef nonnull %17, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %204

92:                                               ; preds = %85
  %93 = icmp eq ptr %86, null
  br i1 %93, label %139, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 27
  %96 = load i32, ptr %95, align 8, !tbaa !139
  %97 = and i32 %96, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %142, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 18
  %101 = load ptr, ptr %100, align 8, !tbaa !143
  %102 = icmp eq ptr %101, null
  br i1 %102, label %213, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %106 = load ptr, ptr %101, align 8, !tbaa !38
  %107 = icmp eq ptr %106, null
  br i1 %107, label %137, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.bArmature, ptr %105, i64 0, i32 15
  %110 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 47
  br label %111

111:                                              ; preds = %108, %133
  %112 = phi ptr [ %106, %108 ], [ %135, %133 ]
  %113 = phi i8 [ 0, %108 ], [ %134, %133 ]
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %112, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !145
  %116 = getelementptr inbounds %struct.Bone, ptr %115, i64 0, i32 10
  %117 = load i32, ptr %116, align 8, !tbaa !147
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.Bone, ptr %115, i64 0, i32 25
  %122 = load i32, ptr %121, align 8, !tbaa !149
  %123 = load i32, ptr %109, align 8, !tbaa !150
  %124 = and i32 %123, %122
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %112, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !152
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, ptr %112, ptr %128
  %131 = getelementptr inbounds %struct.bPoseChannel, ptr %130, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %110, ptr noundef nonnull %131) #19
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %130, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %110, ptr noundef nonnull %132) #19
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  br label %133

133:                                              ; preds = %111, %126, %120
  %134 = phi i8 [ 1, %126 ], [ %113, %120 ], [ %113, %111 ]
  %135 = load ptr, ptr %112, align 8, !tbaa !38
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %111, !llvm.loop !153

137:                                              ; preds = %133, %103
  %138 = phi i8 [ 0, %103 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %204

139:                                              ; preds = %92
  %140 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %86) #19
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %164, label %148

142:                                              ; preds = %94
  %143 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %86) #19
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %151, label %148

145:                                              ; preds = %88
  %146 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef null) #19
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %142, %145, %139
  %149 = phi ptr [ null, %145 ], [ %86, %139 ], [ %86, %142 ]
  %150 = call zeroext i8 @paintface_minmax(ptr noundef %149, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %204

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 27
  %153 = load i32, ptr %152, align 8, !tbaa !139
  %154 = and i32 %153, 32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = call i32 @PE_minmax(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %158 = trunc i32 %157 to i8
  br label %204

159:                                              ; preds = %151
  %160 = and i32 %153, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call zeroext i8 @ED_sculpt_minmax(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %204

164:                                              ; preds = %139, %145, %159
  %165 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !38
  %167 = icmp eq ptr %166, null
  br i1 %167, label %213, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 22
  %170 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  br label %171

171:                                              ; preds = %168, %200
  %172 = phi ptr [ %166, %168 ], [ %202, %200 ]
  %173 = phi i8 [ 0, %168 ], [ %201, %200 ]
  %174 = getelementptr inbounds %struct.Base, ptr %172, i64 0, i32 4
  %175 = load i32, ptr %174, align 8, !tbaa !140
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %200, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.Base, ptr %172, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !132
  %181 = load i32, ptr %169, align 8, !tbaa !134
  %182 = and i32 %181, %180
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.Base, ptr %172, i64 0, i32 7
  %186 = load ptr, ptr %185, align 8, !tbaa !135
  %187 = getelementptr inbounds %struct.Object, ptr %186, i64 0, i32 102
  %188 = load i8, ptr %187, align 8, !tbaa !136
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  br i1 %34, label %192, label %195

192:                                              ; preds = %191
  %193 = load ptr, ptr %170, align 8, !tbaa !18
  %194 = icmp eq ptr %186, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %192, %191
  %196 = call zeroext i8 @BKE_object_minmax_dupli(ptr noundef %8, ptr noundef nonnull %186, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load ptr, ptr %185, align 8, !tbaa !135
  call void @BKE_object_minmax(ptr noundef %199, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  br label %200

200:                                              ; preds = %195, %198, %171, %178, %184, %192
  %201 = phi i8 [ %173, %192 ], [ %173, %184 ], [ %173, %178 ], [ %173, %171 ], [ 1, %198 ], [ 1, %195 ]
  %202 = load ptr, ptr %172, align 8, !tbaa !38
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %171, !llvm.loop !154

204:                                              ; preds = %200, %137, %156, %162, %148, %90
  %205 = phi i8 [ 1, %90 ], [ 1, %137 ], [ 1, %148 ], [ 1, %156 ], [ 0, %162 ], [ 1, %200 ]
  %206 = phi i8 [ %91, %90 ], [ %138, %137 ], [ %150, %148 ], [ %158, %156 ], [ %163, %162 ], [ %201, %200 ]
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  %209 = and i32 %20, 255
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  call fastcc void @view3d_from_minmax_multi(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %205, i32 noundef %35) #17
  br label %213

212:                                              ; preds = %208
  call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %7, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %205, i32 noundef %35) #17
  br label %213

213:                                              ; preds = %164, %99, %211, %212, %204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_lock_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_lock_clear_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_lock_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @ED_view3D_lock_clear(ptr noundef nonnull %3) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_lock_to_active(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_lock_to_active_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_lock_to_active_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %5 = icmp eq ptr %3, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  tail call void @ED_view3D_lock_clear(ptr noundef nonnull %3) #17
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 16
  store ptr %4, ptr %7, align 8, !tbaa !17
  %8 = icmp eq ptr %4, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !141
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !139
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %4) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 21
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 4
  %24 = tail call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %23, i64 noundef 64) #19
  br label %35

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !144
  %28 = getelementptr inbounds %struct.bArmature, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !155
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 21
  %33 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 5
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %33, i64 noundef 64) #19
  br label %35

35:                                               ; preds = %25, %31, %18, %21, %9, %6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %3) #19
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_cursor(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewcenter_cursor_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewcenter_cursor_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %10 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %11 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %4) #19
  call fastcc void @negate_v3_v3(ptr noundef nonnull %3, ptr noundef %11) #17
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %4, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  br label %12

12:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_pick(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.71, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewcenter_pick_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewcenter_pick_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %9 = icmp eq ptr %6, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %11 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #19
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = call zeroext i8 @ED_view3d_autodist(ptr noundef %7, ptr noundef %8, ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef null) #17, !range !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %16) #17
  call void @ED_view3d_win_to_3d_int(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %4) #19
  br label %17

17:                                               ; preds = %10, %15
  call fastcc void @negate_v3(ptr noundef nonnull %4) #17
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %5, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %18

18:                                               ; preds = %17, %3
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_camera(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_center_camera_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_user_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_center_camera_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca [2 x float], align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %7 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 19
  store <2 x float> zeroinitializer, ptr %11, align 4, !tbaa !29
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  call void @ED_view3d_calc_camera_border_size(ptr noundef %6, ptr noundef %8, ptr noundef %12, ptr noundef %10, ptr noundef nonnull %3) #19
  %13 = load ptr, ptr %5, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !66
  %16 = sitofp i16 %15 to float
  %17 = load float, ptr %3, align 4, !tbaa !29
  %18 = fadd float %17, 4.000000e+00
  %19 = fdiv float %16, %18
  %20 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 6
  %21 = load i16, ptr %20, align 2, !tbaa !67
  %22 = sitofp i16 %21 to float
  %23 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !29
  %25 = fadd float %24, 4.000000e+00
  %26 = fdiv float %22, %25
  %27 = call fastcc float @min_ff(float noundef %19, float noundef %26) #17
  %28 = call float @BKE_screen_view3d_zoom_from_fac(float noundef %27) #19
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 23
  store float %28, ptr %29, align 4, !tbaa !131
  %30 = fcmp olt float %28, -3.000000e+01
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = fcmp ogt float %28, 6.000000e+02
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %2
  %34 = phi float [ -3.000000e+01, %2 ], [ 6.000000e+02, %31 ]
  store float %34, ptr %29, align 4, !tbaa !131
  br label %35

35:                                               ; preds = %33, %31
  %36 = load ptr, ptr %4, align 8, !tbaa !38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %36) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_camera_user_poll(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %6, %1
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_center_lock(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.75, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.76, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.77, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_center_lock_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_lock_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_center_lock_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 30
  tail call fastcc void @zero_v2(ptr noundef nonnull %4) #17
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_lock_poll(ptr noundef %0) #2 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef nonnull %2, ptr noundef nonnull %5) #17, !range !25
  %9 = zext nneg i8 %8 to i32
  br label %10

10:                                               ; preds = %4, %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_render_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.78, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.80, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @render_border_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !92
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #19
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #19
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_border_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %7 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #19
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.81) #19
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %130

18:                                               ; preds = %14, %2
  call void @WM_operator_properties_border_to_rcti(ptr noundef nonnull %1, ptr noundef nonnull %3) #19
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  call void @ED_view3d_calc_camera_border(ptr noundef %8, ptr noundef %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  %23 = load float, ptr %4, align 4, !tbaa !156
  %24 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !157
  br label %36

26:                                               ; preds = %18
  store float 0.000000e+00, ptr %4, align 4, !tbaa !156
  %27 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float 0.000000e+00, ptr %27, align 4, !tbaa !157
  %28 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %29 = load i16, ptr %28, align 8, !tbaa !66
  %30 = sitofp i16 %29 to float
  %31 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  store float %30, ptr %31, align 4, !tbaa !158
  %32 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %33 = load i16, ptr %32, align 2, !tbaa !67
  %34 = sitofp i16 %33 to float
  %35 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %34, ptr %35, align 4, !tbaa !159
  br label %36

36:                                               ; preds = %26, %22
  %37 = phi float [ 0.000000e+00, %26 ], [ %25, %22 ]
  %38 = phi float [ 0.000000e+00, %26 ], [ %23, %22 ]
  %39 = load i32, ptr %3, align 4, !tbaa !160
  %40 = sitofp i32 %39 to float
  %41 = fsub float %40, %38
  %42 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #17
  %43 = fdiv float %41, %42
  %44 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !161
  %46 = sitofp i32 %45 to float
  %47 = fsub float %46, %37
  %48 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #17
  %49 = fdiv float %47, %48
  %50 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !162
  %52 = sitofp i32 %51 to float
  %53 = fsub float %52, %38
  %54 = fdiv float %53, %42
  %55 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !163
  %57 = sitofp i32 %56 to float
  %58 = fsub float %57, %37
  %59 = fdiv float %58, %48
  %60 = fcmp olt float %43, 0.000000e+00
  br i1 %60, label %64, label %61

61:                                               ; preds = %36
  %62 = fcmp ogt float %43, 1.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %36, %61, %63
  %65 = phi float [ 1.000000e+00, %63 ], [ %43, %61 ], [ 0.000000e+00, %36 ]
  %66 = fcmp olt float %49, 0.000000e+00
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = fcmp ogt float %49, 1.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %64, %67, %69
  %71 = phi float [ 1.000000e+00, %69 ], [ %49, %67 ], [ 0.000000e+00, %64 ]
  %72 = fcmp olt float %54, 0.000000e+00
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = fcmp ogt float %54, 1.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %70, %73, %75
  %77 = phi float [ 1.000000e+00, %75 ], [ %54, %73 ], [ 0.000000e+00, %70 ]
  %78 = fcmp olt float %59, 0.000000e+00
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = fcmp ogt float %59, 1.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %76, %79, %81
  %83 = phi float [ 1.000000e+00, %81 ], [ %59, %79 ], [ 0.000000e+00, %76 ]
  %84 = load i8, ptr %19, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 2
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58
  store float %65, ptr %87, align 8, !tbaa.struct !164
  %88 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 1
  store float %77, ptr %88, align 4, !tbaa.struct !165
  %89 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 2
  store float %71, ptr %89, align 8, !tbaa.struct !166
  %90 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 58, i32 3
  br label %96

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17
  store float %65, ptr %92, align 8, !tbaa.struct !164
  %93 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 1
  store float %77, ptr %93, align 4, !tbaa.struct !165
  %94 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 2
  store float %71, ptr %94, align 8, !tbaa.struct !166
  %95 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 17, i32 3
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi ptr [ %95, %91 ], [ %90, %86 ]
  %98 = phi i32 [ 252248064, %91 ], [ 67371008, %86 ]
  store float %83, ptr %97, align 4
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %98, ptr noundef null) #19
  %99 = fcmp ole float %65, 0.000000e+00
  %100 = fcmp oge float %77, 1.000000e+00
  %101 = select i1 %99, i1 %100, i1 false
  %102 = fcmp ole float %71, 0.000000e+00
  %103 = select i1 %101, i1 %102, i1 false
  %104 = fcmp oge float %83, 1.000000e+00
  %105 = select i1 %103, i1 %104, i1 false
  %106 = fcmp oeq float %65, %77
  %107 = select i1 %105, i1 true, i1 %106
  %108 = fcmp oeq float %71, %83
  %109 = select i1 %107, i1 true, i1 %108
  %110 = load i8, ptr %19, align 1, !tbaa !5
  %111 = icmp eq i8 %110, 2
  br i1 %109, label %112, label %121

112:                                              ; preds = %96
  br i1 %111, label %113, label %117

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 47
  %115 = load i32, ptr %114, align 8, !tbaa !167
  %116 = and i32 %115, -513
  store i32 %116, ptr %114, align 8, !tbaa !167
  br label %130

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %119 = load i16, ptr %118, align 2, !tbaa !24
  %120 = and i16 %119, -2049
  store i16 %120, ptr %118, align 2, !tbaa !24
  br label %130

121:                                              ; preds = %96
  br i1 %111, label %122, label %126

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 47
  %124 = load i32, ptr %123, align 8, !tbaa !167
  %125 = or i32 %124, 512
  store i32 %125, ptr %123, align 8, !tbaa !167
  br label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 29
  %128 = load i16, ptr %127, align 2, !tbaa !24
  %129 = or i16 %128, 2048
  store i16 %129, ptr %127, align 2, !tbaa !24
  br label %130

130:                                              ; preds = %117, %113, %126, %122, %14
  %131 = phi i32 [ 8, %14 ], [ 4, %122 ], [ 4, %126 ], [ 4, %113 ], [ 4, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 %131
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare void @WM_operator_properties_border(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_clear_render_border(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.84, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.85, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_render_border_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_render_border_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %4 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #19
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 25
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 47
  %11 = load i32, ptr %10, align 8, !tbaa !167
  %12 = and i32 %11, -513
  store i32 %12, ptr %10, align 8, !tbaa !167
  %13 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 58
  br label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %16 = load i16, ptr %15, align 2, !tbaa !24
  %17 = and i16 %16, -2049
  store i16 %17, ptr %15, align 2, !tbaa !24
  %18 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ 252248064, %14 ], [ 67371008, %9 ]
  %21 = phi ptr [ %18, %14 ], [ %13, %9 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %20, ptr noundef null) #19
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %21, align 4, !tbaa !29
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_zoom_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.89, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_zoom_border_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_zoom_border_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !92
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_zoom_border_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %4, ptr noundef nonnull %5) #17, !range !25
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %3
  %13 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ 8, %9 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_zoom_border_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rcti, align 16
  %4 = alloca [3 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca %struct.bglMats, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca %struct.ViewDepths, align 8
  %11 = alloca [3 x double], align 16
  %12 = alloca [2 x float], align 8
  %13 = alloca [3 x float], align 4
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %15 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %16 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %18 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #19
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.167) #19
  call void @ED_view3d_dist_range_get(ptr noundef %15, ptr noundef nonnull %5) #19
  call void @bgl_get_mats(ptr noundef nonnull %8) #19
  call void @ED_view3d_draw_depth(ptr noundef %17, ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  call void @view3d_update_depths_rect(ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull %3) #19
  %22 = call float @view3d_depth_near(ptr noundef nonnull %10) #19
  %23 = getelementptr inbounds %struct.ViewDepths, ptr %10, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %27(ptr noundef nonnull %24) #19
  br label %28

28:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #18
  %29 = load i32, ptr %3, align 16, !tbaa !160
  %30 = sitofp i32 %29 to double
  %31 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !162
  %33 = sitofp i32 %32 to double
  %34 = fadd double %30, %33
  %35 = fmul double %34, 5.000000e-01
  %36 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !161
  %38 = sitofp i32 %37 to double
  %39 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !163
  %41 = sitofp i32 %40 to double
  %42 = fadd double %38, %41
  %43 = fmul double %42, 5.000000e-01
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 24
  %45 = load i8, ptr %44, align 8, !tbaa !117
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  %48 = fcmp oeq float %22, 0x47EFFFFFE0000000
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !170
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.168) #19
  br label %163

52:                                               ; preds = %47
  %53 = fpext float %22 to double
  %54 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %55 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %57 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %58 = call i32 @gluUnProject(double noundef %35, double noundef %43, double noundef %53, ptr noundef nonnull %8, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %9, ptr noundef nonnull %56, ptr noundef nonnull %57) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %163, label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %3, align 16, !tbaa !160
  %62 = sitofp i32 %61 to double
  %63 = load i32, ptr %36, align 8, !tbaa !161
  %64 = sitofp i32 %63 to double
  %65 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %66 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %67 = call i32 @gluUnProject(double noundef %62, double noundef %64, double noundef %53, ptr noundef nonnull %8, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %11, ptr noundef nonnull %65, ptr noundef nonnull %66) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %163, label %69

69:                                               ; preds = %60
  %70 = load <2 x double>, ptr %9, align 16, !tbaa !171
  %71 = load <2 x double>, ptr %11, align 16, !tbaa !171
  %72 = fsub <2 x double> %70, %71
  %73 = fptrunc <2 x double> %72 to <2 x float>
  store <2 x float> %73, ptr %4, align 8, !tbaa !29
  %74 = load double, ptr %57, align 16, !tbaa !171
  %75 = load double, ptr %66, align 16, !tbaa !171
  %76 = fsub double %74, %75
  %77 = fptrunc double %76 to float
  %78 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %77, ptr %78, align 8, !tbaa !29
  %79 = fptrunc <2 x double> %70 to <2 x float>
  %80 = fneg <2 x float> %79
  store <2 x float> %80, ptr %7, align 8, !tbaa !29
  %81 = fptrunc double %74 to float
  %82 = fneg float %81
  %83 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %82, ptr %83, align 8, !tbaa !29
  %84 = call fastcc float @len_v3(ptr noundef nonnull %4) #17
  store float %84, ptr %6, align 4, !tbaa !29
  %85 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 32
  %86 = load float, ptr %85, align 4, !tbaa !172
  %87 = fmul float %86, 1.500000e+00
  store float %87, ptr %5, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %137

88:                                               ; preds = %28
  %89 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 5
  %90 = load <2 x i16>, ptr %89, align 8, !tbaa !173
  %91 = sitofp <2 x i16> %90 to <2 x float>
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %93 = load float, ptr %92, align 8, !tbaa !26
  %94 = fcmp une float %22, 0x47EFFFFFE0000000
  br i1 %94, label %95, label %111

95:                                               ; preds = %88
  %96 = fpext float %22 to double
  %97 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %98 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %99 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %100 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %101 = call i32 @gluUnProject(double noundef %35, double noundef %43, double noundef %96, ptr noundef nonnull %8, ptr noundef nonnull %97, ptr noundef nonnull %98, ptr noundef nonnull %9, ptr noundef nonnull %99, ptr noundef nonnull %100) #19
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %95
  %104 = load <2 x double>, ptr %9, align 16, !tbaa !171
  %105 = fptrunc <2 x double> %104 to <2 x float>
  %106 = fneg <2 x float> %105
  store <2 x float> %106, ptr %7, align 8, !tbaa !29
  %107 = load double, ptr %100, align 16, !tbaa !171
  %108 = fptrunc double %107 to float
  %109 = fneg float %108
  %110 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %109, ptr %110, align 8, !tbaa !29
  br label %126

111:                                              ; preds = %95, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  %112 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %112) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call fastcc void @negate_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %7) #17
  %113 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %16, ptr noundef nonnull %13, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  %114 = load <4 x i32>, ptr %3, align 16
  %115 = shufflevector <4 x i32> %114, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %116 = load i32, ptr %31, align 4, !tbaa !162
  %117 = load i32, ptr %36, align 8, !tbaa !161
  %118 = load i32, ptr %39, align 4, !tbaa !163
  %119 = insertelement <2 x i32> poison, i32 %116, i64 0
  %120 = insertelement <2 x i32> %119, i32 %118, i64 1
  %121 = insertelement <2 x i32> %115, i32 %117, i64 1
  %122 = add nsw <2 x i32> %120, %121
  %123 = sitofp <2 x i32> %122 to <2 x float>
  %124 = fsub <2 x float> %123, %91
  %125 = fmul <2 x float> %124, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %125, ptr %12, align 8, !tbaa !29
  call void @ED_view3d_win_to_delta(ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %4, float noundef %113) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  br label %126

126:                                              ; preds = %111, %103
  %127 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %3) #17
  %128 = sitofp i32 %127 to float
  %129 = extractelement <2 x float> %91, i64 0
  %130 = fdiv float %128, %129
  %131 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %3) #17
  %132 = sitofp i32 %131 to float
  %133 = extractelement <2 x float> %91, i64 1
  %134 = fdiv float %132, %133
  %135 = call fastcc float @max_ff(float noundef %130, float noundef %134) #17
  %136 = fmul float %135, %93
  store float %136, ptr %6, align 4, !tbaa !29
  br label %137

137:                                              ; preds = %69, %126
  %138 = phi float [ %84, %69 ], [ %136, %126 ]
  %139 = icmp eq i32 %21, 10
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %141) #17
  %142 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 18
  %143 = load float, ptr %142, align 8, !tbaa !26
  %144 = fdiv float %143, %138
  %145 = fmul float %143, %144
  store float %145, ptr %6, align 4, !tbaa !29
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %141, ptr noundef nonnull %4) #17
  br label %146

146:                                              ; preds = %140, %137
  %147 = phi float [ %145, %140 ], [ %138, %137 ]
  %148 = load float, ptr %5, align 4, !tbaa !29
  %149 = fcmp olt float %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store float %148, ptr %6, align 4, !tbaa !29
  br label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !29
  %154 = fcmp ogt float %147, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store float %153, ptr %6, align 4, !tbaa !29
  br label %156

156:                                              ; preds = %151, %155, %150
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %15, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, i32 noundef %18) #19
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 27
  %158 = load i8, ptr %157, align 1, !tbaa !63
  %159 = and i8 %158, 2
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = call ptr @CTX_wm_area(ptr noundef %0) #19
  call fastcc void @view3d_boxview_sync(ptr noundef %162, ptr noundef %14) #17
  br label %164

163:                                              ; preds = %52, %60, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %164

164:                                              ; preds = %156, %161, %163
  %165 = phi i32 [ 2, %163 ], [ 4, %161 ], [ 4, %156 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret i32 %165
}

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_zoom_camera_1_to_1(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.90, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.92, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_zoom_1_to_1_camera_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_user_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_zoom_1_to_1_camera_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = load ptr, ptr %3, align 8, !tbaa !38
  call fastcc void @view3d_set_1_to_1_viewborder(ptr noundef %5, ptr noundef %7, ptr noundef %8) #17
  %9 = load ptr, ptr %3, align 8, !tbaa !38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_viewnumpad(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewnumpad_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_items, i32 noundef 0, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !174
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #19
  %11 = load ptr, ptr %7, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #19
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewnumpad_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %7 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #19
  %8 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %9 = load ptr, ptr %4, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.96) #19
  %15 = load ptr, ptr %12, align 8, !tbaa !122
  %16 = call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.99) #19
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 27
  %19 = load i8, ptr %18, align 1, !tbaa !63
  %20 = and i8 %19, 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %21, i8 0, i8 %17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 25
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 34
  %28 = load i16, ptr %27, align 4, !tbaa !175
  %29 = sext i16 %28 to i32
  br label %32

30:                                               ; preds = %2
  %31 = load i32, ptr @viewnumpad_exec.perspo, align 4, !tbaa !176
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %34 = add i32 %14, -1
  %35 = icmp ult i32 %34, 6
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %37 = trunc i32 %14 to i8
  %38 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %37, ptr noundef nonnull %5) #19
  %39 = load ptr, ptr %3, align 8, !tbaa !38
  %40 = load ptr, ptr %4, align 8, !tbaa !38
  %41 = trunc i32 %14 to i16
  call fastcc void @axis_set_view(ptr noundef %0, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %5, i16 noundef signext %41, i32 noundef %33, i8 noundef zeroext %22, i32 noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %119

42:                                               ; preds = %32
  %43 = icmp ne i32 %14, 8
  %44 = select i1 %43, i1 true, i1 %21
  br i1 %44, label %119, label %45

45:                                               ; preds = %42
  br i1 %25, label %110, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Base, ptr %48, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  br label %53

53:                                               ; preds = %46, %50
  %54 = phi ptr [ %52, %50 ], [ null, %46 ]
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !177
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @ED_view3d_lastview_store(ptr noundef nonnull %11) #17
  br label %59

59:                                               ; preds = %58, %53
  %60 = load ptr, ptr %3, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.View3D, ptr %60, i64 0, i32 26
  %62 = load i16, ptr %61, align 4, !tbaa !178
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !179
  %67 = getelementptr inbounds %struct.View3D, ptr %60, i64 0, i32 15
  store ptr %66, ptr %67, align 8, !tbaa !18
  br label %75

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.View3D, ptr %60, i64 0, i32 15
  %70 = load ptr, ptr %69, align 8, !tbaa !18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !179
  store ptr %74, ptr %69, align 8, !tbaa !18
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi ptr [ %74, %72 ], [ %66, %64 ]
  %77 = getelementptr inbounds %struct.View3D, ptr %60, i64 0, i32 15
  %78 = icmp eq ptr %76, null
  %79 = icmp ne ptr %54, null
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %83 = load i16, ptr %82, align 8, !tbaa !141
  %84 = icmp eq i16 %83, 11
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store ptr %54, ptr %77, align 8, !tbaa !18
  br label %96

86:                                               ; preds = %81, %75
  %87 = phi ptr [ %76, %75 ], [ null, %81 ]
  br i1 %78, label %88, label %92

88:                                               ; preds = %86
  %89 = call ptr @BKE_scene_camera_find(ptr noundef nonnull %6) #19
  %90 = load ptr, ptr %3, align 8, !tbaa !38
  %91 = getelementptr inbounds %struct.View3D, ptr %90, i64 0, i32 15
  store ptr %89, ptr %91, align 8, !tbaa !18
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi ptr [ %89, %88 ], [ %87, %86 ]
  %94 = phi ptr [ %90, %88 ], [ %60, %86 ]
  %95 = icmp eq ptr %93, null
  br i1 %95, label %124, label %96

96:                                               ; preds = %68, %85, %92
  %97 = phi ptr [ %94, %92 ], [ %60, %85 ], [ %60, %68 ]
  %98 = phi ptr [ %93, %92 ], [ %54, %85 ], [ %70, %68 ]
  %99 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 26
  %100 = load i16, ptr %99, align 4, !tbaa !178
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  store ptr %98, ptr %103, align 8, !tbaa !179
  br label %104

104:                                              ; preds = %102, %96
  store i8 2, ptr %23, align 1, !tbaa !5
  %105 = load ptr, ptr %4, align 8, !tbaa !38
  %106 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 22
  %107 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 17
  %108 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 18
  %109 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 30
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef nonnull %97, ptr noundef %105, ptr noundef null, ptr noundef nonnull %98, ptr noundef nonnull %106, ptr noundef nonnull %107, ptr noundef nonnull %108, ptr noundef nonnull %109, i32 noundef %7) #19
  br label %119

110:                                              ; preds = %45
  %111 = load ptr, ptr %3, align 8, !tbaa !38
  %112 = load ptr, ptr %4, align 8, !tbaa !38
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 33
  %114 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 35
  %115 = load i16, ptr %114, align 2, !tbaa !180
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 34
  %117 = load i16, ptr %116, align 4, !tbaa !175
  %118 = sext i16 %117 to i32
  call fastcc void @axis_set_view(ptr noundef %0, ptr noundef %111, ptr noundef %112, ptr noundef nonnull %113, i16 noundef signext %115, i32 noundef %118, i8 noundef zeroext 0, i32 noundef %7) #17
  br label %119

119:                                              ; preds = %42, %104, %110, %36
  %120 = load i8, ptr %23, align 1, !tbaa !5
  %121 = icmp eq i8 %120, 2
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = zext i8 %120 to i32
  store i32 %123, ptr @viewnumpad_exec.perspo, align 4, !tbaa !176
  br label %124

124:                                              ; preds = %92, %119, %122
  %125 = phi i32 [ 4, %122 ], [ 4, %119 ], [ 2, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %125
}

; Function Attrs: optsize
declare i32 @ED_operator_rv3d_user_region_poll(ptr noundef) #4

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_view_orbit(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.103, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.104, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vieworbit_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_orbit_items, i32 noundef 0, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !174
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vieworbit_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %10 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.96) #19
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 27
  %18 = load i8, ptr %17, align 1, !tbaa !63
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !tbaa !38
  %27 = call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %26, ptr noundef nonnull %13) #17, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25, %21
  %30 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef nonnull %1) #19
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !181
  %32 = sitofp i16 %31 to float
  %33 = fmul float %32, 0x3F91DF46A0000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %34 = load ptr, ptr %3, align 8, !tbaa !38
  %35 = load ptr, ptr %4, align 8, !tbaa !38
  %36 = call fastcc zeroext i8 @view3d_ensure_persp(ptr noundef %34, ptr noundef %35) #17, !range !25
  %37 = add i32 %16, -1
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = icmp eq i32 %16, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  %41 = fneg float %33
  %42 = select i1 %40, float %41, float %33
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %8, float noundef %42) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br label %48

43:                                               ; preds = %29
  %44 = icmp eq i32 %16, 3
  %45 = fneg float %33
  %46 = select i1 %44, float %45, float %33
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %47, float noundef %46) #19
  br label %48

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %6, ptr noundef nonnull %49, ptr noundef nonnull %5) #19
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  store i8 0, ptr %50, align 2, !tbaa !65
  %51 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %52 = and i32 %51, 16384
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr noundef nonnull %9) #17
  call fastcc void @negate_v3(ptr noundef nonnull %9) #17
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %55) #17
  call fastcc void @view3d_orbit_apply_dyn_ofs(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %49, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32 [ 0, %54 ], [ %30, %48 ]
  %58 = phi ptr [ %7, %54 ], [ null, %48 ]
  %59 = load ptr, ptr %3, align 8, !tbaa !38
  %60 = load ptr, ptr %4, align 8, !tbaa !38
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %59, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef %58, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef %57) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %61

61:                                               ; preds = %2, %25, %56
  %62 = phi i32 [ 4, %56 ], [ 2, %25 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_view_roll(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.109, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @viewroll_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewroll_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @viewroll_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @viewroll_cancel, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.110, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.4, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #19
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !174
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #19
  %14 = load ptr, ptr %10, align 8, !tbaa !121
  %15 = tail call ptr @RNA_def_enum(ptr noundef %14, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_roll_items, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113) #19
  tail call void @RNA_def_property_flag(ptr noundef %15, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewroll_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.96) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !122
  %10 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.110) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 @viewroll_exec(ptr noundef %0, ptr noundef nonnull %1) #17, !range !119
  br label %34

14:                                               ; preds = %8
  tail call fastcc void @viewops_data_alloc(ptr noundef %0, ptr noundef nonnull %1) #17
  tail call fastcc void @viewops_data_create(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #17
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 9
  %18 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 2, i64 2
  tail call fastcc void @normalize_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %20) #17
  tail call fastcc void @negate_v3(ptr noundef nonnull %17) #17
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !100
  %23 = icmp eq i16 %22, 16
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !103
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 22
  store i32 %26, ptr %27, align 8, !tbaa !123
  %28 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 20
  store i32 %26, ptr %28, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %30 = load i32, ptr %29, align 8, !tbaa !104
  tail call fastcc void @viewroll_apply(ptr noundef nonnull %16, i32 noundef %30) #17
  %31 = load ptr, ptr %18, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %31) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %34

32:                                               ; preds = %14
  %33 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %34

34:                                               ; preds = %12, %32, %24
  %35 = phi i32 [ 4, %12 ], [ 4, %24 ], [ 1, %32 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewroll_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  store ptr %12, ptr %4, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  store ptr %14, ptr %3, align 8, !tbaa !38
  br label %18

15:                                               ; preds = %2
  %16 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %12, %10 ]
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 25
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 8, !tbaa !38
  %27 = call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %26, ptr noundef nonnull %21) #17, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %25, %18
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !122
  %32 = call i32 @RNA_enum_get(ptr noundef %31, ptr noundef nonnull @.str.96) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr %30, align 8, !tbaa !122
  %36 = call float @RNA_float_get(ptr noundef %35, ptr noundef nonnull @.str.110) #19
  br label %41

37:                                               ; preds = %29
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !181
  %39 = sitofp i16 %38 to float
  %40 = fmul float %39, 0x3F91DF46A0000000
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi float [ %36, %34 ], [ %40, %37 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %43 = call i32 @WM_operator_smooth_viewtx_get(ptr noundef nonnull %1) #19
  %44 = icmp eq i32 %32, 1
  %45 = fneg float %42
  %46 = select i1 %44, float %45, float %42
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 2, i64 2
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %47) #17
  call fastcc void @negate_v3(ptr noundef nonnull %5) #17
  %48 = load ptr, ptr %4, align 8, !tbaa !38
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 17
  call fastcc void @view_roll_angle(ptr noundef %48, ptr noundef nonnull %6, ptr noundef nonnull %49, ptr noundef nonnull %5, float noundef %46) #17
  %50 = load ptr, ptr %3, align 8, !tbaa !38
  %51 = load ptr, ptr %4, align 8, !tbaa !38
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %50, ptr noundef %51, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef %43) #19
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %53

52:                                               ; preds = %25
  call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %53

53:                                               ; preds = %52, %41
  %54 = phi i32 [ 4, %41 ], [ 2, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewroll_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !100
  switch i16 %7, label %12 [
    i16 4, label %17
    i16 20514, label %8
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !107
  switch i16 %10, label %34 [
    i16 1, label %27
    i16 5, label %24
    i16 6, label %11
  ]

11:                                               ; preds = %8
  br label %24

12:                                               ; preds = %3
  %13 = sext i16 %7 to i32
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %20, label %34

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !103
  tail call fastcc void @viewroll_apply(ptr noundef %5, i32 noundef %19) #17
  br label %34

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !107
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %27, label %34

24:                                               ; preds = %8, %11
  %25 = phi ptr [ @.str.14, %11 ], [ @.str.32, %8 ]
  %26 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %25, i16 noundef signext 0, ptr noundef null) #19
  br label %27

27:                                               ; preds = %24, %8, %20
  %28 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !98
  %30 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  %32 = tail call zeroext i8 @ED_view3d_camera_lock_autokey(ptr noundef %29, ptr noundef %31, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #17, !range !25
  %33 = load ptr, ptr %30, align 8, !tbaa !95
  tail call void @ED_view3d_depth_tag_update(ptr noundef %33) #19
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %34

34:                                               ; preds = %8, %12, %17, %20, %27
  %35 = phi i32 [ 4, %27 ], [ 1, %20 ], [ 1, %17 ], [ 1, %12 ], [ 1, %8 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @viewroll_cancel(ptr noundef %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @viewops_data_free(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_view_pan(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.116, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewpan_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.96, ptr noundef nonnull @prop_view_pan_items, i32 noundef 0, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !174
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewpan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 0, ptr %5, align 8
  %10 = tail call fastcc zeroext i8 @view3d_operator_offset_lock_check(ptr noundef %0, ptr noundef %1) #17, !range !25
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.96) #19
  tail call void @ED_view3d_camera_lock_init(ptr noundef %8, ptr noundef %9) #17
  %16 = call float @ED_view3d_calc_zfac(ptr noundef %9, ptr noundef nonnull %4, ptr noundef null) #19
  switch i32 %15, label %23 [
    i32 6, label %17
    i32 5, label %18
    i32 8, label %19
    i32 7, label %21
  ]

17:                                               ; preds = %12
  store float -3.200000e+01, ptr %5, align 8, !tbaa !29
  br label %23

18:                                               ; preds = %12
  store float 3.200000e+01, ptr %5, align 8, !tbaa !29
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float -2.500000e+01, ptr %20, align 4, !tbaa !29
  br label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float 2.500000e+01, ptr %22, align 4, !tbaa !29
  br label %23

23:                                               ; preds = %12, %18, %21, %19, %17
  call void @ED_view3d_win_to_delta(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %3, float noundef %16) #19
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %3) #17
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %26 = load i8, ptr %25, align 1, !tbaa !63
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  call fastcc void @view3d_boxview_sync(ptr noundef %6, ptr noundef %7) #17
  br label %30

30:                                               ; preds = %29, %23
  call void @ED_view3d_depth_tag_update(ptr noundef nonnull %9) #19
  %31 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %8, ptr noundef nonnull %9) #17, !range !25
  call void @ED_region_tag_redraw(ptr noundef %7) #19
  br label %32

32:                                               ; preds = %2, %30
  %33 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_view_persportho(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewpersportho_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewpersportho_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %6 = load ptr, ptr %4, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 27
  %10 = load i8, ptr %9, align 1, !tbaa !63
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %14, align 1, !tbaa !5
  call void @ED_region_tag_redraw(ptr noundef nonnull %6) #19
  br label %18

18:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_navigate(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_navigate_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_navigate_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #2 {
  %4 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 99), align 2, !tbaa !182
  %5 = icmp eq i8 %4, 1
  %6 = select i1 %5, ptr @.str.223, ptr @.str.224
  %7 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext 0, ptr noundef null) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_background_image_add(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @background_image_add_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @background_image_add_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef 64, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131) #19
  %11 = load ptr, ptr %8, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef 1024, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @background_image_add_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.132) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  %12 = load ptr, ptr %7, align 8, !tbaa !122
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.132, ptr noundef nonnull %5) #19
  %13 = call ptr @BKE_image_load_exists(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  br label %23

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 8, !tbaa !122
  %16 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.128) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @background_image_add(ptr noundef %0) #17
  br label %35

20:                                               ; preds = %14
  %21 = load ptr, ptr %7, align 8, !tbaa !122
  call void @RNA_string_get(ptr noundef %21, ptr noundef nonnull @.str.128, ptr noundef nonnull %4) #19
  %22 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %4) #19
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi ptr [ %13, %11 ], [ %22, %20 ]
  %25 = call fastcc ptr @background_image_add(ptr noundef %0) #17
  %26 = icmp eq ptr %24, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BGpic, ptr %25, i64 0, i32 2
  store ptr %24, ptr %28, align 8, !tbaa !183
  call void @id_us_plus(ptr noundef nonnull %24) #19
  %29 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %30 = load i16, ptr %29, align 8, !tbaa !187
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = or disjoint i16 %30, 2
  store i16 %34, ptr %29, align 8, !tbaa !187
  br label %35

35:                                               ; preds = %18, %27, %33, %23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @background_image_add_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call fastcc ptr @background_image_add(ptr noundef %0) #17
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_background_image_remove(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.138, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @background_image_remove_exec, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.139, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 2147483647) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @background_image_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.139) #19
  %7 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 18
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %6) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BGpic, ptr %8, i64 0, i32 12
  %12 = load i16, ptr %11, align 4, !tbaa !188
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
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  tail call void @id_us_min(ptr noundef %19) #19
  br label %20

20:                                               ; preds = %17, %10
  tail call void @ED_view3D_background_image_remove(ptr noundef %3, ptr noundef nonnull %8) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %3) #19
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_clipping_local(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 32
  %4 = load i16, ptr %3, align 2, !tbaa !71
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  tail call fastcc void @calc_local_clipping(ptr noundef nonnull %8, ptr noundef %10, ptr noundef %1) #17
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_local_clipping(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.BoundBox, align 4
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %6 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef %2) #19
  br label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ 0, %3 ], [ %11, %7 ]
  %9 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 %8
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %8
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %10) #19
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %7, !llvm.loop !189

13:                                               ; preds = %7
  %14 = call zeroext i8 @is_negative_m4(ptr noundef %2) #19
  call fastcc void @calc_clipping_plane(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %14) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_clip_border(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_clipping_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_clipping_exec, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %9, align 8, !tbaa !92
  tail call void @WM_operator_properties_border(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_clipping_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 32
  %7 = load i16, ptr %6, align 2, !tbaa !71
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = and i16 %7, -5
  store i16 %11, ptr %6, align 2, !tbaa !71
  tail call void @ED_region_tag_redraw(ptr noundef %5) #19
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %16(ptr noundef nonnull %13) #19
  br label %17

17:                                               ; preds = %15, %10
  store ptr null, ptr %12, align 8, !tbaa !72
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @WM_border_select_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 4, %17 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_clipping_exec(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca %struct.bglMats, align 8
  %5 = alloca %struct.rcti, align 4
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %5) #19
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 32
  %8 = load i16, ptr %7, align 2, !tbaa !71
  %9 = or i16 %8, 4
  store i16 %9, ptr %7, align 2, !tbaa !71
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %11 = call ptr %10(i64 noundef 104, ptr noundef nonnull @.str.164) #19
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 9
  store ptr %11, ptr %12, align 8, !tbaa !72
  call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #19
  %13 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !190
  %15 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !192
  call void @view3d_get_transformation(ptr noundef %14, ptr noundef %16, ptr noundef null, ptr noundef nonnull %4) #19
  %17 = load ptr, ptr %12, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 7
  call void @ED_view3d_clipping_calc(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %4) #19
  %13 = load i8, ptr %4, align 1, !tbaa !114
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef %1, ptr noundef nonnull %16) #17
  %17 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %9, ptr noundef %1, ptr noundef null) #19
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  %23 = call zeroext i8 @ED_view3d_autodist(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %2, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null) #17, !range !25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #17
  call void @ED_view3d_win_to_3d_int(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %26

26:                                               ; preds = %22, %25, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !29
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !29
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !29
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !29
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_autodist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = alloca %struct.bglMats, align 8
  %9 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  call void @bgl_get_mats(ptr noundef nonnull %8) #19
  call void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5) #19
  %10 = call fastcc float @view_autodist_depth_margin(ptr noundef %1, ptr noundef %3, i32 noundef 4) #17
  %11 = fcmp une float %10, 0x47EFFFFFE0000000
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i32, ptr %3, align 4, !tbaa !176
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds i32, ptr %3, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !176
  %17 = sitofp i32 %16 to double
  %18 = fpext float %10 to double
  %19 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 1
  %20 = getelementptr inbounds %struct.bglMats, ptr %8, i64 0, i32 2
  %21 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %22 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %23 = call i32 @gluUnProject(double noundef %14, double noundef %17, double noundef %18, ptr noundef nonnull %8, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %9, ptr noundef nonnull %21, ptr noundef nonnull %22) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load <2 x double>, ptr %9, align 16, !tbaa !171
  %27 = fptrunc <2 x double> %26 to <2 x float>
  store <2 x float> %27, ptr %4, align 4, !tbaa !29
  %28 = load double, ptr %22, align 16, !tbaa !171
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds float, ptr %4, i64 2
  store float %29, ptr %30, align 4, !tbaa !29
  br label %34

31:                                               ; preds = %12, %7
  %32 = icmp eq ptr %6, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  call void @ED_view3d_win_to_3d_int(ptr noundef %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #19
  br label %34

34:                                               ; preds = %31, %33, %25
  %35 = phi i8 [ 1, %25 ], [ 1, %33 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #18
  ret i8 %35
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #19
  tail call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef %5, ptr noundef %1) #17
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %4) #19
  br label %13

12:                                               ; preds = %7, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108865, ptr noundef %3) #19
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_cursor3d(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.145, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.146, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_cursor3d_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_cursor3d_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @ED_view3d_cursor3d_update(ptr noundef %0, ptr noundef nonnull %4) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_manipulator(ptr noundef %0) local_unnamed_addr #2 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @manipulator_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 64) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @manipulator_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 42
  %6 = load i8, ptr %5, align 1, !tbaa !194
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 21
  %11 = load i16, ptr %10, align 8, !tbaa !195
  %12 = icmp ult i16 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  %14 = tail call i32 @BIF_do_manipulator(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1) #19
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 8, i32 4
  br label %17

17:                                               ; preds = %9, %13, %3
  %18 = phi i32 [ 8, %3 ], [ 8, %9 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_enable_manipulator(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.151, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.152, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.153, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @enable_manipulator_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.154, i32 noundef 0, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156) #19
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.157, i32 noundef 0, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159) #19
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #19
  %11 = load ptr, ptr %6, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162) #19
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @enable_manipulator_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 40
  store i8 0, ptr %5, align 1, !tbaa !196
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.154) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i8, ptr %5, align 1, !tbaa !196
  %12 = or i8 %11, 1
  store i8 %12, ptr %5, align 1, !tbaa !196
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %6, align 8, !tbaa !122
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.157) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %5, align 1, !tbaa !196
  %19 = or i8 %18, 2
  store i8 %19, ptr %5, align 1, !tbaa !196
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %6, align 8, !tbaa !122
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.160) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %5, align 1, !tbaa !196
  %26 = or i8 %25, 4
  store i8 %26, ptr %5, align 1, !tbaa !196
  br label %27

27:                                               ; preds = %24, %20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef nonnull %4) #19
  ret i32 4
}

; Function Attrs: optsize
declare void @bgl_get_mats(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_draw_depth(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @view_autodist_depth_margin(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ViewDepths, align 8
  %5 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %6 = icmp eq i32 %2, 0
  %7 = load i32, ptr %1, align 4, !tbaa !176
  br i1 %6, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !176
  %11 = add nsw i32 %7, 1
  %12 = add nsw i32 %10, 1
  br label %20

13:                                               ; preds = %3
  %14 = add nsw i32 %7, %2
  %15 = getelementptr inbounds i32, ptr %1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !176
  %17 = add nsw i32 %16, %2
  %18 = sub nsw i32 %7, %2
  %19 = sub nsw i32 %16, %2
  br label %20

20:                                               ; preds = %13, %8
  %21 = phi i32 [ %7, %8 ], [ %18, %13 ]
  %22 = phi i32 [ %10, %8 ], [ %19, %13 ]
  %23 = phi i32 [ %11, %8 ], [ %14, %13 ]
  %24 = phi i32 [ %12, %8 ], [ %17, %13 ]
  store i32 %21, ptr %5, align 4
  %25 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  store i32 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  store i32 %23, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  store i32 %24, ptr %27, align 4
  call void @view3d_update_depths_rect(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %28 = call float @view3d_depth_near(ptr noundef nonnull %4) #19
  %29 = getelementptr inbounds %struct.ViewDepths, ptr %4, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !168
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  call void %33(ptr noundef nonnull %30) #19
  br label %34

34:                                               ; preds = %32, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret float %28
}

; Function Attrs: optsize
declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_autodist_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  switch i32 %3, label %7 [
    i32 0, label %5
    i32 1, label %6
  ]

5:                                                ; preds = %4
  tail call void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  br label %7

6:                                                ; preds = %4
  tail call void @ED_view3d_draw_depth_gpencil(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %7

7:                                                ; preds = %4, %6, %5
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_draw_depth_gpencil(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_autodist_simple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.bglMats, align 8
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %8 = icmp eq ptr %4, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load float, ptr %4, align 4, !tbaa !29
  br label %13

11:                                               ; preds = %5
  %12 = tail call fastcc float @view_autodist_depth_margin(ptr noundef %0, ptr noundef %1, i32 noundef %3) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi float [ %10, %9 ], [ %12, %11 ]
  %15 = fcmp oeq float %14, 0x47EFFFFFE0000000
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4, !tbaa !176
  %18 = sitofp i32 %17 to double
  %19 = getelementptr inbounds i32, ptr %1, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !176
  %21 = sitofp i32 %20 to double
  call void @bgl_get_mats(ptr noundef nonnull %6) #19
  %22 = fpext float %14 to double
  %23 = getelementptr inbounds %struct.bglMats, ptr %6, i64 0, i32 1
  %24 = getelementptr inbounds %struct.bglMats, ptr %6, i64 0, i32 2
  %25 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %26 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  %27 = call i32 @gluUnProject(double noundef %18, double noundef %21, double noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %7, ptr noundef nonnull %25, ptr noundef nonnull %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load <2 x double>, ptr %7, align 16, !tbaa !171
  %31 = fptrunc <2 x double> %30 to <2 x float>
  store <2 x float> %31, ptr %2, align 4, !tbaa !29
  %32 = load double, ptr %26, align 16, !tbaa !171
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds float, ptr %2, i64 2
  store float %33, ptr %34, align 4, !tbaa !29
  br label %35

35:                                               ; preds = %16, %13, %29
  %36 = phi i8 [ 1, %29 ], [ 0, %13 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %6) #18
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_autodist_depth(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = tail call fastcc float @view_autodist_depth_margin(ptr noundef %0, ptr noundef %1, i32 noundef %2) #17
  store float %5, ptr %3, align 4, !tbaa !29
  %6 = fcmp une float %5, 0x47EFFFFFE0000000
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_autodist_depth_seg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = alloca %struct.anon, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %0, ptr %6, align 8, !tbaa !197
  %9 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store i32 %3, ptr %9, align 8, !tbaa !199
  %10 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %10, align 4, !tbaa !200
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %7, ptr noundef %1) #17
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %8, ptr noundef %2) #17
  call void @plot_line_v2v2i(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull @depth_segment_cb, ptr noundef nonnull %6) #19
  %11 = load float, ptr %10, align 4, !tbaa !200
  store float %11, ptr %4, align 4, !tbaa !29
  %12 = fcmp une float %11, 0x47EFFFFFE0000000
  %13 = zext i1 %12 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr %1, align 4, !tbaa !176
  store i32 %3, ptr %0, align 4, !tbaa !176
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !176
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !176
  ret void
}

; Function Attrs: optsize
declare void @plot_line_v2v2i(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @depth_segment_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i32 %0, ptr %4, align 4, !tbaa !176
  %5 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %1, ptr %5, align 4, !tbaa !176
  %6 = load ptr, ptr %2, align 8, !tbaa !197
  %7 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !199
  %9 = call fastcc float @view_autodist_depth_margin(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %8) #17
  %10 = fcmp une float %9, 0x47EFFFFFE0000000
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 2
  store float %9, ptr %12, align 4, !tbaa !200
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi i8 [ 0, %11 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i8 %14
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  %4 = load float, ptr %0, align 4, !tbaa !29
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !29
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !29
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !29
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !29
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !29
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !29
  %4 = load float, ptr %1, align 4, !tbaa !29
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !29
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !29
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_distance_set(ptr noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 18
  %6 = load float, ptr %5, align 8, !tbaa !26
  %7 = fsub float %6, %1
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %4, float noundef %7) #17
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %3, ptr noundef nonnull %8) #19
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %4) #17
  store float %1, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !29
  %3 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %3, align 4, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_from_m4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #18
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef %0) #19
  call void @normalize_m3(ptr noundef nonnull %5) #19
  %8 = icmp ne ptr %1, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 3
  call fastcc void @negate_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %11

11:                                               ; preds = %9, %4
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  %14 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  call void @mat3_to_quat(ptr noundef nonnull %2, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  br label %15

15:                                               ; preds = %13, %11
  %16 = icmp ne ptr %3, null
  %17 = and i1 %8, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !29
  %19 = getelementptr inbounds float, ptr %7, i64 2
  %20 = load float, ptr %3, align 4, !tbaa !29
  %21 = fneg float %20
  store float %21, ptr %19, align 8, !tbaa !29
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %1, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %22

22:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !29
  %5 = load float, ptr %2, align 4, !tbaa !29
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !29
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !29
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !29
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !29
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_lastview_store(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 33
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %5 = load i8, ptr %4, align 2, !tbaa !65
  %6 = zext i8 %5 to i16
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 35
  store i16 %6, ptr %7, align 2, !tbaa !180
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 25
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = zext i8 %9 to i16
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 34
  store i16 %12, ptr %13, align 4, !tbaa !175
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_view3D_background_image_new(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %3 = tail call ptr %2(i64 noundef 104, ptr noundef nonnull @.str.163) #19
  %4 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 8
  store <2 x float> <float 5.000000e+00, float 5.000000e-01>, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 3, i32 5
  store i8 2, ptr %5, align 8, !tbaa !201
  %6 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 3, i32 7
  store i8 1, ptr %6, align 2, !tbaa !202
  %7 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 10
  store i16 0, ptr %7, align 8, !tbaa !203
  %8 = getelementptr inbounds %struct.BGpic, ptr %3, i64 0, i32 11
  %9 = load i16, ptr %8, align 2, !tbaa !204
  %10 = or i16 %9, 6
  store i16 %10, ptr %8, align 2, !tbaa !204
  %11 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %3) #19
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3D_background_image_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #19
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %4(ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3D_background_image_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  tail call void @ED_view3D_background_image_remove(ptr noundef %0, ptr noundef nonnull %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !207

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_view3D_lock_clear(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 16
  store ptr null, ptr %2, align 8, !tbaa !17
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 21
  store i8 0, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 25
  store i16 0, ptr %4, align 2, !tbaa !12
  %5 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %6 = load i16, ptr %5, align 2, !tbaa !24
  %7 = and i16 %6, -33
  store i16 %7, ptr %5, align 2, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !29
  store float %3, ptr %0, align 4, !tbaa !29
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_boxview_sync_axis(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  store float 1.000000e+00, ptr %4, align 16
  %5 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %6, align 16
  %7 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %7, align 8
  %8 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3
  %9 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %9, align 8
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 26
  %11 = load i8, ptr %10, align 2, !tbaa !65
  %12 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %11, ptr noundef nonnull %3) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  call void @invert_qt(ptr noundef nonnull %3) #19
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #19
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %16 = load i8, ptr %15, align 2, !tbaa !65
  %17 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %16, ptr noundef nonnull %3) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %14
  call void @invert_qt(ptr noundef nonnull %3) #19
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #19
  call void @mul_qt_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #19
  br label %20

20:                                               ; preds = %19, %45
  %21 = phi i64 [ 0, %19 ], [ %46, %45 ]
  %22 = getelementptr inbounds float, ptr %4, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !29
  %24 = call float @llvm.fabs.f32(float %23)
  %25 = fcmp ogt float %24, 5.000000e-01
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds float, ptr %5, i64 %21
  %28 = load float, ptr %27, align 4, !tbaa !29
  %29 = call float @llvm.fabs.f32(float %28)
  %30 = fcmp ogt float %29, 5.000000e-01
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds float, ptr %7, i64 %21
  %33 = load float, ptr %32, align 4, !tbaa !29
  %34 = call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 5.000000e-01
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds float, ptr %8, i64 %21
  %38 = load float, ptr %37, align 4, !tbaa !29
  %39 = call float @llvm.fabs.f32(float %38)
  %40 = fcmp ogt float %39, 5.000000e-01
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22, i64 %21
  %43 = load float, ptr %42, align 4, !tbaa !29
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22, i64 %21
  store float %43, ptr %44, align 4, !tbaa !29
  br label %45

45:                                               ; preds = %26, %36, %41
  %46 = add nuw nsw i64 %21, 1
  %47 = icmp eq i64 %46, 3
  br i1 %47, label %48, label %20, !llvm.loop !208

48:                                               ; preds = %45, %14, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @invert_qt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewops_data_alloc(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !38
  %4 = tail call ptr %3(i64 noundef 184, ptr noundef nonnull @.str.165) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !93
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  store ptr %6, ptr %4, align 8, !tbaa !118
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !99
  %9 = load ptr, ptr %4, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %4, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewops_data_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #2 {
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %5 = lshr i32 %4, 14
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %8 = lshr i32 %4, 15
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  tail call fastcc void @viewops_data_create_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %7, i8 noundef zeroext %10) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewops_data_free(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 32
  %13 = load i16, ptr %12, align 2, !tbaa !71
  %14 = and i16 %13, -9
  store i16 %14, ptr %12, align 2, !tbaa !71
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %5, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %7
  %19 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %20 = load ptr, ptr %15, align 8, !tbaa !128
  %21 = getelementptr inbounds %struct.wmTimer, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !209
  tail call void @WM_event_remove_timer(ptr noundef %19, ptr noundef %22, ptr noundef %20) #19
  br label %23

23:                                               ; preds = %18, %7
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %24(ptr noundef nonnull %5) #19
  store ptr null, ptr %4, align 8, !tbaa !93
  br label %27

25:                                               ; preds = %2
  %26 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %9, %23 ], [ %26, %25 ]
  %29 = icmp eq ptr %3, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !211
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @ED_region_tag_redraw(ptr noundef %28) #19
  br label %36

36:                                               ; preds = %35, %30, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_ensure_persp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %6 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %0, ptr noundef %4) #17, !range !25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !5
  switch i8 %10, label %25 [
    i8 1, label %34
    i8 2, label %11
  ]

11:                                               ; preds = %8
  %12 = and i32 %5, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 35
  %16 = load i16, ptr %15, align 2, !tbaa !180
  %17 = add i16 %16, -1
  %18 = icmp ult i16 %17, 6
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %11
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 34
  %21 = load i16, ptr %20, align 4, !tbaa !175
  %22 = trunc i16 %21 to i8
  br label %23

23:                                               ; preds = %14, %19
  %24 = phi i8 [ %22, %19 ], [ 1, %14 ]
  tail call fastcc void @view3d_persp_switch_from_camera(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %24) #17
  br label %34

25:                                               ; preds = %8
  %26 = and i32 %5, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 26
  %30 = load i8, ptr %29, align 2, !tbaa !65
  %31 = add i8 %30, -1
  %32 = icmp ult i8 %31, 6
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i8 1, ptr %9, align 1, !tbaa !5
  br label %34

34:                                               ; preds = %8, %23, %33, %28, %25, %2
  %35 = phi i8 [ 0, %2 ], [ 1, %25 ], [ 1, %28 ], [ 1, %33 ], [ 1, %23 ], [ 0, %8 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewrotate_apply(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 26
  store i8 0, ptr %15, align 2, !tbaa !65
  %16 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !213
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %20 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 3
  call fastcc void @calctrackballvec(ptr noundef nonnull %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #17
  %23 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %23) #17
  %24 = call fastcc float @len_v3(ptr noundef nonnull %5) #17
  %25 = fdiv float %24, 0x40019999A0000000
  %26 = getelementptr inbounds float, ptr %4, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %26, ptr noundef nonnull %23, ptr noundef nonnull %6) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %26) #17
  %27 = fcmp ogt float %25, 1.000000e+00
  br i1 %27, label %28, label %32

28:                                               ; preds = %19, %28
  %29 = phi float [ %30, %28 ], [ %25, %19 ]
  %30 = fadd float %29, -2.000000e+00
  %31 = fcmp ogt float %30, 1.000000e+00
  br i1 %31, label %28, label %32, !llvm.loop !214

32:                                               ; preds = %28, %19
  %33 = phi float [ %25, %19 ], [ %30, %28 ]
  %34 = fmul float %33, 0x3FF921FB60000000
  %35 = tail call float @cosf(float noundef %34) #19
  store float %35, ptr %4, align 16, !tbaa !29
  %36 = tail call float @sinf(float noundef %34) #19
  call fastcc void @mul_v3_fl(ptr noundef nonnull %26, float noundef %36) #17
  %37 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef nonnull %37, ptr noundef nonnull %4, ptr noundef nonnull %38) #19
  call fastcc void @viewrotate_apply_dyn_ofs(ptr noundef %0, ptr noundef nonnull %37) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %71

39:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  %40 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  call void @quat_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %40) #19
  %41 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #19
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %43 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %42) #17
  %44 = fcmp ogt float %43, 0x3F50624DE0000000
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %42) #17
  %46 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call fastcc void @negate_v3(ptr noundef nonnull %12) #17
  br label %49

49:                                               ; preds = %48, %45
  %50 = call float @angle_normalized_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %42) #19
  %51 = fdiv float %50, 0x400921FB60000000
  %52 = fadd float %51, -5.000000e-01
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = fmul float %53, 2.000000e+00
  %55 = fmul float %54, %54
  call void @interp_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %10, float noundef %55) #19
  br label %57

56:                                               ; preds = %39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  br label %57

57:                                               ; preds = %56, %49
  %58 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %59 = load i32, ptr %58, align 4, !tbaa !126
  %60 = sub nsw i32 %59, %2
  %61 = sitofp i32 %60 to float
  %62 = fmul float %61, 0x3F7CAC0840000000
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %12, float noundef %62) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %40, ptr noundef nonnull %7) #19
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 10
  %64 = load float, ptr %63, align 8, !tbaa !215
  %65 = fmul float %64, 0x3F7CAC0840000000
  %66 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %67 = load i32, ptr %66, align 8, !tbaa !123
  %68 = sub nsw i32 %1, %67
  %69 = sitofp i32 %68 to float
  %70 = fmul float %65, %69
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %11, float noundef %70) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %40, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  call fastcc void @viewrotate_apply_dyn_ofs(ptr noundef nonnull %0, ptr noundef nonnull %40) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %71

71:                                               ; preds = %57, %32
  %72 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  %73 = call float @normalize_qt(ptr noundef nonnull %72) #19
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %74, ptr noundef nonnull %72) #19
  %75 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 15
  %76 = load i8, ptr %75, align 4, !tbaa !109
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  call fastcc void @viewrotate_apply_snap(ptr noundef nonnull %0) #17
  br label %79

79:                                               ; preds = %78, %71
  %80 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  store i32 %1, ptr %80, align 8, !tbaa !123
  %81 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  store i32 %2, ptr %81, align 4, !tbaa !126
  %82 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  %84 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %83, ptr noundef %14) #17, !range !25
  %85 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !99
  call void @ED_region_tag_redraw(ptr noundef %86) #19
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_depth_tag_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewops_data_create_ex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 8
  %12 = alloca [2 x float], align 8
  %13 = alloca [2 x float], align 8
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  tail call void @ED_view3d_camera_lock_init(ptr noundef %20, ptr noundef %18) #17
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 18
  %22 = load float, ptr %21, align 8, !tbaa !26
  %23 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 11
  store float %22, ptr %23, align 4, !tbaa !216
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 23
  %25 = load float, ptr %24, align 4, !tbaa !131
  %26 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 12
  store float %25, ptr %26, align 8, !tbaa !217
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 7
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %27, ptr noundef nonnull %28) #19
  %29 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 6
  tail call void @copy_qt_qt(ptr noundef nonnull %29, ptr noundef nonnull %28) #19
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %31 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 20
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %33 = load <2 x i32>, ptr %30, align 4, !tbaa !176
  %34 = shufflevector <2 x i32> %33, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %34, ptr %31, align 8, !tbaa !176
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !100
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 24
  store i32 %37, ptr %38, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 19
  store i8 0, ptr %39, align 4, !tbaa !218
  %40 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 17
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #17
  %42 = icmp eq i8 %3, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %5
  store i8 1, ptr %39, align 4, !tbaa !218
  %44 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18
  tail call fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr noundef nonnull %44) #17
  tail call fastcc void @negate_v3(ptr noundef nonnull %44) #17
  br label %74

45:                                               ; preds = %5
  %46 = icmp eq i8 %4, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %45
  %48 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #19
  call fastcc void @negate_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %41) #17
  %49 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = load ptr, ptr %19, align 8, !tbaa !98
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %53 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 18
  %54 = call zeroext i8 @ED_view3d_autodist(ptr noundef %48, ptr noundef %50, ptr noundef %51, ptr noundef nonnull %52, ptr noundef nonnull %53, i8 noundef zeroext 1, ptr noundef nonnull %6) #17, !range !25
  store i8 %54, ptr %39, align 4, !tbaa !218
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 24
  %58 = load i8, ptr %57, align 8, !tbaa !117
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call fastcc void @negate_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %41) #17
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !29
  %61 = load float, ptr %21, align 8, !tbaa !26
  %62 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %61, ptr %62, align 8, !tbaa !29
  %63 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %63) #19
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %41, ptr noundef nonnull %11) #17
  call fastcc void @negate_v3(ptr noundef nonnull %8) #17
  %64 = call float @closest_to_line_v3(ptr noundef nonnull %9, ptr noundef nonnull %53, ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %65 = call fastcc float @len_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  store float %65, ptr %21, align 8, !tbaa !26
  store float %65, ptr %23, align 4, !tbaa !216
  call fastcc void @negate_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  br label %72

66:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  %67 = load ptr, ptr %49, align 8, !tbaa !99
  %68 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 5
  %69 = load <2 x i16>, ptr %68, align 8, !tbaa !173
  %70 = sitofp <2 x i16> %69 to <2 x float>
  %71 = fmul <2 x float> %70, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %71, ptr %12, align 8, !tbaa !29
  call void @ED_view3d_win_to_3d(ptr noundef %67, ptr noundef nonnull %53, ptr noundef nonnull %12, ptr noundef nonnull %41) #19
  call fastcc void @negate_v3(ptr noundef nonnull %41) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  br label %72

72:                                               ; preds = %66, %60
  call fastcc void @negate_v3(ptr noundef nonnull %53) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #17
  br label %73

73:                                               ; preds = %72, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %74

74:                                               ; preds = %45, %73, %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %76 = load <2 x i32>, ptr %75, align 4, !tbaa !176
  %77 = sitofp <2 x i32> %76 to <2 x float>
  store <2 x float> %77, ptr %13, align 8, !tbaa !29
  %78 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !99
  %80 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 9
  call void @ED_view3d_win_to_vector(ptr noundef %79, ptr noundef nonnull %13, ptr noundef nonnull %80) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  %81 = load ptr, ptr %19, align 8, !tbaa !98
  %82 = getelementptr inbounds %struct.View3D, ptr %81, i64 0, i32 31
  %83 = load float, ptr %82, align 8, !tbaa !219
  %84 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 13
  store float %83, ptr %84, align 4, !tbaa !220
  %85 = getelementptr inbounds %struct.View3D, ptr %81, i64 0, i32 33
  %86 = load float, ptr %85, align 8, !tbaa !221
  %87 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 14
  store float %86, ptr %87, align 8, !tbaa !222
  %88 = load ptr, ptr %78, align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.ARegion, ptr %88, i64 0, i32 3
  %90 = load i32, ptr %30, align 4, !tbaa !103
  %91 = load i32, ptr %32, align 8, !tbaa !105
  %92 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 8
  call fastcc void @calctrackballvec(ptr noundef nonnull %89, i32 noundef %90, i32 noundef %91, ptr noundef nonnull %92) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call fastcc void @negate_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %41) #17
  %93 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %18, ptr noundef nonnull %14, ptr noundef null) #19
  %94 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 16
  store float %93, ptr %94, align 8, !tbaa !223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  %95 = getelementptr inbounds %struct.ViewOpsData, ptr %16, i64 0, i32 10
  store float 1.000000e+00, ptr %95, align 8, !tbaa !215
  %96 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 3, i64 2, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !29
  %98 = fcmp olt float %97, 0.000000e+00
  br i1 %98, label %99, label %100

99:                                               ; preds = %74
  store float -1.000000e+00, ptr %95, align 8, !tbaa !215
  br label %100

100:                                              ; preds = %99, %74
  %101 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 32
  %102 = load i16, ptr %101, align 2, !tbaa !71
  %103 = or i16 %102, 8
  store i16 %103, ptr %101, align 2, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_orbit_calc_center(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !139
  %17 = and i32 %16, 30
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %12) #19
  %21 = icmp eq ptr %20, null
  %22 = load i32, ptr %15, align 8, !tbaa !139
  br i1 %21, label %23, label %29

23:                                               ; preds = %19
  %24 = and i32 %22, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @ED_sculpt_stroke_get_average(ptr noundef nonnull %12, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull @view3d_orbit_calc_center.lastofs, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  br label %105

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull @view3d_orbit_calc_center.lastofs, ptr noundef nonnull %28) #17
  br label %105

29:                                               ; preds = %14, %19
  %30 = phi i32 [ %16, %14 ], [ %22, %19 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !141
  %36 = icmp eq i16 %35, 4
  br i1 %36, label %37, label %103

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !144
  %40 = getelementptr inbounds %struct.Curve, ptr %39, i64 0, i32 53
  %41 = load ptr, ptr %40, align 8, !tbaa !224
  tail call fastcc void @zero_v3(ptr noundef nonnull @view3d_orbit_calc_center.lastofs) #17
  br label %42

42:                                               ; preds = %37, %42
  %43 = phi i64 [ 0, %37 ], [ %45, %42 ]
  %44 = getelementptr inbounds %struct.EditFont, ptr %41, i64 0, i32 5, i64 %43
  tail call fastcc void @add_v2_v2(ptr noundef nonnull %44) #17
  %45 = add nuw nsw i64 %43, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %42, !llvm.loop !227

47:                                               ; preds = %42
  tail call fastcc void @mul_v2_fl() #17
  %48 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %48, ptr noundef nonnull @view3d_orbit_calc_center.lastofs) #19
  br label %105

49:                                               ; preds = %29
  %50 = icmp eq i32 %30, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %2, %10, %49
  %52 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call fastcc void @zero_v3(ptr noundef nonnull %4) #17
  %53 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %102, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.View3D, ptr %52, i64 0, i32 22
  br label %58

58:                                               ; preds = %56, %93
  %59 = phi ptr [ %54, %56 ], [ %95, %93 ]
  %60 = phi i32 [ 0, %56 ], [ %94, %93 ]
  %61 = getelementptr inbounds %struct.Base, ptr %59, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !140
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %93, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Base, ptr %59, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !132
  %68 = load i32, ptr %57, align 8, !tbaa !134
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Base, ptr %59, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !135
  %74 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 102
  %75 = load i8, ptr %74, align 8, !tbaa !136
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 15
  %80 = load ptr, ptr %79, align 8, !tbaa !228
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.BoundBox, ptr %80, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !229
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @BKE_boundbox_calc_center_aabb(ptr noundef nonnull %80, ptr noundef nonnull %5) #19
  %88 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %88, ptr noundef nonnull %5) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %91

89:                                               ; preds = %82, %78
  %90 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 47, i64 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %90) #17
  br label %91

91:                                               ; preds = %89, %87
  %92 = add i32 %60, 1
  br label %93

93:                                               ; preds = %58, %65, %71, %91
  %94 = phi i32 [ %92, %91 ], [ %60, %71 ], [ %60, %65 ], [ %60, %58 ]
  %95 = load ptr, ptr %59, align 8, !tbaa !38
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %58, !llvm.loop !231

97:                                               ; preds = %93
  %98 = icmp eq i32 %94, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %97
  %100 = uitofp i32 %94 to float
  %101 = fdiv float 1.000000e+00, %100
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %101) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull @view3d_orbit_calc_center.lastofs, ptr noundef nonnull %4) #17
  br label %102

102:                                              ; preds = %51, %99, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %105

103:                                              ; preds = %33, %49
  %104 = tail call zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @view3d_orbit_calc_center.lastofs, ptr noundef null) #19
  br label %105

105:                                              ; preds = %26, %27, %47, %103, %102
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull @view3d_orbit_calc_center.lastofs) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !29
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !29
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @calctrackballvec(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef %0) #17, !range !232
  %6 = sub nsw i32 %5, %1
  %7 = sitofp i32 %6 to float
  %8 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %0) #17
  %9 = sdiv i32 %8, 4
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %7, %10
  %12 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef %0) #17, !range !232
  %13 = sub nsw i32 %12, %2
  %14 = sitofp i32 %13 to float
  %15 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %0) #17
  %16 = sdiv i32 %15, 2
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %14, %17
  %19 = fmul float %18, %18
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %19)
  %21 = tail call float @llvm.sqrt.f32(float %20)
  %22 = fcmp olt float %21, 0x3FE8E3E180000000
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = fmul float %21, %21
  %25 = fsub float 0x3FF35C2900000000, %24
  %26 = tail call float @sqrtf(float noundef %25) #19
  br label %29

27:                                               ; preds = %4
  %28 = fdiv float 0x3FE35C2900000000, %21
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi float [ %26, %23 ], [ %28, %27 ]
  store float %11, ptr %3, align 4, !tbaa !29
  %31 = getelementptr inbounds float, ptr %3, i64 1
  store float %18, ptr %31, align 4, !tbaa !29
  %32 = fneg float %30
  %33 = getelementptr inbounds float, ptr %3, i64 2
  store float %32, ptr %33, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_sculpt_stroke_get_average(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !29
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !29
  %3 = load <2 x float>, ptr @view3d_orbit_calc_center.lastofs, align 8, !tbaa !29
  %4 = fadd <2 x float> %2, %3
  store <2 x float> %4, ptr @view3d_orbit_calc_center.lastofs, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @mul_v2_fl() unnamed_addr #13 {
  %1 = load <2 x float>, ptr @view3d_orbit_calc_center.lastofs, align 8, !tbaa !29
  %2 = fmul <2 x float> %1, <float 2.500000e-01, float 2.500000e-01>
  store <2 x float> %2, ptr @view3d_orbit_calc_center.lastofs, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_boundbox_calc_center_aabb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @calculateTransformCenter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !160
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !162
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !162
  %4 = load i32, ptr %0, align 4, !tbaa !160
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !161
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !163
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !163
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !161
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_persp_switch_from_camera(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 22
  %10 = tail call float @ED_view3d_offset_distance(ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef 1.000000e+00) #17
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 18
  store float %10, ptr %11, align 8, !tbaa !26
  %12 = load ptr, ptr %4, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 17
  tail call void @ED_view3d_from_object(ptr noundef %12, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef null) #17
  br label %14

14:                                               ; preds = %7, %3
  %15 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef nonnull %0, ptr noundef %1) #17, !range !25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  store i8 %2, ptr %18, align 1, !tbaa !5
  br label %19

19:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !29
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !29
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !29
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !29
  %15 = load float, ptr %8, align 4, !tbaa !29
  %16 = load float, ptr %2, align 4, !tbaa !29
  %17 = load float, ptr %1, align 4, !tbaa !29
  %18 = load float, ptr %6, align 4, !tbaa !29
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !29
  %23 = load float, ptr %1, align 4, !tbaa !29
  %24 = load float, ptr %10, align 4, !tbaa !29
  %25 = load float, ptr %4, align 4, !tbaa !29
  %26 = load float, ptr %2, align 4, !tbaa !29
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewrotate_apply_dyn_ofs(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 19
  %4 = load i8, ptr %3, align 4, !tbaa !218
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22
  %10 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  %11 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 18
  %12 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  tail call fastcc void @view3d_orbit_apply_dyn_ofs(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %1) #17
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret float %4
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @axis_angle_normalized_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewrotate_apply_snap(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x float], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x float], align 16
  %15 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.vieworbit_exec.zvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %17 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 7
  call void @invert_qt_qt(ptr noundef nonnull %2, ptr noundef nonnull %17) #19
  call void @mul_qt_v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #17
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = getelementptr inbounds float, ptr %5, i64 2
  br label %20

20:                                               ; preds = %1, %48
  %21 = phi i32 [ -1, %1 ], [ %49, %48 ]
  %22 = phi i8 [ 0, %1 ], [ %42, %48 ]
  %23 = sitofp i32 %21 to float
  br label %24

24:                                               ; preds = %20, %45
  %25 = phi i8 [ %22, %20 ], [ %42, %45 ]
  %26 = phi i32 [ -1, %20 ], [ %46, %45 ]
  %27 = or i32 %26, %21
  %28 = sitofp i32 %26 to float
  br label %29

29:                                               ; preds = %24, %41
  %30 = phi i8 [ %25, %24 ], [ %42, %41 ]
  %31 = phi i32 [ -1, %24 ], [ %43, %41 ]
  %32 = or i32 %27, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  store float %23, ptr %5, align 4, !tbaa !29
  store float %28, ptr %18, align 4, !tbaa !29
  %35 = sitofp i32 %31 to float
  store float %35, ptr %19, align 4, !tbaa !29
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #17
  %36 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %37 = fcmp olt float %36, 0x3FD0C15240000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8 [ 1, %38 ], [ %30, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i8 [ %40, %39 ], [ %30, %29 ]
  %43 = add nsw i32 %31, 1
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %29, !llvm.loop !233

45:                                               ; preds = %41
  %46 = add nsw i32 %26, 1
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %24, !llvm.loop !234

48:                                               ; preds = %45
  %49 = add nsw i32 %21, 1
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %20, !llvm.loop !235

51:                                               ; preds = %48
  %52 = icmp eq i8 %42, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %54 = call float @normalize_qt(ptr noundef nonnull %10) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef nonnull %10) #19
  %55 = call float @normalize_qt(ptr noundef nonnull %10) #19
  call void @invert_qt_qt(ptr noundef nonnull %11, ptr noundef nonnull %10) #19
  call void @vec_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %4, i16 noundef signext 5, i16 noundef signext 1) #19
  call void @invert_qt(ptr noundef nonnull %9) #19
  %56 = call float @normalize_qt(ptr noundef nonnull %9) #19
  br label %57

57:                                               ; preds = %72, %53
  %58 = phi i32 [ %73, %72 ], [ 0, %53 ]
  %59 = phi float [ %67, %72 ], [ 0x3FD0C15240000000, %53 ]
  %60 = phi i1 [ false, %72 ], [ true, %53 ]
  br label %61

61:                                               ; preds = %57, %69
  %62 = phi i32 [ %70, %69 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  %63 = sitofp i32 %62 to float
  %64 = fmul float %63, 0x3FE921FB60000000
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %4, float noundef %64) #19
  %65 = call float @normalize_qt(ptr noundef nonnull %6) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %6) #19
  %66 = call float @normalize_qt(ptr noundef nonnull %7) #19
  call void @invert_qt_qt(ptr noundef nonnull %14, ptr noundef nonnull %7) #19
  call void @mul_qt_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  call void @mul_qt_v3(ptr noundef nonnull %14, ptr noundef nonnull %13) #19
  %67 = call float @angle_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #19
  %68 = fcmp ugt float %67, %59
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  %70 = add nuw nsw i32 %62, 1
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %75, label %61, !llvm.loop !236

72:                                               ; preds = %61
  call void @copy_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  %73 = add nuw nsw i32 %62, 1
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %76, label %57, !llvm.loop !236

75:                                               ; preds = %69
  br i1 %60, label %82, label %76

76:                                               ; preds = %72, %75
  %77 = call zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef nonnull %8, float noundef 0x3F847AE140000000) #19
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 26
  store i8 %77, ptr %78, align 2, !tbaa !65
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %77, ptr noundef nonnull %8) #19
  br label %83

82:                                               ; preds = %75
  call void @copy_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %10) #19
  br label %83

83:                                               ; preds = %76, %80, %82
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %84, ptr noundef nonnull %8) #19
  call fastcc void @viewrotate_apply_dyn_ofs(ptr noundef %0, ptr noundef nonnull %84) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %85

85:                                               ; preds = %83, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_orbit_apply_dyn_ofs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @conjugate_qt_qt(ptr noundef nonnull %5, ptr noundef %2) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %3) #19
  call void @conjugate_qt(ptr noundef nonnull %5) #19
  call fastcc void @sub_v3_v3(ptr noundef %0, ptr noundef %1) #17
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef %0) #19
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @conjugate_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @conjugate_qt(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @view3d_ndof_pan_speed_calc_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 21
  %4 = load float, ptr %3, align 4, !tbaa !237
  %5 = fmul float %4, 6.000000e+02
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %7 = load i8, ptr %6, align 8, !tbaa !117
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call float @ED_view3d_calc_zfac(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #19
  %11 = fmul float %5, %10
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi float [ %11, %9 ], [ %5, %2 ]
  ret float %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ndof_pan_zoom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %10 = or i8 %4, %3
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %5
  call void @WM_event_ndof_pan_get(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0) #19
  %13 = icmp eq i8 %4, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %15, align 4, !tbaa !29
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !29
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 18
  %21 = load float, ptr %20, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !111
  %24 = fmul float %21, %23
  %25 = fmul float %17, %24
  %26 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  %29 = fneg float %25
  %30 = select i1 %28, float %25, float %29
  %31 = fadd float %21, %30
  store float %31, ptr %20, align 8, !tbaa !26
  br label %32

32:                                               ; preds = %12, %14, %19
  %33 = icmp eq i8 %3, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = call fastcc float @view3d_ndof_pan_speed_calc(ptr noundef %9) #17
  %36 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !111
  %38 = fmul float %35, %37
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %38) #17
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %39) #19
  call void @mul_qt_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %7) #17
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %42 = load i8, ptr %41, align 1, !tbaa !63
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  call fastcc void @view3d_boxview_sync(ptr noundef %1, ptr noundef nonnull %2) #17
  br label %46

46:                                               ; preds = %32, %45, %34, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_ndof_orbit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %15 = tail call fastcc zeroext i8 @view3d_ensure_persp(ptr noundef %12, ptr noundef %2) #17, !range !25
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 26
  store i8 0, ptr %16, align 2, !tbaa !65
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 17
  call void @invert_qt_qt(ptr noundef nonnull %5, ptr noundef nonnull %17) #19
  %18 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !113
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_ndof_orbit.xvec, i64 12, i1 false)
  call void @WM_event_ndof_rotate_get(ptr noundef %0, ptr noundef nonnull %6) #19
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef nonnull %8) #19
  %22 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !111
  %24 = load float, ptr %6, align 4, !tbaa !29
  %25 = fmul float %23, %24
  %26 = call float @cosf(float noundef %25) #19
  store float %26, ptr %7, align 16, !tbaa !29
  %27 = getelementptr inbounds float, ptr %7, i64 1
  %28 = call float @sinf(float noundef %25) #19
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %27, ptr noundef nonnull %8, float noundef %28) #17
  call void @mul_qt_qtqt(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %7) #19
  %29 = load float, ptr %22, align 4, !tbaa !111
  %30 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !29
  %32 = fmul float %29, %31
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 38
  store float %32, ptr %33, align 8, !tbaa !110
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 39
  store <2 x float> zeroinitializer, ptr %34, align 4, !tbaa !29
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 39, i64 2
  store float 1.000000e+00, ptr %35, align 4, !tbaa !29
  %36 = call float @cosf(float noundef %32) #19
  store float %36, ptr %7, align 16, !tbaa !29
  store <2 x float> zeroinitializer, ptr %27, align 4, !tbaa !29
  %37 = call float @sinf(float noundef %32) #19
  %38 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float %37, ptr %38, align 4, !tbaa !29
  call void @mul_qt_qtqt(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  br label %43

39:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %40 = call float @WM_event_ndof_to_axis_angle(ptr noundef %0, ptr noundef nonnull %10) #19
  call void @mul_qt_v3(ptr noundef nonnull %5, ptr noundef nonnull %10) #19
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 38
  store float %40, ptr %41, align 8, !tbaa !110
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %14, i64 0, i32 39
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %10) #17
  call void @axis_angle_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %40) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %43

43:                                               ; preds = %39, %21
  %44 = icmp eq ptr %3, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  call fastcc void @viewrotate_apply_dyn_ofs(ptr noundef nonnull %3, ptr noundef nonnull %17) #17
  br label %46

46:                                               ; preds = %45, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @view3d_ndof_pan_speed_calc(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %4 = call fastcc float @view3d_ndof_pan_speed_calc_ex(ptr noundef %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret float %4
}

; Function Attrs: optsize
declare void @WM_event_ndof_rotate_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !29
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !29
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !29
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !29
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !29
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewmove_apply(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 8
  %6 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %7, ptr noundef %9) #17, !range !25
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 5
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 30
  %18 = load <2 x i32>, ptr %13, align 8, !tbaa !176
  %19 = insertelement <2 x i32> poison, i32 %1, i64 0
  %20 = insertelement <2 x i32> %19, i32 %2, i64 1
  %21 = sub nsw <2 x i32> %18, %20
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = fmul <2 x float> %22, <float 2.000000e+00, float 2.000000e+00>
  %24 = load <2 x i16>, ptr %16, align 8, !tbaa !173
  %25 = sitofp <2 x i16> %24 to <2 x float>
  %26 = fdiv <2 x float> %23, %25
  %27 = load <2 x float>, ptr %17, align 8, !tbaa !29
  %28 = fsub <2 x float> %27, %26
  store <2 x float> %28, ptr %17, align 8, !tbaa !29
  br label %98

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %7, ptr noundef nonnull %9) #17, !range !25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 23
  %38 = load float, ptr %37, align 4, !tbaa !131
  %39 = tail call float @BKE_screen_view3d_zoom_to_fac(float noundef %38) #19
  %40 = fmul float %39, 2.000000e+00
  %41 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %42 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  %44 = getelementptr inbounds %struct.ARegion, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %8, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %45, i64 0, i32 19
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %45, i64 0, i32 20
  %48 = load <2 x i32>, ptr %41, align 8, !tbaa !176
  %49 = insertelement <2 x i32> poison, i32 %1, i64 0
  %50 = insertelement <2 x i32> %49, i32 %2, i64 1
  %51 = sub nsw <2 x i32> %48, %50
  %52 = sitofp <2 x i32> %51 to <2 x float>
  %53 = load <2 x i16>, ptr %44, align 8, !tbaa !173
  %54 = sitofp <2 x i16> %53 to <2 x float>
  %55 = insertelement <2 x float> poison, float %40, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %56, %54
  %58 = fdiv <2 x float> %52, %57
  %59 = load <2 x float>, ptr %46, align 4, !tbaa !29
  %60 = fadd <2 x float> %59, %58
  store <2 x float> %60, ptr %46, align 4, !tbaa !29
  %61 = extractelement <2 x float> %60, i64 0
  %62 = fcmp olt float %61, -1.000000e+00
  br i1 %62, label %65, label %63

63:                                               ; preds = %36
  %64 = fcmp ogt float %61, 1.000000e+00
  br i1 %64, label %65, label %67

65:                                               ; preds = %63, %36
  %66 = phi float [ -1.000000e+00, %36 ], [ 1.000000e+00, %63 ]
  store float %66, ptr %46, align 4, !tbaa !238
  br label %67

67:                                               ; preds = %65, %63
  %68 = extractelement <2 x float> %60, i64 1
  %69 = fcmp olt float %68, -1.000000e+00
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store float -1.000000e+00, ptr %47, align 8, !tbaa !239
  br label %98

71:                                               ; preds = %67
  %72 = fcmp ogt float %68, 1.000000e+00
  br i1 %72, label %73, label %98

73:                                               ; preds = %71
  store float 1.000000e+00, ptr %47, align 8, !tbaa !239
  br label %98

74:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %75 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %76 = load <2 x i32>, ptr %75, align 8, !tbaa !176
  %77 = insertelement <2 x i32> poison, i32 %1, i64 0
  %78 = insertelement <2 x i32> %77, i32 %2, i64 1
  %79 = sub nsw <2 x i32> %78, %76
  %80 = sitofp <2 x i32> %79 to <2 x float>
  store <2 x float> %80, ptr %5, align 8, !tbaa !29
  %81 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !99
  %83 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 16
  %84 = load float, ptr %83, align 8, !tbaa !223
  call void @ED_view3d_win_to_delta(ptr noundef %82, ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %84) #19
  %85 = load ptr, ptr %8, align 8, !tbaa !95
  %86 = getelementptr inbounds %struct.RegionView3D, ptr %85, i64 0, i32 22
  call fastcc void @add_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %4) #17
  %87 = load ptr, ptr %8, align 8, !tbaa !95
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %87, i64 0, i32 27
  %89 = load i8, ptr %88, align 1, !tbaa !63
  %90 = and i8 %89, 2
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %74
  %93 = load ptr, ptr %0, align 8, !tbaa !118
  %94 = load ptr, ptr %81, align 8, !tbaa !99
  call fastcc void @view3d_boxview_sync(ptr noundef %93, ptr noundef %94) #17
  %95 = load ptr, ptr %8, align 8, !tbaa !95
  br label %96

96:                                               ; preds = %92, %74
  %97 = phi ptr [ %95, %92 ], [ %87, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %98

98:                                               ; preds = %70, %73, %71, %96, %12
  %99 = phi ptr [ %45, %70 ], [ %45, %73 ], [ %45, %71 ], [ %97, %96 ], [ %9, %12 ]
  %100 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  store i32 %1, ptr %100, align 8, !tbaa !123
  %101 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  store i32 %2, ptr %101, align 4, !tbaa !126
  %102 = load ptr, ptr %6, align 8, !tbaa !98
  %103 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %102, ptr noundef %99) #17, !range !25
  %104 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !99
  call void @ED_region_tag_redraw(ptr noundef %105) #19
  ret void
}

; Function Attrs: optsize
declare float @BKE_screen_view3d_zoom_to_fac(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewzoom_apply(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  call void @ED_view3d_dist_range_get(ptr noundef %14, ptr noundef nonnull %5) #19
  br label %51

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 24
  %17 = load i8, ptr %16, align 8, !tbaa !117
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  br i1 %18, label %21, label %22

21:                                               ; preds = %15
  call void @ED_view3d_dist_range_get(ptr noundef %20, ptr noundef nonnull %5) #19
  br label %25

22:                                               ; preds = %15
  %23 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %20, ptr noundef nonnull %8) #17, !range !25
  %24 = icmp eq i8 %23, 0
  call void @ED_view3d_dist_range_get(ptr noundef %20, ptr noundef nonnull %5) #19
  br i1 %24, label %25, label %51

25:                                               ; preds = %21, %22
  %26 = load i32, ptr %1, align 4, !tbaa !176
  %27 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds i32, ptr %1, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !176
  %31 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %32 = load i32, ptr %31, align 4, !tbaa !125
  %33 = add i32 %26, %30
  %34 = add i32 %28, %32
  %35 = sub i32 %33, %34
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %36, 1.000000e+01
  %38 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 12
  %39 = load float, ptr %38, align 8, !tbaa !217
  %40 = icmp eq i16 %3, 0
  %41 = fneg float %37
  %42 = select i1 %40, float %37, float %41
  %43 = fadd float %39, %42
  %44 = load ptr, ptr %7, align 8, !tbaa !95
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 23
  store float %43, ptr %45, align 4, !tbaa !131
  %46 = fcmp olt float %43, -3.000000e+01
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  store float -3.000000e+01, ptr %45, align 4, !tbaa !131
  br label %51

48:                                               ; preds = %25
  %49 = fcmp ogt float %43, 6.000000e+02
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store float 6.000000e+02, ptr %45, align 4, !tbaa !131
  br label %51

51:                                               ; preds = %12, %47, %50, %48, %22
  %52 = phi ptr [ %13, %12 ], [ %19, %47 ], [ %19, %50 ], [ %19, %48 ], [ %19, %22 ]
  %53 = phi i1 [ false, %12 ], [ true, %47 ], [ true, %50 ], [ true, %48 ], [ false, %22 ]
  switch i16 %2, label %102 [
    i16 0, label %54
    i16 1, label %78
  ]

54:                                               ; preds = %51
  %55 = call double @PIL_check_seconds_timer() #19
  %56 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 5
  %57 = load double, ptr %56, align 8, !tbaa !129
  %58 = fsub double %55, %57
  %59 = fptrunc double %58 to float
  %60 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %61 = and i32 %60, 67108864
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %64 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %65 = zext i1 %62 to i64
  %66 = getelementptr inbounds i32, ptr %1, i64 %65
  %67 = select i1 %62, ptr %63, ptr %64
  %68 = load i32, ptr %67, align 4, !tbaa !176
  %69 = load i32, ptr %66, align 4, !tbaa !176
  %70 = sub nsw i32 %68, %69
  %71 = sitofp i32 %70 to float
  %72 = icmp eq i16 %3, 0
  %73 = fneg float %71
  %74 = select i1 %72, float %71, float %73
  %75 = fdiv float %74, 2.000000e+01
  %76 = call float @llvm.fmuladd.f32(float %75, float %59, float 1.000000e+00)
  store double %55, ptr %56, align 8, !tbaa !129
  %77 = load ptr, ptr %7, align 8, !tbaa !95
  br label %146

78:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %79 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !99
  %81 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 3
  %82 = call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %81) #17, !range !232
  store i32 %82, ptr %6, align 4, !tbaa !176
  %83 = getelementptr inbounds i32, ptr %6, i64 1
  %84 = call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %81) #17, !range !232
  store i32 %84, ptr %83, align 4, !tbaa !176
  %85 = call fastcc float @len_v2v2_int(ptr noundef nonnull %6, ptr noundef %1) #17
  %86 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %87 = call fastcc float @len_v2v2_int(ptr noundef nonnull %6, ptr noundef nonnull %86) #17
  %88 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 11
  %89 = load float, ptr %88, align 4, !tbaa !216
  %90 = insertelement <2 x float> poison, float %87, i64 0
  %91 = insertelement <2 x float> %90, float %85, i64 1
  %92 = fadd <2 x float> %91, <float 5.000000e+00, float 5.000000e+00>
  %93 = fadd <2 x float> %92, <float 5.000000e+00, float 5.000000e+00>
  %94 = extractelement <2 x float> %93, i64 0
  %95 = extractelement <2 x float> %93, i64 1
  %96 = fdiv float %94, %95
  %97 = fmul float %89, %96
  %98 = load ptr, ptr %7, align 8, !tbaa !95
  %99 = getelementptr inbounds %struct.RegionView3D, ptr %98, i64 0, i32 18
  %100 = load float, ptr %99, align 8, !tbaa !26
  %101 = fdiv float %97, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %146

102:                                              ; preds = %51
  %103 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %104 = and i32 %103, 67108864
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !99
  br i1 %105, label %116, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 3, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !240
  %111 = load i32, ptr %1, align 4, !tbaa !176
  %112 = sub nsw i32 %110, %111
  %113 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %114 = load i32, ptr %113, align 8, !tbaa !124
  %115 = sub nsw i32 %110, %114
  br label %125

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 3, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !241
  %119 = getelementptr inbounds i32, ptr %1, i64 1
  %120 = load i32, ptr %119, align 4, !tbaa !176
  %121 = sub nsw i32 %118, %120
  %122 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %123 = load i32, ptr %122, align 4, !tbaa !125
  %124 = sub nsw i32 %118, %123
  br label %125

125:                                              ; preds = %116, %108
  %126 = phi i32 [ %115, %108 ], [ %124, %116 ]
  %127 = phi i32 [ %112, %108 ], [ %121, %116 ]
  %128 = load ptr, ptr %7, align 8, !tbaa !95
  br i1 %53, label %174, label %129

129:                                              ; preds = %125
  %130 = icmp eq i16 %3, 0
  %131 = add nsw i32 %127, 5
  %132 = sitofp i32 %131 to float
  %133 = add nsw i32 %126, 5
  %134 = sitofp i32 %133 to float
  %135 = select i1 %130, float %132, float %134
  %136 = select i1 %130, float %134, float %132
  %137 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 11
  %138 = load float, ptr %137, align 4, !tbaa !216
  %139 = fdiv float %135, %136
  %140 = fadd float %139, -1.000000e+00
  %141 = call float @llvm.fmuladd.f32(float %140, float 2.000000e+00, float 1.000000e+00)
  %142 = fmul float %141, %138
  %143 = getelementptr inbounds %struct.RegionView3D, ptr %128, i64 0, i32 18
  %144 = load float, ptr %143, align 8, !tbaa !26
  %145 = fdiv float %142, %144
  br label %146

146:                                              ; preds = %129, %78, %54
  %147 = phi ptr [ %77, %54 ], [ %98, %78 ], [ %128, %129 ]
  %148 = phi float [ %76, %54 ], [ %101, %78 ], [ %145, %129 ]
  %149 = fcmp oeq float %148, 1.000000e+00
  %150 = select i1 %53, i1 true, i1 %149
  br i1 %150, label %174, label %151

151:                                              ; preds = %146
  %152 = load float, ptr %5, align 4, !tbaa !29
  %153 = getelementptr inbounds %struct.RegionView3D, ptr %147, i64 0, i32 18
  %154 = load float, ptr %153, align 8, !tbaa !26
  %155 = fdiv float %152, %154
  %156 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !29
  %158 = fdiv float %157, %154
  %159 = fcmp olt float %148, %155
  br i1 %159, label %163, label %160

160:                                              ; preds = %151
  %161 = fcmp ogt float %148, %158
  br i1 %161, label %162, label %163

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %151, %160, %162
  %164 = phi float [ %158, %162 ], [ %148, %160 ], [ %155, %151 ]
  %165 = fcmp une float %164, 1.000000e+00
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !99
  %169 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 22
  %170 = load i32, ptr %169, align 8, !tbaa !123
  %171 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 23
  %172 = load i32, ptr %171, align 4, !tbaa !126
  call fastcc void @view_zoom_mouseloc(ptr noundef %168, float noundef %164, i32 noundef %170, i32 noundef %172) #17
  %173 = load ptr, ptr %7, align 8, !tbaa !95
  br label %174

174:                                              ; preds = %125, %163, %166, %146
  %175 = phi ptr [ %128, %125 ], [ %147, %163 ], [ %173, %166 ], [ %147, %146 ]
  %176 = getelementptr inbounds %struct.RegionView3D, ptr %175, i64 0, i32 18
  %177 = load float, ptr %176, align 8, !tbaa !26
  %178 = load float, ptr %5, align 4, !tbaa !29
  %179 = fcmp olt float %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !29
  %183 = fcmp ogt float %177, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %174
  %185 = phi float [ %178, %174 ], [ %182, %180 ]
  store float %185, ptr %176, align 8, !tbaa !26
  br label %186

186:                                              ; preds = %184, %180
  %187 = getelementptr inbounds %struct.RegionView3D, ptr %175, i64 0, i32 27
  %188 = load i8, ptr %187, align 1, !tbaa !63
  %189 = and i8 %188, 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr %0, align 8, !tbaa !118
  %193 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !99
  call fastcc void @view3d_boxview_sync(ptr noundef %192, ptr noundef %194) #17
  %195 = load ptr, ptr %7, align 8, !tbaa !95
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi ptr [ %195, %191 ], [ %175, %186 ]
  %198 = load ptr, ptr %52, align 8, !tbaa !98
  %199 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %198, ptr noundef %197) #17, !range !25
  %200 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !99
  call void @ED_region_tag_redraw(ptr noundef %201) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_dist_range_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !176
  %4 = load i32, ptr %1, align 4, !tbaa !176
  %5 = sub nsw i32 %3, %4
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds i32, ptr %0, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !176
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !176
  %11 = sub nsw i32 %8, %10
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, %12
  %14 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %13)
  %15 = tail call float @llvm.sqrt.f32(float %14)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoom_mouseloc(ptr noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %15) #17
  %16 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !242
  %18 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !243
  %21 = insertelement <2 x i32> poison, i32 %2, i64 0
  %22 = insertelement <2 x i32> %21, i32 %3, i64 1
  %23 = insertelement <2 x i32> poison, i32 %17, i64 0
  %24 = insertelement <2 x i32> %23, i32 %20, i64 1
  %25 = sub nsw <2 x i32> %22, %24
  %26 = shl nsw <2 x i32> %25, <i32 1, i32 1>
  %27 = load <2 x i16>, ptr %18, align 8, !tbaa !173
  %28 = sext <2 x i16> %27 to <2 x i32>
  %29 = sub nsw <2 x i32> %26, %28
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = fmul <2 x float> %30, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %31, ptr %8, align 8, !tbaa !29
  %32 = call float @ED_view3d_calc_zfac(ptr noundef %10, ptr noundef nonnull %7, ptr noundef null) #19
  call void @ED_view3d_win_to_delta(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %5, float noundef %32) #19
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  call fastcc void @negate_v3(ptr noundef nonnull %6) #17
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 18
  %34 = load float, ptr %33, align 8, !tbaa !26
  %35 = fmul float %34, %1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %6) #17
  store float %35, ptr %33, align 8, !tbaa !26
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %40

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 18
  %38 = load float, ptr %37, align 8, !tbaa !26
  %39 = fmul float %38, %1
  store float %39, ptr %37, align 8, !tbaa !26
  br label %40

40:                                               ; preds = %36, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !29
  %5 = load float, ptr %2, align 4, !tbaa !29
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !29
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !29
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !29
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !29
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !29
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !29
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 {
  %5 = load float, ptr %1, align 4, !tbaa !29
  %6 = load float, ptr %2, align 4, !tbaa !29
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !29
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !29
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !29
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !29
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !29
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !29
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_operator_offset_lock_check(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #19
  %5 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %3, ptr noundef %4) #17, !range !25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  tail call void @BKE_report(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.166) #19
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewdolly_apply(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #2 {
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  br i1 %7, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !240
  %13 = sub nsw i32 %12, %1
  %14 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %15 = load i32, ptr %14, align 8, !tbaa !124
  %16 = sub nsw i32 %12, %15
  br label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !241
  %20 = sub nsw i32 %19, %2
  %21 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 21
  %22 = load i32, ptr %21, align 4, !tbaa !125
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
  %37 = load ptr, ptr %36, align 8, !tbaa !95
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 18
  %39 = load float, ptr %38, align 8, !tbaa !26
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %39, float 1.000000e+00)
  %41 = fcmp une float %40, 1.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 17
  %44 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9
  tail call fastcc void @view_dolly_mouseloc(ptr noundef nonnull %9, ptr noundef nonnull %43, ptr noundef nonnull %44, float noundef %40) #17
  %45 = load ptr, ptr %36, align 8, !tbaa !95
  br label %46

46:                                               ; preds = %42, %24
  %47 = phi ptr [ %45, %42 ], [ %37, %24 ]
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %47, i64 0, i32 27
  %49 = load i8, ptr %48, align 1, !tbaa !63
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %0, align 8, !tbaa !118
  %54 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  tail call fastcc void @view3d_boxview_sync(ptr noundef %53, ptr noundef %55) #17
  %56 = load ptr, ptr %36, align 8, !tbaa !95
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi ptr [ %56, %52 ], [ %47, %46 ]
  %59 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  %61 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %60, ptr noundef %58) #17, !range !25
  %62 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %63) #19
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @view_dolly_mouseloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #14 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 22
  %8 = fsub float 1.000000e+00, %3
  %9 = fneg float %8
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, float noundef %9) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_from_minmax_multi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #2 {
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %6, %26
  %12 = phi ptr [ %27, %26 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !62
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %18, i64 0, i32 25
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %1, ptr noundef nonnull %18) #17, !range !25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %16
  tail call fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) #17
  br label %26

26:                                               ; preds = %22, %25, %11
  %27 = load ptr, ptr %12, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11, !llvm.loop !244

29:                                               ; preds = %26, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_from_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #2 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.CameraParams, align 4
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %3) #17
  %14 = load float, ptr %8, align 4, !tbaa !29
  %15 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !29
  %17 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !29
  %19 = tail call fastcc float @max_fff(float noundef %14, float noundef %16, float noundef %18) #17
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 24
  %23 = load i8, ptr %22, align 8, !tbaa !117
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = tail call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %1, ptr noundef nonnull %13) #17, !range !25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %11) #18
  call void @BKE_camera_params_init(ptr noundef nonnull %11) #19
  %33 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %34 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 11
  %35 = load <2 x float>, ptr %33, align 4, !tbaa !29
  store <2 x float> %35, ptr %34, align 4, !tbaa !29
  %36 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  call void @BKE_camera_params_from_object(ptr noundef nonnull %11, ptr noundef %37) #19
  %38 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !27
  %40 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !245
  %42 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !246
  %44 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 9
  %45 = load float, ptr %44, align 4, !tbaa !247
  %46 = call float @BKE_camera_sensor_size(i32 noundef %41, float noundef %43, float noundef %45) #19
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %11) #18
  br label %50

47:                                               ; preds = %29, %25
  %48 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %49 = load float, ptr %48, align 4, !tbaa !248
  br label %50

50:                                               ; preds = %47, %32
  %51 = phi float [ %39, %32 ], [ %49, %47 ]
  %52 = phi float [ %46, %32 ], [ 3.200000e+01, %47 ]
  %53 = call float @focallength_to_fov(float noundef %51, float noundef %52) #19
  %54 = fmul float %19, 5.000000e-01
  %55 = call float @ED_view3d_radius_to_persp_dist(float noundef %53, float noundef %54) #19
  %56 = fmul float %55, 0x3FF6666660000000
  %57 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %58 = load float, ptr %57, align 4, !tbaa !172
  %59 = fmul float %58, 1.500000e+00
  %60 = call fastcc float @max_ff(float noundef %56, float noundef %59) #17
  br label %69

61:                                               ; preds = %21
  %62 = fcmp olt float %19, 0x3F1A36E2E0000000
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %65 = load float, ptr %64, align 4, !tbaa !248
  %66 = fmul float %19, 5.000000e-01
  %67 = tail call float @ED_view3d_radius_to_ortho_dist(float noundef %65, float noundef %66) #19
  %68 = fmul float %67, 0x3FF6666660000000
  br label %69

69:                                               ; preds = %61, %50, %63, %7
  %70 = phi i1 [ false, %50 ], [ false, %63 ], [ true, %7 ], [ true, %61 ]
  %71 = phi float [ %60, %50 ], [ %68, %63 ], [ %19, %7 ], [ %19, %61 ]
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4) #19
  call fastcc void @negate_v3(ptr noundef nonnull %9) #17
  store float %71, ptr %10, align 4, !tbaa !29
  %72 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %73 = load i16, ptr %72, align 2, !tbaa !67
  %74 = icmp sgt i16 %73, 2
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %77 = load i16, ptr %76, align 8, !tbaa !66
  %78 = icmp sgt i16 %77, 2
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = sitofp i16 %77 to float
  %81 = sitofp i16 %73 to float
  %82 = fdiv float %80, %81
  %83 = fcmp olt float %82, 1.000000e+00
  %84 = fdiv float 1.000000e+00, %82
  %85 = select i1 %83, float %84, float %82
  %86 = fmul float %71, %85
  store float %86, ptr %10, align 4, !tbaa !29
  br label %87

87:                                               ; preds = %79, %75, %69
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %89 = load i8, ptr %88, align 1, !tbaa !5
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = call zeroext i8 @ED_view3d_camera_lock_check(ptr noundef %1, ptr noundef nonnull %13) #17, !range !25
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  store i8 1, ptr %88, align 1, !tbaa !5
  %95 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %96 = load ptr, ptr %95, align 8, !tbaa !18
  br label %97

97:                                               ; preds = %87, %91, %94
  %98 = phi ptr [ %96, %94 ], [ null, %91 ], [ null, %87 ]
  %99 = select i1 %70, ptr null, ptr %10
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %98, ptr noundef null, ptr noundef nonnull %9, ptr noundef null, ptr noundef %99, ptr noundef null, i32 noundef %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #15 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #17
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #17
  ret float %5
}

; Function Attrs: optsize
declare float @BKE_camera_sensor_size(i32 noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @ED_view3d_radius_to_persp_dist(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #15 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare float @ED_view3d_radius_to_ortho_dist(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_smooth_view(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_minmax_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @paintface_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @PE_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_sculpt_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_object_minmax_dupli(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BKE_screen_view3d_zoom_from_fac(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #15 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #7 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !29
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !158
  %4 = load float, ptr %0, align 4, !tbaa !156
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !159
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !157
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @view3d_update_depths_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @view3d_depth_near(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_set_1_to_1_viewborder(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 30
  %8 = load i16, ptr %7, align 2, !tbaa !249
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %11 = load i32, ptr %10, align 4, !tbaa !250
  %12 = mul nsw i32 %11, %9
  %13 = sdiv i32 %12, 100
  call void @ED_view3d_calc_camera_border_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %4) #19
  %14 = sitofp i32 %13 to float
  %15 = load float, ptr %4, align 4, !tbaa !29
  %16 = fdiv float %14, %15
  %17 = call float @BKE_screen_view3d_zoom_from_fac(float noundef %16) #19
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 23
  store float %17, ptr %18, align 4, !tbaa !131
  %19 = fcmp olt float %17, -3.000000e+01
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = fcmp ogt float %17, 6.000000e+02
  br i1 %21, label %22, label %24

22:                                               ; preds = %20, %3
  %23 = phi float [ -3.000000e+01, %3 ], [ 6.000000e+02, %20 ]
  store float %23, ptr %18, align 4, !tbaa !131
  br label %24

24:                                               ; preds = %22, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @axis_set_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7) unnamed_addr #2 {
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  %14 = call float @normalize_qt_qt(ptr noundef nonnull %9, ptr noundef %3) #19
  %15 = icmp eq i8 %6, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = call ptr @CTX_data_active_object(ptr noundef %0) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #18
  call void @ED_getTransformOrientationMatrix(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 1) #19
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  call void @invert_qt(ptr noundef nonnull %10) #19
  call void @mul_qt_qtqt(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  store i8 0, ptr %20, align 2, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 27
  %22 = load i8, ptr %21, align 1, !tbaa !63
  br label %59

23:                                               ; preds = %8, %16
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 27
  %25 = load i8, ptr %24, align 1, !tbaa !63
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  %30 = load i8, ptr %29, align 2, !tbaa !65
  %31 = icmp eq i8 %30, 1
  %32 = icmp eq i16 %4, 2
  %33 = and i1 %32, %31
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = icmp eq i8 %30, 2
  %36 = icmp eq i16 %4, 1
  %37 = and i1 %36, %35
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = icmp eq i8 %30, 4
  %40 = icmp eq i16 %4, 3
  %41 = and i1 %40, %39
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = icmp eq i8 %30, 3
  %44 = icmp eq i16 %4, 4
  %45 = and i1 %44, %43
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = icmp eq i8 %30, 6
  %48 = icmp eq i16 %4, 5
  %49 = and i1 %48, %47
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = icmp eq i8 %30, 5
  %52 = icmp eq i16 %4, 6
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %89

54:                                               ; preds = %28, %34, %38, %42, %46, %50, %23
  %55 = trunc i16 %4 to i8
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  store i8 %55, ptr %56, align 2, !tbaa !65
  %57 = add i16 %4, -1
  %58 = icmp ult i16 %57, 6
  br label %59

59:                                               ; preds = %19, %54
  %60 = phi i8 [ %25, %54 ], [ %22, %19 ]
  %61 = phi i1 [ %58, %54 ], [ false, %19 ]
  %62 = and i8 %60, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @ED_region_tag_redraw(ptr noundef nonnull %2) #19
  br label %89

65:                                               ; preds = %59
  %66 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !30
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = trunc i32 %5 to i8
  %71 = select i1 %61, i8 0, i8 %70
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  store i8 %71, ptr %72, align 1, !tbaa !5
  br label %79

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = trunc i32 %5 to i8
  store i8 %78, ptr %74, align 1, !tbaa !5
  br label %79

79:                                               ; preds = %77, %69
  %80 = phi i8 [ %78, %77 ], [ %71, %69 ]
  %81 = icmp eq i8 %80, 2
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %84 = load ptr, ptr %83, align 8, !tbaa !18
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 22
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %84, ptr noundef null, ptr noundef nonnull %87, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %7) #19
  br label %89

88:                                               ; preds = %73, %82, %79
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %7) #19
  br label %89

89:                                               ; preds = %86, %88, %50, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_scene_camera_find(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_getTransformOrientationMatrix(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewroll_apply(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !240
  %8 = load i32, ptr %5, align 8, !tbaa !242
  %9 = sub nsw i32 %7, %8
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 8, !tbaa !124
  %13 = insertelement <2 x i32> poison, i32 %7, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer
  %15 = insertelement <2 x i32> poison, i32 %1, i64 0
  %16 = insertelement <2 x i32> %15, i32 %12, i64 1
  %17 = sub nsw <2 x i32> %14, %16
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = insertelement <2 x float> poison, float %10, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fdiv <2 x float> %18, %20
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = fsub <2 x float> %21, %22
  %24 = extractelement <2 x float> %23, i64 0
  %25 = fmul float %24, 0x400921FB60000000
  %26 = fmul float %25, 4.000000e+00
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %30, i64 0, i32 17
  %32 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 9
  tail call fastcc void @view_roll_angle(ptr noundef nonnull %4, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %33, float noundef %26) #17
  br label %34

34:                                               ; preds = %28, %2
  %35 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 27
  %38 = load i8, ptr %37, align 1, !tbaa !63
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %0, align 8, !tbaa !118
  %43 = load ptr, ptr %3, align 8, !tbaa !99
  tail call fastcc void @view3d_boxview_sync(ptr noundef %42, ptr noundef %43) #17
  %44 = load ptr, ptr %35, align 8, !tbaa !95
  br label %45

45:                                               ; preds = %41, %34
  %46 = phi ptr [ %44, %41 ], [ %36, %34 ]
  %47 = getelementptr inbounds %struct.ViewOpsData, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  %49 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %48, ptr noundef %46) #17, !range !25
  %50 = load ptr, ptr %3, align 8, !tbaa !99
  tail call void @ED_region_tag_redraw(ptr noundef %50) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_roll_angle(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #2 {
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %6, ptr noundef %3, float noundef %4) #19
  call void @mul_qt_qtqt(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #19
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 26
  store i8 0, ptr %9, align 2, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @background_image_add(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #19
  %3 = tail call ptr @ED_view3D_background_image_new(ptr noundef %2) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_clipping_plane(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = icmp eq i8 %2, 0
  br label %5

5:                                                ; preds = %3, %18
  %6 = phi i64 [ 0, %3 ], [ %10, %18 ]
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 %6
  %8 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %6
  %9 = icmp eq i64 %6, 3
  %10 = add nuw nsw i64 %6, 1
  %11 = and i64 %10, 4294967295
  %12 = select i1 %9, i64 0, i64 %11
  %13 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %12
  %14 = or disjoint i64 %6, 4
  %15 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %14
  %16 = tail call float @normal_tri_v3(ptr noundef %7, ptr noundef %8, ptr noundef %13, ptr noundef nonnull %15) #19
  br i1 %4, label %18, label %17

17:                                               ; preds = %5
  tail call fastcc void @negate_v3(ptr noundef %7) #17
  br label %18

18:                                               ; preds = %17, %5
  %19 = tail call fastcc float @dot_v3v3(ptr noundef %7, ptr noundef %8) #17
  %20 = fneg float %19
  %21 = getelementptr inbounds [4 x float], ptr %0, i64 %6, i64 3
  store float %20, ptr %21, align 4, !tbaa !29
  %22 = icmp eq i64 %10, 4
  br i1 %22, label %23, label %5, !llvm.loop !251

23:                                               ; preds = %18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BIF_do_manipulator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 809}
!6 = !{!"RegionView3D", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 192, !7, i64 256, !7, i64 320, !7, i64 384, !7, i64 448, !7, i64 544, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !9, i64 672, !9, i64 680, !9, i64 688, !7, i64 696, !7, i64 760, !10, i64 776, !10, i64 780, !10, i64 784, !10, i64 788, !7, i64 792, !10, i64 804, !7, i64 808, !7, i64 809, !7, i64 810, !7, i64 811, !7, i64 812, !7, i64 813, !7, i64 816, !11, i64 824, !11, i64 826, !7, i64 828, !11, i64 844, !11, i64 846, !10, i64 848, !7, i64 852, !10, i64 864, !7, i64 868}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !11, i64 234}
!13 = !{!"View3D", !9, i64 0, !9, i64 8, !14, i64 16, !15, i64 32, !10, i64 36, !7, i64 40, !7, i64 56, !10, i64 72, !10, i64 76, !7, i64 80, !7, i64 81, !15, i64 84, !15, i64 88, !11, i64 92, !11, i64 94, !9, i64 96, !9, i64 104, !16, i64 112, !14, i64 128, !9, i64 144, !9, i64 152, !7, i64 160, !15, i64 224, !15, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !7, i64 260, !7, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !7, i64 290, !7, i64 291, !7, i64 292, !7, i64 293, !7, i64 294, !14, i64 296, !14, i64 312, !14, i64 328, !7, i64 344, !7, i64 345, !7, i64 346, !7, i64 347, !9, i64 352, !9, i64 360, !9, i64 368}
!14 = !{!"ListBase", !9, i64 0, !9, i64 8}
!15 = !{!"int", !7, i64 0}
!16 = !{!"rctf", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!17 = !{!13, !9, i64 104}
!18 = !{!13, !9, i64 96}
!19 = !{!20, !9, i64 24}
!20 = !{!"Object", !21, i64 0, !9, i64 120, !9, i64 128, !11, i64 136, !11, i64 138, !15, i64 140, !15, i64 144, !15, i64 148, !7, i64 152, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !22, i64 312, !9, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !15, i64 432, !15, i64 436, !9, i64 440, !9, i64 448, !15, i64 456, !15, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !10, i64 616, !10, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !15, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !7, i64 966, !7, i64 967, !15, i64 968, !15, i64 972, !15, i64 976, !15, i64 980, !15, i64 984, !10, i64 988, !10, i64 992, !10, i64 996, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !10, i64 1028, !10, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !7, i64 1042, !7, i64 1043, !11, i64 1044, !7, i64 1046, !7, i64 1047, !10, i64 1048, !10, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !10, i64 1120, !11, i64 1124, !11, i64 1126, !7, i64 1128, !15, i64 1144, !15, i64 1148, !9, i64 1152, !7, i64 1160, !7, i64 1161, !11, i64 1162, !7, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !9, i64 1240, !9, i64 1248, !9, i64 1256, !7, i64 1264, !7, i64 1265, !11, i64 1266, !10, i64 1268, !9, i64 1272, !9, i64 1280, !9, i64 1288, !9, i64 1296, !23, i64 1304, !23, i64 1312, !15, i64 1320, !15, i64 1324, !14, i64 1328, !14, i64 1344, !9, i64 1360, !9, i64 1368, !9, i64 1376, !7, i64 1384, !9, i64 1392, !14, i64 1400, !9, i64 1416}
!21 = !{!"ID", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !11, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !9, i64 112}
!22 = !{!"bAnimVizSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!23 = !{!"long", !7, i64 0}
!24 = !{!13, !11, i64 242}
!25 = !{i8 0, i8 2}
!26 = !{!6, !10, i64 776}
!27 = !{!28, !10, i64 4}
!28 = !{!"CameraParams", !7, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !15, i64 40, !10, i64 44, !10, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !16, i64 76, !7, i64 92}
!29 = !{!10, !10, i64 0}
!30 = !{!31, !15, i64 8484}
!31 = !{!"UserDef", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !15, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !15, i64 8484, !15, i64 8488, !15, i64 8492, !11, i64 8496, !11, i64 8498, !15, i64 8500, !15, i64 8504, !15, i64 8508, !15, i64 8512, !15, i64 8516, !15, i64 8520, !15, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !14, i64 8536, !14, i64 8552, !14, i64 8568, !14, i64 8584, !14, i64 8600, !14, i64 8616, !14, i64 8632, !7, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !7, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !15, i64 8912, !15, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !10, i64 8956, !10, i64 8960, !15, i64 8964, !11, i64 8968, !11, i64 8970, !10, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !32, i64 8984, !7, i64 9760, !7, i64 9772, !11, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !15, i64 10896, !15, i64 10900, !10, i64 10904, !10, i64 10908, !15, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !33, i64 10928}
!32 = !{!"ColorBand", !11, i64 0, !11, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!33 = !{!"WalkNavigation", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !11, i64 24, !7, i64 26}
!34 = !{!20, !9, i64 216}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!20, !11, i64 954}
!38 = !{!9, !9, i64 0}
!39 = distinct !{!39, !36}
!40 = !{!41, !15, i64 680}
!41 = !{!"Scene", !21, i64 0, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !14, i64 152, !9, i64 168, !9, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !15, i64 232, !15, i64 236, !15, i64 240, !11, i64 244, !7, i64 246, !7, i64 247, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !42, i64 280, !50, i64 4264, !14, i64 4296, !14, i64 4312, !9, i64 4328, !9, i64 4336, !9, i64 4344, !9, i64 4352, !9, i64 4360, !9, i64 4368, !11, i64 4376, !11, i64 4378, !15, i64 4380, !14, i64 4384, !51, i64 4400, !52, i64 4416, !55, i64 4600, !9, i64 4608, !56, i64 4616, !9, i64 4640, !23, i64 4648, !23, i64 4656, !44, i64 4664, !45, i64 4824, !57, i64 4888, !9, i64 4952}
!42 = !{!"RenderData", !43, i64 0, !9, i64 248, !9, i64 256, !46, i64 264, !47, i64 328, !15, i64 400, !15, i64 404, !15, i64 408, !10, i64 412, !15, i64 416, !15, i64 420, !15, i64 424, !15, i64 428, !11, i64 432, !11, i64 434, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !15, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !15, i64 484, !15, i64 488, !11, i64 492, !11, i64 494, !15, i64 496, !15, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !7, i64 514, !7, i64 515, !15, i64 516, !15, i64 520, !15, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !16, i64 544, !16, i64 560, !48, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !10, i64 612, !10, i64 616, !10, i64 620, !10, i64 624, !15, i64 628, !10, i64 632, !10, i64 636, !10, i64 640, !10, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !10, i64 660, !10, i64 664, !11, i64 668, !11, i64 670, !10, i64 672, !10, i64 676, !7, i64 680, !15, i64 1704, !11, i64 1708, !11, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !15, i64 2520, !11, i64 2524, !11, i64 2526, !10, i64 2528, !10, i64 2532, !11, i64 2536, !11, i64 2538, !10, i64 2540, !11, i64 2544, !11, i64 2546, !15, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !10, i64 2560, !10, i64 2564, !9, i64 2568, !15, i64 2576, !10, i64 2580, !7, i64 2584, !49, i64 2616, !15, i64 3976, !15, i64 3980}
!43 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !11, i64 8, !11, i64 10, !10, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !44, i64 24, !45, i64 184}
!44 = !{!"ColorManagedViewSettings", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 72, !10, i64 136, !10, i64 140, !9, i64 144, !9, i64 152}
!45 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!46 = !{!"QuicktimeCodecSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !11, i64 48, !11, i64 50, !15, i64 52, !15, i64 56, !15, i64 60}
!47 = !{!"FFMpegCodecData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !10, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !9, i64 64}
!48 = !{!"rcti", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!49 = !{!"BakeData", !43, i64 0, !7, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !10, i64 1280, !10, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!50 = !{!"AudioData", !15, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !15, i64 16, !11, i64 20, !11, i64 22, !10, i64 24, !10, i64 28}
!51 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!52 = !{!"GameData", !51, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !7, i64 34, !53, i64 40, !11, i64 64, !11, i64 66, !10, i64 68, !54, i64 72, !10, i64 128, !10, i64 132, !15, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180}
!53 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !10, i64 8, !10, i64 12, !9, i64 16}
!54 = !{!"RecastData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !15, i64 40, !10, i64 44, !10, i64 48, !11, i64 52, !11, i64 54}
!55 = !{!"UnitSettings", !10, i64 0, !7, i64 4, !7, i64 5, !11, i64 6}
!56 = !{!"PhysicsSettings", !7, i64 0, !15, i64 12, !15, i64 16, !15, i64 20}
!57 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!58 = distinct !{!58, !36}
!59 = !{!60, !9, i64 376}
!60 = !{!"ARegion", !9, i64 0, !9, i64 8, !61, i64 16, !48, i64 176, !48, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !10, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !9, i64 240, !14, i64 248, !14, i64 264, !14, i64 280, !14, i64 296, !14, i64 312, !14, i64 328, !14, i64 344, !9, i64 360, !9, i64 368, !9, i64 376}
!61 = !{!"View2D", !16, i64 0, !16, i64 16, !48, i64 32, !48, i64 48, !48, i64 64, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !9, i64 128, !15, i64 136, !15, i64 140, !9, i64 144, !9, i64 152}
!62 = !{!60, !11, i64 214}
!63 = !{!6, !7, i64 811}
!64 = distinct !{!64, !36}
!65 = !{!6, !7, i64 810}
!66 = !{!60, !11, i64 208}
!67 = !{!60, !11, i64 210}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36}
!71 = !{!6, !11, i64 826}
!72 = !{!6, !9, i64 640}
!73 = distinct !{!73, !36}
!74 = !{!60, !11, i64 216}
!75 = !{!60, !9, i64 8}
!76 = distinct !{!76, !36}
!77 = !{!78, !9, i64 120}
!78 = !{!"ScrArea", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !48, i64 56, !7, i64 72, !7, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !7, i64 86, !7, i64 87, !9, i64 88, !14, i64 96, !14, i64 112, !14, i64 128, !14, i64 144}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!82, !9, i64 128}
!82 = !{!"wmKeyMap", !9, i64 0, !9, i64 8, !14, i64 16, !14, i64 32, !7, i64 48, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !9, i64 120, !9, i64 128}
!83 = !{!84, !9, i64 0}
!84 = !{!"wmOperatorType", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !14, i64 112, !9, i64 128, !9, i64 136, !9, i64 144, !85, i64 152, !11, i64 184}
!85 = !{!"ExtensionRNA", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!86 = !{!84, !9, i64 24}
!87 = !{!84, !9, i64 8}
!88 = !{!84, !9, i64 48}
!89 = !{!84, !9, i64 64}
!90 = !{!84, !9, i64 72}
!91 = !{!84, !9, i64 56}
!92 = !{!84, !11, i64 184}
!93 = !{!94, !9, i64 96}
!94 = !{!"wmOperator", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 144, !9, i64 152, !11, i64 160, !7, i64 162}
!95 = !{!96, !9, i64 24}
!96 = !{!"ViewOpsData", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !97, i64 40, !7, i64 48, !7, i64 64, !7, i64 80, !7, i64 92, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !7, i64 124, !10, i64 128, !7, i64 132, !7, i64 144, !7, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176}
!97 = !{!"double", !7, i64 0}
!98 = !{!96, !9, i64 16}
!99 = !{!96, !9, i64 8}
!100 = !{!101, !11, i64 16}
!101 = !{!"wmEvent", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 18, !15, i64 20, !15, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !11, i64 44, !11, i64 46, !15, i64 48, !15, i64 52, !97, i64 56, !15, i64 64, !15, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !9, i64 88, !9, i64 96, !11, i64 104, !11, i64 106, !15, i64 108, !9, i64 112}
!102 = !{!31, !15, i64 8488}
!103 = !{!101, !15, i64 20}
!104 = !{!101, !15, i64 48}
!105 = !{!101, !15, i64 24}
!106 = !{!101, !15, i64 52}
!107 = !{!101, !11, i64 18}
!108 = !{!96, !15, i64 176}
!109 = !{!96, !7, i64 124}
!110 = !{!6, !10, i64 864}
!111 = !{!112, !10, i64 24}
!112 = !{!"wmNDOFMotionData", !7, i64 0, !7, i64 12, !10, i64 24, !15, i64 28}
!113 = !{!31, !15, i64 8964}
!114 = !{!7, !7, i64 0}
!115 = !{!101, !9, i64 112}
!116 = !{!112, !15, i64 28}
!117 = !{!6, !7, i64 808}
!118 = !{!96, !9, i64 0}
!119 = !{i32 2, i32 5}
!120 = !{!84, !9, i64 32}
!121 = !{!84, !9, i64 88}
!122 = !{!94, !9, i64 112}
!123 = !{!96, !15, i64 168}
!124 = !{!96, !15, i64 160}
!125 = !{!96, !15, i64 164}
!126 = !{!96, !15, i64 172}
!127 = !{!31, !11, i64 8498}
!128 = !{!96, !9, i64 32}
!129 = !{!96, !97, i64 40}
!130 = !{!78, !9, i64 96}
!131 = !{!6, !10, i64 804}
!132 = !{!133, !15, i64 16}
!133 = !{!"Base", !9, i64 0, !9, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !11, i64 28, !11, i64 30, !9, i64 32}
!134 = !{!13, !15, i64 224}
!135 = !{!133, !9, i64 32}
!136 = !{!20, !7, i64 1160}
!137 = distinct !{!137, !36}
!138 = !{!41, !9, i64 168}
!139 = !{!20, !15, i64 432}
!140 = !{!133, !15, i64 24}
!141 = !{!20, !11, i64 136}
!142 = distinct !{!142, !36}
!143 = !{!20, !9, i64 288}
!144 = !{!20, !9, i64 296}
!145 = !{!146, !9, i64 120}
!146 = !{!"bPoseChannel", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !7, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !7, i64 112, !7, i64 113, !7, i64 114, !9, i64 120, !9, i64 128, !9, i64 136, !14, i64 144, !14, i64 160, !9, i64 176, !9, i64 184, !9, i64 192, !7, i64 200, !7, i64 212, !7, i64 224, !7, i64 236, !7, i64 252, !10, i64 264, !11, i64 268, !11, i64 270, !7, i64 272, !7, i64 336, !7, i64 400, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !10, i64 524, !10, i64 528, !10, i64 532, !9, i64 536}
!147 = !{!148, !15, i64 176}
!148 = !{!"Bone", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32, !7, i64 48, !10, i64 112, !7, i64 116, !7, i64 128, !7, i64 140, !15, i64 176, !7, i64 180, !7, i64 192, !7, i64 204, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !7, i64 308, !15, i64 320, !11, i64 324, !7, i64 326}
!149 = !{!148, !15, i64 320}
!150 = !{!151, !15, i64 216}
!151 = !{!"bArmature", !21, i64 0, !9, i64 120, !14, i64 128, !14, i64 144, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !11, i64 208, !11, i64 210, !15, i64 212, !15, i64 216, !15, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !15, i64 248, !15, i64 252}
!152 = !{!146, !9, i64 192}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = !{!151, !9, i64 176}
!156 = !{!16, !10, i64 0}
!157 = !{!16, !10, i64 8}
!158 = !{!16, !10, i64 4}
!159 = !{!16, !10, i64 12}
!160 = !{!48, !15, i64 0}
!161 = !{!48, !15, i64 8}
!162 = !{!48, !15, i64 4}
!163 = !{!48, !15, i64 12}
!164 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!165 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29}
!166 = !{i64 0, i64 4, !29, i64 4, i64 4, !29}
!167 = !{!41, !15, i64 800}
!168 = !{!169, !9, i64 8}
!169 = !{!"ViewDepths", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !7, i64 16, !7, i64 32}
!170 = !{!94, !9, i64 120}
!171 = !{!97, !97, i64 0}
!172 = !{!13, !10, i64 252}
!173 = !{!11, !11, i64 0}
!174 = !{!84, !9, i64 104}
!175 = !{!6, !11, i64 844}
!176 = !{!15, !15, i64 0}
!177 = !{!6, !9, i64 688}
!178 = !{!13, !11, i64 236}
!179 = !{!41, !9, i64 128}
!180 = !{!6, !11, i64 846}
!181 = !{!31, !11, i64 8922}
!182 = !{!31, !7, i64 9790}
!183 = !{!184, !9, i64 16}
!184 = !{!"BGpic", !9, i64 0, !9, i64 8, !9, i64 16, !185, i64 24, !9, i64 64, !186, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !11, i64 96, !11, i64 98, !11, i64 100, !11, i64 102}
!185 = !{!"ImageUser", !9, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !15, i64 36}
!186 = !{!"MovieClipUser", !15, i64 0, !11, i64 4, !11, i64 6}
!187 = !{!13, !11, i64 240}
!188 = !{!184, !11, i64 100}
!189 = distinct !{!189, !36}
!190 = !{!191, !9, i64 24}
!191 = !{!"ViewContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !7, i64 56}
!192 = !{!191, !9, i64 40}
!193 = !{!13, !9, i64 152}
!194 = !{!13, !7, i64 293}
!195 = !{!101, !11, i64 80}
!196 = !{!13, !7, i64 291}
!197 = !{!198, !9, i64 0}
!198 = !{!"", !9, i64 0, !15, i64 8, !10, i64 12}
!199 = !{!198, !15, i64 8}
!200 = !{!198, !10, i64 12}
!201 = !{!184, !7, i64 48}
!202 = !{!184, !7, i64 50}
!203 = !{!184, !11, i64 96}
!204 = !{!184, !11, i64 98}
!205 = !{!13, !9, i64 128}
!206 = !{!184, !9, i64 0}
!207 = distinct !{!207, !36}
!208 = distinct !{!208, !36}
!209 = !{!210, !9, i64 16}
!210 = !{!"wmTimer", !9, i64 0, !9, i64 8, !9, i64 16, !97, i64 24, !15, i64 32, !9, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !15, i64 88}
!211 = !{!212, !15, i64 28}
!212 = !{!"Paint", !9, i64 0, !9, i64 8, !9, i64 16, !7, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!213 = !{!31, !15, i64 8}
!214 = distinct !{!214, !36}
!215 = !{!96, !10, i64 104}
!216 = !{!96, !10, i64 108}
!217 = !{!96, !10, i64 112}
!218 = !{!96, !7, i64 156}
!219 = !{!13, !10, i64 248}
!220 = !{!96, !10, i64 116}
!221 = !{!13, !10, i64 256}
!222 = !{!96, !10, i64 120}
!223 = !{!96, !10, i64 128}
!224 = !{!225, !9, i64 376}
!225 = !{!"Curve", !21, i64 0, !9, i64 120, !9, i64 128, !14, i64 136, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !7, i64 208, !7, i64 220, !7, i64 232, !11, i64 244, !11, i64 246, !11, i64 248, !11, i64 250, !10, i64 252, !10, i64 256, !15, i64 260, !11, i64 264, !11, i64 266, !15, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !15, i64 292, !15, i64 296, !7, i64 300, !11, i64 304, !7, i64 306, !7, i64 307, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !15, i64 348, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !9, i64 368, !9, i64 376, !7, i64 384, !9, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !15, i64 488, !15, i64 492, !9, i64 496, !226, i64 504, !10, i64 512, !10, i64 516, !10, i64 520, !7, i64 524, !7, i64 525, !7, i64 526}
!226 = !{!"CharInfo", !11, i64 0, !11, i64 2, !7, i64 4, !7, i64 5, !11, i64 6}
!227 = distinct !{!227, !36}
!228 = !{!20, !9, i64 264}
!229 = !{!230, !15, i64 96}
!230 = !{!"BoundBox", !7, i64 0, !15, i64 96, !15, i64 100}
!231 = distinct !{!231, !36}
!232 = !{i32 -1073741824, i32 1073741824}
!233 = distinct !{!233, !36}
!234 = distinct !{!234, !36}
!235 = distinct !{!235, !36}
!236 = distinct !{!236, !36}
!237 = !{!6, !10, i64 788}
!238 = !{!6, !10, i64 780}
!239 = !{!6, !10, i64 784}
!240 = !{!60, !15, i64 180}
!241 = !{!60, !15, i64 188}
!242 = !{!60, !15, i64 176}
!243 = !{!60, !15, i64 184}
!244 = distinct !{!244, !36}
!245 = !{!28, !15, i64 40}
!246 = !{!28, !10, i64 32}
!247 = !{!28, !10, i64 36}
!248 = !{!13, !10, i64 244}
!249 = !{!41, !11, i64 758}
!250 = !{!41, !15, i64 764}
!251 = distinct !{!251, !36}
