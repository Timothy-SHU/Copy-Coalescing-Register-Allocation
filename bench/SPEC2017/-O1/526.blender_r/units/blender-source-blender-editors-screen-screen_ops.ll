; ModuleID = 'blender/source/blender/editors/screen/screen_ops.c'
source_filename = "blender/source/blender/editors/screen/screen_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.AZone = type { ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %struct.rcti, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.RegionAlphaInfo = type { ptr, ptr, ptr, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.sActionzoneData = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sAreaMoveData = type { i32, i32, i32, i32, i8 }
%struct.ScrEdge = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.ScrVert = type { ptr, ptr, ptr, %struct.vec2s, i16, i16 }
%struct.vec2s = type { i16, i16 }
%struct.sAreaSplitData = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.sAreaJoinData = type { ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.sAreaSwapData = type { ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.RegionMoveData = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ScreenAnimData = type { ptr, i16, i16, i16, i32, i32, double }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }

@.str = private unnamed_addr constant [25 x i8] c"expected a view3d region\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"expected a timeline/animation area to be active\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"expected a view3d region & editmesh\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"expected a view3d region & editcurve\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Flip to Bottom\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"SCREEN_OT_header_flip\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Flip to Top\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Collapse Menus\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SCREEN_OT_header_toggle_menus\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Tile Area\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SCREEN_OT_screen_full_area\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Maximize Area\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"RegionAlphaInfo\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Screen Editing\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_actionzone\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_area_split\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"SCREEN_OT_area_join\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_area_dupli\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"SCREEN_OT_area_swap\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SCREEN_OT_region_scale\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"SCREEN_OT_area_move\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"SCREEN_OT_area_options\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SCREEN_OT_header\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"SCREEN_OT_header_toolbox\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"SCREEN_OT_animation_step\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"SCREEN_OT_region_blend\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_screen_set\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"use_hide_panels\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_screenshot\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_screencast\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"SCREEN_OT_region_quadview\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"SCREEN_OT_repeat_history\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"SCREEN_OT_repeat_last\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"SCREEN_OT_region_flip\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"SCREEN_OT_redo_last\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"SCRIPT_OT_reload\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"FILE_OT_execute\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"FILE_OT_cancel\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ED_OT_undo\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ED_OT_redo\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"ED_OT_undo_history\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"RENDER_OT_render\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"use_viewport\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"animation\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"RENDER_OT_view_cancel\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"RENDER_OT_view_show\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"RENDER_OT_play_rendered_anim\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"SCREEN_OT_userpref_show\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"SCREEN_OT_frame_offset\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"SCREEN_OT_frame_jump\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"SCREEN_OT_keyframe_jump\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"SCREEN_OT_animation_play\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"SCREEN_OT_animation_cancel\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"WM_OT_open_mainfile\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"UI_OT_drop_color\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"Handle Area Action Zones\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"Handle area action zones for mouse actions/gestures\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Modifier\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"Modifier state\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"sActionzoneData\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"Repeat Last\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Repeat last action\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Repeat History\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"Display menu for previous actions performed\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Redo Last\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Display menu for last action performed\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Move Area Edges\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"Move selected area edges\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"sAreaMoveData\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Split Area\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"Split selected area into new windows\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@prop_direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 104, ptr @.str.97, i32 0, ptr @.str.98, ptr @.str.75 }, %struct.EnumPropertyItem { i32 118, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.75 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.89 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"mouse_x\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"Mouse X\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"mouse_y\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"Mouse Y\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"op_area_split\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"HORIZONTAL\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"VERTICAL\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Join Area\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"Join selected areas into new window\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"X 1\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"Y 1\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"X 2\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"Y 2\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"op_area_join\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"Area Options\00", align 1
@.str.115 = private unnamed_addr constant [37 x i8] c"Operations for splitting and merging\00", align 1
@.str.116 = private unnamed_addr constant [31 x i8] c"Duplicate Area into New Window\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"Duplicate selected area into new window\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Swap Areas\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"Swap selected areas screen positions\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"sAreaSwapData\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"Toggle Quad View\00", align 1
@.str.122 = private unnamed_addr constant [58 x i8] c"Split selected area into camera, front, right & top views\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"Only window region can be 4-splitted\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"Only last region can be 4-splitted\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"Scale Region Size\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"Scale selected area\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"Can only scale region size from an action zone\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"RegionMoveData\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"Flip Region\00", align 1
@.str.130 = private unnamed_addr constant [57 x i8] c"Toggle the region's alignment (left/right or top/bottom)\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Flip Header Region\00", align 1
@.str.132 = private unnamed_addr constant [50 x i8] c"Toggle the header over/below the main window area\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"Display header\00", align 1
@.str.134 = private unnamed_addr constant [29 x i8] c"Expand/Collapse Header Menus\00", align 1
@.str.135 = private unnamed_addr constant [45 x i8] c"Expand or collapse the header pulldown menus\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"Header Toolbox\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"Display header region toolbox\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"Set Screen\00", align 1
@.str.139 = private unnamed_addr constant [32 x i8] c"Cycle through available screens\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"Toggle Fullscreen Area\00", align 1
@.str.141 = private unnamed_addr constant [53 x i8] c"Toggle display selected area as fullscreen/maximized\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"Hide Panels\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"Hide all the panels\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"Back to Previous Screen\00", align 1
@.str.145 = private unnamed_addr constant [74 x i8] c"Revert back to the original screen layout, before fullscreen area overlay\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"SCREEN_OT_back_to_previous\00", align 1
@.str.147 = private unnamed_addr constant [31 x i8] c"No fullscreen areas were found\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"Clean-up Space-data\00", align 1
@.str.149 = private unnamed_addr constant [45 x i8] c"Remove unused settings for invisible editors\00", align 1
@.str.150 = private unnamed_addr constant [28 x i8] c"SCREEN_OT_spacedata_cleanup\00", align 1
@.str.151 = private unnamed_addr constant [30 x i8] c"Removed amount of editors: %d\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"Show User Preferences\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"Show user preferences\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"Region Alpha\00", align 1
@.str.155 = private unnamed_addr constant [36 x i8] c"Blend in and out overlapping region\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"Frame Offset\00", align 1
@.str.157 = private unnamed_addr constant [54 x i8] c"Move current frame forward/backward by a given number\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.158 = private unnamed_addr constant [17 x i8] c"Jump to Endpoint\00", align 1
@.str.159 = private unnamed_addr constant [40 x i8] c"Jump to first/last frame in frame range\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"Last Frame\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c"Jump to the last frame of the frame range\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"Jump to Keyframe\00", align 1
@.str.163 = private unnamed_addr constant [31 x i8] c"Jump to previous/next keyframe\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"Next Keyframe\00", align 1
@.str.165 = private unnamed_addr constant [47 x i8] c"No more keyframes to jump to in this direction\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"Jump to Marker\00", align 1
@.str.167 = private unnamed_addr constant [29 x i8] c"Jump to previous/next marker\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"SCREEN_OT_marker_jump\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"Next Marker\00", align 1
@.str.170 = private unnamed_addr constant [45 x i8] c"No more markers to jump to in this direction\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"Animation Step\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"Step through animation by position\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"Play Animation\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"Play animation\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"Play in Reverse\00", align 1
@.str.176 = private unnamed_addr constant [30 x i8] c"Animation is played backwards\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.179 = private unnamed_addr constant [34 x i8] c"Drop frames to maintain framerate\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"Cancel Animation\00", align 1
@.str.181 = private unnamed_addr constant [50 x i8] c"Cancel animation, returning to the original frame\00", align 1
@.str.182 = private unnamed_addr constant [14 x i8] c"restore_frame\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"Restore Frame\00", align 1
@.str.184 = private unnamed_addr constant [49 x i8] c"Restore the frame when animation was initialized\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"New Screen\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"Add a new screen\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"SCREEN_OT_new\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"Delete Screen\00", align 1
@.str.189 = private unnamed_addr constant [21 x i8] c"Delete active screen\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"SCREEN_OT_delete\00", align 1
@SCENE_OT_new.type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.193 }, %struct.EnumPropertyItem { i32 1, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.196 }, %struct.EnumPropertyItem { i32 2, ptr @.str.197, i32 0, ptr @.str.198, ptr @.str.199 }, %struct.EnumPropertyItem { i32 3, ptr @.str.200, i32 0, ptr @.str.201, ptr @.str.202 }, %struct.EnumPropertyItem { i32 4, ptr @.str.203, i32 0, ptr @.str.204, ptr @.str.205 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.191 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"New\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"Add new scene\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"Copy Settings\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"Make a copy without any objects\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"LINK_OBJECTS\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"Link Objects\00", align 1
@.str.199 = private unnamed_addr constant [43 x i8] c"Link to the objects from the current scene\00", align 1
@.str.200 = private unnamed_addr constant [17 x i8] c"LINK_OBJECT_DATA\00", align 1
@.str.201 = private unnamed_addr constant [17 x i8] c"Link Object Data\00", align 1
@.str.202 = private unnamed_addr constant [51 x i8] c"Copy objects linked to data from the current scene\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"FULL_COPY\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"Full Copy\00", align 1
@.str.205 = private unnamed_addr constant [38 x i8] c"Make a full copy of the current scene\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"New Scene\00", align 1
@.str.207 = private unnamed_addr constant [22 x i8] c"Add new scene by type\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"SCENE_OT_new\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"Delete Scene\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"Delete active scene\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"SCENE_OT_delete\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"scene delete %p\0A\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@keymap_modal_set.modal_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.75 }, %struct.EnumPropertyItem { i32 2, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.75 }, %struct.EnumPropertyItem { i32 3, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.75 }, %struct.EnumPropertyItem { i32 4, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.75 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.217 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"APPLY\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"STEP10\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"Steps on\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"STEP10_OFF\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"Steps off\00", align 1
@.str.225 = private unnamed_addr constant [19 x i8] c"Standard Modal Map\00", align 1
@str = private unnamed_addr constant [26 x i8] c"oops, didn't expect that!\00", align 1
@str.226 = private unnamed_addr constant [23 x i8] c"areas don't share edge\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_regionactive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_areaactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_screenactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_screen_mainwinactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 19
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !43
  %12 = icmp eq i16 %9, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %4, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_scene_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_objectmode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = icmp eq ptr %3, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !65
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  br label %19

19:                                               ; preds = %14, %9, %1, %5, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %5 ], [ 0, %1 ], [ 0, %9 ], [ 0, %14 ]
  ret i32 %20
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_view3d_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_region_view3d_active(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str) #13
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ]
  ret i32 %6
}

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_animview_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  switch i32 %15, label %16 [
    i32 8, label %17
    i32 12, label %17
    i32 13, label %17
    i32 2, label %17
    i32 15, label %17
  ]

16:                                               ; preds = %1, %4, %10, %13, %7
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  br label %17

17:                                               ; preds = %13, %13, %13, %13, %13, %16
  %18 = phi i32 [ 0, %16 ], [ 1, %13 ], [ 1, %13 ], [ 1, %13 ], [ 1, %13 ], [ 1, %13 ]
  ret i32 %18
}

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_timeline_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_outliner_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 3
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_outliner_active_no_editobject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call ptr @ED_object_active_context(ptr noundef %0) #13
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %20 = icmp eq ptr %18, null
  %21 = icmp ne ptr %18, %19
  %22 = select i1 %20, i1 true, i1 %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %1, %4, %10, %7, %13, %17
  %25 = phi i32 [ %23, %17 ], [ 0, %13 ], [ 0, %7 ], [ 0, %10 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %25
}

declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_file_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 5
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_action_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 12
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_buttons_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 4
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_node_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_node_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_graphedit_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_sequencer_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 8
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_sequencer_active_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %1, %4, %10, %7, %24, %20, %13
  %26 = phi i32 [ 0, %13 ], [ 0, %24 ], [ 1, %20 ], [ 0, %7 ], [ 0, %10 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_image_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 6
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_nla_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 13
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_logic_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 17
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_info_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 7
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_console_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceLink, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = icmp eq i32 %15, 18
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %4, %7, %10, %13
  %19 = phi i32 [ 0, %10 ], [ %17, %13 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_object_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %6 = load i8, ptr %5, align 8, !tbaa !76
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !65
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 1, %4 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_object_active_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %10 = load i8, ptr %9, align 8, !tbaa !76
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %13, %8, %4, %1
  %18 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 1, %8 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_object_active_editable_mesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %10 = load i8, ptr %9, align 8, !tbaa !76
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %8, %13
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !78
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %18, %13, %4, %1
  %30 = phi i32 [ 0, %18 ], [ 0, %13 ], [ 0, %4 ], [ 0, %1 ], [ %28, %22 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_object_active_editable_font(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %10 = load i8, ptr %9, align 8, !tbaa !76
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %8, %13
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !78
  %21 = icmp eq i16 %20, 4
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %13, %4, %1
  %24 = phi i32 [ 0, %13 ], [ 0, %4 ], [ 0, %1 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #13
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %4, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %13
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editmesh_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.SpaceLink, ptr %21, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %11, %14, %4, %1, %23, %20, %17, %8
  %29 = phi i32 [ 0, %8 ], [ 0, %20 ], [ %27, %23 ], [ 0, %17 ], [ 0, %1 ], [ 0, %4 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_editmesh_region_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4, %1, %11, %8
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.2) #13
  br label %15

15:                                               ; preds = %11, %14
  %16 = phi i32 [ 0, %14 ], [ 1, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editarmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_posemode_exclusive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %2) #13
  %11 = icmp eq ptr %2, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %1, %4
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %9 ]
  ret i32 %14
}

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_posemode_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @BKE_object_pose_context_check(ptr noundef nonnull %2) #13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %4, %1
  br label %13

13:                                               ; preds = %9, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %9 ]
  ret i32 %14
}

declare ptr @ED_pose_object_from_context(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_object_pose_context_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_posemode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %2) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %2, %10
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %5, align 8, !tbaa !65
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  br label %19

19:                                               ; preds = %1, %4, %18, %14, %12
  %20 = phi i32 [ 1, %12 ], [ 1, %14 ], [ 0, %18 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_uvedit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %2, ptr noundef %3) #13
  %5 = zext i8 %4 to i32
  ret i32 %5
}

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_uvedit_space_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef nonnull %2, ptr noundef %3) #13
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_uvmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #13
  br label %10

10:                                               ; preds = %8, %4, %1
  %11 = phi ptr [ %9, %8 ], [ null, %4 ], [ null, %1 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !85
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %10
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editsurfcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %4, %1, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_operator_editsurfcurve_region_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4, %1, %15, %9
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  br label %19

19:                                               ; preds = %15, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editcurve_3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 23
  %12 = load i32, ptr %11, align 4, !tbaa !91
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %1, %4, %8, %15
  %21 = phi i32 [ 0, %8 ], [ %19, %15 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editsurf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editfont(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editlattice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 22
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_editmball(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.MetaBall, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !99
  switch i8 %10, label %19 [
    i8 20, label %11
    i8 8, label %13
    i8 6, label %16
  ]

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef nonnull %6) #13
  br label %19

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %15 = tail call zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef nonnull %6, ptr noundef %14) #13
  br label %19

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %18 = tail call zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef %17, ptr noundef nonnull %6) #13
  br label %19

19:                                               ; preds = %1, %4, %8, %16, %13, %11
  %20 = phi i8 [ %18, %16 ], [ %15, %13 ], [ %12, %11 ], [ 0, %8 ], [ 0, %4 ], [ 0, %1 ]
  %21 = zext i8 %20 to i32
  ret i32 %21
}

declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @is_in_area_actionzone(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br i1 %6, label %131, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  br label %9

9:                                                ; preds = %7, %128
  %10 = phi ptr [ %5, %7 ], [ %129, %128 ]
  %11 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 9
  %12 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %11, ptr noundef %1) #13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %128, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !101
  switch i32 %16, label %128 [
    i32 1, label %17
    i32 2, label %131
    i32 3, label %37
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 4, !tbaa !103
  %19 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !104
  %21 = sext i16 %20 to i32
  %22 = sub nsw i32 %18, %21
  %23 = mul nsw i32 %22, %22
  %24 = load i32, ptr %8, align 4, !tbaa !103
  %25 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !105
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = mul nsw i32 %28, %28
  %30 = add nuw nsw i32 %29, %23
  %31 = sitofp i32 %30 to float
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %33 = sitofp i16 %32 to float
  %34 = fmul float %33, 0x3FE3333340000000
  %35 = fmul float %34, %34
  %36 = fcmp ult float %35, %31
  br i1 %36, label %128, label %131

37:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %38 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !104
  %40 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 6
  %41 = load i16, ptr %40, align 2, !tbaa !105
  %42 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !110
  %44 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !111
  %46 = sitofp i16 %43 to float
  %47 = sitofp i16 %39 to float
  %48 = fsub float %46, %47
  %49 = fmul float %48, 5.000000e-01
  %50 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %51 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %52 = sitofp i32 %51 to float
  %53 = fmul float %50, %52
  %54 = fdiv float %53, 7.200000e+01
  %55 = fdiv float %49, %54
  %56 = fsub float %46, %55
  %57 = fptosi float %56 to i32
  %58 = sitofp i16 %45 to float
  %59 = sitofp i16 %41 to float
  %60 = fsub float %58, %59
  %61 = fmul float %60, 5.000000e-01
  %62 = fdiv float %61, %54
  %63 = fsub float %58, %62
  %64 = fptosi float %63 to i32
  %65 = fmul float %54, 7.000000e+00
  %66 = tail call float @llvm.fmuladd.f32(float %54, float 1.600000e+01, float %65)
  %67 = fdiv float 3.600000e+01, %54
  %68 = sitofp i32 %57 to float
  %69 = fadd float %67, %68
  %70 = fptosi float %69 to i32
  %71 = sitofp i32 %64 to float
  %72 = fadd float %67, %71
  %73 = fptosi float %72 to i32
  %74 = sitofp i32 %70 to float
  %75 = tail call float @llvm.fmuladd.f32(float %54, float -1.600000e+01, float %74)
  %76 = fptosi float %75 to i32
  %77 = sitofp i32 %73 to float
  %78 = tail call float @llvm.fmuladd.f32(float %54, float -1.600000e+01, float %77)
  %79 = fptosi float %78 to i32
  %80 = sitofp i32 %76 to float
  %81 = fadd float %66, %80
  %82 = fptosi float %81 to i32
  %83 = sitofp i32 %79 to float
  %84 = fadd float %66, %83
  %85 = fptosi float %84 to i32
  call void @BLI_rcti_init(ptr noundef nonnull %3, i32 noundef %76, i32 noundef %82, i32 noundef %79, i32 noundef %85) #13
  %86 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %3, ptr noundef %1) #13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %37
  %89 = load i32, ptr %1, align 4, !tbaa !103
  %90 = load i16, ptr %42, align 4, !tbaa !110
  %91 = sext i16 %90 to i32
  %92 = sub nsw i32 %89, %91
  %93 = mul nsw i32 %92, %92
  %94 = getelementptr inbounds i32, ptr %1, i64 1
  %95 = load i32, ptr %94, align 4, !tbaa !103
  %96 = load i16, ptr %44, align 2, !tbaa !111
  %97 = sext i16 %96 to i32
  %98 = sub nsw i32 %95, %97
  %99 = mul nsw i32 %98, %98
  %100 = add nuw nsw i32 %99, %93
  %101 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %102 = sitofp i16 %101 to float
  %103 = fmul float %102, 0x3FE3333340000000
  %104 = fmul float %103, %103
  %105 = fptosi float %104 to i32
  %106 = fmul float %102, 5.000000e+00
  %107 = fmul float %106, %106
  %108 = fptosi float %107 to i32
  %109 = fmul float %102, 6.500000e+00
  %110 = fmul float %109, %109
  %111 = fptosi float %110 to i32
  %112 = icmp slt i32 %100, %105
  %113 = icmp slt i32 %100, %108
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %88
  %116 = icmp slt i32 %100, %111
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = sub nsw i32 %100, %108
  %119 = sitofp i32 %118 to float
  %120 = sub nsw i32 %111, %108
  %121 = sitofp i32 %120 to float
  %122 = fdiv float %119, %121
  %123 = fsub float 1.000000e+00, %122
  br label %124

124:                                              ; preds = %115, %88, %37, %117
  %125 = phi float [ %123, %117 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %88 ], [ 0.000000e+00, %115 ]
  %126 = phi ptr [ null, %117 ], [ %10, %37 ], [ null, %88 ], [ null, %115 ]
  %127 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 10
  store float %125, ptr %127, align 8, !tbaa !114
  call void @ED_area_tag_redraw(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %131

128:                                              ; preds = %17, %14, %9
  %129 = load ptr, ptr %10, align 8, !tbaa !100
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %9, !llvm.loop !115

131:                                              ; preds = %128, %14, %17, %2, %124
  %132 = phi ptr [ %126, %124 ], [ null, %2 ], [ %10, %17 ], [ %10, %14 ], [ null, %128 ]
  ret ptr %132
}

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_screens_header_tools_menu_create(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !118
  %8 = icmp eq i16 %7, 1
  %9 = select i1 %8, ptr @.str.4, ptr @.str.6
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.5) #13
  %10 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 14
  %11 = load i16, ptr %10, align 2, !tbaa !120
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 38, i32 39
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %14, ptr noundef nonnull @.str.8) #13
  tail call void @uiItemS(ptr noundef %1) #13
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !99
  %17 = icmp eq i8 %16, 5
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.11, ptr @.str.9
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull %22, i32 noundef 0, ptr noundef nonnull @.str.10) #13
  br label %23

23:                                               ; preds = %18, %3
  ret void
}

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @uiItemS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_screen_animation_playing(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = icmp eq ptr %11, null
  br i1 %12, label %3, label %13, !llvm.loop !125

13:                                               ; preds = %3, %7
  %14 = phi ptr [ %9, %7 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18, !llvm.loop !125

18:                                               ; preds = %8, %12
  %19 = phi ptr [ %14, %12 ], [ null, %8 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ED_screen_animation_timer(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  tail call void @sound_stop_scene(ptr noundef %5) #13
  br label %35

22:                                               ; preds = %18
  %23 = icmp eq i32 %2, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @sound_play_scene(ptr noundef %5) #13
  br label %25

25:                                               ; preds = %24, %22
  %26 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !126
  tail call void @ED_screen_animation_timer(ptr noundef %0, i32 noundef %27, i32 noundef 15, i32 noundef %1, i32 noundef %2) #13
  %28 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !124
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.wmTimer, ptr %29, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !127
  %34 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  store ptr %34, ptr %33, align 8, !tbaa !130
  br label %35

35:                                               ; preds = %25, %31, %21
  ret i32 4
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @ED_screen_animation_timer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @sound_stop_scene(ptr noundef) local_unnamed_addr #1

declare void @sound_play_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_region_blend_factor(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !118
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %0, ptr %12
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi ptr [ %0, %5 ], [ %0, %1 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !127
  %23 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 6
  %24 = load double, ptr %23, align 8, !tbaa !134
  %25 = fptrunc double %24 to float
  %26 = fdiv float %25, 0x3FC99999A0000000
  %27 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %22, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !135
  %29 = icmp eq i32 %28, 0
  %30 = fsub float 0x3FEB851EA0000000, %26
  %31 = select i1 %29, float %26, float %30
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = fcmp ogt float %31, 1.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %15, %35, %33, %20
  %37 = phi float [ 1.000000e+00, %35 ], [ %31, %33 ], [ 0.000000e+00, %20 ], [ 1.000000e+00, %15 ]
  ret float %37
}

; Function Attrs: nounwind uwtable
define dso_local void @region_blend_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  tail call void @ED_region_tag_redraw(ptr noundef %2) #13
  %12 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %13) #13
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %11, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !135
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !139
  %25 = and i16 %24, -2
  store i16 %25, ptr %23, align 2, !tbaa !139
  br label %26

26:                                               ; preds = %16, %20
  %27 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %28 = load ptr, ptr %6, align 8, !tbaa !132
  tail call void @WM_event_remove_timer(ptr noundef %27, ptr noundef null, ptr noundef %28) #13
  store ptr null, ptr %6, align 8, !tbaa !132
  br label %29

29:                                               ; preds = %26, %3
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %31 = tail call ptr %30(i64 noundef 32, ptr noundef nonnull @.str.12) #13
  %32 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 10
  %33 = load i16, ptr %32, align 2, !tbaa !139
  %34 = and i16 %33, 1
  %35 = zext nneg i16 %34 to i32
  %36 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %31, i64 0, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !135
  store ptr %1, ptr %31, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %31, i64 0, i32 1
  store ptr %2, ptr %37, align 8, !tbaa !138
  %38 = and i16 %33, -2
  store i16 %38, ptr %32, align 2, !tbaa !139
  %39 = icmp eq i16 %34, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  tail call void @ED_area_initialize(ptr noundef %4, ptr noundef %5, ptr noundef %1) #13
  br label %43

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %42) #13
  br label %43

43:                                               ; preds = %41, %40
  %44 = load ptr, ptr %2, align 8, !tbaa !141
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 9
  %48 = load i16, ptr %47, align 8, !tbaa !118
  %49 = and i16 %48, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %31, i64 0, i32 2
  store ptr %44, ptr %52, align 8, !tbaa !137
  br label %53

53:                                               ; preds = %46, %51, %43
  %54 = tail call ptr @WM_event_add_timer(ptr noundef %4, ptr noundef %5, i32 noundef 279, double noundef 0x3FA47AE140000000) #13
  store ptr %54, ptr %6, align 8, !tbaa !132
  %55 = getelementptr inbounds %struct.wmTimer, ptr %54, i64 0, i32 5
  store ptr %31, ptr %55, align 8, !tbaa !127
  ret void
}

declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_screen() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_actionzone) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_repeat_last) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_repeat_history) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_redo_last) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_move) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_split) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_join) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_options) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_dupli) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_swap) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_quadview) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_scale) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_flip) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_flip) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_toggle_menus) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_toolbox) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screen_set) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screen_full_area) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_back_to_previous) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_spacedata_cleanup) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screenshot) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screencast) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_userpref_show) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_blend) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_frame_offset) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_frame_jump) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_keyframe_jump) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_marker_jump) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_step) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_play) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_cancel) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_new) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_delete) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_new) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_delete) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo_push) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_redo) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo_history) #13
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_actionzone(ptr nocapture noundef %0) #0 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actionzone_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @actionzone_modal, ptr %5, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @actionzone_area_poll, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @actionzone_cancel, ptr %7, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_repeat_last(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @repeat_last_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_repeat_history(ptr nocapture noundef %0) #0 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @repeat_history_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @repeat_history_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 1000) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_redo_last(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @redo_last_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_area_move(ptr nocapture noundef %0) #0 {
  store ptr @.str.78, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_move_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_move_invoke, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_move_cancel, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_move_modal, ptr %7, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screen_mainwinactive, ptr %8, align 8, !tbaa !149
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !152
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !152
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_area_split(ptr nocapture noundef %0) #0 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_split_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_split_invoke, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_split_modal, ptr %6, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_split_cancel, ptr %7, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screen_active_editable, ptr %8, align 8, !tbaa !149
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.88, ptr noundef nonnull @prop_direction_items, i32 noundef 104, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.75) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !152
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.90, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.75, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !152
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.92, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %17 = load ptr, ptr %10, align 8, !tbaa !152
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.94, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_area_join(ptr nocapture noundef %0) #0 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_join_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_join_invoke, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_join_modal, ptr %6, align 8, !tbaa !148
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screen_active_editable, ptr %7, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_join_cancel, ptr %8, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.103, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !152
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.105, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !152
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.107, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %17 = load ptr, ptr %10, align 8, !tbaa !152
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_options(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_area_options_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screen_mainwinactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_dupli(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_dupli_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_swap(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.118, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.119, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_swap_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_swap_modal, ptr %5, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_swap_cancel, ptr %7, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_quadview(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.121, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @region_quadview_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_scale(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @region_scale_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @region_scale_modal, ptr %5, align 8, !tbaa !148
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @region_scale_cancel, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %7, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_flip(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.129, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @region_flip_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_flip(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.131, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_flip_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.133, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_exec, ptr %4, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_toggle_menus(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_toggle_menus_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_toolbox(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @header_toolbox_invoke, ptr %4, align 8, !tbaa !147
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_screen_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.138, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_set_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_screen_full_area(ptr nocapture noundef %0) #0 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.141, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_maximize_area_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_back_to_previous(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.144, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.146, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @fullscreen_back_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_spacedata_cleanup(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @spacedata_cleanup_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !149
  ret void
}

declare void @SCREEN_OT_screenshot(ptr noundef) #1

declare void @SCREEN_OT_screencast(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_userpref_show(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.152, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.153, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @userpref_show_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_blend(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.154, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @region_blend_invoke, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !151
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_frame_offset(ptr nocapture noundef %0) #0 {
  store ptr @.str.156, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !146
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.157, ptr %3, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @frame_offset_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_frame_jump(ptr nocapture noundef %0) #0 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @frame_jump_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_keyframe_jump(ptr nocapture noundef %0) #0 {
  store ptr @.str.162, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.163, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyframe_jump_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.75) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_marker_jump(ptr nocapture noundef %0) #0 {
  store ptr @.str.166, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.167, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @marker_jump_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.75) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_animation_step(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.171, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_animation_step, ptr %4, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_animation_play(ptr nocapture noundef %0) #0 {
  store ptr @.str.173, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.174, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_animation_play_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176) #13
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #13
  %9 = load ptr, ptr %6, align 8, !tbaa !152
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179) #13
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCREEN_OT_animation_cancel(ptr nocapture noundef %0) #0 {
  store ptr @.str.180, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.181, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_animation_cancel_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.182, i32 noundef 1, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_new(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.185, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.186, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.187, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_new_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_delete(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.188, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.189, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.190, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_delete_exec, ptr %4, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SCENE_OT_new(ptr nocapture noundef %0) #0 {
  store ptr @.str.206, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.207, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.208, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @scene_new_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.209, ptr noundef nonnull @SCENE_OT_new.type_items, i32 noundef 0, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.75) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @SCENE_OT_delete(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.212, ptr %0, align 8, !tbaa !142
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.213, ptr %2, align 8, !tbaa !145
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.214, ptr %3, align 8, !tbaa !146
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @scene_delete_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !151
  ret void
}

declare void @ED_OT_undo(ptr noundef) #1

declare void @ED_OT_undo_push(ptr noundef) #1

declare void @ED_OT_redo(ptr noundef) #1

declare void @ED_OT_undo_history(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_screen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #13
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 0) #13
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 1) #13
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef 2) #13
  %12 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 20480, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %13 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 20480, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %14 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 20480, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %15 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 20480, i32 noundef 0, i32 noundef 2, i32 noundef 0) #13
  %16 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 20481, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %17 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 308, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %20 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #13
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %22 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0) #13
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef 273, i32 noundef -1, i32 noundef -1, i32 noundef 0) #13
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef 279, i32 noundef -1, i32 noundef -1, i32 noundef 0) #13
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 139, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef 1) #13
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 137, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef -1) #13
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 140, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 138, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 221, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 309, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef 1) #13
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 20482, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.31, i32 noundef 1) #13
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef 302, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef 302, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef 113, i32 noundef 1, i32 noundef 6, i32 noundef 0) #13
  %43 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef 302, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.36, i32 noundef 114, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %45 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.37, i32 noundef 304, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %46 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef 305, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %47 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.39, i32 noundef 307, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.41, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef 122, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.43, i32 noundef 122, i32 noundef 1, i32 noundef 3, i32 noundef 0) #13
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef 122, i32 noundef 1, i32 noundef 6, i32 noundef 0) #13
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef 311, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %56, ptr noundef nonnull @.str.46, i32 noundef 1) #13
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef 311, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %59, ptr noundef nonnull @.str.47, i32 noundef 1) #13
  %60 = load ptr, ptr %58, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef 1) #13
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.49, i32 noundef 310, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.50, i32 noundef 310, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef 117, i32 noundef 1, i32 noundef 6, i32 noundef 0) #13
  %65 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0) #13
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 140, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %68, ptr noundef nonnull @.str.30, i32 noundef 10) #13
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 138, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %71, ptr noundef nonnull @.str.30, i32 noundef -10) #13
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %74, ptr noundef nonnull @.str.30, i32 noundef -1) #13
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %75, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %77, ptr noundef nonnull @.str.30, i32 noundef 1) #13
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 11, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %80, ptr noundef nonnull @.str.30, i32 noundef 1) #13
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 10, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %82 = getelementptr inbounds %struct.wmKeyMapItem, ptr %81, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !155
  tail call void @RNA_int_set(ptr noundef %83, ptr noundef nonnull @.str.30, i32 noundef -1) #13
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 140, i32 noundef 1, i32 noundef 3, i32 noundef 0) #13
  %85 = getelementptr inbounds %struct.wmKeyMapItem, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %86, ptr noundef nonnull @.str.55, i32 noundef 1) #13
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 138, i32 noundef 1, i32 noundef 3, i32 noundef 0) #13
  %88 = getelementptr inbounds %struct.wmKeyMapItem, ptr %87, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %89, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 139, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %92, ptr noundef nonnull @.str.55, i32 noundef 1) #13
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 137, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %95, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.57, i32 noundef 1) #13
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.57, i32 noundef 0) #13
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 177, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %104, ptr noundef nonnull @.str.57, i32 noundef 1) #13
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 176, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %107, ptr noundef nonnull @.str.57, i32 noundef 0) #13
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 97, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 97, i32 noundef 1, i32 noundef 5, i32 noundef 0) #13
  %110 = getelementptr inbounds %struct.wmKeyMapItem, ptr %109, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !155
  tail call void @RNA_boolean_set(ptr noundef %111, ptr noundef nonnull @.str.59, i32 noundef 1) #13
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 174, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef 175, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %115 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0) #13
  %116 = tail call ptr @WM_dropbox_add(ptr noundef %115, ptr noundef nonnull @.str.62, ptr noundef nonnull @open_file_drop_poll, ptr noundef nonnull @open_file_drop_copy) #13
  %117 = tail call ptr @WM_dropbox_add(ptr noundef %115, ptr noundef nonnull @.str.63, ptr noundef nonnull @UI_drop_color_poll, ptr noundef nonnull @UI_drop_color_copy) #13
  %118 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.225, ptr noundef nonnull @keymap_modal_set.modal_items) #13
  %119 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #13
  %120 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #13
  %121 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #13
  %122 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #13
  %123 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #13
  %124 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %118, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #13
  tail call void @WM_modalkeymap_assign(ptr noundef %118, ptr noundef nonnull @.str.21) #13
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @open_file_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !157
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !159
  %10 = icmp eq i32 %9, 695
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @open_file_drop_copy(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %4, ptr noundef nonnull @.str.216, ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 7
  store i16 6, ptr %6, align 8, !tbaa !162
  ret void
}

declare i32 @UI_drop_color_poll(ptr noundef, ptr noundef, ptr noundef) #1

declare void @UI_drop_color_copy(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @actionzone_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.wmEvent, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %7 = tail call ptr @is_in_area_actionzone(ptr noundef %5, ptr noundef nonnull %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.68) #13
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !163
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  store ptr %13, ptr %11, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.sActionzoneData, ptr %11, i64 0, i32 2
  store ptr %7, ptr %14, align 8, !tbaa !167
  %15 = load i32, ptr %6, align 4, !tbaa !168
  %16 = getelementptr inbounds %struct.sActionzoneData, ptr %11, i64 0, i32 3
  store i32 %15, ptr %16, align 8, !tbaa !170
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !171
  %19 = getelementptr inbounds %struct.sActionzoneData, ptr %11, i64 0, i32 4
  store i32 %18, ptr %19, align 4, !tbaa !172
  %20 = getelementptr inbounds %struct.AZone, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !101
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %45

24:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #13
  %25 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %26 = load ptr, ptr %12, align 8, !tbaa !163
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = tail call i32 @RNA_int_get(ptr noundef %28, ptr noundef nonnull @.str.15) #13
  %30 = getelementptr inbounds %struct.sActionzoneData, ptr %26, i64 0, i32 6
  store i32 %29, ptr %30, align 4, !tbaa !174
  call void @wm_event_init_from_window(ptr noundef %25, ptr noundef nonnull %4) #13
  %31 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %32 = icmp eq i32 %21, 3
  %33 = select i1 %32, i16 20482, i16 20481
  %34 = icmp eq i32 %21, 1
  %35 = select i1 %34, i16 20480, i16 %33
  store i16 %35, ptr %31, align 8, !tbaa !175
  %36 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 0, ptr %36, align 2, !tbaa !176
  %37 = load ptr, ptr %12, align 8, !tbaa !163
  %38 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %37, ptr %38, align 8, !tbaa !177
  %39 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 1, ptr %39, align 2, !tbaa !178
  store ptr null, ptr %12, align 8, !tbaa !163
  call void @wm_event_add(ptr noundef %25, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #13
  %40 = load ptr, ptr %12, align 8, !tbaa !163
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %24
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %43(ptr noundef nonnull %40) #13
  br label %44

44:                                               ; preds = %24, %42
  store ptr null, ptr %12, align 8, !tbaa !163
  br label %47

45:                                               ; preds = %9
  %46 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %47

47:                                               ; preds = %3, %45, %44
  %48 = phi i32 [ 4, %44 ], [ 1, %45 ], [ 8, %3 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actionzone_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.wmEvent, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = tail call i32 @WM_window_pixels_x(ptr noundef %5) #13
  %10 = tail call i32 @WM_window_pixels_y(ptr noundef %5) #13
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !175
  switch i16 %12, label %108 [
    i16 4, label %13
    i16 218, label %96
    i16 1, label %99
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !168
  %16 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !170
  %18 = sub nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !171
  %21 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !172
  %23 = sub nsw i32 %20, %22
  %24 = tail call i32 @llvm.abs.i32(i32 %18, i1 true)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 5
  store i32 110, ptr %27, align 8, !tbaa !179
  br label %39

28:                                               ; preds = %13
  %29 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %30 = icmp sgt i32 %18, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 5
  store i32 101, ptr %32, align 8, !tbaa !179
  br label %39

33:                                               ; preds = %28
  %34 = sub nsw i32 0, %24
  %35 = icmp slt i32 %23, %34
  %36 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 5
  br i1 %35, label %37, label %38

37:                                               ; preds = %33
  store i32 115, ptr %36, align 8, !tbaa !179
  br label %39

38:                                               ; preds = %33
  store i32 119, ptr %36, align 8, !tbaa !179
  br label %39

39:                                               ; preds = %31, %38, %37, %26
  %40 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !167
  %42 = getelementptr inbounds %struct.AZone, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !101
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load ptr, ptr %8, align 8, !tbaa !165
  %47 = tail call ptr @is_in_area_actionzone(ptr noundef %46, ptr noundef nonnull %14)
  %48 = load ptr, ptr %40, align 8, !tbaa !167
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %108, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %14, align 4, !tbaa !168
  %52 = load i32, ptr %19, align 8, !tbaa !171
  %53 = tail call ptr @screen_find_active_scredge(ptr noundef %6, i32 noundef %9, i32 noundef %10, i32 noundef %51, i32 noundef %52) #13
  %54 = icmp eq ptr %53, null
  br label %60

55:                                               ; preds = %39
  %56 = icmp ugt i32 %24, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %55
  %58 = tail call i32 @llvm.abs.i32(i32 %23, i1 true)
  %59 = icmp ugt i32 %58, 1
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i1 [ %54, %50 ], [ %59, %57 ]
  br i1 %61, label %62, label %108

62:                                               ; preds = %55, %60
  %63 = load i32, ptr %14, align 4, !tbaa !168
  %64 = load i32, ptr %19, align 8, !tbaa !171
  %65 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  br label %66

66:                                               ; preds = %70, %62
  %67 = phi ptr [ %65, %62 ], [ %68, %70 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !100
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ScrArea, ptr %68, i64 0, i32 7
  %72 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %71, i32 noundef %63, i32 noundef %64) #13
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %66, label %74, !llvm.loop !180

74:                                               ; preds = %66, %70
  %75 = getelementptr inbounds %struct.sActionzoneData, ptr %8, i64 0, i32 1
  store ptr %68, ptr %75, align 8, !tbaa !181
  %76 = load ptr, ptr %40, align 8, !tbaa !167
  %77 = getelementptr inbounds %struct.AZone, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #13
  %79 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %80 = load ptr, ptr %7, align 8, !tbaa !163
  %81 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !173
  %83 = tail call i32 @RNA_int_get(ptr noundef %82, ptr noundef nonnull @.str.15) #13
  %84 = getelementptr inbounds %struct.sActionzoneData, ptr %80, i64 0, i32 6
  store i32 %83, ptr %84, align 4, !tbaa !174
  call void @wm_event_init_from_window(ptr noundef %79, ptr noundef nonnull %4) #13
  %85 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %86 = icmp eq i32 %78, 3
  %87 = select i1 %86, i16 20482, i16 20481
  %88 = icmp eq i32 %78, 1
  %89 = select i1 %88, i16 20480, i16 %87
  store i16 %89, ptr %85, align 8, !tbaa !175
  %90 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 0, ptr %90, align 2, !tbaa !176
  %91 = load ptr, ptr %7, align 8, !tbaa !163
  %92 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %91, ptr %92, align 8, !tbaa !177
  %93 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 1, ptr %93, align 2, !tbaa !178
  store ptr null, ptr %7, align 8, !tbaa !163
  call void @wm_event_add(ptr noundef %79, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #13
  %94 = load ptr, ptr %7, align 8, !tbaa !163
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %102

96:                                               ; preds = %3
  %97 = load ptr, ptr %7, align 8, !tbaa !163
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %102

99:                                               ; preds = %3
  %100 = load ptr, ptr %7, align 8, !tbaa !163
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99, %96, %74
  %103 = phi ptr [ %94, %74 ], [ %97, %96 ], [ %100, %99 ]
  %104 = phi i32 [ 4, %74 ], [ 2, %96 ], [ 2, %99 ]
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %105(ptr noundef nonnull %103) #13
  br label %106

106:                                              ; preds = %102, %99, %96, %74
  %107 = phi i32 [ 4, %74 ], [ 2, %96 ], [ 2, %99 ], [ %104, %102 ]
  store ptr null, ptr %7, align 8, !tbaa !163
  br label %108

108:                                              ; preds = %106, %45, %3, %60
  %109 = phi i32 [ 1, %60 ], [ 1, %3 ], [ 1, %45 ], [ %107, %106 ]
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actionzone_area_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %2, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %9, i64 0, i32 4
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 22
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AZone, ptr %16, i64 0, i32 9
  %20 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %19, ptr noundef nonnull %12) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %14, label %22, !llvm.loop !183

22:                                               ; preds = %14, %18, %1, %7
  %23 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 1, %18 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @actionzone_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %7(ptr noundef nonnull %4) #13
  br label %8

8:                                                ; preds = %2, %6
  store ptr null, ptr %3, align 8, !tbaa !163
  ret void
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

declare ptr @screen_find_active_scredge(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @repeat_last_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %9

9:                                                ; preds = %7, %2
  ret i32 2
}

declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @repeat_history_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 7
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  %13 = tail call ptr @RNA_struct_ui_name(ptr noundef %12) #13
  %14 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %13, i32 noundef 0) #13
  %15 = tail call ptr @uiPupMenuLayout(ptr noundef %14) #13
  %16 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 7, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %8, %34
  %20 = phi ptr [ %36, %34 ], [ %17, %8 ]
  %21 = phi i32 [ %22, %34 ], [ %6, %8 ]
  %22 = add nsw i32 %21, -1
  %23 = tail call zeroext i8 @WM_operator_repeat_check(ptr noundef %0, ptr noundef nonnull %20) #13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.wmOperator, ptr %20, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = tail call ptr @RNA_struct_ui_name(ptr noundef %29) #13
  %31 = load ptr, ptr %9, align 8, !tbaa !187
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  tail call void @uiItemIntO(ptr noundef %15, ptr noundef %30, i32 noundef 0, ptr noundef %33, ptr noundef nonnull @.str.73, i32 noundef %22) #13
  br label %34

34:                                               ; preds = %19, %25
  %35 = getelementptr inbounds %struct.wmOperator, ptr %20, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !100
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !188

38:                                               ; preds = %34, %8
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %14) #13
  br label %39

39:                                               ; preds = %3, %38
  %40 = phi i32 [ 32, %38 ], [ 2, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @repeat_history_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.73) #13
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #13
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %8) #13
  %11 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %8) #13
  br label %12

12:                                               ; preds = %10, %2
  ret i32 4
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #1

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @redo_last_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @WM_operator_redo_popup(ptr noundef %0, ptr noundef nonnull %4) #13
  br label %8

8:                                                ; preds = %6, %3
  ret i32 2
}

declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_redo_popup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_move_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @area_move_init(ptr noundef %0, ptr noundef %1), !range !189
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.30) #13
  %11 = getelementptr inbounds %struct.sAreaMoveData, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !190
  %13 = getelementptr inbounds %struct.sAreaMoveData, ptr %7, i64 0, i32 4
  %14 = load i8, ptr %13, align 4, !tbaa !192
  %15 = zext i8 %14 to i32
  %16 = load i32, ptr %7, align 4, !tbaa !193
  %17 = getelementptr inbounds %struct.sAreaMoveData, ptr %7, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !194
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %12, i32 noundef %10, i32 noundef %15, i32 noundef %16, i32 noundef %18)
  %19 = load ptr, ptr %6, align 8, !tbaa !163
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %22(ptr noundef nonnull %19) #13
  br label %23

23:                                               ; preds = %5, %21
  store ptr null, ptr %6, align 8, !tbaa !163
  %24 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scrverts(ptr noundef %24) #13
  %25 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %25) #13
  br label %26

26:                                               ; preds = %2, %23
  %27 = phi i32 [ 4, %23 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_move_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !168
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.80, i32 noundef %7) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !171
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef %10) #13
  %11 = tail call fastcc i32 @area_move_init(ptr noundef %0, ptr noundef %1), !range !189
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi i32 [ 1, %13 ], [ 8, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @area_move_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  tail call void @RNA_int_set(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef 0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = load ptr, ptr %3, align 8, !tbaa !173
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.30) #13
  %9 = getelementptr inbounds %struct.sAreaMoveData, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !190
  %11 = getelementptr inbounds %struct.sAreaMoveData, ptr %6, i64 0, i32 4
  %12 = load i8, ptr %11, align 4, !tbaa !192
  %13 = zext i8 %12 to i32
  %14 = load i32, ptr %6, align 4, !tbaa !193
  %15 = getelementptr inbounds %struct.sAreaMoveData, ptr %6, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !194
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %10, i32 noundef %8, i32 noundef %13, i32 noundef %14, i32 noundef %16)
  %17 = load ptr, ptr %5, align 8, !tbaa !163
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %20(ptr noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %2, %19
  store ptr null, ptr %5, align 8, !tbaa !163
  %22 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scrverts(ptr noundef %22) #13
  %23 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %23) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_move_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  switch i16 %7, label %62 [
    i16 4, label %8
    i16 20514, label %47
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.80) #13
  %12 = load ptr, ptr %9, align 8, !tbaa !173
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.82) #13
  %14 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 4
  %15 = load i8, ptr %14, align 4, !tbaa !192
  %16 = icmp eq i8 %15, 118
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !168
  %20 = sub nsw i32 %19, %11
  br label %25

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !171
  %24 = sub nsw i32 %23, %13
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  %27 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !195
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = srem i32 %26, %28
  %32 = sub nsw i32 %26, %31
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %26, %25 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !173
  tail call void @RNA_int_set(ptr noundef %35, ptr noundef nonnull @.str.30, i32 noundef %34) #13
  %36 = load ptr, ptr %4, align 8, !tbaa !163
  %37 = load ptr, ptr %9, align 8, !tbaa !173
  %38 = tail call i32 @RNA_int_get(ptr noundef %37, ptr noundef nonnull @.str.30) #13
  %39 = getelementptr inbounds %struct.sAreaMoveData, ptr %36, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !190
  %41 = getelementptr inbounds %struct.sAreaMoveData, ptr %36, i64 0, i32 4
  %42 = load i8, ptr %41, align 4, !tbaa !192
  %43 = zext i8 %42 to i32
  %44 = load i32, ptr %36, align 4, !tbaa !193
  %45 = getelementptr inbounds %struct.sAreaMoveData, ptr %36, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !194
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %40, i32 noundef %38, i32 noundef %43, i32 noundef %44, i32 noundef %46)
  br label %62

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %49 = load i16, ptr %48, align 2, !tbaa !176
  switch i16 %49, label %62 [
    i16 2, label %50
    i16 1, label %57
    i16 3, label %58
    i16 4, label %60
  ]

50:                                               ; preds = %47
  %51 = icmp eq ptr %5, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %53(ptr noundef nonnull %5) #13
  br label %54

54:                                               ; preds = %50, %52
  store ptr null, ptr %4, align 8, !tbaa !163
  %55 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scrverts(ptr noundef %55) #13
  %56 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %56) #13
  br label %62

57:                                               ; preds = %47
  tail call void @area_move_cancel(ptr noundef %0, ptr noundef %1)
  br label %62

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  store i32 10, ptr %59, align 4, !tbaa !195
  br label %62

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  store i32 0, ptr %61, align 4, !tbaa !195
  br label %62

62:                                               ; preds = %33, %3, %47, %60, %58, %57, %54
  %63 = phi i32 [ 2, %57 ], [ 4, %54 ], [ 1, %58 ], [ 1, %60 ], [ 1, %47 ], [ 1, %3 ], [ 1, %33 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @area_move_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #13
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.80) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !173
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.82) #13
  %12 = tail call ptr @screen_find_active_scredge(ptr noundef %3, i32 noundef %5, i32 noundef %6, i32 noundef %9, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %16 = tail call ptr %15(i64 noundef 20, ptr noundef nonnull @.str.85) #13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !163
  %18 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %12) #13
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 118, i8 104
  %21 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 4
  store i8 %20, ptr %21, align 4, !tbaa !192
  %22 = getelementptr inbounds %struct.ScrEdge, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 2
  %25 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3
  %26 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3, i32 1
  %27 = select i1 %19, ptr %25, ptr %26
  %28 = load i16, ptr %27, align 2, !tbaa !198
  %29 = sext i16 %28 to i32
  store i32 %29, ptr %24, align 4, !tbaa !190
  tail call void @select_connected_scredge(ptr noundef %3, ptr noundef nonnull %12) #13
  %30 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %14, %33
  %34 = phi ptr [ %38, %33 ], [ %31, %14 ]
  %35 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 4
  %36 = load i16, ptr %35, align 4, !tbaa !199
  %37 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 5
  store i16 %36, ptr %37, align 2, !tbaa !202
  %38 = load ptr, ptr %34, align 8, !tbaa !100
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !203

40:                                               ; preds = %33, %14
  %41 = load i8, ptr %21, align 4, !tbaa !192
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 1
  tail call fastcc void @area_move_set_limits(ptr noundef %3, i32 noundef %42, i32 noundef %5, i32 noundef %6, ptr noundef %16, ptr noundef nonnull %43)
  br label %44

44:                                               ; preds = %2, %40
  %45 = phi i32 [ 1, %40 ], [ 0, %2 ]
  ret i32 %45
}

declare zeroext i8 @scredge_is_horizontal(ptr noundef) local_unnamed_addr #1

declare void @select_connected_scredge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @area_move_set_limits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @ED_area_headersize() #13
  store i32 100000, ptr %5, align 4, !tbaa !103
  store i32 100000, ptr %4, align 4, !tbaa !103
  %8 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = icmp eq ptr %9, null
  br i1 %10, label %106, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 104
  %13 = add nsw i32 %2, -1
  %14 = sitofp i32 %7 to float
  %15 = add nsw i32 %3, -1
  br label %16

16:                                               ; preds = %11, %103
  %17 = phi ptr [ %9, %11 ], [ %104, %103 ]
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %21 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !202
  %23 = icmp eq i16 %22, 0
  br i1 %12, label %24, label %61

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 3, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !205
  %27 = icmp sgt i16 %26, 0
  %28 = fadd float %20, %14
  %29 = fptosi float %28 to i32
  %30 = select i1 %27, i32 %29, i32 %7
  %31 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !206
  %33 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 3, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !205
  %35 = sext i16 %34 to i32
  %36 = icmp sgt i32 %15, %35
  %37 = sitofp i32 %30 to float
  %38 = fadd float %20, %37
  %39 = fptosi float %38 to i32
  %40 = select i1 %36, i32 %39, i32 %30
  %41 = sext i16 %26 to i32
  %42 = add nsw i32 %35, 1
  %43 = add i32 %40, %41
  %44 = sub i32 %42, %43
  br i1 %23, label %51, label %45

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !207
  %48 = getelementptr inbounds %struct.ScrVert, ptr %47, i64 0, i32 5
  %49 = load i16, ptr %48, align 2, !tbaa !202
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %45, %24
  %52 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 5
  %53 = load i16, ptr %52, align 2, !tbaa !202
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %103, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !208
  %58 = getelementptr inbounds %struct.ScrVert, ptr %57, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !202
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %103, label %98

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !209
  %64 = icmp sgt i16 %63, 0
  %65 = fadd float %20, 3.200000e+01
  %66 = fptosi float %65 to i32
  %67 = select i1 %64, i32 %66, i32 32
  %68 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !207
  %70 = getelementptr inbounds %struct.ScrVert, ptr %69, i64 0, i32 3
  %71 = load i16, ptr %70, align 8, !tbaa !209
  %72 = sext i16 %71 to i32
  %73 = icmp sgt i32 %13, %72
  %74 = sitofp i32 %67 to float
  %75 = fadd float %20, %74
  %76 = fptosi float %75 to i32
  %77 = select i1 %73, i32 %76, i32 %67
  %78 = sext i16 %63 to i32
  %79 = add nsw i32 %72, 1
  %80 = add i32 %77, %78
  %81 = sub i32 %79, %80
  br i1 %23, label %88, label %82

82:                                               ; preds = %61
  %83 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !206
  %85 = getelementptr inbounds %struct.ScrVert, ptr %84, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !202
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82, %61
  %89 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !208
  %91 = getelementptr inbounds %struct.ScrVert, ptr %90, i64 0, i32 5
  %92 = load i16, ptr %91, align 2, !tbaa !202
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ScrVert, ptr %69, i64 0, i32 5
  %96 = load i16, ptr %95, align 2, !tbaa !202
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94, %82, %55, %45
  %99 = phi ptr [ %4, %45 ], [ %5, %55 ], [ %4, %82 ], [ %5, %94 ]
  %100 = phi i32 [ %44, %45 ], [ %44, %55 ], [ %81, %82 ], [ %81, %94 ]
  %101 = load i32, ptr %99, align 4, !tbaa !103
  %102 = tail call i32 @llvm.smin.i32(i32 %101, i32 %100)
  store i32 %102, ptr %99, align 4, !tbaa !103
  br label %103

103:                                              ; preds = %98, %94, %88, %55, %51
  %104 = load ptr, ptr %17, align 8, !tbaa !100
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %16, !llvm.loop !210

106:                                              ; preds = %103, %6
  ret void
}

declare i32 @ED_area_headersize() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %8 = tail call i32 @WM_window_pixels_x(ptr noundef %7) #13
  %9 = tail call i32 @WM_window_pixels_y(ptr noundef %7) #13
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = icmp eq ptr %12, null
  br i1 %13, label %126, label %14

14:                                               ; preds = %6
  %15 = sub nsw i32 0, %5
  %16 = icmp sgt i32 %15, %2
  %17 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %18 = select i1 %16, i32 %15, i32 %17
  %19 = icmp eq i32 %3, 118
  %20 = add nsw i32 %8, -1
  %21 = add nsw i32 %18, %1
  %22 = icmp eq i32 %18, %4
  %23 = icmp eq i32 %18, %15
  %24 = select i1 %22, i1 true, i1 %23
  %25 = shl i32 %21, 16
  %26 = ashr exact i32 %25, 16
  %27 = srem i32 %26, 4
  %28 = sub i32 %21, %27
  %29 = shl i32 %28, 16
  %30 = ashr exact i32 %29, 16
  %31 = sub nsw i32 %1, %5
  %32 = icmp slt i32 %30, %31
  %33 = add nsw i32 %4, %1
  %34 = tail call i32 @llvm.smin.i32(i32 %30, i32 %33)
  %35 = select i1 %32, i32 %31, i32 %34
  %36 = icmp eq i32 %3, 104
  %37 = add nsw i32 %9, -1
  %38 = add nsw i32 %18, %1
  %39 = icmp eq i32 %18, %4
  %40 = icmp eq i32 %18, %5
  %41 = or i1 %39, %40
  %42 = shl i32 %38, 16
  %43 = ashr exact i32 %42, 16
  %44 = srem i32 %43, 4
  %45 = sub i32 %38, %44
  %46 = shl i32 %45, 16
  %47 = ashr exact i32 %46, 16
  %48 = sub nsw i32 %1, %5
  %49 = icmp slt i32 %47, %48
  %50 = add nsw i32 %4, %1
  %51 = tail call i32 @llvm.smin.i32(i32 %47, i32 %50)
  %52 = select i1 %49, i32 %48, i32 %51
  %53 = select i1 %24, i32 %21, i32 %35
  %54 = trunc i32 %53 to i16
  %55 = select i1 %41, i32 %38, i32 %52
  %56 = trunc i32 %55 to i16
  br label %57

57:                                               ; preds = %14, %86
  %58 = phi ptr [ %12, %14 ], [ %88, %86 ]
  %59 = phi i32 [ 0, %14 ], [ %87, %86 ]
  %60 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 5
  %61 = load i16, ptr %60, align 2, !tbaa !202
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %57
  br i1 %19, label %64, label %74

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !209
  %67 = icmp sgt i16 %66, 0
  %68 = zext nneg i16 %66 to i32
  %69 = icmp sgt i32 %20, %68
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  store i16 %54, ptr %65, align 8, !tbaa !209
  %72 = icmp eq i16 %66, %54
  %73 = select i1 %72, i32 %59, i32 1
  br label %74

74:                                               ; preds = %71, %64, %63
  %75 = phi i32 [ %59, %64 ], [ %59, %63 ], [ %73, %71 ]
  br i1 %36, label %76, label %86

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.ScrVert, ptr %58, i64 0, i32 3, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !205
  %79 = icmp sgt i16 %78, 0
  %80 = zext nneg i16 %78 to i32
  %81 = icmp sgt i32 %37, %80
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  store i16 %56, ptr %77, align 2, !tbaa !205
  %84 = icmp eq i16 %78, %56
  %85 = select i1 %84, i32 %75, i32 1
  br label %86

86:                                               ; preds = %83, %57, %76, %74
  %87 = phi i32 [ %75, %76 ], [ %75, %74 ], [ %59, %57 ], [ %85, %83 ]
  %88 = load ptr, ptr %58, align 8, !tbaa !100
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %57, !llvm.loop !211

90:                                               ; preds = %86
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %126, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !100
  %95 = icmp eq ptr %94, null
  br i1 %95, label %125, label %96

96:                                               ; preds = %92, %122
  %97 = phi ptr [ %123, %122 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !204
  %100 = getelementptr inbounds %struct.ScrVert, ptr %99, i64 0, i32 5
  %101 = load i16, ptr %100, align 2, !tbaa !202
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !206
  %106 = getelementptr inbounds %struct.ScrVert, ptr %105, i64 0, i32 5
  %107 = load i16, ptr %106, align 2, !tbaa !202
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !208
  %112 = getelementptr inbounds %struct.ScrVert, ptr %111, i64 0, i32 5
  %113 = load i16, ptr %112, align 2, !tbaa !202
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.ScrArea, ptr %97, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !207
  %118 = getelementptr inbounds %struct.ScrVert, ptr %117, i64 0, i32 5
  %119 = load i16, ptr %118, align 2, !tbaa !202
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115, %109, %103, %96
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %97) #13
  br label %122

122:                                              ; preds = %115, %121
  %123 = load ptr, ptr %97, align 8, !tbaa !100
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %96, !llvm.loop !212

125:                                              ; preds = %122, %92
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %126

126:                                              ; preds = %6, %125, %90
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @removedouble_scrverts(ptr noundef) local_unnamed_addr #1

declare void @removedouble_scredges(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_split_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %4 = tail call i32 @ED_area_headersize() #13
  %5 = icmp eq ptr %3, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.88) #13
  %10 = icmp eq i32 %9, 118
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !213
  %14 = icmp slt i16 %13, 64
  br i1 %14, label %41, label %15

15:                                               ; preds = %11, %6
  %16 = icmp eq i32 %9, 104
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %19 = load i16, ptr %18, align 4, !tbaa !214
  %20 = sext i16 %19 to i32
  %21 = shl i32 %4, 1
  %22 = add i32 %21, 2
  %23 = icmp sgt i32 %22, %20
  br i1 %23, label %41, label %24

24:                                               ; preds = %17, %15
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %26 = tail call ptr %25(i64 noundef 64, ptr noundef nonnull @.str.96) #13
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !163
  %28 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 10
  store ptr %3, ptr %28, align 8, !tbaa !215
  %29 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 10
  %30 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %31 = select i1 %10, ptr %29, ptr %30
  %32 = load i16, ptr %31, align 2, !tbaa !198
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 7
  store i32 %33, ptr %34, align 4, !tbaa !217
  %35 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 7
  %36 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 7, i32 2
  %37 = select i1 %10, ptr %35, ptr %36
  %38 = load i32, ptr %37, align 8, !tbaa !103
  %39 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 6
  store i32 %38, ptr %39, align 8, !tbaa !218
  %40 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef %1), !range !189
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef %1)
  br label %41

41:                                               ; preds = %17, %11, %2, %24
  %42 = phi i32 [ 4, %24 ], [ 2, %2 ], [ 2, %11 ], [ 2, %17 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_split_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #13
  %7 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #13
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !219
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %181

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !175
  %14 = icmp eq i16 %13, 20480
  br i1 %14, label %15, label %112

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %17 = load ptr, ptr %16, align 8, !tbaa !177
  %18 = icmp eq ptr %17, null
  br i1 %18, label %109, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !174
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %109, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !165
  %25 = icmp eq ptr %24, null
  br i1 %25, label %109, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !167
  %29 = icmp eq ptr %28, null
  br i1 %29, label %109, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %32 = load ptr, ptr %17, align 8, !tbaa !165
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !179
  switch i32 %40, label %51 [
    i32 110, label %41
    i32 115, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !168
  %44 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !204
  %46 = getelementptr inbounds %struct.ScrVert, ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !209
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %43, %48
  %50 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 10
  br label %61

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !171
  %54 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !204
  %56 = getelementptr inbounds %struct.ScrVert, ptr %55, i64 0, i32 3, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !205
  %58 = sext i16 %57 to i32
  %59 = sub nsw i32 %53, %58
  %60 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 11
  br label %61

61:                                               ; preds = %51, %41
  %62 = phi ptr [ %60, %51 ], [ %50, %41 ]
  %63 = phi i32 [ %59, %51 ], [ %49, %41 ]
  %64 = phi i32 [ 118, %51 ], [ 104, %41 ]
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !173
  %67 = sitofp i32 %63 to float
  %68 = load i16, ptr %62, align 2, !tbaa !198
  %69 = sitofp i16 %68 to float
  %70 = fdiv float %67, %69
  tail call void @RNA_float_set(ptr noundef %66, ptr noundef nonnull @.str.90, float noundef %70) #13
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !173
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.88, i32 noundef %64) #13
  %73 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %74 = tail call i32 @ED_area_headersize() #13
  %75 = icmp eq ptr %73, null
  br i1 %75, label %109, label %76

76:                                               ; preds = %61
  %77 = load ptr, ptr %71, align 8, !tbaa !173
  %78 = tail call i32 @RNA_enum_get(ptr noundef %77, ptr noundef nonnull @.str.88) #13
  %79 = icmp eq i32 %78, 118
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 10
  %82 = load i16, ptr %81, align 2, !tbaa !213
  %83 = icmp slt i16 %82, 64
  br i1 %83, label %109, label %84

84:                                               ; preds = %80, %76
  %85 = icmp eq i32 %78, 104
  br i1 %85, label %86, label %93

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 11
  %88 = load i16, ptr %87, align 4, !tbaa !214
  %89 = sext i16 %88 to i32
  %90 = shl i32 %74, 1
  %91 = add i32 %90, 2
  %92 = icmp sgt i32 %91, %89
  br i1 %92, label %109, label %93

93:                                               ; preds = %86, %84
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %95 = tail call ptr %94(i64 noundef 64, ptr noundef nonnull @.str.96) #13
  %96 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %95, ptr %96, align 8, !tbaa !163
  %97 = getelementptr inbounds %struct.sAreaSplitData, ptr %95, i64 0, i32 10
  store ptr %73, ptr %97, align 8, !tbaa !215
  %98 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 10
  %99 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 11
  %100 = select i1 %79, ptr %98, ptr %99
  %101 = load i16, ptr %100, align 2, !tbaa !198
  %102 = sext i16 %101 to i32
  %103 = getelementptr inbounds %struct.sAreaSplitData, ptr %95, i64 0, i32 7
  store i32 %102, ptr %103, align 4, !tbaa !217
  %104 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7
  %105 = getelementptr inbounds %struct.ScrArea, ptr %73, i64 0, i32 7, i32 2
  %106 = select i1 %79, ptr %104, ptr %105
  %107 = load i32, ptr %106, align 8, !tbaa !103
  %108 = getelementptr inbounds %struct.sAreaSplitData, ptr %95, i64 0, i32 6
  store i32 %107, ptr %108, align 8, !tbaa !218
  br label %109

109:                                              ; preds = %93, %86, %80, %61, %30, %34, %23, %26, %15, %19
  %110 = phi i1 [ false, %19 ], [ false, %15 ], [ false, %26 ], [ false, %23 ], [ false, %34 ], [ false, %30 ], [ true, %93 ], [ false, %61 ], [ false, %80 ], [ false, %86 ]
  %111 = phi i32 [ undef, %19 ], [ undef, %15 ], [ undef, %26 ], [ undef, %23 ], [ undef, %34 ], [ undef, %30 ], [ %64, %93 ], [ %64, %61 ], [ %64, %80 ], [ %64, %86 ]
  br i1 %110, label %160, label %181

112:                                              ; preds = %11
  %113 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !173
  %115 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %114, ptr noundef nonnull @.str.92) #13
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr %113, align 8, !tbaa !173
  %119 = tail call i32 @RNA_int_get(ptr noundef %118, ptr noundef nonnull @.str.92) #13
  br label %123

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %122 = load i32, ptr %121, align 4, !tbaa !168
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i32 [ %119, %117 ], [ %122, %120 ]
  %125 = load ptr, ptr %113, align 8, !tbaa !173
  %126 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %125, ptr noundef nonnull @.str.94) #13
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %113, align 8, !tbaa !173
  %130 = tail call i32 @RNA_int_get(ptr noundef %129, ptr noundef nonnull @.str.94) #13
  br label %134

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %133 = load i32, ptr %132, align 4, !tbaa !168
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i32 [ %130, %128 ], [ %133, %131 ]
  %136 = tail call ptr @screen_find_active_scredge(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %124, i32 noundef %135) #13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %134
  %139 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %136) #13
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %140, i32 104, i32 118
  %142 = load ptr, ptr %113, align 8, !tbaa !173
  tail call void @RNA_enum_set(ptr noundef %142, ptr noundef nonnull @.str.88, i32 noundef %141) #13
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %144 = tail call ptr %143(i64 noundef 64, ptr noundef nonnull @.str.96) #13
  %145 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %144, ptr %145, align 8, !tbaa !163
  %146 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %147 = getelementptr inbounds %struct.sAreaSplitData, ptr %144, i64 0, i32 10
  store ptr %146, ptr %147, align 8, !tbaa !215
  %148 = icmp eq ptr %146, null
  br i1 %148, label %158, label %149

149:                                              ; preds = %138
  %150 = load ptr, ptr %113, align 8, !tbaa !173
  %151 = tail call i32 @RNA_enum_get(ptr noundef %150, ptr noundef nonnull @.str.88) #13
  %152 = icmp eq i32 %151, 104
  %153 = load ptr, ptr %147, align 8, !tbaa !215
  %154 = getelementptr inbounds %struct.ScrArea, ptr %153, i64 0, i32 14
  %155 = load i16, ptr %154, align 2, !tbaa !120
  %156 = select i1 %152, i16 16, i16 32
  %157 = or i16 %155, %156
  store i16 %157, ptr %154, align 2, !tbaa !120
  br label %158

158:                                              ; preds = %149, %138, %134
  %159 = phi i32 [ undef, %134 ], [ %141, %138 ], [ %141, %149 ]
  br i1 %137, label %181, label %160

160:                                              ; preds = %158, %109
  %161 = phi i32 [ %111, %109 ], [ %159, %158 ]
  %162 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !163
  %164 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !168
  store i32 %165, ptr %163, align 8, !tbaa !220
  %166 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %167 = load i32, ptr %166, align 8, !tbaa !171
  %168 = getelementptr inbounds %struct.sAreaSplitData, ptr %163, i64 0, i32 1
  store i32 %167, ptr %168, align 4, !tbaa !221
  %169 = load i16, ptr %12, align 8, !tbaa !175
  %170 = icmp eq i16 %169, 20480
  br i1 %170, label %171, label %177

171:                                              ; preds = %160
  %172 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef %1), !range !189
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.sAreaSplitData, ptr %163, i64 0, i32 3
  %176 = getelementptr inbounds %struct.sAreaSplitData, ptr %163, i64 0, i32 4
  tail call fastcc void @area_move_set_limits(ptr noundef %5, i32 noundef %161, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %175, ptr noundef nonnull %176)
  br label %179

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.sAreaSplitData, ptr %163, i64 0, i32 8
  store i32 1, ptr %178, align 8, !tbaa !222
  br label %179

179:                                              ; preds = %174, %177
  %180 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %181

181:                                              ; preds = %179, %171, %3, %109, %158
  %182 = phi i32 [ 8, %109 ], [ 2, %158 ], [ 2, %3 ], [ 8, %171 ], [ 1, %179 ]
  ret i32 %182
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_split_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  switch i16 %7, label %140 [
    i16 4, label %8
    i16 1, label %95
    i16 2, label %106
    i16 219, label %106
    i16 3, label %139
    i16 218, label %139
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.88) #13
  %12 = icmp eq i32 %11, 118
  %13 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !223
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = select i1 %12, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4, !tbaa !103
  %19 = sub nsw i32 %18, %14
  %20 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 5
  store i32 %19, ptr %20, align 4, !tbaa !224
  %21 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !222
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !223
  %27 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !225
  %29 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !226
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %26, i32 noundef %19, i32 noundef %11, i32 noundef %28, i32 noundef %30)
  br label %81

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !215
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ScrArea, ptr %33, i64 0, i32 14
  %37 = load i16, ptr %36, align 2, !tbaa !120
  %38 = and i16 %37, -49
  store i16 %38, ptr %36, align 2, !tbaa !120
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %33) #13
  br label %39

39:                                               ; preds = %35, %31
  %40 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !168
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !171
  %45 = getelementptr inbounds %struct.bScreen, ptr %40, i64 0, i32 3
  br label %46

46:                                               ; preds = %50, %39
  %47 = phi ptr [ %45, %39 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ScrArea, ptr %48, i64 0, i32 7
  %52 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %51, i32 noundef %42, i32 noundef %44) #13
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %46, label %54, !llvm.loop !180

54:                                               ; preds = %50
  store ptr %48, ptr %32, align 8, !tbaa !215
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %48) #13
  %55 = load ptr, ptr %32, align 8, !tbaa !215
  %56 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 7
  %57 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 6
  %58 = getelementptr inbounds %struct.ScrArea, ptr %55, i64 0, i32 14
  br i1 %12, label %59, label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ScrArea, ptr %55, i64 0, i32 10
  %61 = load i16, ptr %60, align 2, !tbaa !213
  %62 = sext i16 %61 to i32
  store i32 %62, ptr %56, align 4, !tbaa !217
  %63 = getelementptr inbounds %struct.ScrArea, ptr %55, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !227
  store i32 %64, ptr %57, align 8, !tbaa !218
  %65 = load i16, ptr %58, align 2, !tbaa !120
  %66 = or i16 %65, 32
  store i16 %66, ptr %58, align 2, !tbaa !120
  br label %76

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.ScrArea, ptr %55, i64 0, i32 11
  %69 = load i16, ptr %68, align 4, !tbaa !214
  %70 = sext i16 %69 to i32
  store i32 %70, ptr %56, align 4, !tbaa !217
  %71 = getelementptr inbounds %struct.ScrArea, ptr %55, i64 0, i32 7, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !228
  store i32 %72, ptr %57, align 8, !tbaa !218
  %73 = load i16, ptr %58, align 2, !tbaa !120
  %74 = or i16 %73, 16
  store i16 %74, ptr %58, align 2, !tbaa !120
  br label %76

75:                                               ; preds = %46
  store ptr %48, ptr %32, align 8, !tbaa !215
  br label %76

76:                                               ; preds = %75, %59, %67
  %77 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %78 = getelementptr inbounds %struct.wmWindow, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !122
  %80 = getelementptr inbounds %struct.bScreen, ptr %79, i64 0, i32 12
  store i16 1, ptr %80, align 2, !tbaa !229
  br label %81

81:                                               ; preds = %76, %24
  %82 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !218
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %85 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %86 = select i1 %12, ptr %85, ptr %84
  %87 = load i32, ptr %86, align 4, !tbaa !103
  %88 = sub nsw i32 %87, %83
  %89 = sitofp i32 %88 to float
  %90 = load ptr, ptr %9, align 8, !tbaa !173
  %91 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 7
  %92 = load i32, ptr %91, align 4, !tbaa !217
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %89, %93
  tail call void @RNA_float_set(ptr noundef %90, ptr noundef nonnull @.str.90, float noundef %94) #13
  br label %140

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %97 = load i32, ptr %96, align 8, !tbaa !222
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef %1), !range !189
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef %1)
  br label %140

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %103 = load i16, ptr %102, align 2, !tbaa !176
  %104 = icmp eq i16 %103, 2
  br i1 %104, label %105, label %140

105:                                              ; preds = %101
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef %1)
  br label %140

106:                                              ; preds = %3, %3
  %107 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !222
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %140, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !173
  %113 = tail call i32 @RNA_enum_get(ptr noundef %112, ptr noundef nonnull @.str.88) #13
  %114 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !176
  %116 = icmp eq i16 %115, 1
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !215
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ScrArea, ptr %119, i64 0, i32 14
  %123 = load i16, ptr %122, align 2, !tbaa !120
  %124 = and i16 %123, -49
  store i16 %124, ptr %122, align 2, !tbaa !120
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %119) #13
  %125 = icmp eq i32 %113, 118
  %126 = load ptr, ptr %111, align 8, !tbaa !173
  br i1 %125, label %127, label %133

127:                                              ; preds = %121
  tail call void @RNA_enum_set(ptr noundef %126, ptr noundef nonnull @.str.88, i32 noundef 104) #13
  %128 = load ptr, ptr %118, align 8, !tbaa !215
  %129 = getelementptr inbounds %struct.ScrArea, ptr %128, i64 0, i32 14
  %130 = load i16, ptr %129, align 2, !tbaa !120
  %131 = or i16 %130, 16
  store i16 %131, ptr %129, align 2, !tbaa !120
  %132 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_set(ptr noundef %132, i32 noundef 1003) #13
  br label %140

133:                                              ; preds = %121
  tail call void @RNA_enum_set(ptr noundef %126, ptr noundef nonnull @.str.88, i32 noundef 118) #13
  %134 = load ptr, ptr %118, align 8, !tbaa !215
  %135 = getelementptr inbounds %struct.ScrArea, ptr %134, i64 0, i32 14
  %136 = load i16, ptr %135, align 2, !tbaa !120
  %137 = or i16 %136, 32
  store i16 %137, ptr %135, align 2, !tbaa !120
  %138 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_set(ptr noundef %138, i32 noundef 1004) #13
  br label %140

139:                                              ; preds = %3, %3
  tail call void @area_split_cancel(ptr noundef %0, ptr noundef %1)
  br label %140

140:                                              ; preds = %81, %3, %101, %110, %127, %133, %117, %106, %139, %105, %99
  %141 = phi i32 [ 2, %139 ], [ 4, %99 ], [ 4, %105 ], [ 1, %106 ], [ 1, %117 ], [ 1, %133 ], [ 1, %127 ], [ 1, %110 ], [ 1, %101 ], [ 1, %3 ], [ 1, %81 ]
  ret i32 %141
}

; Function Attrs: nounwind uwtable
define internal void @area_split_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !222
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !215
  %12 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = tail call i32 @screen_area_join(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %18 = load ptr, ptr %12, align 8, !tbaa !230
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #13
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #13
  br label %21

21:                                               ; preds = %20, %16
  store ptr null, ptr %12, align 8, !tbaa !230
  br label %22

22:                                               ; preds = %8, %21, %2
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @screen_active_editable(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.bScreen, ptr %8, i64 0, i32 9
  %10 = load i16, ptr %9, align 8, !tbaa !219
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @area_split_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.90) #13
  %9 = load ptr, ptr %6, align 8, !tbaa !173
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.88) #13
  %11 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !215
  %13 = trunc i32 %10 to i8
  %14 = tail call ptr @area_split(ptr noundef %3, ptr noundef %12, i8 noundef zeroext %13, float noundef %8, i32 noundef 0) #13
  %15 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 11
  store ptr %14, ptr %15, align 8, !tbaa !230
  %16 = icmp eq ptr %14, null
  br i1 %16, label %85, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %11, align 8, !tbaa !215
  %19 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !206
  %23 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !208
  %25 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !207
  %27 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !204
  %29 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !206
  %31 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !208
  %33 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !207
  %35 = icmp eq ptr %20, %34
  %36 = icmp eq ptr %22, %32
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = tail call ptr @screen_findedge(ptr noundef %3, ptr noundef %20, ptr noundef %22) #13
  br label %58

40:                                               ; preds = %17
  %41 = icmp eq ptr %22, %28
  %42 = icmp eq ptr %24, %34
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call ptr @screen_findedge(ptr noundef %3, ptr noundef %22, ptr noundef %24) #13
  br label %58

46:                                               ; preds = %40
  %47 = icmp eq ptr %24, %30
  %48 = icmp eq ptr %26, %28
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call ptr @screen_findedge(ptr noundef %3, ptr noundef %24, ptr noundef %26) #13
  br label %58

52:                                               ; preds = %46
  %53 = icmp eq ptr %20, %30
  %54 = icmp eq ptr %26, %32
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call ptr @screen_findedge(ptr noundef %3, ptr noundef %20, ptr noundef %26) #13
  br label %58

58:                                               ; preds = %38, %44, %50, %52, %56
  %59 = phi ptr [ %39, %38 ], [ %45, %44 ], [ %51, %50 ], [ %57, %56 ], [ null, %52 ]
  %60 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 9
  store ptr %59, ptr %60, align 8, !tbaa !231
  %61 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !100
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %58, %64
  %65 = phi ptr [ %67, %64 ], [ %62, %58 ]
  %66 = getelementptr inbounds %struct.ScrVert, ptr %65, i64 0, i32 5
  store i16 0, ptr %66, align 2, !tbaa !202
  %67 = load ptr, ptr %65, align 8, !tbaa !100
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %64, !llvm.loop !232

69:                                               ; preds = %64, %58
  %70 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !196
  %72 = getelementptr inbounds %struct.ScrVert, ptr %71, i64 0, i32 5
  store i16 1, ptr %72, align 2, !tbaa !202
  %73 = getelementptr inbounds %struct.ScrEdge, ptr %59, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !233
  %75 = getelementptr inbounds %struct.ScrVert, ptr %74, i64 0, i32 5
  store i16 1, ptr %75, align 2, !tbaa !202
  %76 = icmp eq i32 %10, 104
  %77 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 2
  %78 = getelementptr inbounds %struct.ScrVert, ptr %71, i64 0, i32 3
  %79 = getelementptr inbounds %struct.ScrVert, ptr %71, i64 0, i32 3, i32 1
  %80 = select i1 %76, ptr %79, ptr %78
  %81 = load i16, ptr %80, align 2, !tbaa !198
  %82 = sext i16 %81 to i32
  store i32 %82, ptr %77, align 8, !tbaa !223
  %83 = load ptr, ptr %11, align 8, !tbaa !215
  tail call void @ED_area_tag_redraw(ptr noundef %83) #13
  %84 = load ptr, ptr %15, align 8, !tbaa !230
  tail call void @ED_area_tag_redraw(ptr noundef %84) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %85

85:                                               ; preds = %2, %69
  %86 = phi i32 [ 1, %69 ], [ 0, %2 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal fastcc void @area_split_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !215
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %13) #13
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %7, align 8, !tbaa !215
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !120
  %22 = and i16 %21, -49
  store i16 %22, ptr %20, align 2, !tbaa !120
  br label %23

23:                                               ; preds = %19, %16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %25 = load ptr, ptr %3, align 8, !tbaa !163
  tail call void %24(ptr noundef %25) #13
  store ptr null, ptr %3, align 8, !tbaa !163
  br label %26

26:                                               ; preds = %23, %2
  %27 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %27) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  %28 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scrverts(ptr noundef %28) #13
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %29) #13
  ret void
}

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @area_split(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i32 noundef) local_unnamed_addr #1

declare ptr @screen_findedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @screen_area_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_join_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @area_join_init(ptr noundef %0, ptr noundef %1), !range !189
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %11 = load ptr, ptr %7, align 8, !tbaa !234
  %12 = getelementptr inbounds %struct.sAreaJoinData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  %14 = tail call i32 @screen_area_join(ptr noundef %0, ptr noundef %10, ptr noundef %11, ptr noundef %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %18 = load ptr, ptr %12, align 8, !tbaa !236
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #13
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #13
  br label %21

21:                                               ; preds = %5, %9, %16, %20
  %22 = load ptr, ptr %6, align 8, !tbaa !163
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %25(ptr noundef nonnull %22) #13
  store ptr null, ptr %6, align 8, !tbaa !163
  br label %26

26:                                               ; preds = %21, %24
  %27 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %27) #13
  %28 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scredges(ptr noundef %28) #13
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scrverts(ptr noundef %29) #13
  br label %30

30:                                               ; preds = %2, %26
  %31 = phi i32 [ 4, %26 ], [ 2, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_join_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !175
  %6 = icmp eq i16 %5, 20480
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !174
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !165
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !181
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %16, %20
  %23 = or i1 %21, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !170
  tail call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.103, i32 noundef %28) #13
  %29 = load ptr, ptr %25, align 8, !tbaa !173
  %30 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !172
  tail call void @RNA_int_set(ptr noundef %29, ptr noundef nonnull @.str.105, i32 noundef %31) #13
  %32 = load ptr, ptr %25, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !168
  tail call void @RNA_int_set(ptr noundef %32, ptr noundef nonnull @.str.107, i32 noundef %34) #13
  %35 = load ptr, ptr %25, align 8, !tbaa !173
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !171
  tail call void @RNA_int_set(ptr noundef %35, ptr noundef nonnull @.str.109, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %24, %3
  %39 = tail call fastcc i32 @area_join_init(ptr noundef %0, ptr noundef %1), !range !189
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %43

43:                                               ; preds = %11, %7, %18, %15, %38, %41
  %44 = phi i32 [ 1, %41 ], [ 8, %38 ], [ 8, %15 ], [ 8, %18 ], [ 8, %7 ], [ 8, %11 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_join_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !175
  switch i16 %8, label %164 [
    i16 4, label %9
    i16 1, label %109
    i16 3, label %140
    i16 218, label %140
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 3
  br label %15

15:                                               ; preds = %19, %9
  %16 = phi ptr [ %14, %9 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %164, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7
  %21 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %20, i32 noundef %11, i32 noundef %13) #13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %15, label %23, !llvm.loop !180

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 8, !tbaa !234
  %25 = icmp eq ptr %24, %17
  br i1 %25, label %74, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @area_getorientation(ptr noundef %24, ptr noundef nonnull %17) #13
  %28 = icmp eq i32 %27, -1
  %29 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !236
  br i1 %28, label %41, label %31

31:                                               ; preds = %26
  %32 = icmp eq ptr %30, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 14
  %35 = load i16, ptr %34, align 2, !tbaa !120
  %36 = and i16 %35, -3
  store i16 %36, ptr %34, align 2, !tbaa !120
  br label %37

37:                                               ; preds = %33, %31
  store ptr %17, ptr %29, align 8, !tbaa !236
  %38 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %39 = load i16, ptr %38, align 2, !tbaa !120
  %40 = or i16 %39, 2
  store i16 %40, ptr %38, align 2, !tbaa !120
  br label %73

41:                                               ; preds = %26
  %42 = tail call i32 @area_getorientation(ptr noundef nonnull %17, ptr noundef %30) #13
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %65, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8, !tbaa !234
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !120
  %50 = and i16 %49, -5
  store i16 %50, ptr %48, align 2, !tbaa !120
  br label %51

51:                                               ; preds = %47, %44
  %52 = load ptr, ptr %29, align 8, !tbaa !236
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 14
  %56 = load i16, ptr %55, align 2, !tbaa !120
  %57 = and i16 %56, -3
  store i16 %57, ptr %55, align 2, !tbaa !120
  store ptr %52, ptr %6, align 8, !tbaa !234
  store ptr %17, ptr %29, align 8, !tbaa !236
  %58 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 14
  %59 = or i16 %57, 4
  store i16 %59, ptr %58, align 2, !tbaa !120
  br label %61

60:                                               ; preds = %51
  store ptr %52, ptr %6, align 8, !tbaa !234
  store ptr %17, ptr %29, align 8, !tbaa !236
  br label %61

61:                                               ; preds = %54, %60
  %62 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %63 = load i16, ptr %62, align 2, !tbaa !120
  %64 = or i16 %63, 2
  store i16 %64, ptr %62, align 2, !tbaa !120
  br label %73

65:                                               ; preds = %41
  %66 = load ptr, ptr %29, align 8, !tbaa !236
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ScrArea, ptr %66, i64 0, i32 14
  %70 = load i16, ptr %69, align 2, !tbaa !120
  %71 = and i16 %70, -3
  store i16 %71, ptr %69, align 2, !tbaa !120
  br label %72

72:                                               ; preds = %68, %65
  store ptr null, ptr %29, align 8, !tbaa !236
  br label %73

73:                                               ; preds = %72, %61, %37
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #13
  br label %164

74:                                               ; preds = %23
  %75 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !236
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 14
  %80 = load i16, ptr %79, align 2, !tbaa !120
  %81 = and i16 %80, -5
  store i16 %81, ptr %79, align 2, !tbaa !120
  %82 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 14
  %83 = load i16, ptr %82, align 2, !tbaa !120
  %84 = and i16 %83, -3
  store i16 %84, ptr %82, align 2, !tbaa !120
  store ptr %76, ptr %6, align 8, !tbaa !234
  store ptr %17, ptr %75, align 8, !tbaa !236
  %85 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 14
  %86 = or i16 %84, 4
  store i16 %86, ptr %85, align 2, !tbaa !120
  %87 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %88 = load i16, ptr %87, align 2, !tbaa !120
  %89 = or i16 %88, 2
  store i16 %89, ptr %87, align 2, !tbaa !120
  %90 = tail call i32 @area_getorientation(ptr noundef nonnull %76, ptr noundef nonnull %17) #13
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %108

92:                                               ; preds = %78
  %93 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %108

94:                                               ; preds = %74
  %95 = tail call i32 @area_getorientation(ptr noundef %24, ptr noundef nonnull %17) #13
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %75, align 8, !tbaa !236
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ScrArea, ptr %98, i64 0, i32 14
  %102 = load i16, ptr %101, align 2, !tbaa !120
  %103 = and i16 %102, -3
  store i16 %103, ptr %101, align 2, !tbaa !120
  br label %104

104:                                              ; preds = %100, %97
  store ptr %17, ptr %75, align 8, !tbaa !236
  %105 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %106 = load i16, ptr %105, align 2, !tbaa !120
  %107 = or i16 %106, 2
  store i16 %107, ptr %105, align 2, !tbaa !120
  br label %108

108:                                              ; preds = %94, %104, %78, %92
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #13
  br label %164

109:                                              ; preds = %3
  %110 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !176
  %112 = icmp eq i16 %111, 2
  br i1 %112, label %113, label %164

113:                                              ; preds = %109
  %114 = load ptr, ptr %6, align 8, !tbaa !234
  tail call void @ED_area_tag_redraw(ptr noundef %114) #13
  %115 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !236
  tail call void @ED_area_tag_redraw(ptr noundef %116) #13
  %117 = load ptr, ptr %5, align 8, !tbaa !163
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %113
  %120 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %121 = load ptr, ptr %117, align 8, !tbaa !234
  %122 = getelementptr inbounds %struct.sAreaJoinData, ptr %117, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !236
  %124 = tail call i32 @screen_area_join(ptr noundef %0, ptr noundef %120, ptr noundef %121, ptr noundef %123) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %119
  %127 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %128 = load ptr, ptr %122, align 8, !tbaa !236
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #13
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #13
  br label %131

131:                                              ; preds = %113, %119, %126, %130
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  %132 = load ptr, ptr %5, align 8, !tbaa !163
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %135(ptr noundef nonnull %132) #13
  store ptr null, ptr %5, align 8, !tbaa !163
  br label %136

136:                                              ; preds = %131, %134
  %137 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %137) #13
  %138 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scredges(ptr noundef %138) #13
  %139 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scrverts(ptr noundef %139) #13
  br label %164

140:                                              ; preds = %3, %3
  %141 = load ptr, ptr %6, align 8, !tbaa !234
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.ScrArea, ptr %141, i64 0, i32 14
  %145 = load i16, ptr %144, align 2, !tbaa !120
  %146 = and i16 %145, -7
  store i16 %146, ptr %144, align 2, !tbaa !120
  br label %147

147:                                              ; preds = %143, %140
  %148 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !236
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ScrArea, ptr %149, i64 0, i32 14
  %153 = load i16, ptr %152, align 2, !tbaa !120
  %154 = and i16 %153, -7
  store i16 %154, ptr %152, align 2, !tbaa !120
  br label %155

155:                                              ; preds = %147, %151
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #13
  %156 = load ptr, ptr %5, align 8, !tbaa !163
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %159(ptr noundef nonnull %156) #13
  store ptr null, ptr %5, align 8, !tbaa !163
  br label %160

160:                                              ; preds = %155, %158
  %161 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %161) #13
  %162 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scredges(ptr noundef %162) #13
  %163 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scrverts(ptr noundef %163) #13
  br label %164

164:                                              ; preds = %15, %3, %109, %73, %108, %160, %136
  %165 = phi i32 [ 2, %160 ], [ 4, %136 ], [ 1, %108 ], [ 1, %73 ], [ 1, %109 ], [ 1, %3 ], [ 1, %15 ]
  ret i32 %165
}

; Function Attrs: nounwind uwtable
define internal void @area_join_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = load ptr, ptr %4, align 8, !tbaa !234
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 14
  %9 = load i16, ptr %8, align 2, !tbaa !120
  %10 = and i16 %9, -7
  store i16 %10, ptr %8, align 2, !tbaa !120
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.sAreaJoinData, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 14
  %17 = load i16, ptr %16, align 2, !tbaa !120
  %18 = and i16 %17, -7
  store i16 %18, ptr %16, align 2, !tbaa !120
  br label %19

19:                                               ; preds = %15, %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #13
  tail call fastcc void @area_join_exit(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @area_join_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.103) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.105) #13
  %8 = load ptr, ptr %3, align 8, !tbaa !173
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.107) #13
  %10 = load ptr, ptr %3, align 8, !tbaa !173
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.109) #13
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 3
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 7
  %20 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %19, i32 noundef %5, i32 noundef %7) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %14, label %22, !llvm.loop !180

22:                                               ; preds = %14, %18
  %23 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %24 = getelementptr inbounds %struct.bScreen, ptr %23, i64 0, i32 3
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %24, %22 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 7
  %31 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %30, i32 noundef %9, i32 noundef %11) #13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %25, label %33, !llvm.loop !180

33:                                               ; preds = %25, %29
  %34 = icmp eq ptr %16, %27
  %35 = or i1 %28, %34
  %36 = or i1 %17, %35
  br i1 %36, label %129, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !204
  %40 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !204
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !206
  %46 = icmp eq ptr %39, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !208
  %50 = icmp eq ptr %39, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !207
  %54 = icmp eq ptr %39, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %43, %37
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ 1, %55 ], [ 0, %51 ]
  %58 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !206
  %60 = icmp eq ptr %59, %41
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !206
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !208
  %68 = icmp eq ptr %59, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !207
  %72 = icmp eq ptr %59, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %65, %61, %56
  %74 = add nuw nsw i32 %57, 1
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %74, %73 ], [ %57, %69 ]
  %77 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !208
  %79 = icmp eq ptr %78, %41
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !206
  %83 = icmp eq ptr %78, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !208
  %87 = icmp eq ptr %78, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !207
  %91 = icmp eq ptr %78, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %84, %80, %75
  %93 = add nuw nsw i32 %76, 1
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ %76, %88 ]
  %96 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !207
  %98 = icmp eq ptr %97, %41
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !206
  %102 = icmp eq ptr %97, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !208
  %106 = icmp eq ptr %97, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !207
  %110 = icmp eq ptr %97, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103, %99, %94
  %112 = add nsw i32 %95, 1
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %112, %111 ], [ %95, %107 ]
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.226)
  br label %129

118:                                              ; preds = %113
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %120 = tail call ptr %119(i64 noundef 24, ptr noundef nonnull @.str.112) #13
  store ptr %16, ptr %120, align 8, !tbaa !234
  %121 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 14
  %122 = load i16, ptr %121, align 2, !tbaa !120
  %123 = or i16 %122, 4
  store i16 %123, ptr %121, align 2, !tbaa !120
  %124 = getelementptr inbounds %struct.sAreaJoinData, ptr %120, i64 0, i32 1
  store ptr %27, ptr %124, align 8, !tbaa !236
  %125 = getelementptr inbounds %struct.ScrArea, ptr %27, i64 0, i32 14
  %126 = load i16, ptr %125, align 2, !tbaa !120
  %127 = or i16 %126, 2
  store i16 %127, ptr %125, align 2, !tbaa !120
  %128 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %120, ptr %128, align 8, !tbaa !163
  br label %129

129:                                              ; preds = %33, %118, %116
  %130 = phi i32 [ 0, %116 ], [ 1, %118 ], [ 0, %33 ]
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal fastcc void @area_join_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %7(ptr noundef nonnull %4) #13
  store ptr null, ptr %3, align 8, !tbaa !163
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removedouble_scredges(ptr noundef %9) #13
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scredges(ptr noundef %10) #13
  %11 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @removenotused_scrverts(ptr noundef %11) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @removenotused_scredges(ptr noundef) local_unnamed_addr #1

declare void @removenotused_scrverts(ptr noundef) local_unnamed_addr #1

declare i32 @area_getorientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_area_options_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %10 = tail call i32 @WM_window_pixels_x(ptr noundef %8) #13
  %11 = tail call i32 @WM_window_pixels_y(ptr noundef %8) #13
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !168
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !171
  %16 = tail call ptr @screen_find_active_scredge(ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !187
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  %23 = tail call ptr @RNA_struct_ui_name(ptr noundef %22) #13
  %24 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %23, i32 noundef 0) #13
  %25 = tail call ptr @uiPupMenuLayout(ptr noundef %24) #13
  call void @WM_operator_properties_create(ptr noundef nonnull %4, ptr noundef nonnull @.str.17) #13
  %26 = load i32, ptr %12, align 4, !tbaa !168
  %27 = add nsw i32 %26, 4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.103, i32 noundef %27) #13
  %28 = load i32, ptr %14, align 8, !tbaa !171
  %29 = add nsw i32 %28, 4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.105, i32 noundef %29) #13
  %30 = load i32, ptr %12, align 4, !tbaa !168
  %31 = add nsw i32 %30, -4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.107, i32 noundef %31) #13
  %32 = load i32, ptr %14, align 8, !tbaa !171
  %33 = add nsw i32 %32, -4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.109, i32 noundef %33) #13
  call void @WM_operator_properties_create(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #13
  %34 = load i32, ptr %12, align 4, !tbaa !168
  call void @RNA_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.92, i32 noundef %34) #13
  %35 = load i32, ptr %14, align 8, !tbaa !171
  call void @RNA_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.94, i32 noundef %35) #13
  %36 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, ptr noundef %37, i32 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %38 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, ptr noundef %39, i32 noundef 0, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %24) #13
  br label %40

40:                                               ; preds = %3, %18
  %41 = phi i32 [ 32, %18 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i32 %41
}

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_dupli_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !175
  %10 = icmp eq i16 %9, 20480
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !165
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi ptr [ %16, %15 ], [ %7, %11 ]
  br i1 %14, label %65, label %19

19:                                               ; preds = %17, %3
  %20 = phi ptr [ %18, %17 ], [ %7, %3 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !240
  %22 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  %23 = load i16, ptr %22, align 8, !tbaa !241
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  %26 = load i16, ptr %25, align 2, !tbaa !242
  %27 = sext i16 %26 to i32
  call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %24, i32 noundef %27) #13
  %28 = load i32, ptr %4, align 4, !tbaa !243
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !244
  %32 = sub nsw i32 %31, %28
  %33 = sitofp i32 %32 to float
  %34 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %35 = fdiv float %33, %34
  %36 = fadd float %35, %29
  %37 = fptosi float %36 to i32
  store i32 %37, ptr %30, align 4, !tbaa !244
  %38 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !245
  %40 = sitofp i32 %39 to float
  %41 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !246
  %43 = sub nsw i32 %42, %39
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, %34
  %46 = fadd float %45, %40
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %41, align 4, !tbaa !246
  %48 = call ptr @WM_window_open(ptr noundef %0, ptr noundef nonnull %4) #13
  %49 = call ptr @CTX_data_scene(ptr noundef %0) #13
  %50 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %51 = call ptr @ED_screen_add(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %50) #13
  %52 = getelementptr inbounds %struct.wmWindow, ptr %48, i64 0, i32 3
  store ptr %51, ptr %52, align 8, !tbaa !122
  %53 = getelementptr inbounds %struct.bScreen, ptr %51, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !247
  call void @ED_area_data_copy(ptr noundef %54, ptr noundef %20, i8 noundef zeroext 1) #13
  %55 = load ptr, ptr %53, align 8, !tbaa !247
  call void @ED_area_tag_redraw(ptr noundef %55) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  %56 = load i16, ptr %8, align 8, !tbaa !175
  %57 = icmp eq i16 %56, 20480
  br i1 %57, label %58, label %65

58:                                               ; preds = %19
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !163
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %63(ptr noundef nonnull %60) #13
  br label %64

64:                                               ; preds = %58, %62
  store ptr null, ptr %59, align 8, !tbaa !163
  br label %65

65:                                               ; preds = %19, %64, %17
  %66 = phi i32 [ 8, %17 ], [ 4, %64 ], [ 4, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_window_open(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_screen_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_area_data_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_swap_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !165
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.120) #13
  %13 = load ptr, ptr %5, align 8, !tbaa !165
  store ptr %13, ptr %12, align 8, !tbaa !248
  %14 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = getelementptr inbounds %struct.sAreaSwapData, ptr %12, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !250
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %12, ptr %17, align 8, !tbaa !163
  %18 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_set(ptr noundef %18, i32 noundef 18) #13
  %19 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %20

20:                                               ; preds = %7, %3, %10
  %21 = phi i32 [ 1, %10 ], [ 8, %3 ], [ 8, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_swap_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  switch i16 %7, label %60 [
    i16 4, label %8
    i16 1, label %25
    i16 218, label %53
  ]

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !171
  %14 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  br label %15

15:                                               ; preds = %19, %8
  %16 = phi ptr [ %14, %8 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 7
  %21 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %20, i32 noundef %11, i32 noundef %13) #13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %15, label %23, !llvm.loop !180

23:                                               ; preds = %15, %19
  %24 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 1
  store ptr %17, ptr %24, align 8, !tbaa !181
  br label %60

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !176
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !181
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8, !tbaa !165
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %36, label %43

36:                                               ; preds = %33, %29
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %37) #13
  %38 = load ptr, ptr %4, align 8, !tbaa !163
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %41(ptr noundef nonnull %38) #13
  br label %42

42:                                               ; preds = %36, %40
  store ptr null, ptr %4, align 8, !tbaa !163
  br label %60

43:                                               ; preds = %33
  tail call void @ED_area_tag_redraw(ptr noundef %34) #13
  %44 = load ptr, ptr %30, align 8, !tbaa !181
  tail call void @ED_area_tag_redraw(ptr noundef %44) #13
  %45 = load ptr, ptr %5, align 8, !tbaa !165
  %46 = load ptr, ptr %30, align 8, !tbaa !181
  tail call void @ED_area_swapspace(ptr noundef %0, ptr noundef %45, ptr noundef %46) #13
  %47 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %47) #13
  %48 = load ptr, ptr %4, align 8, !tbaa !163
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %51(ptr noundef nonnull %48) #13
  br label %52

52:                                               ; preds = %43, %50
  store ptr null, ptr %4, align 8, !tbaa !163
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %60

53:                                               ; preds = %3
  %54 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %54) #13
  %55 = load ptr, ptr %4, align 8, !tbaa !163
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %58(ptr noundef nonnull %55) #13
  br label %59

59:                                               ; preds = %53, %57
  store ptr null, ptr %4, align 8, !tbaa !163
  br label %60

60:                                               ; preds = %23, %3, %25, %59, %52, %42
  %61 = phi i32 [ 2, %59 ], [ 2, %42 ], [ 4, %52 ], [ 1, %25 ], [ 1, %3 ], [ 1, %23 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal void @area_swap_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  tail call void %8(ptr noundef nonnull %5) #13
  br label %9

9:                                                ; preds = %2, %7
  store ptr null, ptr %4, align 8, !tbaa !163
  ret void
}

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_area_swapspace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @region_quadview_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !251
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.123) #13
  br label %174

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 9
  %14 = load i16, ptr %13, align 8, !tbaa !118
  %15 = icmp eq i16 %14, 8
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  store i16 0, ptr %13, align 8, !tbaa !118
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 8
  %19 = load i8, ptr %18, align 8, !tbaa !99
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %65

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !253
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 27
  %25 = load i8, ptr %24, align 1, !tbaa !254
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %28 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !tbaa !100
  %32 = icmp eq ptr %5, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %22, align 8, !tbaa !253
  %35 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 30
  %36 = load ptr, ptr %35, align 8, !tbaa !253
  store ptr %36, ptr %22, align 8, !tbaa !253
  store ptr %34, ptr %35, align 8, !tbaa !253
  %37 = load ptr, ptr %22, align 8, !tbaa !253
  br label %38

38:                                               ; preds = %30, %33, %27
  %39 = phi ptr [ %37, %33 ], [ %23, %30 ], [ %23, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %40

40:                                               ; preds = %38, %21
  %41 = phi ptr [ %39, %38 ], [ %23, %21 ]
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 28
  store i8 -128, ptr %42, align 4, !tbaa !256
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 27
  store i8 0, ptr %43, align 1, !tbaa !254
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 32
  %45 = load i16, ptr %44, align 2, !tbaa !257
  %46 = and i16 %45, -5
  store i16 %46, ptr %44, align 2, !tbaa !257
  %47 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %40, %62
  %51 = phi ptr [ %63, %62 ], [ %48, %40 ]
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !251
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 30
  %57 = load ptr, ptr %56, align 8, !tbaa !253
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 27
  %59 = load i8, ptr %58, align 1, !tbaa !254
  %60 = load i8, ptr %42, align 4, !tbaa !256
  %61 = or i8 %60, %59
  store i8 %61, ptr %42, align 4, !tbaa !256
  br label %62

62:                                               ; preds = %50, %55
  %63 = load ptr, ptr %51, align 8, !tbaa !100
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !258

65:                                               ; preds = %62, %40, %16
  %66 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !259
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 18
  br label %71

71:                                               ; preds = %69, %80
  %72 = phi ptr [ %67, %69 ], [ %73, %80 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !141
  %74 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 9
  %75 = load i16, ptr %74, align 8, !tbaa !118
  %76 = icmp eq i16 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %72) #13
  %78 = load ptr, ptr %70, align 8, !tbaa !260
  call void @BKE_area_region_free(ptr noundef %78, ptr noundef nonnull %72) #13
  call void @BLI_remlink(ptr noundef nonnull %66, ptr noundef nonnull %72) #13
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  call void %79(ptr noundef nonnull %72) #13
  br label %80

80:                                               ; preds = %71, %77
  %81 = icmp eq ptr %73, null
  br i1 %81, label %82, label %71, !llvm.loop !261

82:                                               ; preds = %80, %65
  call void @ED_area_tag_redraw(ptr noundef %17) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %174

83:                                               ; preds = %12
  %84 = load ptr, ptr %5, align 8, !tbaa !141
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !252
  tail call void @BKE_report(ptr noundef %88, i32 noundef 32, ptr noundef nonnull @.str.124) #13
  br label %174

89:                                               ; preds = %83
  %90 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  store i16 8, ptr %13, align 8, !tbaa !118
  %91 = getelementptr inbounds %struct.ScrArea, ptr %90, i64 0, i32 18
  %92 = getelementptr inbounds %struct.ScrArea, ptr %90, i64 0, i32 20
  br label %93

93:                                               ; preds = %89, %93
  %94 = phi i32 [ 0, %89 ], [ %97, %93 ]
  %95 = load ptr, ptr %91, align 8, !tbaa !260
  %96 = tail call ptr @BKE_area_region_copy(ptr noundef %95, ptr noundef nonnull %5) #13
  tail call void @BLI_addtail(ptr noundef nonnull %92, ptr noundef %96) #13
  %97 = add nuw nsw i32 %94, 1
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %93, !llvm.loop !262

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ScrArea, ptr %90, i64 0, i32 8
  %101 = load i8, ptr %100, align 8, !tbaa !99
  %102 = icmp eq i8 %101, 1
  br i1 %102, label %103, label %173

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %105 = load ptr, ptr %104, align 8, !tbaa !253
  %106 = getelementptr inbounds %struct.RegionView3D, ptr %105, i64 0, i32 28
  %107 = load i8, ptr %106, align 4, !tbaa !256
  %108 = icmp sgt i8 %107, -1
  %109 = and i8 %107, 127
  %110 = select i1 %108, i8 1, i8 %109
  %111 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 0) #13
  %112 = load ptr, ptr %104, align 8, !tbaa !253
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 27
  store i8 %110, ptr %113, align 1, !tbaa !254
  %114 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 26
  store i8 %111, ptr %114, align 2, !tbaa !263
  %115 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 25
  store i8 0, ptr %115, align 1, !tbaa !264
  %116 = tail call zeroext i8 @ED_view3d_lock(ptr noundef %112) #13
  %117 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !265
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %103
  %121 = load i8, ptr %114, align 2, !tbaa !263
  %122 = getelementptr inbounds %struct.RegionView3D, ptr %118, i64 0, i32 26
  store i8 %121, ptr %122, align 2, !tbaa !263
  %123 = load i8, ptr %115, align 1, !tbaa !264
  %124 = getelementptr inbounds %struct.RegionView3D, ptr %118, i64 0, i32 25
  store i8 %123, ptr %124, align 1, !tbaa !264
  %125 = getelementptr inbounds %struct.RegionView3D, ptr %118, i64 0, i32 17
  %126 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %125, ptr noundef nonnull %126) #13
  br label %127

127:                                              ; preds = %120, %103
  %128 = and i8 %110, 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  tail call void @ED_view3d_quadview_update(ptr noundef %90, ptr noundef nonnull %5, i8 noundef zeroext 1) #13
  br label %131

131:                                              ; preds = %127, %130
  %132 = load ptr, ptr %5, align 8, !tbaa !141
  %133 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 1) #13
  %134 = getelementptr inbounds %struct.ARegion, ptr %132, i64 0, i32 30
  %135 = load ptr, ptr %134, align 8, !tbaa !253
  %136 = getelementptr inbounds %struct.RegionView3D, ptr %135, i64 0, i32 27
  store i8 %110, ptr %136, align 1, !tbaa !254
  %137 = getelementptr inbounds %struct.RegionView3D, ptr %135, i64 0, i32 26
  store i8 %133, ptr %137, align 2, !tbaa !263
  %138 = getelementptr inbounds %struct.RegionView3D, ptr %135, i64 0, i32 25
  store i8 0, ptr %138, align 1, !tbaa !264
  %139 = tail call zeroext i8 @ED_view3d_lock(ptr noundef %135) #13
  %140 = getelementptr inbounds %struct.RegionView3D, ptr %135, i64 0, i32 10
  %141 = load ptr, ptr %140, align 8, !tbaa !265
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %131
  %144 = load i8, ptr %137, align 2, !tbaa !263
  %145 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 26
  store i8 %144, ptr %145, align 2, !tbaa !263
  %146 = load i8, ptr %138, align 1, !tbaa !264
  %147 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 25
  store i8 %146, ptr %147, align 1, !tbaa !264
  %148 = getelementptr inbounds %struct.RegionView3D, ptr %141, i64 0, i32 17
  %149 = getelementptr inbounds %struct.RegionView3D, ptr %135, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %148, ptr noundef nonnull %149) #13
  br label %150

150:                                              ; preds = %143, %131
  br i1 %129, label %152, label %151

151:                                              ; preds = %150
  tail call void @ED_view3d_quadview_update(ptr noundef %90, ptr noundef %132, i8 noundef zeroext 1) #13
  br label %152

152:                                              ; preds = %150, %151
  %153 = load ptr, ptr %132, align 8, !tbaa !141
  %154 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 2) #13
  %155 = getelementptr inbounds %struct.ARegion, ptr %153, i64 0, i32 30
  %156 = load ptr, ptr %155, align 8, !tbaa !253
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %156, i64 0, i32 27
  store i8 %110, ptr %157, align 1, !tbaa !254
  %158 = getelementptr inbounds %struct.RegionView3D, ptr %156, i64 0, i32 26
  store i8 %154, ptr %158, align 2, !tbaa !263
  %159 = getelementptr inbounds %struct.RegionView3D, ptr %156, i64 0, i32 25
  store i8 0, ptr %159, align 1, !tbaa !264
  %160 = tail call zeroext i8 @ED_view3d_lock(ptr noundef %156) #13
  %161 = getelementptr inbounds %struct.RegionView3D, ptr %156, i64 0, i32 10
  %162 = load ptr, ptr %161, align 8, !tbaa !265
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %152
  %165 = load i8, ptr %158, align 2, !tbaa !263
  %166 = getelementptr inbounds %struct.RegionView3D, ptr %162, i64 0, i32 26
  store i8 %165, ptr %166, align 2, !tbaa !263
  %167 = load i8, ptr %159, align 1, !tbaa !264
  %168 = getelementptr inbounds %struct.RegionView3D, ptr %162, i64 0, i32 25
  store i8 %167, ptr %168, align 1, !tbaa !264
  %169 = getelementptr inbounds %struct.RegionView3D, ptr %162, i64 0, i32 17
  %170 = getelementptr inbounds %struct.RegionView3D, ptr %156, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %169, ptr noundef nonnull %170) #13
  br label %171

171:                                              ; preds = %164, %152
  br i1 %129, label %173, label %172

172:                                              ; preds = %171
  tail call void @ED_view3d_quadview_update(ptr noundef %90, ptr noundef %153, i8 noundef zeroext 1) #13
  br label %173

173:                                              ; preds = %172, %171, %99
  tail call void @ED_area_tag_redraw(ptr noundef %90) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %174

174:                                              ; preds = %82, %173, %86, %9
  ret i32 4
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_area_region_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef) local_unnamed_addr #1

declare zeroext i8 @ED_view3d_lock(ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_quadview_update(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @region_scale_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  %8 = icmp eq i16 %7, 20481
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.127) #13
  br label %174

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !167
  %15 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !266
  %17 = icmp eq ptr %16, null
  br i1 %17, label %174, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !100
  %20 = tail call ptr %19(i64 noundef 56, ptr noundef nonnull @.str.128) #13
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !163
  store ptr %14, ptr %20, align 8, !tbaa !267
  %22 = load ptr, ptr %15, align 8, !tbaa !266
  %23 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !269
  %24 = load ptr, ptr %5, align 8, !tbaa !165
  %25 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !270
  %26 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !271
  %28 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 9
  store i32 %27, ptr %28, align 8, !tbaa !272
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 6
  store i32 %30, ptr %31, align 4, !tbaa !273
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !171
  %34 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 7
  store i32 %33, ptr %34, align 8, !tbaa !274
  %35 = icmp ult i32 %27, 2
  %36 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 3
  %37 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 2
  %38 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7
  %39 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 7, i32 1
  %40 = select i1 %35, ptr %38, ptr %37
  %41 = select i1 %35, ptr %39, ptr %36
  %42 = load i32, ptr %41, align 4, !tbaa !103
  %43 = load i32, ptr %40, align 4, !tbaa !103
  %44 = sub nsw i32 %42, %43
  %45 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !100
  %47 = icmp eq ptr %46, null
  br i1 %47, label %138, label %48

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  %50 = icmp ne i32 %27, 2
  br label %51

51:                                               ; preds = %48, %134
  %52 = phi ptr [ %46, %48 ], [ %136, %134 ]
  %53 = phi i32 [ %44, %48 ], [ %135, %134 ]
  %54 = icmp eq ptr %52, %22
  br i1 %54, label %134, label %55

55:                                               ; preds = %51
  %56 = load i16, ptr %49, align 8, !tbaa !118
  switch i16 %56, label %97 [
    i16 1, label %57
    i16 2, label %67
    i16 3, label %77
    i16 4, label %88
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %59 = load i16, ptr %58, align 8, !tbaa !118
  %60 = icmp eq i16 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 6
  %63 = load i16, ptr %62, align 2, !tbaa !275
  %64 = sext i16 %63 to i32
  %65 = sub nsw i32 %53, %64
  br label %134

66:                                               ; preds = %57
  switch i16 %56, label %97 [
    i16 2, label %67
    i16 3, label %77
    i16 4, label %88
  ]

67:                                               ; preds = %55, %66
  %68 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %69 = load i16, ptr %68, align 8, !tbaa !118
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 6
  %73 = load i16, ptr %72, align 2, !tbaa !275
  %74 = sext i16 %73 to i32
  %75 = sub nsw i32 %53, %74
  br label %134

76:                                               ; preds = %67
  switch i16 %56, label %97 [
    i16 3, label %77
    i16 4, label %88
  ]

77:                                               ; preds = %55, %66, %76
  %78 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %79 = load i16, ptr %78, align 8, !tbaa !118
  %80 = icmp eq i16 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 5
  %83 = load i16, ptr %82, align 8, !tbaa !276
  %84 = sext i16 %83 to i32
  %85 = sub nsw i32 %53, %84
  br label %134

86:                                               ; preds = %77
  %87 = icmp eq i16 %56, 4
  br i1 %87, label %88, label %97

88:                                               ; preds = %55, %66, %76, %86
  %89 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %90 = load i16, ptr %89, align 8, !tbaa !118
  %91 = icmp eq i16 %90, 3
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 5
  %94 = load i16, ptr %93, align 8, !tbaa !276
  %95 = sext i16 %94 to i32
  %96 = sub nsw i32 %53, %95
  br label %134

97:                                               ; preds = %55, %66, %76, %88, %86
  switch i32 %27, label %134 [
    i32 3, label %98
    i32 2, label %118
  ]

98:                                               ; preds = %97
  %99 = and i16 %56, 1
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %103 = load i16, ptr %102, align 8, !tbaa !118
  %104 = icmp eq i16 %103, 1
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 8
  %107 = load i16, ptr %106, align 2, !tbaa !251
  %108 = icmp eq i16 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 6
  %111 = load i16, ptr %110, align 2, !tbaa !275
  %112 = sext i16 %111 to i32
  %113 = sub nsw i32 %53, %112
  br label %134

114:                                              ; preds = %105, %101, %98
  %115 = and i16 %56, 2
  %116 = icmp eq i16 %115, 0
  %117 = or i1 %50, %116
  br i1 %117, label %134, label %121

118:                                              ; preds = %97
  %119 = and i16 %56, 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %114, %118
  %122 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 9
  %123 = load i16, ptr %122, align 8, !tbaa !118
  %124 = icmp eq i16 %123, 2
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 8
  %127 = load i16, ptr %126, align 2, !tbaa !251
  %128 = icmp eq i16 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 6
  %131 = load i16, ptr %130, align 2, !tbaa !275
  %132 = sext i16 %131 to i32
  %133 = sub nsw i32 %53, %132
  br label %134

134:                                              ; preds = %129, %125, %121, %118, %114, %109, %97, %92, %81, %71, %61, %51
  %135 = phi i32 [ %53, %51 ], [ %65, %61 ], [ %75, %71 ], [ %85, %81 ], [ %96, %92 ], [ %113, %109 ], [ %133, %129 ], [ %53, %125 ], [ %53, %121 ], [ %53, %118 ], [ %53, %114 ], [ %53, %97 ]
  %136 = load ptr, ptr %52, align 8, !tbaa !100
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %51, !llvm.loop !277

138:                                              ; preds = %134, %18
  %139 = phi i32 [ %44, %18 ], [ %135, %134 ]
  %140 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 8
  store i32 %139, ptr %140, align 4, !tbaa !278
  %141 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 12
  %142 = load i16, ptr %141, align 8, !tbaa !279
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 5
  %146 = load i16, ptr %145, align 8, !tbaa !276
  store i16 %146, ptr %141, align 8, !tbaa !279
  br label %147

147:                                              ; preds = %144, %138
  %148 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 13
  %149 = load i16, ptr %148, align 2, !tbaa !280
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 6
  %153 = load i16, ptr %152, align 2, !tbaa !275
  store i16 %153, ptr %148, align 2, !tbaa !280
  br label %154

154:                                              ; preds = %151, %147
  %155 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 5
  %156 = select i1 %35, ptr %141, ptr %148
  %157 = load i16, ptr %156, align 2, !tbaa !198
  %158 = sext i16 %157 to i32
  store i32 %158, ptr %155, align 8, !tbaa !281
  %159 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  %160 = load i16, ptr %159, align 2, !tbaa !251
  %161 = icmp eq i16 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = tail call i32 @ED_area_headersize() #13
  br label %164

164:                                              ; preds = %154, %162
  %165 = phi i32 [ %163, %162 ], [ 1000, %154 ]
  %166 = load i32, ptr %140, align 4, !tbaa !278
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = icmp sgt i32 %166, %165
  br i1 %169, label %170, label %172

170:                                              ; preds = %168, %164
  %171 = phi i32 [ 0, %164 ], [ %165, %168 ]
  store i32 %171, ptr %140, align 4, !tbaa !278
  br label %172

172:                                              ; preds = %170, %168
  %173 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %174

174:                                              ; preds = %12, %172, %9
  %175 = phi i32 [ 2, %9 ], [ 1, %172 ], [ 4, %12 ]
  ret i32 %175
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @region_scale_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  switch i16 %7, label %523 [
    i16 4, label %8
    i16 1, label %371
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !272
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %174

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !168
  %15 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !273
  %17 = sub nsw i32 %14, %16
  %18 = icmp eq i32 %10, 1
  %19 = sub nsw i32 0, %17
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %23 = sitofp i32 %22 to float
  %24 = fmul float %21, %23
  %25 = fdiv float %24, 7.200000e+01
  %26 = sitofp i32 %20 to float
  %27 = fdiv float %26, %25
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !281
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !269
  %35 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 12
  store i16 %32, ptr %35, align 8, !tbaa !279
  %36 = shl i32 %31, 16
  %37 = ashr exact i32 %36, 16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !278
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = trunc i32 %41 to i16
  br label %45

45:                                               ; preds = %12, %43
  %46 = phi i16 [ %44, %43 ], [ 0, %12 ]
  store i16 %46, ptr %35, align 8, !tbaa !279
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i16, ptr %35, align 8, !tbaa !279
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %50 = icmp slt i16 %48, %49
  br i1 %50, label %51, label %113

51:                                               ; preds = %47
  %52 = trunc i32 %30 to i16
  store i16 %52, ptr %35, align 8, !tbaa !279
  %53 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 10
  %54 = load i16, ptr %53, align 2, !tbaa !139
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %368

57:                                               ; preds = %51
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 0) #13
  %58 = load ptr, ptr %33, align 8, !tbaa !269
  %59 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 10
  %60 = load i16, ptr %59, align 2, !tbaa !139
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %368

63:                                               ; preds = %57
  %64 = load i32, ptr %9, align 8, !tbaa !272
  %65 = icmp ult i32 %64, 2
  %66 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 12
  %67 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 13
  %68 = select i1 %65, ptr %66, ptr %67
  br i1 %65, label %69, label %85

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !270
  %72 = getelementptr inbounds %struct.ScrArea, ptr %71, i64 0, i32 10
  %73 = load i16, ptr %72, align 2, !tbaa !213
  %74 = sitofp i16 %73 to float
  %75 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %76 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %77 = sitofp i32 %76 to float
  %78 = fmul float %75, %77
  %79 = fdiv float %78, 7.200000e+01
  %80 = fdiv float %74, %79
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %82 = sitofp i16 %81 to float
  %83 = fsub float %80, %82
  %84 = fptosi float %83 to i32
  br label %104

85:                                               ; preds = %63
  %86 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 8
  %87 = load i16, ptr %86, align 2, !tbaa !251
  %88 = icmp eq i16 %87, 6
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !278
  %92 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !270
  %94 = getelementptr inbounds %struct.ScrArea, ptr %93, i64 0, i32 12
  %95 = load i16, ptr %94, align 2, !tbaa !282
  %96 = icmp eq i16 %95, 2
  %97 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %98 = sext i16 %97 to i32
  %99 = zext i1 %96 to i32
  %100 = shl nsw i32 %98, %99
  %101 = sub i32 %91, %100
  %102 = sdiv i32 %98, -4
  %103 = add i32 %101, %102
  br label %104

104:                                              ; preds = %89, %85, %69
  %105 = phi i32 [ %84, %69 ], [ %103, %89 ], [ 0, %85 ]
  %106 = load i16, ptr %68, align 2, !tbaa !198
  %107 = sext i16 %106 to i32
  %108 = shl i32 %105, 16
  %109 = ashr exact i32 %108, 16
  %110 = icmp slt i32 %109, %107
  %111 = icmp sgt i32 %109, 0
  %112 = and i1 %110, %111
  br i1 %112, label %364, label %368

113:                                              ; preds = %47
  %114 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 10
  %115 = load i16, ptr %114, align 2, !tbaa !139
  %116 = and i16 %115, 1
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %368, label %118

118:                                              ; preds = %113
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 0) #13
  %119 = load ptr, ptr %33, align 8, !tbaa !269
  %120 = getelementptr inbounds %struct.ARegion, ptr %119, i64 0, i32 10
  %121 = load i16, ptr %120, align 2, !tbaa !139
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %368

124:                                              ; preds = %118
  %125 = load i32, ptr %9, align 8, !tbaa !272
  %126 = icmp ult i32 %125, 2
  %127 = getelementptr inbounds %struct.ARegion, ptr %119, i64 0, i32 12
  %128 = getelementptr inbounds %struct.ARegion, ptr %119, i64 0, i32 13
  %129 = select i1 %126, ptr %127, ptr %128
  br i1 %126, label %130, label %146

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !270
  %133 = getelementptr inbounds %struct.ScrArea, ptr %132, i64 0, i32 10
  %134 = load i16, ptr %133, align 2, !tbaa !213
  %135 = sitofp i16 %134 to float
  %136 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %137 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %138 = sitofp i32 %137 to float
  %139 = fmul float %136, %138
  %140 = fdiv float %139, 7.200000e+01
  %141 = fdiv float %135, %140
  %142 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %143 = sitofp i16 %142 to float
  %144 = fsub float %141, %143
  %145 = fptosi float %144 to i32
  br label %165

146:                                              ; preds = %124
  %147 = getelementptr inbounds %struct.ARegion, ptr %119, i64 0, i32 8
  %148 = load i16, ptr %147, align 2, !tbaa !251
  %149 = icmp eq i16 %148, 6
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %152 = load i32, ptr %151, align 4, !tbaa !278
  %153 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !270
  %155 = getelementptr inbounds %struct.ScrArea, ptr %154, i64 0, i32 12
  %156 = load i16, ptr %155, align 2, !tbaa !282
  %157 = icmp eq i16 %156, 2
  %158 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %159 = sext i16 %158 to i32
  %160 = zext i1 %157 to i32
  %161 = shl nsw i32 %159, %160
  %162 = sub i32 %152, %161
  %163 = sdiv i32 %159, -4
  %164 = add i32 %162, %163
  br label %165

165:                                              ; preds = %150, %146, %130
  %166 = phi i32 [ %145, %130 ], [ %164, %150 ], [ 0, %146 ]
  %167 = load i16, ptr %129, align 2, !tbaa !198
  %168 = sext i16 %167 to i32
  %169 = shl i32 %166, 16
  %170 = ashr exact i32 %169, 16
  %171 = icmp slt i32 %170, %168
  %172 = icmp sgt i32 %170, 0
  %173 = and i1 %171, %172
  br i1 %173, label %364, label %368

174:                                              ; preds = %8
  %175 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !269
  %177 = getelementptr inbounds %struct.ARegion, ptr %176, i64 0, i32 8
  %178 = load i16, ptr %177, align 2, !tbaa !251
  %179 = icmp eq i16 %178, 6
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %182 = load i32, ptr %181, align 4, !tbaa !278
  %183 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !270
  %185 = getelementptr inbounds %struct.ScrArea, ptr %184, i64 0, i32 12
  %186 = load i16, ptr %185, align 2, !tbaa !282
  %187 = icmp eq i16 %186, 2
  %188 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %189 = sext i16 %188 to i32
  %190 = zext i1 %187 to i32
  %191 = shl nsw i32 %189, %190
  %192 = sub i32 %182, %191
  %193 = sdiv i32 %189, -4
  %194 = add i32 %192, %193
  br label %195

195:                                              ; preds = %174, %180
  %196 = phi i32 [ %194, %180 ], [ 0, %174 ]
  %197 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %198 = load i32, ptr %197, align 8, !tbaa !171
  %199 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 7
  %200 = load i32, ptr %199, align 8, !tbaa !274
  %201 = sub nsw i32 %198, %200
  %202 = icmp eq i32 %10, 3
  %203 = sub nsw i32 0, %201
  %204 = select i1 %202, i32 %203, i32 %201
  %205 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %206 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %207 = sitofp i32 %206 to float
  %208 = fmul float %205, %207
  %209 = fdiv float %208, 7.200000e+01
  %210 = sitofp i32 %204 to float
  %211 = fdiv float %210, %209
  %212 = fptosi float %211 to i32
  %213 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 5
  %214 = load i32, ptr %213, align 8, !tbaa !281
  %215 = add nsw i32 %214, %212
  %216 = trunc i32 %215 to i16
  %217 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !269
  %219 = getelementptr inbounds %struct.ARegion, ptr %218, i64 0, i32 13
  store i16 %216, ptr %219, align 2, !tbaa !280
  %220 = shl i32 %215, 16
  %221 = ashr exact i32 %220, 16
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %195
  %224 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %225 = load i32, ptr %224, align 4, !tbaa !278
  %226 = icmp sgt i32 %221, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = trunc i32 %225 to i16
  br label %229

229:                                              ; preds = %195, %227
  %230 = phi i16 [ %228, %227 ], [ 0, %195 ]
  store i16 %230, ptr %219, align 2, !tbaa !280
  br label %231

231:                                              ; preds = %229, %223
  %232 = load i16, ptr %219, align 2, !tbaa !280
  %233 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %234 = sdiv i16 %233, 4
  %235 = icmp slt i16 %232, %234
  br i1 %235, label %236, label %298

236:                                              ; preds = %231
  %237 = trunc i32 %214 to i16
  store i16 %237, ptr %219, align 2, !tbaa !280
  %238 = getelementptr inbounds %struct.ARegion, ptr %218, i64 0, i32 10
  %239 = load i16, ptr %238, align 2, !tbaa !139
  %240 = and i16 %239, 1
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %368

242:                                              ; preds = %236
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %218, i8 noundef zeroext 0) #13
  %243 = load ptr, ptr %217, align 8, !tbaa !269
  %244 = getelementptr inbounds %struct.ARegion, ptr %243, i64 0, i32 10
  %245 = load i16, ptr %244, align 2, !tbaa !139
  %246 = and i16 %245, 1
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %368

248:                                              ; preds = %242
  %249 = load i32, ptr %9, align 8, !tbaa !272
  %250 = icmp ult i32 %249, 2
  %251 = getelementptr inbounds %struct.ARegion, ptr %243, i64 0, i32 12
  %252 = getelementptr inbounds %struct.ARegion, ptr %243, i64 0, i32 13
  %253 = select i1 %250, ptr %251, ptr %252
  br i1 %250, label %254, label %270

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !270
  %257 = getelementptr inbounds %struct.ScrArea, ptr %256, i64 0, i32 10
  %258 = load i16, ptr %257, align 2, !tbaa !213
  %259 = sitofp i16 %258 to float
  %260 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %261 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %262 = sitofp i32 %261 to float
  %263 = fmul float %260, %262
  %264 = fdiv float %263, 7.200000e+01
  %265 = fdiv float %259, %264
  %266 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %267 = sitofp i16 %266 to float
  %268 = fsub float %265, %267
  %269 = fptosi float %268 to i32
  br label %289

270:                                              ; preds = %248
  %271 = getelementptr inbounds %struct.ARegion, ptr %243, i64 0, i32 8
  %272 = load i16, ptr %271, align 2, !tbaa !251
  %273 = icmp eq i16 %272, 6
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %276 = load i32, ptr %275, align 4, !tbaa !278
  %277 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !270
  %279 = getelementptr inbounds %struct.ScrArea, ptr %278, i64 0, i32 12
  %280 = load i16, ptr %279, align 2, !tbaa !282
  %281 = icmp eq i16 %280, 2
  %282 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %283 = sext i16 %282 to i32
  %284 = zext i1 %281 to i32
  %285 = shl nsw i32 %283, %284
  %286 = sub i32 %276, %285
  %287 = sdiv i32 %283, -4
  %288 = add i32 %286, %287
  br label %289

289:                                              ; preds = %274, %270, %254
  %290 = phi i32 [ %269, %254 ], [ %288, %274 ], [ 0, %270 ]
  %291 = load i16, ptr %253, align 2, !tbaa !198
  %292 = sext i16 %291 to i32
  %293 = shl i32 %290, 16
  %294 = ashr exact i32 %293, 16
  %295 = icmp slt i32 %294, %292
  %296 = icmp sgt i32 %294, 0
  %297 = and i1 %295, %296
  br i1 %297, label %364, label %368

298:                                              ; preds = %231
  %299 = sext i16 %232 to i32
  %300 = icmp sgt i32 %196, 0
  %301 = icmp slt i32 %196, %299
  %302 = and i1 %300, %301
  br i1 %302, label %364, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.ARegion, ptr %218, i64 0, i32 10
  %305 = load i16, ptr %304, align 2, !tbaa !139
  %306 = and i16 %305, 1
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %368, label %308

308:                                              ; preds = %303
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %218, i8 noundef zeroext 0) #13
  %309 = load ptr, ptr %217, align 8, !tbaa !269
  %310 = getelementptr inbounds %struct.ARegion, ptr %309, i64 0, i32 10
  %311 = load i16, ptr %310, align 2, !tbaa !139
  %312 = and i16 %311, 1
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %314, label %368

314:                                              ; preds = %308
  %315 = load i32, ptr %9, align 8, !tbaa !272
  %316 = icmp ult i32 %315, 2
  %317 = getelementptr inbounds %struct.ARegion, ptr %309, i64 0, i32 12
  %318 = getelementptr inbounds %struct.ARegion, ptr %309, i64 0, i32 13
  %319 = select i1 %316, ptr %317, ptr %318
  br i1 %316, label %320, label %336

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !270
  %323 = getelementptr inbounds %struct.ScrArea, ptr %322, i64 0, i32 10
  %324 = load i16, ptr %323, align 2, !tbaa !213
  %325 = sitofp i16 %324 to float
  %326 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %327 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %328 = sitofp i32 %327 to float
  %329 = fmul float %326, %328
  %330 = fdiv float %329, 7.200000e+01
  %331 = fdiv float %325, %330
  %332 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %333 = sitofp i16 %332 to float
  %334 = fsub float %331, %333
  %335 = fptosi float %334 to i32
  br label %355

336:                                              ; preds = %314
  %337 = getelementptr inbounds %struct.ARegion, ptr %309, i64 0, i32 8
  %338 = load i16, ptr %337, align 2, !tbaa !251
  %339 = icmp eq i16 %338, 6
  br i1 %339, label %340, label %355

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %342 = load i32, ptr %341, align 4, !tbaa !278
  %343 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !270
  %345 = getelementptr inbounds %struct.ScrArea, ptr %344, i64 0, i32 12
  %346 = load i16, ptr %345, align 2, !tbaa !282
  %347 = icmp eq i16 %346, 2
  %348 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %349 = sext i16 %348 to i32
  %350 = zext i1 %347 to i32
  %351 = shl nsw i32 %349, %350
  %352 = sub i32 %342, %351
  %353 = sdiv i32 %349, -4
  %354 = add i32 %352, %353
  br label %355

355:                                              ; preds = %340, %336, %320
  %356 = phi i32 [ %335, %320 ], [ %354, %340 ], [ 0, %336 ]
  %357 = load i16, ptr %319, align 2, !tbaa !198
  %358 = sext i16 %357 to i32
  %359 = shl i32 %356, 16
  %360 = ashr exact i32 %359, 16
  %361 = icmp slt i32 %360, %358
  %362 = icmp sgt i32 %360, 0
  %363 = and i1 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %355, %298, %289, %165, %104
  %365 = phi i32 [ %105, %104 ], [ %166, %165 ], [ %290, %289 ], [ %196, %298 ], [ %356, %355 ]
  %366 = phi ptr [ %68, %104 ], [ %129, %165 ], [ %253, %289 ], [ %219, %298 ], [ %319, %355 ]
  %367 = trunc i32 %365 to i16
  store i16 %367, ptr %366, align 2, !tbaa !198
  br label %368

368:                                              ; preds = %364, %355, %308, %289, %242, %165, %118, %104, %57, %236, %303, %51, %113
  %369 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !270
  tail call void @ED_area_tag_redraw(ptr noundef %370) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %523

371:                                              ; preds = %3
  %372 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %373 = load i16, ptr %372, align 2, !tbaa !176
  %374 = icmp eq i16 %373, 2
  br i1 %374, label %375, label %523

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %377 = load i32, ptr %376, align 4, !tbaa !168
  %378 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 6
  %379 = load i32, ptr %378, align 4, !tbaa !273
  %380 = sub nsw i32 %377, %379
  %381 = tail call i32 @llvm.abs.i32(i32 %380, i1 true)
  %382 = icmp ult i32 %381, 2
  br i1 %382, label %383, label %520

383:                                              ; preds = %375
  %384 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %385 = load i32, ptr %384, align 8, !tbaa !171
  %386 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 7
  %387 = load i32, ptr %386, align 8, !tbaa !274
  %388 = sub nsw i32 %385, %387
  %389 = tail call i32 @llvm.abs.i32(i32 %388, i1 true)
  %390 = icmp ult i32 %389, 2
  br i1 %390, label %391, label %520

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !269
  %394 = getelementptr inbounds %struct.ARegion, ptr %393, i64 0, i32 10
  %395 = load i16, ptr %394, align 2, !tbaa !139
  %396 = zext i16 %395 to i32
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %456, label %399

399:                                              ; preds = %391
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %393, i8 noundef zeroext 0) #13
  %400 = load ptr, ptr %392, align 8, !tbaa !269
  %401 = getelementptr inbounds %struct.ARegion, ptr %400, i64 0, i32 10
  %402 = load i16, ptr %401, align 2, !tbaa !139
  %403 = and i16 %402, 1
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %405, label %517

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 9
  %407 = load i32, ptr %406, align 8, !tbaa !272
  %408 = icmp ult i32 %407, 2
  %409 = getelementptr inbounds %struct.ARegion, ptr %400, i64 0, i32 12
  %410 = getelementptr inbounds %struct.ARegion, ptr %400, i64 0, i32 13
  %411 = select i1 %408, ptr %409, ptr %410
  br i1 %408, label %412, label %428

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !270
  %415 = getelementptr inbounds %struct.ScrArea, ptr %414, i64 0, i32 10
  %416 = load i16, ptr %415, align 2, !tbaa !213
  %417 = sitofp i16 %416 to float
  %418 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %419 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %420 = sitofp i32 %419 to float
  %421 = fmul float %418, %420
  %422 = fdiv float %421, 7.200000e+01
  %423 = fdiv float %417, %422
  %424 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %425 = sitofp i16 %424 to float
  %426 = fsub float %423, %425
  %427 = fptosi float %426 to i32
  br label %447

428:                                              ; preds = %405
  %429 = getelementptr inbounds %struct.ARegion, ptr %400, i64 0, i32 8
  %430 = load i16, ptr %429, align 2, !tbaa !251
  %431 = icmp eq i16 %430, 6
  br i1 %431, label %432, label %447

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %434 = load i32, ptr %433, align 4, !tbaa !278
  %435 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !270
  %437 = getelementptr inbounds %struct.ScrArea, ptr %436, i64 0, i32 12
  %438 = load i16, ptr %437, align 2, !tbaa !282
  %439 = icmp eq i16 %438, 2
  %440 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %441 = sext i16 %440 to i32
  %442 = zext i1 %439 to i32
  %443 = shl nsw i32 %441, %442
  %444 = sub i32 %434, %443
  %445 = sdiv i32 %441, -4
  %446 = add i32 %444, %445
  br label %447

447:                                              ; preds = %432, %428, %412
  %448 = phi i32 [ %427, %412 ], [ %446, %432 ], [ 0, %428 ]
  %449 = load i16, ptr %411, align 2, !tbaa !198
  %450 = sext i16 %449 to i32
  %451 = shl i32 %448, 16
  %452 = ashr exact i32 %451, 16
  %453 = icmp slt i32 %452, %450
  %454 = icmp sgt i32 %452, 0
  %455 = and i1 %453, %454
  br i1 %455, label %513, label %517

456:                                              ; preds = %391
  %457 = and i32 %396, 2
  %458 = icmp ne i32 %457, 0
  %459 = and i16 %395, 1
  %460 = icmp eq i16 %459, 0
  %461 = and i1 %460, %458
  br i1 %461, label %462, label %517

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 9
  %464 = load i32, ptr %463, align 8, !tbaa !272
  %465 = icmp ult i32 %464, 2
  %466 = getelementptr inbounds %struct.ARegion, ptr %393, i64 0, i32 12
  %467 = getelementptr inbounds %struct.ARegion, ptr %393, i64 0, i32 13
  %468 = select i1 %465, ptr %466, ptr %467
  br i1 %465, label %469, label %485

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %471 = load ptr, ptr %470, align 8, !tbaa !270
  %472 = getelementptr inbounds %struct.ScrArea, ptr %471, i64 0, i32 10
  %473 = load i16, ptr %472, align 2, !tbaa !213
  %474 = sitofp i16 %473 to float
  %475 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %476 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %477 = sitofp i32 %476 to float
  %478 = fmul float %475, %477
  %479 = fdiv float %478, 7.200000e+01
  %480 = fdiv float %474, %479
  %481 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !106
  %482 = sitofp i16 %481 to float
  %483 = fsub float %480, %482
  %484 = fptosi float %483 to i32
  br label %504

485:                                              ; preds = %462
  %486 = getelementptr inbounds %struct.ARegion, ptr %393, i64 0, i32 8
  %487 = load i16, ptr %486, align 2, !tbaa !251
  %488 = icmp eq i16 %487, 6
  br i1 %488, label %489, label %504

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %491 = load i32, ptr %490, align 4, !tbaa !278
  %492 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !270
  %494 = getelementptr inbounds %struct.ScrArea, ptr %493, i64 0, i32 12
  %495 = load i16, ptr %494, align 2, !tbaa !282
  %496 = icmp eq i16 %495, 2
  %497 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %498 = sext i16 %497 to i32
  %499 = zext i1 %496 to i32
  %500 = shl nsw i32 %498, %499
  %501 = sub i32 %491, %500
  %502 = sdiv i32 %498, -4
  %503 = add i32 %501, %502
  br label %504

504:                                              ; preds = %489, %485, %469
  %505 = phi i32 [ %484, %469 ], [ %503, %489 ], [ 0, %485 ]
  %506 = load i16, ptr %468, align 2, !tbaa !198
  %507 = sext i16 %506 to i32
  %508 = shl i32 %505, 16
  %509 = ashr exact i32 %508, 16
  %510 = icmp slt i32 %509, %507
  %511 = icmp sgt i32 %509, 0
  %512 = and i1 %510, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %504, %447
  %514 = phi i32 [ %448, %447 ], [ %505, %504 ]
  %515 = phi ptr [ %411, %447 ], [ %468, %504 ]
  %516 = trunc i32 %514 to i16
  store i16 %516, ptr %515, align 2, !tbaa !198
  br label %517

517:                                              ; preds = %513, %504, %447, %399, %456
  %518 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !270
  tail call void @ED_area_tag_redraw(ptr noundef %519) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %520

520:                                              ; preds = %517, %383, %375
  %521 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %522 = load ptr, ptr %4, align 8, !tbaa !163
  tail call void %521(ptr noundef %522) #13
  store ptr null, ptr %4, align 8, !tbaa !163
  br label %523

523:                                              ; preds = %368, %3, %371, %520
  %524 = phi i32 [ 4, %520 ], [ 1, %371 ], [ 1, %3 ], [ 1, %368 ]
  ret i32 %524
}

; Function Attrs: nounwind uwtable
define internal void @region_scale_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  tail call void %3(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !163
  ret void
}

declare void @region_toggle_hidden(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @region_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !118
  %8 = add i16 %7, -1
  %9 = icmp ult i16 %8, 4
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = shl nuw nsw i16 %8, 4
  %12 = zext nneg i16 %11 to i64
  %13 = lshr i64 844442110066690, %12
  %14 = trunc i64 %13 to i16
  store i16 %14, ptr %6, align 8, !tbaa !118
  br label %15

15:                                               ; preds = %5, %10
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %16) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %17

17:                                               ; preds = %2, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @header_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !251
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %2
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %11 = tail call ptr @BKE_area_find_region_type(ptr noundef %10, i32 noundef 1) #13
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 9
  %17 = load i16, ptr %16, align 8, !tbaa !118
  %18 = add i16 %17, -1
  %19 = icmp ult i16 %18, 4
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = shl nuw nsw i16 %18, 4
  %22 = zext nneg i16 %21 to i64
  %23 = lshr i64 844442110066690, %22
  %24 = trunc i64 %23 to i16
  store i16 %24, ptr %16, align 8, !tbaa !118
  br label %25

25:                                               ; preds = %15, %20
  %26 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %26) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %27

27:                                               ; preds = %12, %25
  %28 = phi i32 [ 4, %25 ], [ 2, %12 ]
  ret i32 %28
}

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @header_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !251
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %2
  %10 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %11 = tail call ptr @BKE_area_find_region_type(ptr noundef %10, i32 noundef 1) #13
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 10
  %17 = load i16, ptr %16, align 2, !tbaa !139
  %18 = xor i16 %17, 1
  store i16 %18, ptr %16, align 2, !tbaa !139
  %19 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  tail call void @ED_area_tag_redraw(ptr noundef %19) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  br label %20

20:                                               ; preds = %12, %15
  %21 = phi i32 [ 4, %15 ], [ 2, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @header_toggle_menus_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !120
  %6 = xor i16 %5, 1
  store i16 %6, ptr %4, align 2, !tbaa !120
  tail call void @ED_area_tag_redraw(ptr noundef %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @header_toolbox_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 0) #13
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #13
  tail call void @ED_screens_header_tools_menu_create(ptr noundef %0, ptr noundef %5, ptr poison)
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #13
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %6) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.30) #13
  %11 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !283
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %2
  switch i32 %10, label %85 [
    i32 1, label %20
    i32 -1, label %15
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26, i32 1
  %17 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br label %54

20:                                               ; preds = %14
  %21 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %51
  %25 = phi ptr [ %35, %51 ], [ %4, %20 ]
  %26 = phi i32 [ %27, %51 ], [ %7, %20 ]
  %27 = add nsw i32 %26, -1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %85, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !284
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 8, !tbaa !285
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %33, %32 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.bScreen, ptr %35, i64 0, i32 11
  %37 = load i16, ptr %36, align 4, !tbaa !287
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.bScreen, ptr %35, i64 0, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !219
  %42 = icmp ne i16 %41, 0
  %43 = icmp eq ptr %35, %4
  %44 = or i1 %43, %42
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4, i64 2
  %47 = load i8, ptr %46, align 2, !tbaa !288
  %48 = icmp ne i8 %47, 46
  %49 = select i1 %48, i1 true, i1 %23
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %34, %39, %45
  %52 = phi i8 [ 0, %39 ], [ 0, %34 ], [ %50, %45 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %24, label %85, !llvm.loop !289

54:                                               ; preds = %15, %82
  %55 = phi ptr [ %66, %82 ], [ %4, %15 ]
  %56 = phi i32 [ %57, %82 ], [ %7, %15 ]
  %57 = add nsw i32 %56, -1
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !290
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load ptr, ptr %16, align 8, !tbaa !291
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi ptr [ %64, %63 ], [ %61, %59 ]
  %67 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 11
  %68 = load i16, ptr %67, align 4, !tbaa !287
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.bScreen, ptr %66, i64 0, i32 9
  %72 = load i16, ptr %71, align 8, !tbaa !219
  %73 = icmp ne i16 %72, 0
  %74 = icmp eq ptr %66, %4
  %75 = or i1 %74, %73
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 4, i64 2
  %78 = load i8, ptr %77, align 2, !tbaa !288
  %79 = icmp ne i8 %78, 46
  %80 = select i1 %79, i1 true, i1 %19
  %81 = zext i1 %80 to i8
  br label %82

82:                                               ; preds = %65, %70, %76
  %83 = phi i8 [ 0, %70 ], [ 0, %65 ], [ %81, %76 ]
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %54, label %85, !llvm.loop !292

85:                                               ; preds = %82, %54, %24, %51, %14
  %86 = phi ptr [ null, %14 ], [ %35, %51 ], [ %25, %24 ], [ %66, %82 ], [ %55, %54 ]
  %87 = icmp eq ptr %86, null
  %88 = icmp eq ptr %4, %86
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = icmp eq ptr %5, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !121
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call void @ED_screen_full_restore(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %97

97:                                               ; preds = %96, %92, %90
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %86) #13
  br label %98

98:                                               ; preds = %85, %2, %97
  %99 = phi i32 [ 4, %97 ], [ 2, %2 ], [ 2, %85 ]
  ret i32 %99
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @ED_screen_full_restore(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_maximize_area_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.31) #13
  %7 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %18, !llvm.loop !293

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %17, %16 ], [ %10, %12 ]
  %20 = and i32 %6, 255
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !219
  br i1 %21, label %25, label %24

24:                                               ; preds = %18
  switch i16 %23, label %31 [
    i16 0, label %27
    i16 2, label %27
  ]

25:                                               ; preds = %18
  %26 = icmp ult i16 %23, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %25, %24, %24
  %28 = phi i16 [ 2, %24 ], [ 2, %24 ], [ 1, %25 ]
  %29 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %30 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %29, ptr noundef %19, i16 noundef signext %28) #13
  br label %31

31:                                               ; preds = %27, %25, %24
  %32 = phi i32 [ 2, %24 ], [ 2, %25 ], [ 4, %27 ]
  ret i32 %32
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @fullscreen_back_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %16, !llvm.loop !294

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !252
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.147) #13
  br label %17

16:                                               ; preds = %9
  tail call void @ED_screen_full_restore(ptr noundef %0, ptr noundef nonnull %7) #13
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 4, %16 ], [ 2, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @spacedata_cleanup_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %11

7:                                                ; preds = %28, %11
  %8 = phi i32 [ %13, %11 ], [ %29, %28 ]
  %9 = load ptr, ptr %12, align 8, !tbaa !100
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !llvm.loop !295

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %11, %28
  %18 = phi ptr [ %30, %28 ], [ %15, %11 ]
  %19 = phi i32 [ %29, %28 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !296
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef %21) #13
  %26 = tail call i32 @BLI_countlist(ptr noundef nonnull %20) #13
  %27 = add nsw i32 %26, %19
  tail call void @BKE_spacedata_freelist(ptr noundef nonnull %20) #13
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %21) #13
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi i32 [ %27, %25 ], [ %19, %17 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !100
  %31 = icmp eq ptr %30, null
  br i1 %31, label %7, label %17, !llvm.loop !297

32:                                               ; preds = %7, %2
  %33 = phi i32 [ 0, %2 ], [ %8, %7 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !252
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %35, i32 noundef 2, ptr noundef nonnull @.str.151, i32 noundef %33) #13
  ret i32 4
}

declare i32 @WM_operator_winactive(ptr noundef) #1

declare void @BKE_spacedata_freelist(ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @userpref_show_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rcti, align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !113
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 8.000000e+02
  %10 = fptosi float %9 to i32
  %11 = fmul float %8, 4.800000e+02
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !168
  %15 = sitofp i32 %14 to float
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !112
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  %19 = load i16, ptr %18, align 8, !tbaa !241
  %20 = sitofp i16 %19 to float
  %21 = fadd float %17, %20
  %22 = sdiv i32 %10, 2
  %23 = sitofp i32 %22 to float
  %24 = fsub float %21, %23
  %25 = fptosi float %24 to i32
  store i32 %25, ptr %4, align 4, !tbaa !243
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !171
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %28, %16
  %30 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !242
  %32 = sitofp i16 %31 to float
  %33 = fadd float %29, %32
  %34 = sdiv i32 %12, 2
  %35 = sitofp i32 %34 to float
  %36 = fsub float %33, %35
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 %37, ptr %38, align 4, !tbaa !245
  %39 = add nsw i32 %25, %10
  %40 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !244
  %41 = add nsw i32 %37, %12
  %42 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %41, ptr %42, align 4, !tbaa !246
  call void @WM_window_open_temp(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 4
}

declare void @WM_window_open_temp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @region_blend_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !175
  %8 = icmp ne i16 %7, 279
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %52, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmTimer, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  tail call void @ED_region_tag_redraw(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %17) #13
  br label %20

20:                                               ; preds = %19, %11
  %21 = load ptr, ptr %14, align 8, !tbaa !138
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 6
  %25 = load double, ptr %24, align 8, !tbaa !134
  %26 = fcmp ogt double %25, 0x3FC99999A0000000
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  tail call void @ED_region_tag_redraw(ptr noundef %21) #13
  %30 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %31) #13
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %29, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !135
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %29, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !138
  %41 = getelementptr inbounds %struct.ARegion, ptr %40, i64 0, i32 10
  %42 = load i16, ptr %41, align 2, !tbaa !139
  %43 = trunc i32 %36 to i16
  %44 = or i16 %42, %43
  store i16 %44, ptr %41, align 2, !tbaa !139
  %45 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %46 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %47 = load ptr, ptr %29, align 8, !tbaa !140
  tail call void @ED_area_initialize(ptr noundef %45, ptr noundef %46, ptr noundef %47) #13
  br label %48

48:                                               ; preds = %34, %38
  %49 = load ptr, ptr %29, align 8, !tbaa !140
  tail call void @ED_area_tag_redraw(ptr noundef %49) #13
  %50 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %51 = load ptr, ptr %22, align 8, !tbaa !132
  tail call void @WM_event_remove_timer(ptr noundef %50, ptr noundef null, ptr noundef %51) #13
  store ptr null, ptr %22, align 8, !tbaa !132
  br label %52

52:                                               ; preds = %20, %3, %48
  %53 = phi i32 [ 12, %48 ], [ 8, %3 ], [ 12, %20 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @frame_offset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.30) #13
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !298
  %10 = add nsw i32 %9, %7
  store i32 %10, ptr %8, align 8, !tbaa !298
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !299
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %15 = select i1 %13, i32 %10, i32 %14
  store i32 %15, ptr %8, align 8
  %16 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %16, align 4, !tbaa !300
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @ED_operator_screenactive_norender(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !301
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @frame_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 3
  %13 = load i16, ptr %12, align 4, !tbaa !303
  %14 = or i16 %13, 16
  store i16 %14, ptr %12, align 4, !tbaa !303
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.55) #13
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %20 = load i16, ptr %19, align 8, !tbaa !304
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 5
  br i1 %18, label %29, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %26 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %27 = select i1 %22, ptr %26, ptr %25
  %28 = load i32, ptr %27, align 4, !tbaa !103
  store i32 %28, ptr %23, align 4, !tbaa !305
  br label %52

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %32 = select i1 %22, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4, !tbaa !103
  store i32 %33, ptr %23, align 4, !tbaa !305
  br label %52

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !173
  %37 = tail call i32 @RNA_boolean_get(ptr noundef %36, ptr noundef nonnull @.str.55) #13
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %40 = load i16, ptr %39, align 8, !tbaa !304
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %44 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %45 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %46 = select i1 %42, ptr %45, ptr %44
  %47 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %48 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %49 = select i1 %42, ptr %48, ptr %47
  %50 = select i1 %38, ptr %46, ptr %49
  %51 = load i32, ptr %50, align 4, !tbaa !103
  store i32 %51, ptr %43, align 8, !tbaa !298
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #13
  br label %52

52:                                               ; preds = %24, %29, %34
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyframe_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bDopeSheet, align 8
  %4 = alloca %struct.DLRBT_Tree, align 8
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.57) #13
  %12 = icmp eq ptr %7, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !298
  %16 = sitofp i32 %15 to float
  store float %16, ptr %5, align 4, !tbaa !306
  call void @BLI_dlrbTree_init(ptr noundef nonnull %4) #13
  %17 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !307
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !308
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !308
  br label %25

25:                                               ; preds = %21, %13
  call void @scene_to_keylist(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef null) #13
  %26 = icmp eq ptr %8, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  call void @ob_to_keylist(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef null) #13
  br label %28

28:                                               ; preds = %27, %25
  %29 = call ptr @CTX_data_edit_mask(ptr noundef %0) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call ptr @BKE_mask_layer_active(ptr noundef nonnull %29) #13
  call void @mask_to_keylist(ptr noundef nonnull %3, ptr noundef %32, ptr noundef nonnull %4) #13
  br label %33

33:                                               ; preds = %31, %28
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %4) #13
  %34 = and i32 %11, 255
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %53, %33
  %37 = phi i8 [ 0, %33 ], [ %54, %53 ]
  br i1 %35, label %40, label %38

38:                                               ; preds = %36
  %39 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %4, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %5) #13
  br label %42

40:                                               ; preds = %36
  %41 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %4, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %5) #13
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi ptr [ %39, %38 ], [ %41, %40 ]
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, ptr %14, align 8, !tbaa !298
  %47 = getelementptr inbounds %struct.ActKeyColumn, ptr %43, i64 0, i32 8
  %48 = load float, ptr %47, align 4, !tbaa !310
  %49 = fptosi float %48 to i32
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 %49, ptr %14, align 8, !tbaa !298
  br label %53

52:                                               ; preds = %45
  store float %48, ptr %5, align 4, !tbaa !306
  br label %53

53:                                               ; preds = %42, %52, %51
  %54 = phi i8 [ 1, %51 ], [ %37, %52 ], [ %37, %42 ]
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %44, i1 %55, i1 false
  br i1 %56, label %36, label %57, !llvm.loop !312

57:                                               ; preds = %53
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #13
  br i1 %55, label %58, label %61

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !252
  call void @BKE_report(ptr noundef %60, i32 noundef 2, ptr noundef nonnull @.str.165) #13
  br label %62

61:                                               ; preds = %57
  call void @sound_seek_scene(ptr noundef %6, ptr noundef nonnull %7) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %7) #13
  br label %62

62:                                               ; preds = %2, %61, %58
  %63 = phi i32 [ 2, %58 ], [ 4, %61 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #13
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #1

declare void @mask_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_dlrbTree_search_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare signext i16 @compare_ak_cfraPtr(ptr noundef, ptr noundef) #1

declare ptr @BLI_dlrbTree_search_prev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @marker_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !298
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.57) #13
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = and i32 %9, 255
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 8, !tbaa !298
  br label %17

17:                                               ; preds = %13, %35
  %18 = phi ptr [ %11, %13 ], [ %38, %35 ]
  %19 = phi i8 [ 0, %13 ], [ %37, %35 ]
  %20 = phi i32 [ %6, %13 ], [ %36, %35 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !313
  br i1 %15, label %29, label %23

23:                                               ; preds = %17
  %24 = icmp sgt i32 %22, %16
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = icmp eq i8 %19, 0
  %27 = tail call i32 @llvm.smin.i32(i32 %20, i32 %22)
  %28 = select i1 %26, i32 %22, i32 %27
  br label %35

29:                                               ; preds = %17
  %30 = icmp slt i32 %22, %16
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = icmp eq i8 %19, 0
  %33 = tail call i32 @llvm.smax.i32(i32 %20, i32 %22)
  %34 = select i1 %32, i32 %22, i32 %33
  br label %35

35:                                               ; preds = %31, %25, %23, %29
  %36 = phi i32 [ %20, %23 ], [ %20, %29 ], [ %28, %25 ], [ %34, %31 ]
  %37 = phi i8 [ %19, %23 ], [ %19, %29 ], [ 1, %25 ], [ 1, %31 ]
  %38 = load ptr, ptr %18, align 8, !tbaa !100
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %17, !llvm.loop !315

40:                                               ; preds = %35
  %41 = icmp eq i8 %37, 0
  br label %42

42:                                               ; preds = %40, %2
  %43 = phi i32 [ %6, %2 ], [ %36, %40 ]
  %44 = phi i1 [ true, %2 ], [ %41, %40 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !252
  tail call void @BKE_report(ptr noundef %47, i32 noundef 2, ptr noundef nonnull @.str.170) #13
  br label %49

48:                                               ; preds = %42
  store i32 %43, ptr %5, align 8, !tbaa !298
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #13
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ 4, %48 ], [ 2, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_animation_step(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %224, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  %11 = icmp eq ptr %6, %10
  br i1 %11, label %12, label %224

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %15 = load ptr, ptr %5, align 8, !tbaa !124
  %16 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %19 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 3
  %20 = load i16, ptr %19, align 4, !tbaa !303
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %12
  %25 = and i32 %21, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 15
  %29 = load i16, ptr %28, align 4, !tbaa !307
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %12, %27
  %33 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 6
  %34 = load double, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 6
  %36 = load double, ptr %35, align 8, !tbaa !316
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 55
  %39 = load i16, ptr %38, align 4, !tbaa !317
  %40 = sitofp i16 %39 to double
  %41 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 65
  %42 = load float, ptr %41, align 4, !tbaa !318
  %43 = fpext float %42 to double
  %44 = fdiv double %40, %43
  %45 = fmul double %37, %44
  %46 = tail call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 1)
  %49 = and i16 %20, 1
  %50 = icmp eq i16 %49, 0
  %51 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !298
  br i1 %50, label %55, label %53

53:                                               ; preds = %32
  %54 = sub nsw i32 %52, %48
  store i32 %54, ptr %51, align 8, !tbaa !298
  br label %66

55:                                               ; preds = %32
  %56 = add nsw i32 %52, %48
  store i32 %56, ptr %51, align 8, !tbaa !298
  br label %66

57:                                               ; preds = %24, %27
  %58 = and i16 %20, 1
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !298
  br i1 %59, label %64, label %62

62:                                               ; preds = %57
  %63 = add nsw i32 %61, -1
  store i32 %63, ptr %60, align 8, !tbaa !298
  br label %66

64:                                               ; preds = %57
  %65 = add nsw i32 %61, 1
  store i32 %65, ptr %60, align 8, !tbaa !298
  br label %66

66:                                               ; preds = %53, %55, %62, %64
  %67 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 6
  %68 = load double, ptr %67, align 8, !tbaa !134
  %69 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 6
  store double %68, ptr %69, align 8, !tbaa !316
  %70 = and i16 %20, -3
  store i16 %70, ptr %19, align 4, !tbaa !303
  %71 = and i16 %20, 1
  %72 = icmp eq i16 %71, 0
  %73 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %74 = load i16, ptr %73, align 8, !tbaa !304
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  %77 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !298
  br i1 %72, label %92, label %79

79:                                               ; preds = %66
  br i1 %76, label %86, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !319
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  br label %105

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !320
  %89 = icmp slt i32 %78, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  br label %105

92:                                               ; preds = %66
  br i1 %76, label %99, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  %95 = load i32, ptr %94, align 4, !tbaa !321
  %96 = icmp sgt i32 %78, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  br label %105

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !322
  %102 = icmp sgt i32 %78, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  br label %105

105:                                              ; preds = %90, %84, %103, %97
  %106 = phi ptr [ %91, %90 ], [ %85, %84 ], [ %104, %103 ], [ %98, %97 ]
  %107 = load i32, ptr %106, align 4, !tbaa !103
  store i32 %107, ptr %77, align 8, !tbaa !298
  %108 = or i16 %20, 2
  store i16 %108, ptr %19, align 4, !tbaa !303
  br label %109

109:                                              ; preds = %105, %93, %99, %80, %86
  %110 = load i16, ptr %19, align 4, !tbaa !303
  %111 = and i16 %110, 16
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 5
  %115 = load i32, ptr %114, align 4, !tbaa !305
  %116 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  store i32 %115, ptr %116, align 8, !tbaa !298
  %117 = and i16 %110, -19
  %118 = or disjoint i16 %117, 2
  store i16 %118, ptr %19, align 4, !tbaa !303
  br label %119

119:                                              ; preds = %113, %109
  %120 = load i16, ptr %19, align 4, !tbaa !303
  %121 = and i16 %120, 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @sound_seek_scene(ptr noundef %13, ptr noundef %14) #13
  br label %124

124:                                              ; preds = %123, %119
  tail call void @ED_update_for_newframe(ptr noundef %13, ptr noundef %14, i32 noundef 1) #13
  %125 = getelementptr inbounds %struct.wmWindowManager, ptr %18, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !100
  %127 = icmp eq ptr %126, null
  br i1 %127, label %214, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 1
  %130 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 2
  br label %134

131:                                              ; preds = %211, %134
  %132 = load ptr, ptr %135, align 8, !tbaa !100
  %133 = icmp eq ptr %132, null
  br i1 %133, label %214, label %134, !llvm.loop !323

134:                                              ; preds = %128, %131
  %135 = phi ptr [ %126, %128 ], [ %132, %131 ]
  %136 = getelementptr inbounds %struct.wmWindow, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !122
  %138 = getelementptr inbounds %struct.bScreen, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !100
  %140 = icmp eq ptr %139, null
  br i1 %140, label %131, label %141

141:                                              ; preds = %134, %211
  %142 = phi ptr [ %212, %211 ], [ %139, %134 ]
  %143 = getelementptr inbounds %struct.ScrArea, ptr %142, i64 0, i32 20
  %144 = load ptr, ptr %143, align 8, !tbaa !100
  %145 = icmp eq ptr %144, null
  br i1 %145, label %202, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.ScrArea, ptr %142, i64 0, i32 8
  br label %148

148:                                              ; preds = %146, %199
  %149 = phi ptr [ %144, %146 ], [ %200, %199 ]
  %150 = load ptr, ptr %17, align 8, !tbaa !130
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %198, label %152

152:                                              ; preds = %148
  %153 = load i8, ptr %147, align 8, !tbaa !99
  %154 = getelementptr inbounds %struct.ARegion, ptr %149, i64 0, i32 8
  %155 = load i16, ptr %154, align 2, !tbaa !251
  %156 = load i16, ptr %129, align 8, !tbaa !324
  %157 = zext i16 %156 to i32
  switch i16 %155, label %199 [
    i16 0, label %158
    i16 2, label %183
    i16 4, label %187
    i16 1, label %192
    i16 7, label %194
  ]

158:                                              ; preds = %152
  switch i8 %153, label %199 [
    i8 1, label %159
    i8 2, label %162
    i8 12, label %162
    i8 13, label %162
    i8 15, label %165
    i8 4, label %168
    i8 8, label %171
    i8 16, label %174
    i8 6, label %177
    i8 20, label %180
  ]

159:                                              ; preds = %158
  %160 = and i32 %157, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %199, label %198

162:                                              ; preds = %158, %158, %158
  %163 = and i32 %157, 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %199, label %198

165:                                              ; preds = %158
  %166 = and i32 %157, 7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %199, label %198

168:                                              ; preds = %158
  %169 = and i32 %157, 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %199, label %198

171:                                              ; preds = %158
  %172 = and i32 %157, 36
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %199, label %198

174:                                              ; preds = %158
  %175 = and i32 %157, 256
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %199, label %198

177:                                              ; preds = %158
  %178 = and i32 %157, 64
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %199, label %198

180:                                              ; preds = %158
  %181 = and i32 %157, 512
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %199, label %198

183:                                              ; preds = %152
  switch i8 %153, label %199 [
    i8 2, label %184
    i8 12, label %184
    i8 13, label %184
  ]

184:                                              ; preds = %183, %183, %183
  %185 = and i32 %157, 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %199, label %198

187:                                              ; preds = %152
  %188 = icmp ne i8 %153, 20
  %189 = and i32 %157, 8
  %190 = icmp eq i32 %189, 0
  %191 = and i1 %188, %190
  br i1 %191, label %199, label %198

192:                                              ; preds = %152
  %193 = icmp eq i8 %153, 15
  br i1 %193, label %198, label %199

194:                                              ; preds = %152
  switch i8 %153, label %199 [
    i8 8, label %195
    i8 20, label %198
  ]

195:                                              ; preds = %194
  %196 = and i32 %157, 36
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %159, %162, %165, %168, %171, %174, %177, %180, %184, %187, %192, %194, %195, %148
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %149) #13
  br label %199

199:                                              ; preds = %198, %152, %158, %159, %162, %165, %168, %171, %174, %177, %180, %183, %184, %187, %192, %194, %195
  %200 = load ptr, ptr %149, align 8, !tbaa !100
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %148, !llvm.loop !325

202:                                              ; preds = %199, %141
  %203 = getelementptr inbounds %struct.ScrArea, ptr %142, i64 0, i32 8
  %204 = load i8, ptr %203, align 8, !tbaa !99
  %205 = load i16, ptr %130, align 2, !tbaa !326
  %206 = icmp ne i8 %204, 15
  %207 = and i16 %205, 15
  %208 = icmp eq i16 %207, 0
  %209 = or i1 %206, %208
  br i1 %209, label %211, label %210

210:                                              ; preds = %202
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %142) #13
  br label %211

211:                                              ; preds = %210, %202
  %212 = load ptr, ptr %142, align 8, !tbaa !100
  %213 = icmp eq ptr %212, null
  br i1 %213, label %131, label %141, !llvm.loop !327

214:                                              ; preds = %131, %124
  tail call void @ED_refresh_viewport_fps(ptr noundef %0) #13
  %215 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 55
  %216 = load i16, ptr %215, align 4, !tbaa !317
  %217 = sitofp i16 %216 to double
  %218 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 65
  %219 = load float, ptr %218, align 4, !tbaa !318
  %220 = fpext float %219 to double
  %221 = fdiv double %217, %220
  %222 = fdiv double 1.000000e+00, %221
  %223 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 3
  store double %222, ptr %223, align 8, !tbaa !328
  br label %224

224:                                              ; preds = %3, %8, %214
  %225 = phi i32 [ 4, %214 ], [ 8, %8 ], [ 8, %3 ]
  ret i32 %225
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #1

declare void @ED_refresh_viewport_fps(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_animation_play_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.59) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !173
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.177) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !173
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.177) #13
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ -1, %2 ]
  %14 = icmp eq i32 %5, 0
  %15 = select i1 %14, i32 1, i32 -1
  %16 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef %13, i32 noundef %15)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_animation_cancel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15, !llvm.loop !125

15:                                               ; preds = %5, %9
  %16 = phi ptr [ %11, %9 ], [ null, %5 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !173
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.182) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bScreen, ptr %16, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !124
  %26 = getelementptr inbounds %struct.wmTimer, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %29 = getelementptr inbounds %struct.ScreenAnimData, ptr %27, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !329
  %31 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 22, i32 5
  store i32 %30, ptr %31, align 8, !tbaa !298
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %28) #13
  br label %32

32:                                               ; preds = %23, %18
  %33 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %34

34:                                               ; preds = %32, %15
  ret i32 8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %5 = tail call ptr @ED_screen_duplicate(ptr noundef %3, ptr noundef %4) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50397184, ptr noundef %5) #13
  ret i32 4
}

declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @screen_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50462720, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @scene_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.209) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_scene_add(ptr noundef %4, ptr noundef nonnull @.str.211) #13
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_scene_copy(ptr noundef %3, i32 noundef %7) #13
  switch i32 %7, label %16 [
    i32 3, label %13
    i32 4, label %14
  ]

13:                                               ; preds = %11
  tail call void @ED_object_single_users(ptr noundef %4, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #13
  br label %16

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #13
  tail call void @ED_object_single_users(ptr noundef %4, ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  br label %16

16:                                               ; preds = %11, %13, %14, %9
  %17 = phi ptr [ %10, %9 ], [ %12, %13 ], [ %12, %14 ], [ %12, %11 ]
  %18 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %18, ptr noundef %17) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67174400, ptr noundef %17) #13
  ret i32 4
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @BKE_scene_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_scene_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_object_single_users(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @scene_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  tail call void @ED_screen_delete_scene(ptr noundef %0, ptr noundef %3) #13
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !330
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.215, ptr noundef %3)
  br label %9

9:                                                ; preds = %7, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108868, ptr noundef %3) #13
  ret i32 4
}

declare void @ED_screen_delete_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }

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
!34 = !{!35, !40, i64 228}
!35 = !{!"bScreen", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !37, i64 184, !37, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !37, i64 232, !37, i64 240}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!35, !40, i64 226}
!44 = !{!45, !37, i64 24}
!45 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !46, i64 280, !56, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !57, i64 4400, !58, i64 4416, !61, i64 4600, !37, i64 4608, !62, i64 4616, !37, i64 4640, !63, i64 4648, !63, i64 4656, !49, i64 4664, !50, i64 4824, !64, i64 4888, !37, i64 4952}
!46 = !{!"RenderData", !47, i64 0, !37, i64 248, !37, i64 256, !51, i64 264, !52, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !48, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !53, i64 544, !53, i64 560, !54, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !41, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !48, i64 660, !48, i64 664, !40, i64 668, !40, i64 670, !48, i64 672, !48, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !48, i64 2528, !48, i64 2532, !40, i64 2536, !40, i64 2538, !48, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !48, i64 2560, !48, i64 2564, !37, i64 2568, !41, i64 2576, !48, i64 2580, !38, i64 2584, !55, i64 2616, !41, i64 3976, !41, i64 3980}
!47 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !48, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !49, i64 24, !50, i64 184}
!48 = !{!"float", !38, i64 0}
!49 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !48, i64 136, !48, i64 140, !37, i64 144, !37, i64 152}
!50 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!51 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!52 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !48, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!53 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!"BakeData", !47, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !48, i64 1280, !48, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!56 = !{!"AudioData", !41, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !48, i64 24, !48, i64 28}
!57 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!58 = !{!"GameData", !57, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !59, i64 40, !40, i64 64, !40, i64 66, !48, i64 68, !60, i64 72, !48, i64 128, !48, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!59 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !48, i64 8, !48, i64 12, !37, i64 16}
!60 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !41, i64 40, !48, i64 44, !48, i64 48, !40, i64 52, !40, i64 54}
!61 = !{!"UnitSettings", !48, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!62 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!63 = !{!"long", !38, i64 0}
!64 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!65 = !{!66, !41, i64 432}
!66 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !67, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !48, i64 616, !48, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !48, i64 1048, !48, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !48, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !48, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !63, i64 1304, !63, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!67 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!68 = !{!69, !41, i64 32}
!69 = !{!"SpaceLink", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !48, i64 36, !38, i64 40}
!70 = !{!71, !37, i64 288}
!71 = !{!"SpaceNode", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !48, i64 36, !38, i64 40, !72, i64 56, !37, i64 216, !37, i64 224, !40, i64 232, !40, i64 234, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !38, i64 256, !42, i64 264, !37, i64 280, !37, i64 288, !38, i64 296, !41, i64 360, !41, i64 364, !40, i64 368, !40, i64 370, !40, i64 372, !40, i64 374, !42, i64 376, !37, i64 392}
!72 = !{!"View2D", !53, i64 0, !53, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !38, i64 80, !38, i64 88, !48, i64 96, !48, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!73 = !{!74, !37, i64 24}
!74 = !{!"bNodeTree", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !42, i64 224, !42, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !53, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !75, i64 352, !41, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!75 = !{!"bNodeInstanceKey", !41, i64 0}
!76 = !{!66, !38, i64 1160}
!77 = !{!66, !37, i64 24}
!78 = !{!66, !40, i64 136}
!79 = !{!66, !37, i64 296}
!80 = !{!36, !37, i64 24}
!81 = !{!82, !37, i64 160}
!82 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!83 = !{!84, !37, i64 0}
!84 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !63, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!85 = !{!86, !41, i64 12}
!86 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !87, i64 144, !87, i64 344, !87, i64 544, !87, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!87 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!88 = !{!89, !37, i64 152}
!89 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !48, i64 252, !48, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !90, i64 504, !48, i64 512, !48, i64 516, !48, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!90 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!91 = !{!89, !41, i64 268}
!92 = !{!89, !37, i64 376}
!93 = !{!94, !37, i64 272}
!94 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!95 = !{!96, !37, i64 160}
!96 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !48, i64 228, !48, i64 232, !48, i64 236, !37, i64 240}
!97 = !{!98, !37, i64 96}
!98 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !54, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!99 = !{!98, !38, i64 72}
!100 = !{!37, !37, i64 0}
!101 = !{!102, !41, i64 24}
!102 = !{!"AZone", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !54, i64 40, !48, i64 56}
!103 = !{!41, !41, i64 0}
!104 = !{!102, !40, i64 32}
!105 = !{!102, !40, i64 34}
!106 = !{!107, !40, i64 8948}
!107 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !48, i64 8956, !48, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !48, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !108, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !48, i64 10904, !48, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !109, i64 10928}
!108 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!109 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !38, i64 26}
!110 = !{!102, !40, i64 36}
!111 = !{!102, !40, i64 38}
!112 = !{!107, !48, i64 10908}
!113 = !{!107, !41, i64 8524}
!114 = !{!102, !48, i64 56}
!115 = distinct !{!115, !116, !117}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !{!119, !40, i64 216}
!119 = !{!"ARegion", !37, i64 0, !37, i64 8, !72, i64 16, !54, i64 176, !54, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !48, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!120 = !{!98, !40, i64 82}
!121 = !{!98, !37, i64 48}
!122 = !{!123, !37, i64 24}
!123 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!124 = !{!35, !37, i64 232}
!125 = distinct !{!125, !116, !117}
!126 = !{!35, !41, i64 200}
!127 = !{!128, !37, i64 40}
!128 = !{!"wmTimer", !37, i64 0, !37, i64 8, !37, i64 16, !129, i64 24, !41, i64 32, !37, i64 40, !129, i64 48, !129, i64 56, !129, i64 64, !129, i64 72, !129, i64 80, !41, i64 88}
!129 = !{!"double", !38, i64 0}
!130 = !{!131, !37, i64 0}
!131 = !{!"ScreenAnimData", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !41, i64 16, !41, i64 20, !129, i64 24}
!132 = !{!119, !37, i64 360}
!133 = !{!119, !37, i64 8}
!134 = !{!128, !129, i64 48}
!135 = !{!136, !41, i64 24}
!136 = !{!"RegionAlphaInfo", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24}
!137 = !{!136, !37, i64 16}
!138 = !{!136, !37, i64 8}
!139 = !{!119, !40, i64 218}
!140 = !{!136, !37, i64 0}
!141 = !{!119, !37, i64 0}
!142 = !{!143, !37, i64 0}
!143 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !144, i64 152, !40, i64 184}
!144 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!145 = !{!143, !37, i64 24}
!146 = !{!143, !37, i64 8}
!147 = !{!143, !37, i64 48}
!148 = !{!143, !37, i64 64}
!149 = !{!143, !37, i64 72}
!150 = !{!143, !37, i64 56}
!151 = !{!143, !40, i64 184}
!152 = !{!143, !37, i64 88}
!153 = !{!143, !37, i64 32}
!154 = !{!143, !37, i64 104}
!155 = !{!156, !37, i64 176}
!156 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176}
!157 = !{!158, !41, i64 20}
!158 = !{!"wmDrag", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !38, i64 32, !129, i64 1056, !37, i64 1064, !48, i64 1072, !41, i64 1076, !41, i64 1080, !38, i64 1084, !41, i64 1284}
!159 = !{!158, !41, i64 16}
!160 = !{!161, !37, i64 48}
!161 = !{!"wmDropBox", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56}
!162 = !{!161, !40, i64 56}
!163 = !{!164, !37, i64 96}
!164 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!165 = !{!166, !37, i64 0}
!166 = !{!"sActionzoneData", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!167 = !{!166, !37, i64 16}
!168 = !{!169, !41, i64 20}
!169 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !129, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!170 = !{!166, !41, i64 24}
!171 = !{!169, !41, i64 24}
!172 = !{!166, !41, i64 28}
!173 = !{!164, !37, i64 112}
!174 = !{!166, !41, i64 36}
!175 = !{!169, !40, i64 16}
!176 = !{!169, !40, i64 18}
!177 = !{!169, !37, i64 112}
!178 = !{!169, !40, i64 106}
!179 = !{!166, !41, i64 32}
!180 = distinct !{!180, !116, !117}
!181 = !{!166, !37, i64 8}
!182 = !{!123, !37, i64 136}
!183 = distinct !{!183, !116, !117}
!184 = !{!185, !37, i64 168}
!185 = !{!"wmWindowManager", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !42, i64 160, !42, i64 176, !186, i64 192, !42, i64 232, !42, i64 248, !42, i64 264, !42, i64 280, !37, i64 296, !37, i64 304, !37, i64 312, !42, i64 320, !37, i64 336, !38, i64 344, !38, i64 345}
!186 = !{!"ReportList", !42, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!187 = !{!164, !37, i64 88}
!188 = distinct !{!188, !116, !117}
!189 = !{i32 0, i32 2}
!190 = !{!191, !41, i64 8}
!191 = !{!"sAreaMoveData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16}
!192 = !{!191, !38, i64 16}
!193 = !{!191, !41, i64 0}
!194 = !{!191, !41, i64 4}
!195 = !{!191, !41, i64 12}
!196 = !{!197, !37, i64 16}
!197 = !{!"ScrEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 34, !41, i64 36}
!198 = !{!40, !40, i64 0}
!199 = !{!200, !40, i64 28}
!200 = !{!"ScrVert", !37, i64 0, !37, i64 8, !37, i64 16, !201, i64 24, !40, i64 28, !40, i64 30}
!201 = !{!"vec2s", !40, i64 0, !40, i64 2}
!202 = !{!200, !40, i64 30}
!203 = distinct !{!203, !116, !117}
!204 = !{!98, !37, i64 16}
!205 = !{!200, !40, i64 26}
!206 = !{!98, !37, i64 24}
!207 = !{!98, !37, i64 40}
!208 = !{!98, !37, i64 32}
!209 = !{!200, !40, i64 24}
!210 = distinct !{!210, !116, !117}
!211 = distinct !{!211, !116, !117}
!212 = distinct !{!212, !116, !117}
!213 = !{!98, !40, i64 74}
!214 = !{!98, !40, i64 76}
!215 = !{!216, !37, i64 48}
!216 = !{!"sAreaSplitData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!217 = !{!216, !41, i64 28}
!218 = !{!216, !41, i64 24}
!219 = !{!35, !40, i64 208}
!220 = !{!216, !41, i64 0}
!221 = !{!216, !41, i64 4}
!222 = !{!216, !41, i64 32}
!223 = !{!216, !41, i64 8}
!224 = !{!216, !41, i64 20}
!225 = !{!216, !41, i64 12}
!226 = !{!216, !41, i64 16}
!227 = !{!98, !41, i64 56}
!228 = !{!98, !41, i64 64}
!229 = !{!35, !40, i64 214}
!230 = !{!216, !37, i64 56}
!231 = !{!216, !37, i64 40}
!232 = distinct !{!232, !116, !117}
!233 = !{!197, !37, i64 24}
!234 = !{!235, !37, i64 0}
!235 = !{!"sAreaJoinData", !37, i64 0, !37, i64 8, !37, i64 16}
!236 = !{!235, !37, i64 8}
!237 = !{!238, !37, i64 16}
!238 = !{!"PointerRNA", !239, i64 0, !37, i64 8, !37, i64 16}
!239 = !{!"", !37, i64 0}
!240 = !{i64 0, i64 4, !103, i64 4, i64 4, !103, i64 8, i64 4, !103, i64 12, i64 4, !103}
!241 = !{!123, !40, i64 104}
!242 = !{!123, !40, i64 106}
!243 = !{!54, !41, i64 0}
!244 = !{!54, !41, i64 4}
!245 = !{!54, !41, i64 8}
!246 = !{!54, !41, i64 12}
!247 = !{!35, !37, i64 152}
!248 = !{!249, !37, i64 0}
!249 = !{!"sAreaSwapData", !37, i64 0, !37, i64 8}
!250 = !{!249, !37, i64 8}
!251 = !{!119, !40, i64 214}
!252 = !{!164, !37, i64 120}
!253 = !{!119, !37, i64 376}
!254 = !{!255, !38, i64 811}
!255 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !48, i64 776, !48, i64 780, !48, i64 784, !48, i64 788, !38, i64 792, !48, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !48, i64 848, !38, i64 852, !48, i64 864, !38, i64 868}
!256 = !{!255, !38, i64 812}
!257 = !{!255, !40, i64 826}
!258 = distinct !{!258, !116, !117}
!259 = !{!98, !37, i64 112}
!260 = !{!98, !37, i64 88}
!261 = distinct !{!261, !116, !117}
!262 = distinct !{!262, !116, !117}
!263 = !{!255, !38, i64 810}
!264 = !{!255, !38, i64 809}
!265 = !{!255, !37, i64 648}
!266 = !{!102, !37, i64 16}
!267 = !{!268, !37, i64 0}
!268 = !{!"RegionMoveData", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48}
!269 = !{!268, !37, i64 8}
!270 = !{!268, !37, i64 16}
!271 = !{!102, !41, i64 28}
!272 = !{!268, !41, i64 48}
!273 = !{!268, !41, i64 36}
!274 = !{!268, !41, i64 40}
!275 = !{!119, !40, i64 210}
!276 = !{!119, !40, i64 208}
!277 = distinct !{!277, !116, !117}
!278 = !{!268, !41, i64 44}
!279 = !{!119, !40, i64 224}
!280 = !{!119, !40, i64 226}
!281 = !{!268, !41, i64 32}
!282 = !{!98, !40, i64 78}
!283 = !{!35, !40, i64 210}
!284 = !{!35, !37, i64 0}
!285 = !{!286, !37, i64 1328}
!286 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !63, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!287 = !{!35, !40, i64 212}
!288 = !{!38, !38, i64 0}
!289 = distinct !{!289, !116, !117}
!290 = !{!35, !37, i64 8}
!291 = !{!286, !37, i64 1336}
!292 = distinct !{!292, !116, !117}
!293 = distinct !{!293, !116, !117}
!294 = distinct !{!294, !116, !117}
!295 = distinct !{!295, !116, !117}
!296 = !{!98, !37, i64 104}
!297 = distinct !{!297, !116, !117}
!298 = !{!45, !41, i64 680}
!299 = !{!107, !41, i64 8}
!300 = !{!45, !48, i64 692}
!301 = !{!302, !38, i64 2090}
!302 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!303 = !{!131, !40, i64 12}
!304 = !{!45, !40, i64 712}
!305 = !{!131, !41, i64 20}
!306 = !{!48, !48, i64 0}
!307 = !{!45, !40, i64 244}
!308 = !{!309, !41, i64 96}
!309 = !{!"bDopeSheet", !37, i64 0, !42, i64 8, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108}
!310 = !{!311, !48, i64 44}
!311 = !{!"ActKeyColumn", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 41, !40, i64 42, !48, i64 44, !40, i64 48, !40, i64 50}
!312 = distinct !{!312, !116, !117}
!313 = !{!314, !41, i64 16}
!314 = !{!"TimeMarker", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !41, i64 84, !37, i64 88}
!315 = distinct !{!315, !116, !117}
!316 = !{!131, !129, i64 24}
!317 = !{!45, !40, i64 820}
!318 = !{!45, !48, i64 900}
!319 = !{!45, !41, i64 696}
!320 = !{!45, !41, i64 684}
!321 = !{!45, !41, i64 700}
!322 = !{!45, !41, i64 688}
!323 = distinct !{!323, !116, !117}
!324 = !{!131, !40, i64 8}
!325 = distinct !{!325, !116, !117}
!326 = !{!131, !40, i64 10}
!327 = distinct !{!327, !116, !117}
!328 = !{!128, !129, i64 24}
!329 = !{!131, !41, i64 16}
!330 = !{!302, !41, i64 2100}
