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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_regionactive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_areaactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_screenactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_screen_mainwinactive(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_scene_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
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

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_objectmode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
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

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_view3d_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 1) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !69 {
  %3 = tail call i32 @ED_operator_areaactive(ptr noundef %0) #16, !range !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceLink, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = icmp eq i32 %10, %1
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %5, %8
  %14 = phi i8 [ 0, %5 ], [ %12, %8 ], [ 0, %2 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_region_view3d_active(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_animview_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_areaactive(ptr noundef %0) #16, !range !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceLink, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !71
  switch i32 %9, label %10 [
    i32 8, label %11
    i32 12, label %11
    i32 13, label %11
    i32 2, label %11
    i32 15, label %11
  ]

10:                                               ; preds = %7, %4, %1
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %7, %7, %7, %7, %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_timeline_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 15) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_outliner_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 3) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_outliner_active_no_editobject(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 3) #16, !range !68
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #15
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = icmp eq ptr %5, null
  %8 = icmp ne ptr %5, %6
  %9 = select i1 %7, i1 true, i1 %8
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_file_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 5) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_action_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 12) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_buttons_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 4) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_node_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_node_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %4, %1
  br label %13

13:                                               ; preds = %8, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_graphedit_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 2) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_sequencer_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 8) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_sequencer_active_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 8) #16, !range !68
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_scene_editable(ptr noundef %0) #16, !range !70
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_image_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 6) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_nla_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 13) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_logic_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 17) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_info_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 7) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_console_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @ed_spacetype_test(ptr noundef %0, i32 noundef 18) #16, !range !68
  %3 = zext nneg i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_object_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @ed_object_hidden(ptr noundef nonnull %2) #16, !range !70
  %6 = xor i32 %5, 1
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %4 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ed_object_hidden(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 102
  %3 = load i8, ptr %2, align 8, !tbaa !80
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_object_active_editable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ed_object_hidden(ptr noundef nonnull %2) #16, !range !70
  %10 = xor i32 %9, 1
  br label %11

11:                                               ; preds = %8, %4, %1
  %12 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_object_active_editable_mesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ed_object_hidden(ptr noundef nonnull %2) #16, !range !70
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !82
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = icmp eq ptr %19, null
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %15, %11, %8, %4, %1
  %23 = phi i32 [ 0, %11 ], [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %21, %15 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_object_active_editable_font(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_object_active_context(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @ed_object_hidden(ptr noundef nonnull %2) #16, !range !70
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !82
  %14 = icmp eq i16 %13, 4
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %8, %4, %1
  %17 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editmesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #15
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %1, %4, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editmesh_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #16, !range !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #16, !range !70
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_editmesh_region_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #16, !range !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editarmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_posemode_exclusive(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %2) #15
  %11 = icmp eq ptr %2, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %1, %4
  %14 = phi i32 [ 0, %4 ], [ 0, %1 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_posemode_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_pose_object_from_context(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @BKE_object_pose_context_check(ptr noundef nonnull %2) #15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %4, %1
  br label %13

13:                                               ; preds = %9, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %9 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @ED_pose_object_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_object_pose_context_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_posemode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %2) #15
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_uvedit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %2, ptr noundef %3) #15
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_uvedit_space_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = icmp eq ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef nonnull %2, ptr noundef %3) #15
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_uvmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !87
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !89
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1, %4, %11, %8
  br label %17

17:                                               ; preds = %11, %16
  %18 = phi i32 [ 0, %16 ], [ 1, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editsurfcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %4, %1, %9
  %17 = phi i32 [ %15, %9 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_operator_editsurfcurve_region_view3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ED_operator_editsurfcurve(ptr noundef %0) #16, !range !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.3) #15
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editcurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editcurve_3d(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 23
  %12 = load i32, ptr %11, align 4, !tbaa !95
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %1, %4, %8, %15
  %21 = phi i32 [ 0, %8 ], [ %19, %15 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editsurf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editfont(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editlattice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 22
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_editmball(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.MetaBall, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %1, %4, %8
  %16 = phi i32 [ %14, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !103
  switch i8 %10, label %19 [
    i8 20, label %11
    i8 8, label %13
    i8 6, label %16
  ]

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef nonnull %6) #15
  br label %19

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %15 = tail call zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef nonnull %6, ptr noundef %14) #15
  br label %19

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %18 = tail call zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef %17, ptr noundef nonnull %6) #15
  br label %19

19:                                               ; preds = %1, %4, %8, %16, %13, %11
  %20 = phi i8 [ %18, %16 ], [ %15, %13 ], [ %12, %11 ], [ 0, %8 ], [ 0, %4 ], [ 0, %1 ]
  %21 = zext i8 %20 to i32
  ret i32 %21
}

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_space_sequencer_check_show_maskedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_check_show_maskedit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @is_in_area_actionzone(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %93, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i32, ptr %1, i64 1
  br label %9

9:                                                ; preds = %7, %90
  %10 = phi ptr [ %5, %7 ], [ %91, %90 ]
  %11 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 9
  %12 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %11, ptr noundef %1) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %90, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !105
  switch i32 %16, label %90 [
    i32 1, label %17
    i32 2, label %93
    i32 3, label %37
  ]

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 4, !tbaa !107
  %19 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 5
  %20 = load i16, ptr %19, align 8, !tbaa !108
  %21 = sext i16 %20 to i32
  %22 = sub nsw i32 %18, %21
  %23 = mul nsw i32 %22, %22
  %24 = load i32, ptr %8, align 4, !tbaa !107
  %25 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !109
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 %24, %27
  %29 = mul nsw i32 %28, %28
  %30 = add nuw nsw i32 %29, %23
  %31 = sitofp i32 %30 to float
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %33 = sitofp i16 %32 to float
  %34 = fmul float %33, 0x3FE3333340000000
  %35 = fmul float %34, %34
  %36 = fcmp ult float %35, %31
  br i1 %36, label %90, label %93

37:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %38 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !108
  %40 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 6
  %41 = load i16, ptr %40, align 2, !tbaa !109
  %42 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 7
  %43 = load i16, ptr %42, align 4, !tbaa !114
  %44 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 8
  %45 = load i16, ptr %44, align 2, !tbaa !115
  call fastcc void @fullscreen_click_rcti_init(ptr noundef nonnull %3, i16 noundef signext %39, i16 noundef signext %41, i16 noundef signext %43, i16 noundef signext %45) #16
  %46 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %3, ptr noundef %1) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %37
  %49 = load i32, ptr %1, align 4, !tbaa !107
  %50 = load i16, ptr %42, align 4, !tbaa !114
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %49, %51
  %53 = mul nsw i32 %52, %52
  %54 = load i32, ptr %8, align 4, !tbaa !107
  %55 = load i16, ptr %44, align 2, !tbaa !115
  %56 = sext i16 %55 to i32
  %57 = sub nsw i32 %54, %56
  %58 = mul nsw i32 %57, %57
  %59 = add nuw nsw i32 %58, %53
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 6.500000e+00
  %63 = fmul float %62, %62
  %64 = fptosi float %63 to i32
  %65 = insertelement <2 x float> poison, float %61, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = fmul <2 x float> %66, <float 5.000000e+00, float 0x3FE3333340000000>
  %68 = fmul <2 x float> %67, %67
  %69 = fptosi <2 x float> %68 to <2 x i32>
  %70 = insertelement <2 x i32> poison, i32 %59, i64 0
  %71 = shufflevector <2 x i32> %70, <2 x i32> poison, <2 x i32> zeroinitializer
  %72 = icmp slt <2 x i32> %71, %69
  %73 = extractelement <2 x i1> %72, i64 0
  %74 = extractelement <2 x i1> %72, i64 1
  %75 = select i1 %74, i1 true, i1 %73
  br i1 %75, label %86, label %76

76:                                               ; preds = %48
  %77 = icmp slt i32 %59, %64
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = extractelement <2 x i32> %69, i64 0
  %80 = sub nsw i32 %59, %79
  %81 = sitofp i32 %80 to float
  %82 = sub nsw i32 %64, %79
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %81, %83
  %85 = fsub float 1.000000e+00, %84
  br label %86

86:                                               ; preds = %76, %48, %37, %78
  %87 = phi float [ %85, %78 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %48 ], [ 0.000000e+00, %76 ]
  %88 = phi ptr [ null, %78 ], [ %10, %37 ], [ null, %48 ], [ null, %76 ]
  %89 = getelementptr inbounds %struct.AZone, ptr %10, i64 0, i32 10
  store float %87, ptr %89, align 8, !tbaa !116
  call void @ED_area_tag_redraw(ptr noundef %0) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %93

90:                                               ; preds = %17, %14, %9
  %91 = load ptr, ptr %10, align 8, !tbaa !104
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %9, !llvm.loop !117

93:                                               ; preds = %90, %14, %17, %2, %86
  %94 = phi ptr [ %88, %86 ], [ null, %2 ], [ null, %90 ], [ %10, %14 ], [ %10, %17 ]
  ret ptr %94
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fullscreen_click_rcti_init(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !119 {
  %6 = sitofp i16 %3 to float
  %7 = sitofp i16 %1 to float
  %8 = fsub float %6, %7
  %9 = fmul float %8, 5.000000e-01
  %10 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !121
  %12 = sitofp i32 %11 to float
  %13 = fmul float %10, %12
  %14 = fdiv float %13, 7.200000e+01
  %15 = fdiv float %9, %14
  %16 = fsub float %6, %15
  %17 = fptosi float %16 to i32
  %18 = sitofp i16 %4 to float
  %19 = sitofp i16 %2 to float
  %20 = fsub float %18, %19
  %21 = fmul float %20, 5.000000e-01
  %22 = fdiv float %21, %14
  %23 = fsub float %18, %22
  %24 = fptosi float %23 to i32
  %25 = fmul float %14, 7.000000e+00
  %26 = tail call float @llvm.fmuladd.f32(float %14, float 1.600000e+01, float %25)
  %27 = fdiv float 3.600000e+01, %14
  %28 = sitofp i32 %17 to float
  %29 = fadd float %27, %28
  %30 = fptosi float %29 to i32
  %31 = sitofp i32 %24 to float
  %32 = fadd float %27, %31
  %33 = fptosi float %32 to i32
  %34 = sitofp i32 %30 to float
  %35 = tail call float @llvm.fmuladd.f32(float %14, float -1.600000e+01, float %34)
  %36 = fptosi float %35 to i32
  %37 = sitofp i32 %33 to float
  %38 = tail call float @llvm.fmuladd.f32(float %14, float -1.600000e+01, float %37)
  %39 = fptosi float %38 to i32
  %40 = sitofp i32 %36 to float
  %41 = fadd float %26, %40
  %42 = fptosi float %41 to i32
  %43 = sitofp i32 %39 to float
  %44 = fadd float %26, %43
  %45 = fptosi float %44 to i32
  tail call void @BLI_rcti_init(ptr noundef %0, i32 noundef %36, i32 noundef %42, i32 noundef %39, i32 noundef %45) #15
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_screens_header_tools_menu_create(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !122
  %8 = icmp eq i16 %7, 1
  %9 = select i1 %8, ptr @.str.4, ptr @.str.6
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.5) #15
  %10 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 14
  %11 = load i16, ptr %10, align 2, !tbaa !124
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 38, i32 39
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %14, ptr noundef nonnull @.str.8) #15
  tail call void @uiItemS(ptr noundef %1) #15
  %15 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !103
  %17 = icmp eq i8 %16, 5
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.11, ptr @.str.9
  tail call void @uiItemO(ptr noundef %1, ptr noundef nonnull %22, i32 noundef 0, ptr noundef nonnull @.str.10) #15
  br label %23

23:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_screen_animation_playing(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = icmp eq ptr %11, null
  br i1 %12, label %3, label %13, !llvm.loop !129

13:                                               ; preds = %3, %7
  %14 = phi ptr [ %9, %7 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %7 = tail call ptr @ED_screen_animation_playing(ptr noundef %6) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @ED_screen_animation_timer(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  tail call void @sound_stop_scene(ptr noundef %5) #15
  br label %23

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @sound_play_scene(ptr noundef %5) #15
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !130
  tail call void @ED_screen_animation_timer(ptr noundef %0, i32 noundef %15, i32 noundef 15, i32 noundef %1, i32 noundef %2) #15
  %16 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wmTimer, ptr %17, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !131
  %22 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  store ptr %22, ptr %21, align 8, !tbaa !134
  br label %23

23:                                               ; preds = %13, %19, %9
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_animation_timer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_stop_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_play_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_region_blend_factor(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !122
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %0, ptr %12
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %1, %10
  %19 = phi ptr [ %16, %10 ], [ %3, %1 ]
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !131
  %22 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 6
  %23 = load double, ptr %22, align 8, !tbaa !138
  %24 = fptrunc double %23 to float
  %25 = fdiv float %24, 0x3FC99999A0000000
  %26 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %21, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !139
  %28 = icmp eq i32 %27, 0
  %29 = fsub float 0x3FEB851EA0000000, %25
  %30 = select i1 %28, float %25, float %29
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = fcmp ogt float %30, 1.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %5, %10, %34, %32, %18
  %36 = phi float [ 1.000000e+00, %34 ], [ %30, %32 ], [ 0.000000e+00, %18 ], [ 1.000000e+00, %10 ], [ 1.000000e+00, %5 ]
  ret float %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @region_blend_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @region_blend_end(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 1) #16
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.12) #15
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !141
  %15 = and i16 %14, 1
  %16 = zext nneg i16 %15 to i32
  %17 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %12, i64 0, i32 3
  store i32 %16, ptr %17, align 8, !tbaa !139
  store ptr %1, ptr %12, align 8, !tbaa !142
  %18 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %12, i64 0, i32 1
  store ptr %2, ptr %18, align 8, !tbaa !143
  %19 = and i16 %14, -2
  store i16 %19, ptr %13, align 2, !tbaa !141
  %20 = icmp eq i16 %15, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void @ED_area_initialize(ptr noundef %4, ptr noundef %5, ptr noundef %1) #15
  br label %24

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %23) #15
  br label %24

24:                                               ; preds = %22, %21
  %25 = load ptr, ptr %2, align 8, !tbaa !144
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ARegion, ptr %25, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !122
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %12, i64 0, i32 2
  store ptr %25, ptr %33, align 8, !tbaa !145
  br label %34

34:                                               ; preds = %27, %32, %24
  %35 = tail call ptr @WM_event_add_timer(ptr noundef %4, ptr noundef %5, i32 noundef 279, double noundef 0x3FA47AE140000000) #15
  store ptr %35, ptr %6, align 8, !tbaa !136
  %36 = getelementptr inbounds %struct.wmTimer, ptr %35, i64 0, i32 5
  store ptr %12, ptr %36, align 8, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_blend_end(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !146 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds %struct.wmTimer, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  tail call void @ED_region_tag_redraw(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %9) #15
  br label %12

12:                                               ; preds = %11, %3
  %13 = icmp eq i8 %2, 0
  %14 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !139
  %16 = icmp eq i32 %15, 0
  br i1 %13, label %24, label %17

17:                                               ; preds = %12
  br i1 %16, label %37, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !141
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 2, !tbaa !141
  br label %37

24:                                               ; preds = %12
  br i1 %16, label %35, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 10
  %29 = load i16, ptr %28, align 2, !tbaa !141
  %30 = trunc i32 %15 to i16
  %31 = or i16 %29, %30
  store i16 %31, ptr %28, align 2, !tbaa !141
  %32 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %33 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %34 = load ptr, ptr %7, align 8, !tbaa !142
  tail call void @ED_area_initialize(ptr noundef %32, ptr noundef %33, ptr noundef %34) #15
  br label %35

35:                                               ; preds = %25, %24
  %36 = load ptr, ptr %7, align 8, !tbaa !142
  tail call void @ED_area_tag_redraw(ptr noundef %36) #15
  br label %37

37:                                               ; preds = %17, %18, %35
  %38 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %39 = load ptr, ptr %4, align 8, !tbaa !136
  tail call void @WM_event_remove_timer(ptr noundef %38, ptr noundef null, ptr noundef %39) #15
  store ptr null, ptr %4, align 8, !tbaa !136
  ret void
}

; Function Attrs: optsize
declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_screen() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_actionzone) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_repeat_last) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_repeat_history) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_redo_last) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_move) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_split) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_join) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_options) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_dupli) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_area_swap) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_quadview) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_scale) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_flip) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_flip) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_toggle_menus) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_header_toolbox) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screen_set) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screen_full_area) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_back_to_previous) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_spacedata_cleanup) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screenshot) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_screencast) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_userpref_show) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_region_blend) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_frame_offset) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_frame_jump) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_keyframe_jump) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_marker_jump) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_step) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_play) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_animation_cancel) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_new) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCREEN_OT_delete) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_new) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_delete) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo_push) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_redo) #15
  tail call void @WM_operatortype_append(ptr noundef nonnull @ED_OT_undo_history) #15
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_actionzone(ptr nocapture noundef %0) #0 !PGOFuncName !147 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @actionzone_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @actionzone_modal, ptr %5, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @actionzone_area_poll, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @actionzone_cancel, ptr %7, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !157
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_repeat_last(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !159 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @repeat_last_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_repeat_history(ptr nocapture noundef %0) #0 !PGOFuncName !161 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @repeat_history_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @repeat_history_exec, ptr %5, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 1000) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_redo_last(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !162 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @redo_last_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_area_move(ptr nocapture noundef %0) #0 !PGOFuncName !163 {
  store ptr @.str.78, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.79, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_move_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_move_invoke, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_move_cancel, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_move_modal, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screen_mainwinactive, ptr %8, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !158
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !158
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_area_split(ptr nocapture noundef %0) #0 !PGOFuncName !164 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_split_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_split_invoke, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_split_modal, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_split_cancel, ptr %7, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screen_active_editable, ptr %8, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.88, ptr noundef nonnull @prop_direction_items, i32 noundef 104, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.75) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !158
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.90, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.75, float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !158
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.92, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %17 = load ptr, ptr %10, align 8, !tbaa !158
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.94, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_area_join(ptr nocapture noundef %0) #0 !PGOFuncName !165 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @area_join_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_join_invoke, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_join_modal, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @screen_active_editable, ptr %7, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_join_cancel, ptr %8, align 8, !tbaa !156
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %9, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.103, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !158
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.105, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !158
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.107, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %17 = load ptr, ptr %10, align 8, !tbaa !158
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef -100, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_options(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !166 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_area_options_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screen_mainwinactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_dupli(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !167 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_dupli_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_area_swap(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !168 {
  store ptr @.str.118, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.119, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @area_swap_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @area_swap_modal, ptr %5, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @area_swap_cancel, ptr %7, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_quadview(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !169 {
  store ptr @.str.121, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @region_quadview_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_scale(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !170 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @region_scale_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @region_scale_modal, ptr %5, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @region_scale_cancel, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %7, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_flip(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !171 {
  store ptr @.str.129, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @region_flip_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_flip(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !172 {
  store ptr @.str.131, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_flip_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !173 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.133, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_exec, ptr %4, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_toggle_menus(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !174 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %2, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @header_toggle_menus_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_header_toolbox(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !175 {
  store ptr @.str.136, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @header_toolbox_invoke, ptr %4, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_screen_set(ptr nocapture noundef %0) #0 !PGOFuncName !176 {
  store ptr @.str.138, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.139, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_set_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = tail call ptr @RNA_def_int(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_screen_full_area(ptr nocapture noundef %0) #0 !PGOFuncName !177 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.141, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_maximize_area_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_areaactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143) #15
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_back_to_previous(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !178 {
  store ptr @.str.144, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.146, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @fullscreen_back_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_spacedata_cleanup(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !179 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @spacedata_cleanup_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare void @SCREEN_OT_screenshot(ptr noundef) #1

; Function Attrs: optsize
declare void @SCREEN_OT_screencast(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_userpref_show(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !180 {
  store ptr @.str.152, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.153, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @userpref_show_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_region_blend(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !181 {
  store ptr @.str.154, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @region_blend_invoke, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !157
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_frame_offset(ptr nocapture noundef %0) #0 !PGOFuncName !182 {
  store ptr @.str.156, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %2, align 8, !tbaa !152
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.157, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @frame_offset_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.75, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_frame_jump(ptr nocapture noundef %0) #0 !PGOFuncName !183 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @frame_jump_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_keyframe_jump(ptr nocapture noundef %0) #0 !PGOFuncName !184 {
  store ptr @.str.162, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.163, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyframe_jump_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.75) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_marker_jump(ptr nocapture noundef %0) #0 !PGOFuncName !185 {
  store ptr @.str.166, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.167, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @marker_jump_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.75) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_animation_step(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !186 {
  store ptr @.str.171, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @screen_animation_step, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_animation_play(ptr nocapture noundef %0) #0 !PGOFuncName !187 {
  store ptr @.str.173, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.174, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_animation_play_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive_norender, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176) #15
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !158
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179) #15
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCREEN_OT_animation_cancel(ptr nocapture noundef %0) #0 !PGOFuncName !188 {
  store ptr @.str.180, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.181, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_animation_cancel_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_screenactive, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.182, i32 noundef 1, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_new(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !189 {
  store ptr @.str.185, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.186, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.187, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_new_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @WM_operator_winactive, ptr %5, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCREEN_OT_delete(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !190 {
  store ptr @.str.188, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.189, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.190, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @screen_delete_exec, ptr %4, align 8, !tbaa !160
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SCENE_OT_new(ptr nocapture noundef %0) #0 !PGOFuncName !191 {
  store ptr @.str.206, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.207, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.208, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @scene_new_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.209, ptr noundef nonnull @SCENE_OT_new.type_items, i32 noundef 0, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.75) #15
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @SCENE_OT_delete(ptr nocapture noundef writeonly %0) #6 !PGOFuncName !193 {
  store ptr @.str.212, ptr %0, align 8, !tbaa !148
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.213, ptr %2, align 8, !tbaa !151
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.214, ptr %3, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @scene_delete_exec, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !157
  ret void
}

; Function Attrs: optsize
declare void @ED_OT_undo(ptr noundef) #1

; Function Attrs: optsize
declare void @ED_OT_undo_push(ptr noundef) #1

; Function Attrs: optsize
declare void @ED_OT_redo(ptr noundef) #1

; Function Attrs: optsize
declare void @ED_OT_undo_history(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_screen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0) #15
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 0) #15
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef 1) #15
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef 2) #15
  %12 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 20480, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %13 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 20480, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %14 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 20480, i32 noundef 0, i32 noundef 1, i32 noundef 0) #15
  %15 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 20480, i32 noundef 0, i32 noundef 2, i32 noundef 0) #15
  %16 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 20481, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %17 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %18 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 308, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %20 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #15
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %20, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %22 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0) #15
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef 273, i32 noundef -1, i32 noundef -1, i32 noundef 0) #15
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef 279, i32 noundef -1, i32 noundef -1, i32 noundef 0) #15
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 139, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %27, ptr noundef nonnull @.str.30, i32 noundef 1) #15
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 137, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %30, ptr noundef nonnull @.str.30, i32 noundef -1) #15
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 140, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 138, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 221, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 309, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef 1) #15
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 20482, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.31, i32 noundef 1) #15
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef 302, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef 302, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef 113, i32 noundef 1, i32 noundef 6, i32 noundef 0) #15
  %43 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef 302, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.36, i32 noundef 114, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %45 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.37, i32 noundef 304, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %46 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef 305, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %47 = tail call ptr @WM_keymap_verify_item(ptr noundef %22, ptr noundef nonnull @.str.39, i32 noundef 307, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.41, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef 122, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.43, i32 noundef 122, i32 noundef 1, i32 noundef 3, i32 noundef 0) #15
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef 122, i32 noundef 1, i32 noundef 6, i32 noundef 0) #15
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef 311, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %56, ptr noundef nonnull @.str.46, i32 noundef 1) #15
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef 311, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %59, ptr noundef nonnull @.str.47, i32 noundef 1) #15
  %60 = load ptr, ptr %58, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef 1) #15
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.49, i32 noundef 310, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.50, i32 noundef 310, i32 noundef 1, i32 noundef 2, i32 noundef 0) #15
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %22, ptr noundef nonnull @.str.51, i32 noundef 117, i32 noundef 1, i32 noundef 6, i32 noundef 0) #15
  %65 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 0) #15
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 140, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %67 = getelementptr inbounds %struct.wmKeyMapItem, ptr %66, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %68, ptr noundef nonnull @.str.30, i32 noundef 10) #15
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 138, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %71, ptr noundef nonnull @.str.30, i32 noundef -10) #15
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %74, ptr noundef nonnull @.str.30, i32 noundef -1) #15
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %76 = getelementptr inbounds %struct.wmKeyMapItem, ptr %75, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %77, ptr noundef nonnull @.str.30, i32 noundef 1) #15
  %78 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 11, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %79 = getelementptr inbounds %struct.wmKeyMapItem, ptr %78, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %80, ptr noundef nonnull @.str.30, i32 noundef 1) #15
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef 10, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %82 = getelementptr inbounds %struct.wmKeyMapItem, ptr %81, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !194
  tail call void @RNA_int_set(ptr noundef %83, ptr noundef nonnull @.str.30, i32 noundef -1) #15
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 140, i32 noundef 1, i32 noundef 3, i32 noundef 0) #15
  %85 = getelementptr inbounds %struct.wmKeyMapItem, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %86, ptr noundef nonnull @.str.55, i32 noundef 1) #15
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 138, i32 noundef 1, i32 noundef 3, i32 noundef 0) #15
  %88 = getelementptr inbounds %struct.wmKeyMapItem, ptr %87, i64 0, i32 17
  %89 = load ptr, ptr %88, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %89, ptr noundef nonnull @.str.55, i32 noundef 0) #15
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 139, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %92, ptr noundef nonnull @.str.55, i32 noundef 1) #15
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.54, i32 noundef 137, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %95, ptr noundef nonnull @.str.55, i32 noundef 0) #15
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.57, i32 noundef 1) #15
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.57, i32 noundef 0) #15
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 177, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %104, ptr noundef nonnull @.str.57, i32 noundef 1) #15
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.56, i32 noundef 176, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %107, ptr noundef nonnull @.str.57, i32 noundef 0) #15
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 97, i32 noundef 1, i32 noundef 4, i32 noundef 0) #15
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 97, i32 noundef 1, i32 noundef 5, i32 noundef 0) #15
  %110 = getelementptr inbounds %struct.wmKeyMapItem, ptr %109, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !194
  tail call void @RNA_boolean_set(ptr noundef %111, ptr noundef nonnull @.str.59, i32 noundef 1) #15
  %112 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.58, i32 noundef 174, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef 175, i32 noundef 1, i32 noundef 0, i32 noundef 0) #15
  %115 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0) #15
  %116 = tail call ptr @WM_dropbox_add(ptr noundef %115, ptr noundef nonnull @.str.62, ptr noundef nonnull @open_file_drop_poll, ptr noundef nonnull @open_file_drop_copy) #15
  %117 = tail call ptr @WM_dropbox_add(ptr noundef %115, ptr noundef nonnull @.str.63, ptr noundef nonnull @UI_drop_color_poll, ptr noundef nonnull @UI_drop_color_copy) #15
  tail call fastcc void @keymap_modal_set(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @open_file_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #3 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !199
  %10 = icmp eq i32 %9, 695
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @open_file_drop_copy(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !200 {
  %3 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !201
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %4, ptr noundef nonnull @.str.216, ptr noundef nonnull %5) #15
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 7
  store i16 6, ptr %6, align 8, !tbaa !203
  ret void
}

; Function Attrs: optsize
declare i32 @UI_drop_color_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @UI_drop_color_copy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keymap_modal_set(ptr noundef %0) unnamed_addr #0 !PGOFuncName !204 {
  %2 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.225, ptr noundef nonnull @keymap_modal_set.modal_items) #15
  %3 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #15
  %4 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #15
  %5 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #15
  %6 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #15
  %7 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #15
  %8 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %2, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #15
  tail call void @WM_modalkeymap_assign(ptr noundef %2, ptr noundef nonnull @.str.21) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actionzone_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !205 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %6 = tail call ptr @is_in_area_actionzone(ptr noundef %4, ptr noundef nonnull %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str.68) #15
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !206
  %12 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  store ptr %12, ptr %10, align 8, !tbaa !208
  %13 = getelementptr inbounds %struct.sActionzoneData, ptr %10, i64 0, i32 2
  store ptr %6, ptr %13, align 8, !tbaa !210
  %14 = getelementptr inbounds %struct.sActionzoneData, ptr %10, i64 0, i32 3
  %15 = load <2 x i32>, ptr %5, align 4, !tbaa !107
  store <2 x i32> %15, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.AZone, ptr %6, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !105
  %18 = and i32 %17, -2
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  tail call fastcc void @actionzone_apply(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17) #16
  tail call fastcc void @actionzone_exit(ptr noundef nonnull %1) #16
  br label %23

21:                                               ; preds = %8
  %22 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %23

23:                                               ; preds = %3, %21, %20
  %24 = phi i32 [ 4, %20 ], [ 1, %21 ], [ 8, %3 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actionzone_modal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 !PGOFuncName !211 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #15
  %9 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #15
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !212
  switch i16 %11, label %72 [
    i16 4, label %12
    i16 218, label %70
    i16 1, label %70
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !214
  %15 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !215
  %17 = sub nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !216
  %20 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !217
  %22 = sub nsw i32 %19, %21
  %23 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 5
  store i32 110, ptr %26, align 8, !tbaa !218
  br label %38

27:                                               ; preds = %12
  %28 = tail call i32 @llvm.abs.i32(i32 %22, i1 true)
  %29 = icmp sgt i32 %17, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 5
  store i32 101, ptr %31, align 8, !tbaa !218
  br label %38

32:                                               ; preds = %27
  %33 = sub nsw i32 0, %23
  %34 = icmp slt i32 %22, %33
  %35 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 5
  br i1 %34, label %36, label %37

36:                                               ; preds = %32
  store i32 115, ptr %35, align 8, !tbaa !218
  br label %38

37:                                               ; preds = %32
  store i32 119, ptr %35, align 8, !tbaa !218
  br label %38

38:                                               ; preds = %30, %37, %36, %25
  %39 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = getelementptr inbounds %struct.AZone, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !105
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load ptr, ptr %7, align 8, !tbaa !208
  %46 = tail call ptr @is_in_area_actionzone(ptr noundef %45, ptr noundef nonnull %13) #16
  %47 = load ptr, ptr %39, align 8, !tbaa !210
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %72, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %13, align 4, !tbaa !214
  %51 = load i32, ptr %18, align 8, !tbaa !216
  %52 = tail call ptr @screen_find_active_scredge(ptr noundef %5, i32 noundef %8, i32 noundef %9, i32 noundef %50, i32 noundef %51) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %72

54:                                               ; preds = %38
  %55 = icmp ugt i32 %23, 1
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  %57 = tail call i32 @llvm.abs.i32(i32 %22, i1 true)
  %58 = icmp ugt i32 %57, 1
  br i1 %58, label %59, label %72

59:                                               ; preds = %49, %56
  %60 = load i32, ptr %13, align 4, !tbaa !214
  %61 = load i32, ptr %18, align 8, !tbaa !216
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %61, %59 ], [ %19, %54 ]
  %64 = phi i32 [ %60, %59 ], [ %14, %54 ]
  %65 = tail call fastcc ptr @screen_areahascursor(ptr noundef %5, i32 noundef %64, i32 noundef %63) #16
  %66 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !219
  %67 = load ptr, ptr %39, align 8, !tbaa !210
  %68 = getelementptr inbounds %struct.AZone, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !105
  tail call fastcc void @actionzone_apply(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %69) #16
  br label %70

70:                                               ; preds = %3, %3, %62
  %71 = phi i32 [ 4, %62 ], [ 2, %3 ], [ 2, %3 ]
  tail call fastcc void @actionzone_exit(ptr noundef nonnull %1) #16
  br label %72

72:                                               ; preds = %70, %49, %44, %3, %56
  %73 = phi i32 [ 1, %56 ], [ 1, %3 ], [ 1, %44 ], [ 1, %49 ], [ %71, %70 ]
  ret i32 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actionzone_area_poll(ptr noundef %0) #0 !PGOFuncName !220 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %2, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %9, i64 0, i32 4
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 22
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AZone, ptr %16, i64 0, i32 9
  %20 = tail call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %19, ptr noundef nonnull %12) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %14, label %22, !llvm.loop !222

22:                                               ; preds = %14, %18, %1, %7
  %23 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 0, %14 ], [ 1, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @actionzone_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !223 {
  tail call fastcc void @actionzone_exit(ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actionzone_apply(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !224 {
  %4 = alloca %struct.wmEvent, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #17
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.15) #15
  %11 = getelementptr inbounds %struct.sActionzoneData, ptr %7, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !226
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #15
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %13 = icmp eq i32 %2, 3
  %14 = select i1 %13, i16 20482, i16 20481
  %15 = icmp eq i32 %2, 1
  %16 = select i1 %15, i16 20480, i16 %14
  store i16 %16, ptr %12, align 8, !tbaa !212
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 0, ptr %17, align 2, !tbaa !227
  %18 = load ptr, ptr %6, align 8, !tbaa !206
  %19 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %18, ptr %19, align 8, !tbaa !228
  %20 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 1, ptr %20, align 2, !tbaa !229
  store ptr null, ptr %6, align 8, !tbaa !206
  call void @wm_event_add(ptr noundef %5, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actionzone_exit(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !230 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !206
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %6(ptr noundef nonnull %3) #15
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !206
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @screen_find_active_scredge(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @screen_areahascursor(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !231 {
  %4 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 7
  %11 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %5, label %13, !llvm.loop !232

13:                                               ; preds = %9, %5
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @repeat_last_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !233 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !234
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %9

9:                                                ; preds = %7, %2
  ret i32 2
}

; Function Attrs: optsize
declare i32 @WM_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @repeat_history_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !237 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 7
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !158
  %13 = tail call ptr @RNA_struct_ui_name(ptr noundef %12) #15
  %14 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %13, i32 noundef 0) #15
  %15 = tail call ptr @uiPupMenuLayout(ptr noundef %14) #15
  %16 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 7, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %8, %34
  %20 = phi ptr [ %36, %34 ], [ %17, %8 ]
  %21 = phi i32 [ %22, %34 ], [ %6, %8 ]
  %22 = add nsw i32 %21, -1
  %23 = tail call zeroext i8 @WM_operator_repeat_check(ptr noundef %0, ptr noundef nonnull %20) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.wmOperator, ptr %20, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = getelementptr inbounds %struct.wmOperatorType, ptr %27, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !158
  %30 = tail call ptr @RNA_struct_ui_name(ptr noundef %29) #15
  %31 = load ptr, ptr %9, align 8, !tbaa !238
  %32 = getelementptr inbounds %struct.wmOperatorType, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !152
  tail call void @uiItemIntO(ptr noundef %15, ptr noundef %30, i32 noundef 0, ptr noundef %33, ptr noundef nonnull @.str.73, i32 noundef %22) #15
  br label %34

34:                                               ; preds = %19, %25
  %35 = getelementptr inbounds %struct.wmOperator, ptr %20, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !104
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !239

38:                                               ; preds = %34, %8
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %14) #15
  br label %39

39:                                               ; preds = %3, %38
  %40 = phi i32 [ 32, %38 ], [ 2, %3 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @repeat_history_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !240 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.73) #15
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  %11 = tail call i32 @WM_operator_repeat(ptr noundef %0, ptr noundef nonnull %8) #15
  br label %12

12:                                               ; preds = %10, %2
  ret i32 4
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_repeat_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @redo_last_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !241 {
  %4 = tail call ptr @WM_operator_last_redo(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @WM_operator_redo_popup(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %8

8:                                                ; preds = %6, %3
  ret i32 2
}

; Function Attrs: optsize
declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_redo_popup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_move_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !242 {
  %3 = tail call fastcc i32 @area_move_init(ptr noundef %0, ptr noundef %1) #16, !range !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @area_move_apply(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @area_move_exit(ptr noundef %0, ptr noundef %1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_move_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !243 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !214
  tail call void @RNA_int_set(ptr noundef %5, ptr noundef nonnull @.str.80, i32 noundef %7) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !216
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.82, i32 noundef %10) #15
  %11 = tail call fastcc i32 @area_move_init(ptr noundef %0, ptr noundef %1) #16, !range !70
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi i32 [ 1, %13 ], [ 8, %3 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @area_move_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  tail call void @RNA_int_set(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef 0) #15
  tail call fastcc void @area_move_apply(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @area_move_exit(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_move_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !245 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  switch i16 %7, label %45 [
    i16 4, label %8
    i16 20514, label %36
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.80) #15
  %12 = load ptr, ptr %9, align 8, !tbaa !225
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.82) #15
  %14 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 4
  %15 = load i8, ptr %14, align 4, !tbaa !246
  %16 = icmp eq i8 %15, 118
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !214
  %20 = sub nsw i32 %19, %11
  br label %25

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !216
  %24 = sub nsw i32 %23, %13
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  %27 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !248
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = srem i32 %26, %28
  %32 = sub nsw i32 %26, %31
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ %26, %25 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !225
  tail call void @RNA_int_set(ptr noundef %35, ptr noundef nonnull @.str.30, i32 noundef %34) #15
  tail call fastcc void @area_move_apply(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %45

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !227
  switch i16 %38, label %45 [
    i16 2, label %39
    i16 1, label %40
    i16 3, label %41
    i16 4, label %43
  ]

39:                                               ; preds = %36
  tail call fastcc void @area_move_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %45

40:                                               ; preds = %36
  tail call void @area_move_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  store i32 10, ptr %42, align 4, !tbaa !248
  br label %45

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sAreaMoveData, ptr %5, i64 0, i32 3
  store i32 0, ptr %44, align 4, !tbaa !248
  br label %45

45:                                               ; preds = %33, %3, %36, %43, %41, %40, %39
  %46 = phi i32 [ 2, %40 ], [ 4, %39 ], [ 1, %41 ], [ 1, %43 ], [ 1, %36 ], [ 1, %3 ], [ 1, %33 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @area_move_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !249 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #15
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.80) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !225
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.82) #15
  %12 = tail call ptr @screen_find_active_scredge(ptr noundef %3, i32 noundef %5, i32 noundef %6, i32 noundef %9, i32 noundef %11) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %16 = tail call ptr %15(i64 noundef 20, ptr noundef nonnull @.str.85) #15
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !206
  %18 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %12) #15
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i8 118, i8 104
  %21 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 4
  store i8 %20, ptr %21, align 4, !tbaa !246
  %22 = getelementptr inbounds %struct.ScrEdge, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !250
  %24 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ScrVert, ptr %23, i64 0, i32 3, i32 1
  %26 = select i1 %19, ptr %24, ptr %25
  %27 = load i16, ptr %26, align 2, !tbaa !252
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 2
  store i32 %28, ptr %29, align 4
  tail call void @select_connected_scredge(ptr noundef %3, ptr noundef nonnull %12) #15
  %30 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !104
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %14, %33
  %34 = phi ptr [ %38, %33 ], [ %31, %14 ]
  %35 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 4
  %36 = load i16, ptr %35, align 4, !tbaa !253
  %37 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 5
  store i16 %36, ptr %37, align 2, !tbaa !256
  %38 = load ptr, ptr %34, align 8, !tbaa !104
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !257

40:                                               ; preds = %33, %14
  %41 = load i8, ptr %21, align 4, !tbaa !246
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.sAreaMoveData, ptr %16, i64 0, i32 1
  tail call fastcc void @area_move_set_limits(ptr noundef %3, i32 noundef %42, i32 noundef %5, i32 noundef %6, ptr noundef %16, ptr noundef nonnull %43) #16
  br label %44

44:                                               ; preds = %2, %40
  %45 = phi i32 [ 1, %40 ], [ 0, %2 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_move_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !258 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.30) #15
  %8 = getelementptr inbounds %struct.sAreaMoveData, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !259
  %10 = getelementptr inbounds %struct.sAreaMoveData, ptr %4, i64 0, i32 4
  %11 = load i8, ptr %10, align 4, !tbaa !246
  %12 = zext i8 %11 to i32
  %13 = load i32, ptr %4, align 4, !tbaa !260
  %14 = getelementptr inbounds %struct.sAreaMoveData, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !261
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %9, i32 noundef %7, i32 noundef %12, i32 noundef %13, i32 noundef %15) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_move_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !262 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %7(ptr noundef nonnull %4) #15
  br label %8

8:                                                ; preds = %6, %2
  store ptr null, ptr %3, align 8, !tbaa !206
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removedouble_scrverts(ptr noundef %9) #15
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removedouble_scredges(ptr noundef %10) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @scredge_is_horizontal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @select_connected_scredge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_move_set_limits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !263 {
  %7 = tail call i32 @ED_area_headersize() #15
  store i32 100000, ptr %5, align 4, !tbaa !107
  store i32 100000, ptr %4, align 4, !tbaa !107
  %8 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !104
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
  %19 = load ptr, ptr %18, align 8, !tbaa !264
  %20 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4
  %21 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !256
  %23 = icmp eq i16 %22, 0
  br i1 %12, label %24, label %61

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 3, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !265
  %27 = icmp sgt i16 %26, 0
  %28 = fadd float %20, %14
  %29 = fptosi float %28 to i32
  %30 = select i1 %27, i32 %29, i32 %7
  %31 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !266
  %33 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 3, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !265
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
  %47 = load ptr, ptr %46, align 8, !tbaa !267
  %48 = getelementptr inbounds %struct.ScrVert, ptr %47, i64 0, i32 5
  %49 = load i16, ptr %48, align 2, !tbaa !256
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %45, %24
  %52 = getelementptr inbounds %struct.ScrVert, ptr %32, i64 0, i32 5
  %53 = load i16, ptr %52, align 2, !tbaa !256
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %103, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !268
  %58 = getelementptr inbounds %struct.ScrVert, ptr %57, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !256
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %103, label %98

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.ScrVert, ptr %19, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !269
  %64 = icmp sgt i16 %63, 0
  %65 = fadd float %20, 3.200000e+01
  %66 = fptosi float %65 to i32
  %67 = select i1 %64, i32 %66, i32 32
  %68 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !267
  %70 = getelementptr inbounds %struct.ScrVert, ptr %69, i64 0, i32 3
  %71 = load i16, ptr %70, align 8, !tbaa !269
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
  %84 = load ptr, ptr %83, align 8, !tbaa !266
  %85 = getelementptr inbounds %struct.ScrVert, ptr %84, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !256
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82, %61
  %89 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !268
  %91 = getelementptr inbounds %struct.ScrVert, ptr %90, i64 0, i32 5
  %92 = load i16, ptr %91, align 2, !tbaa !256
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ScrVert, ptr %69, i64 0, i32 5
  %96 = load i16, ptr %95, align 2, !tbaa !256
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94, %82, %55, %45
  %99 = phi ptr [ %4, %45 ], [ %5, %55 ], [ %4, %82 ], [ %5, %94 ]
  %100 = phi i32 [ %44, %45 ], [ %44, %55 ], [ %81, %82 ], [ %81, %94 ]
  %101 = load i32, ptr %99, align 4, !tbaa !107
  %102 = tail call fastcc i32 @min_ii(i32 noundef %101, i32 noundef %100) #16
  store i32 %102, ptr %99, align 4, !tbaa !107
  br label %103

103:                                              ; preds = %98, %94, %88, %55, %51
  %104 = load ptr, ptr %17, align 8, !tbaa !104
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %16, !llvm.loop !270

106:                                              ; preds = %103, %6
  ret void
}

; Function Attrs: optsize
declare i32 @ED_area_headersize() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !271 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !272 {
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %8 = tail call i32 @WM_window_pixels_x(ptr noundef %7) #15
  %9 = tail call i32 @WM_window_pixels_y(ptr noundef %7) #15
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %6
  %15 = sub nsw i32 0, %5
  %16 = icmp sgt i32 %15, %2
  %17 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %18 = select i1 %16, i32 %15, i32 %17
  %19 = add nsw i32 %9, -1
  %20 = add nsw i32 %18, %1
  %21 = icmp eq i32 %18, %4
  %22 = icmp eq i32 %18, %5
  %23 = or i1 %21, %22
  %24 = trunc i32 %20 to i16
  %25 = srem i16 %24, 4
  %26 = zext i16 %25 to i32
  %27 = sub i32 %20, %26
  %28 = shl i32 %27, 16
  %29 = ashr exact i32 %28, 16
  %30 = sub nsw i32 %1, %5
  %31 = icmp slt i32 %29, %30
  %32 = add nsw i32 %4, %1
  %33 = tail call i32 @llvm.smin.i32(i32 %29, i32 %32)
  %34 = select i1 %31, i32 %30, i32 %33
  %35 = add nsw i32 %8, -1
  %36 = icmp eq i32 %18, %15
  %37 = select i1 %21, i1 true, i1 %36
  %38 = select i1 %23, i32 %20, i32 %34
  %39 = trunc i32 %38 to i16
  %40 = select i1 %37, i32 %20, i32 %34
  %41 = trunc i32 %40 to i16
  br label %42

42:                                               ; preds = %14, %69
  %43 = phi ptr [ %12, %14 ], [ %71, %69 ]
  %44 = phi i32 [ 0, %14 ], [ %70, %69 ]
  %45 = getelementptr inbounds %struct.ScrVert, ptr %43, i64 0, i32 5
  %46 = load i16, ptr %45, align 2, !tbaa !256
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %42
  switch i32 %3, label %69 [
    i32 118, label %49
    i32 104, label %59
  ]

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.ScrVert, ptr %43, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !269
  %52 = icmp sgt i16 %51, 0
  %53 = zext nneg i16 %51 to i32
  %54 = icmp sgt i32 %35, %53
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  store i16 %41, ptr %50, align 8, !tbaa !269
  %57 = icmp eq i16 %51, %41
  %58 = select i1 %57, i32 %44, i32 1
  br label %69

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.ScrVert, ptr %43, i64 0, i32 3, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !265
  %62 = icmp sgt i16 %61, 0
  %63 = zext nneg i16 %61 to i32
  %64 = icmp sgt i32 %19, %63
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  store i16 %39, ptr %60, align 2, !tbaa !265
  %67 = icmp eq i16 %61, %39
  %68 = select i1 %67, i32 %44, i32 1
  br label %69

69:                                               ; preds = %48, %49, %56, %66, %42, %59
  %70 = phi i32 [ %44, %59 ], [ %44, %42 ], [ %68, %66 ], [ %58, %56 ], [ %44, %49 ], [ %44, %48 ]
  %71 = load ptr, ptr %43, align 8, !tbaa !104
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %42, !llvm.loop !273

73:                                               ; preds = %69
  %74 = icmp eq i32 %70, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !104
  %78 = icmp eq ptr %77, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %75, %105
  %80 = phi ptr [ %106, %105 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.ScrArea, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !264
  %83 = getelementptr inbounds %struct.ScrVert, ptr %82, i64 0, i32 5
  %84 = load i16, ptr %83, align 2, !tbaa !256
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.ScrArea, ptr %80, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !266
  %89 = getelementptr inbounds %struct.ScrVert, ptr %88, i64 0, i32 5
  %90 = load i16, ptr %89, align 2, !tbaa !256
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.ScrArea, ptr %80, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !268
  %95 = getelementptr inbounds %struct.ScrVert, ptr %94, i64 0, i32 5
  %96 = load i16, ptr %95, align 2, !tbaa !256
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ScrArea, ptr %80, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !267
  %101 = getelementptr inbounds %struct.ScrVert, ptr %100, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !256
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98, %92, %86, %79
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %80) #15
  br label %105

105:                                              ; preds = %98, %104
  %106 = load ptr, ptr %80, align 8, !tbaa !104
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %79, !llvm.loop !274

108:                                              ; preds = %105, %75
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %109

109:                                              ; preds = %6, %108, %73
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @removedouble_scrverts(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @removedouble_scredges(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_split_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !275 {
  %3 = tail call fastcc i32 @area_split_init(ptr noundef %0, ptr noundef %1) #16, !range !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef %1) #16, !range !70
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_split_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !276 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #15
  %7 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #15
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !277
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %124

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !212
  %14 = icmp eq i16 %13, 20480
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %17 = load ptr, ptr %16, align 8, !tbaa !228
  %18 = icmp eq ptr %17, null
  br i1 %18, label %124, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !226
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %124, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !208
  %25 = icmp eq ptr %24, null
  br i1 %25, label %124, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  %29 = icmp eq ptr %28, null
  br i1 %29, label %124, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %32 = load ptr, ptr %17, align 8, !tbaa !208
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %124

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !219
  %37 = icmp eq ptr %31, %36
  br i1 %37, label %38, label %124

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sActionzoneData, ptr %17, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !218
  switch i32 %40, label %51 [
    i32 110, label %41
    i32 115, label %41
  ]

41:                                               ; preds = %38, %38
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !214
  %44 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !264
  %46 = getelementptr inbounds %struct.ScrVert, ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !269
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %43, %48
  %50 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 10
  br label %61

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !216
  %54 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !264
  %56 = getelementptr inbounds %struct.ScrVert, ptr %55, i64 0, i32 3, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !265
  %58 = sext i16 %57 to i32
  %59 = sub nsw i32 %53, %58
  %60 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 11
  br label %61

61:                                               ; preds = %41, %51
  %62 = phi ptr [ %50, %41 ], [ %60, %51 ]
  %63 = phi i32 [ %49, %41 ], [ %59, %51 ]
  %64 = phi i32 [ 104, %41 ], [ 118, %51 ]
  %65 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !225
  %67 = sitofp i32 %63 to float
  %68 = load i16, ptr %62, align 2, !tbaa !252
  %69 = sitofp i16 %68 to float
  %70 = fdiv float %67, %69
  tail call void @RNA_float_set(ptr noundef %66, ptr noundef nonnull @.str.90, float noundef %70) #15
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !225
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.88, i32 noundef %64) #15
  %73 = tail call fastcc i32 @area_split_init(ptr noundef %0, ptr noundef nonnull %1) #16, !range !70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %124, label %106

75:                                               ; preds = %11
  %76 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !225
  %78 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %77, ptr noundef nonnull @.str.92) #15
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %76, align 8, !tbaa !225
  %82 = tail call i32 @RNA_int_get(ptr noundef %81, ptr noundef nonnull @.str.92) #15
  br label %86

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !214
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %82, %80 ], [ %85, %83 ]
  %88 = load ptr, ptr %76, align 8, !tbaa !225
  %89 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %88, ptr noundef nonnull @.str.94) #15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %76, align 8, !tbaa !225
  %93 = tail call i32 @RNA_int_get(ptr noundef %92, ptr noundef nonnull @.str.94) #15
  br label %97

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %96 = load i32, ptr %95, align 4, !tbaa !214
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %93, %91 ], [ %96, %94 ]
  %99 = tail call ptr @screen_find_active_scredge(ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7, i32 noundef %87, i32 noundef %98) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %97
  %102 = tail call zeroext i8 @scredge_is_horizontal(ptr noundef nonnull %99) #15
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i32 104, i32 118
  %105 = load ptr, ptr %76, align 8, !tbaa !225
  tail call void @RNA_enum_set(ptr noundef %105, ptr noundef nonnull @.str.88, i32 noundef %104) #15
  tail call fastcc void @area_split_menu_init(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %106

106:                                              ; preds = %101, %61
  %107 = phi i32 [ %64, %61 ], [ %104, %101 ]
  %108 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !206
  %110 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %111 = load <2 x i32>, ptr %110, align 4, !tbaa !107
  store <2 x i32> %111, ptr %109, align 8, !tbaa !107
  %112 = load i16, ptr %12, align 8, !tbaa !212
  %113 = icmp eq i16 %112, 20480
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef nonnull %1) #16, !range !70
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.sAreaSplitData, ptr %109, i64 0, i32 3
  %119 = getelementptr inbounds %struct.sAreaSplitData, ptr %109, i64 0, i32 4
  tail call fastcc void @area_move_set_limits(ptr noundef nonnull %5, i32 noundef %107, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %118, ptr noundef nonnull %119) #16
  br label %122

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.sAreaSplitData, ptr %109, i64 0, i32 8
  store i32 1, ptr %121, align 8, !tbaa !278
  br label %122

122:                                              ; preds = %117, %120
  %123 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %124

124:                                              ; preds = %122, %97, %30, %34, %23, %26, %15, %19, %114, %3, %61
  %125 = phi i32 [ 8, %61 ], [ 2, %3 ], [ 8, %114 ], [ 8, %19 ], [ 8, %15 ], [ 8, %26 ], [ 8, %23 ], [ 8, %34 ], [ 8, %30 ], [ 2, %97 ], [ 1, %122 ]
  ret i32 %125
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_split_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !280 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  switch i16 %7, label %130 [
    i16 4, label %8
    i16 1, label %85
    i16 2, label %96
    i16 219, label %96
    i16 3, label %129
    i16 218, label %129
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.88) #15
  %12 = icmp eq i32 %11, 118
  %13 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !281
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = select i1 %12, ptr %16, ptr %15
  %18 = load i32, ptr %17, align 4, !tbaa !107
  %19 = sub nsw i32 %18, %14
  %20 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 5
  store i32 %19, ptr %20, align 4, !tbaa !282
  %21 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !278
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !283
  %27 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !284
  tail call fastcc void @area_move_apply_do(ptr noundef %0, i32 noundef %14, i32 noundef %19, i32 noundef %11, i32 noundef %26, i32 noundef %28) #16
  br label %71

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !285
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 14
  %35 = load i16, ptr %34, align 2, !tbaa !124
  %36 = and i16 %35, -49
  store i16 %36, ptr %34, align 2, !tbaa !124
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %31) #15
  br label %37

37:                                               ; preds = %33, %29
  %38 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !214
  %41 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !216
  %43 = tail call fastcc ptr @screen_areahascursor(ptr noundef %38, i32 noundef %40, i32 noundef %42) #16
  store ptr %43, ptr %30, align 8, !tbaa !285
  %44 = icmp eq ptr %43, null
  br i1 %44, label %66, label %45

45:                                               ; preds = %37
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %43) #15
  %46 = load ptr, ptr %30, align 8, !tbaa !285
  %47 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 7
  %48 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 6
  %49 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 14
  br i1 %12, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 10
  %52 = load i16, ptr %51, align 2, !tbaa !286
  %53 = sext i16 %52 to i32
  store i32 %53, ptr %47, align 4, !tbaa !287
  %54 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 7
  br label %60

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 11
  %57 = load i16, ptr %56, align 4, !tbaa !288
  %58 = sext i16 %57 to i32
  store i32 %58, ptr %47, align 4, !tbaa !287
  %59 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 7, i32 2
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi ptr [ %54, %50 ], [ %59, %55 ]
  %62 = phi i16 [ 32, %50 ], [ 16, %55 ]
  %63 = load i32, ptr %61, align 8, !tbaa !107
  store i32 %63, ptr %48, align 8, !tbaa !289
  %64 = load i16, ptr %49, align 2, !tbaa !124
  %65 = or i16 %64, %62
  store i16 %65, ptr %49, align 2, !tbaa !124
  br label %66

66:                                               ; preds = %60, %37
  %67 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %68 = getelementptr inbounds %struct.wmWindow, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !126
  %70 = getelementptr inbounds %struct.bScreen, ptr %69, i64 0, i32 12
  store i16 1, ptr %70, align 2, !tbaa !290
  br label %71

71:                                               ; preds = %66, %24
  %72 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !289
  %74 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %76 = select i1 %12, ptr %75, ptr %74
  %77 = load i32, ptr %76, align 4, !tbaa !107
  %78 = sub nsw i32 %77, %73
  %79 = sitofp i32 %78 to float
  %80 = load ptr, ptr %9, align 8, !tbaa !225
  %81 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !287
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %79, %83
  tail call void @RNA_float_set(ptr noundef %80, ptr noundef nonnull @.str.90, float noundef %84) #15
  br label %130

85:                                               ; preds = %3
  %86 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !278
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = tail call fastcc i32 @area_split_apply(ptr noundef %0, ptr noundef nonnull %1) #16, !range !70
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %130

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !227
  %94 = icmp eq i16 %93, 2
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %130

96:                                               ; preds = %3, %3
  %97 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !278
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !225
  %103 = tail call i32 @RNA_enum_get(ptr noundef %102, ptr noundef nonnull @.str.88) #15
  %104 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !227
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %130

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %109 = load ptr, ptr %108, align 8, !tbaa !285
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ScrArea, ptr %109, i64 0, i32 14
  %113 = load i16, ptr %112, align 2, !tbaa !124
  %114 = and i16 %113, -49
  store i16 %114, ptr %112, align 2, !tbaa !124
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %109) #15
  %115 = icmp eq i32 %103, 118
  %116 = load ptr, ptr %101, align 8, !tbaa !225
  br i1 %115, label %117, label %123

117:                                              ; preds = %111
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.88, i32 noundef 104) #15
  %118 = load ptr, ptr %108, align 8, !tbaa !285
  %119 = getelementptr inbounds %struct.ScrArea, ptr %118, i64 0, i32 14
  %120 = load i16, ptr %119, align 2, !tbaa !124
  %121 = or i16 %120, 16
  store i16 %121, ptr %119, align 2, !tbaa !124
  %122 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_set(ptr noundef %122, i32 noundef 1003) #15
  br label %130

123:                                              ; preds = %111
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.88, i32 noundef 118) #15
  %124 = load ptr, ptr %108, align 8, !tbaa !285
  %125 = getelementptr inbounds %struct.ScrArea, ptr %124, i64 0, i32 14
  %126 = load i16, ptr %125, align 2, !tbaa !124
  %127 = or i16 %126, 32
  store i16 %127, ptr %125, align 2, !tbaa !124
  %128 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_set(ptr noundef %128, i32 noundef 1004) #15
  br label %130

129:                                              ; preds = %3, %3
  tail call void @area_split_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %130

130:                                              ; preds = %71, %3, %91, %100, %117, %123, %107, %96, %129, %95, %89
  %131 = phi i32 [ 2, %129 ], [ 4, %89 ], [ 4, %95 ], [ 1, %96 ], [ 1, %107 ], [ 1, %123 ], [ 1, %117 ], [ 1, %100 ], [ 1, %91 ], [ 1, %3 ], [ 1, %71 ]
  ret i32 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @area_split_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !291 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !278
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !285
  %12 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !292
  %14 = tail call i32 @screen_area_join(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %18 = load ptr, ptr %12, align 8, !tbaa !292
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #15
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %16
  store ptr null, ptr %12, align 8, !tbaa !292
  br label %22

22:                                               ; preds = %8, %21, %2
  tail call fastcc void @area_split_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @screen_active_editable(ptr noundef %0) #0 !PGOFuncName !293 {
  %2 = tail call i32 @ED_operator_screenactive(ptr noundef %0) #16, !range !70
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !277
  %8 = icmp eq i16 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @area_split_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !294 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %4 = tail call i32 @ED_area_headersize() #15
  %5 = icmp eq ptr %3, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.88) #15
  %10 = icmp eq i32 %9, 118
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !286
  %14 = icmp slt i16 %13, 64
  br i1 %14, label %40, label %24

15:                                               ; preds = %6
  %16 = icmp eq i32 %9, 104
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %19 = load i16, ptr %18, align 4, !tbaa !288
  %20 = sext i16 %19 to i32
  %21 = shl i32 %4, 1
  %22 = add i32 %21, 2
  %23 = icmp sgt i32 %22, %20
  br i1 %23, label %40, label %24

24:                                               ; preds = %11, %17, %15
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %26 = tail call ptr %25(i64 noundef 64, ptr noundef nonnull @.str.96) #15
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !206
  %28 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 10
  store ptr %3, ptr %28, align 8, !tbaa !285
  %29 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 10
  %30 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 11
  %31 = select i1 %10, ptr %29, ptr %30
  %32 = load i16, ptr %31, align 2, !tbaa !252
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 7
  store i32 %33, ptr %34, align 4, !tbaa !287
  %35 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 7
  %36 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 7, i32 2
  %37 = select i1 %10, ptr %35, ptr %36
  %38 = load i32, ptr %37, align 8, !tbaa !107
  %39 = getelementptr inbounds %struct.sAreaSplitData, ptr %26, i64 0, i32 6
  store i32 %38, ptr %39, align 8, !tbaa !289
  br label %40

40:                                               ; preds = %17, %11, %2, %24
  %41 = phi i32 [ 1, %24 ], [ 0, %2 ], [ 0, %11 ], [ 0, %17 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @area_split_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !295 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.90) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !225
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.88) #15
  %11 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = trunc i32 %10 to i8
  %14 = tail call ptr @area_split(ptr noundef %3, ptr noundef %12, i8 noundef zeroext %13, float noundef %8, i32 noundef 0) #15
  %15 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 11
  store ptr %14, ptr %15, align 8, !tbaa !292
  %16 = icmp eq ptr %14, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %11, align 8, !tbaa !285
  %19 = tail call fastcc ptr @area_findsharededge(ptr noundef %3, ptr noundef %18, ptr noundef nonnull %14) #16
  %20 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !296
  %21 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %17 ]
  %26 = getelementptr inbounds %struct.ScrVert, ptr %25, i64 0, i32 5
  store i16 0, ptr %26, align 2, !tbaa !256
  %27 = load ptr, ptr %25, align 8, !tbaa !104
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %24, !llvm.loop !297

29:                                               ; preds = %24, %17
  %30 = getelementptr inbounds %struct.ScrEdge, ptr %19, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !250
  %32 = getelementptr inbounds %struct.ScrVert, ptr %31, i64 0, i32 5
  store i16 1, ptr %32, align 2, !tbaa !256
  %33 = getelementptr inbounds %struct.ScrEdge, ptr %19, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !298
  %35 = getelementptr inbounds %struct.ScrVert, ptr %34, i64 0, i32 5
  store i16 1, ptr %35, align 2, !tbaa !256
  %36 = icmp eq i32 %10, 104
  %37 = getelementptr inbounds %struct.ScrVert, ptr %31, i64 0, i32 3, i32 1
  %38 = getelementptr inbounds %struct.ScrVert, ptr %31, i64 0, i32 3
  %39 = select i1 %36, ptr %37, ptr %38
  %40 = load i16, ptr %39, align 2, !tbaa !252
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.sAreaSplitData, ptr %5, i64 0, i32 2
  store i32 %41, ptr %42, align 8
  %43 = load ptr, ptr %11, align 8, !tbaa !285
  tail call void @ED_area_tag_redraw(ptr noundef %43) #15
  %44 = load ptr, ptr %15, align 8, !tbaa !292
  tail call void @ED_area_tag_redraw(ptr noundef %44) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %45

45:                                               ; preds = %2, %29
  %46 = phi i32 [ 1, %29 ], [ 0, %2 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_split_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !299 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !285
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !292
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %7, align 8, !tbaa !285
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !124
  %22 = and i16 %21, -49
  store i16 %22, ptr %20, align 2, !tbaa !124
  br label %23

23:                                               ; preds = %19, %16
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %25 = load ptr, ptr %3, align 8, !tbaa !206
  tail call void %24(ptr noundef %25) #15
  store ptr null, ptr %3, align 8, !tbaa !206
  br label %26

26:                                               ; preds = %23, %2
  %27 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_restore(ptr noundef %27) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  %28 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removedouble_scrverts(ptr noundef %28) #15
  %29 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removedouble_scredges(ptr noundef %29) #15
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @area_split(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @area_findsharededge(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !300 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !264
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !268
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !264
  %14 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !266
  %16 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !268
  %18 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !267
  %20 = icmp eq ptr %5, %19
  %21 = icmp eq ptr %7, %17
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %5, ptr noundef %7) #15
  br label %43

25:                                               ; preds = %3
  %26 = icmp eq ptr %7, %13
  %27 = icmp eq ptr %9, %19
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %7, ptr noundef %9) #15
  br label %43

31:                                               ; preds = %25
  %32 = icmp eq ptr %9, %15
  %33 = icmp eq ptr %11, %13
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %9, ptr noundef %11) #15
  br label %43

37:                                               ; preds = %31
  %38 = icmp eq ptr %5, %15
  %39 = icmp eq ptr %11, %17
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call ptr @screen_findedge(ptr noundef %0, ptr noundef %5, ptr noundef %11) #15
  br label %43

43:                                               ; preds = %37, %41, %35, %29, %23
  %44 = phi ptr [ %24, %23 ], [ %30, %29 ], [ %36, %35 ], [ %42, %41 ], [ null, %37 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @screen_findedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_split_menu_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !301 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %4 = tail call ptr %3(i64 noundef 64, ptr noundef nonnull @.str.96) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !206
  %6 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.sAreaSplitData, ptr %4, i64 0, i32 10
  store ptr %6, ptr %7, align 8, !tbaa !285
  %8 = icmp eq ptr %6, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !225
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.88) #15
  %13 = icmp eq i32 %12, 104
  %14 = load ptr, ptr %7, align 8, !tbaa !285
  %15 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %16 = load i16, ptr %15, align 2, !tbaa !124
  %17 = select i1 %13, i16 16, i16 32
  %18 = or i16 %16, %17
  store i16 %18, ptr %15, align 2, !tbaa !124
  br label %19

19:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @screen_area_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_join_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !302 {
  %3 = tail call fastcc i32 @area_join_init(ptr noundef %0, ptr noundef %1) #16, !range !70
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @area_join_apply(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @area_join_exit(ptr noundef %0, ptr noundef %1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_join_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !303 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !212
  %6 = icmp eq i16 %5, 20480
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !226
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !208
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %16, %20
  %23 = or i1 %21, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !225
  %27 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !215
  tail call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.103, i32 noundef %28) #15
  %29 = load ptr, ptr %25, align 8, !tbaa !225
  %30 = getelementptr inbounds %struct.sActionzoneData, ptr %9, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !217
  tail call void @RNA_int_set(ptr noundef %29, ptr noundef nonnull @.str.105, i32 noundef %31) #15
  %32 = load ptr, ptr %25, align 8, !tbaa !225
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !214
  tail call void @RNA_int_set(ptr noundef %32, ptr noundef nonnull @.str.107, i32 noundef %34) #15
  %35 = load ptr, ptr %25, align 8, !tbaa !225
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !216
  tail call void @RNA_int_set(ptr noundef %35, ptr noundef nonnull @.str.109, i32 noundef %37) #15
  br label %38

38:                                               ; preds = %24, %3
  %39 = tail call fastcc i32 @area_join_init(ptr noundef %0, ptr noundef %1) #16, !range !70
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  br label %43

43:                                               ; preds = %15, %18, %7, %11, %38, %41
  %44 = phi i32 [ 1, %41 ], [ 8, %38 ], [ 8, %11 ], [ 8, %7 ], [ 8, %18 ], [ 8, %15 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_join_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !304 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !212
  switch i16 %8, label %107 [
    i16 4, label %9
    i16 1, label %98
    i16 3, label %106
    i16 218, label %106
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !214
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !216
  %14 = tail call fastcc ptr @screen_areahascursor(ptr noundef %4, i32 noundef %11, i32 noundef %13) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %107, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %6, align 8, !tbaa !305
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %65, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @area_getorientation(ptr noundef %17, ptr noundef nonnull %14) #15
  %21 = icmp eq i32 %20, -1
  %22 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !307
  br i1 %21, label %34, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 14
  %28 = load i16, ptr %27, align 2, !tbaa !124
  %29 = and i16 %28, -3
  store i16 %29, ptr %27, align 2, !tbaa !124
  br label %30

30:                                               ; preds = %26, %24
  store ptr %14, ptr %22, align 8, !tbaa !307
  %31 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %32 = load i16, ptr %31, align 2, !tbaa !124
  %33 = or i16 %32, 2
  store i16 %33, ptr %31, align 2, !tbaa !124
  br label %64

34:                                               ; preds = %19
  %35 = tail call i32 @area_getorientation(ptr noundef nonnull %14, ptr noundef %23) #15
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 8, !tbaa !305
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ScrArea, ptr %38, i64 0, i32 14
  %42 = load i16, ptr %41, align 2, !tbaa !124
  %43 = and i16 %42, -5
  store i16 %43, ptr %41, align 2, !tbaa !124
  br label %44

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %22, align 8, !tbaa !307
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !124
  %50 = and i16 %49, -7
  %51 = or disjoint i16 %50, 4
  store i16 %51, ptr %48, align 2, !tbaa !124
  br label %52

52:                                               ; preds = %44, %47
  store ptr %45, ptr %6, align 8
  store ptr %14, ptr %22, align 8
  %53 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %54 = load i16, ptr %53, align 2, !tbaa !124
  %55 = or i16 %54, 2
  store i16 %55, ptr %53, align 2, !tbaa !124
  br label %64

56:                                               ; preds = %34
  %57 = load ptr, ptr %22, align 8, !tbaa !307
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.ScrArea, ptr %57, i64 0, i32 14
  %61 = load i16, ptr %60, align 2, !tbaa !124
  %62 = and i16 %61, -3
  store i16 %62, ptr %60, align 2, !tbaa !124
  br label %63

63:                                               ; preds = %59, %56
  store ptr null, ptr %22, align 8, !tbaa !307
  br label %64

64:                                               ; preds = %63, %52, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #15
  br label %107

65:                                               ; preds = %16
  %66 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !307
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %71 = load i16, ptr %70, align 2, !tbaa !124
  %72 = and i16 %71, -5
  store i16 %72, ptr %70, align 2, !tbaa !124
  %73 = getelementptr inbounds %struct.ScrArea, ptr %67, i64 0, i32 14
  %74 = load i16, ptr %73, align 2, !tbaa !124
  %75 = and i16 %74, -7
  store ptr %67, ptr %6, align 8, !tbaa !305
  store ptr %14, ptr %66, align 8, !tbaa !307
  %76 = or disjoint i16 %75, 4
  store i16 %76, ptr %73, align 2, !tbaa !124
  %77 = load i16, ptr %70, align 2, !tbaa !124
  %78 = or i16 %77, 2
  store i16 %78, ptr %70, align 2, !tbaa !124
  %79 = tail call i32 @area_getorientation(ptr noundef nonnull %67, ptr noundef nonnull %14) #15
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %97

81:                                               ; preds = %69
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %97

83:                                               ; preds = %65
  %84 = tail call i32 @area_getorientation(ptr noundef nonnull %14, ptr noundef nonnull %14) #15
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %66, align 8, !tbaa !307
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ScrArea, ptr %87, i64 0, i32 14
  %91 = load i16, ptr %90, align 2, !tbaa !124
  %92 = and i16 %91, -3
  store i16 %92, ptr %90, align 2, !tbaa !124
  br label %93

93:                                               ; preds = %89, %86
  store ptr %14, ptr %66, align 8, !tbaa !307
  %94 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 14
  %95 = load i16, ptr %94, align 2, !tbaa !124
  %96 = or i16 %95, 2
  store i16 %96, ptr %94, align 2, !tbaa !124
  br label %97

97:                                               ; preds = %83, %93, %69, %81
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #15
  br label %107

98:                                               ; preds = %3
  %99 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !227
  %101 = icmp eq i16 %100, 2
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load ptr, ptr %6, align 8, !tbaa !305
  tail call void @ED_area_tag_redraw(ptr noundef %103) #15
  %104 = getelementptr inbounds %struct.sAreaJoinData, ptr %6, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !307
  tail call void @ED_area_tag_redraw(ptr noundef %105) #15
  tail call fastcc void @area_join_apply(ptr noundef %0, ptr noundef nonnull %1) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  tail call fastcc void @area_join_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %107

106:                                              ; preds = %3, %3
  tail call void @area_join_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %107

107:                                              ; preds = %3, %98, %64, %97, %9, %106, %102
  %108 = phi i32 [ 2, %106 ], [ 4, %102 ], [ 1, %9 ], [ 1, %97 ], [ 1, %64 ], [ 1, %98 ], [ 1, %3 ]
  ret i32 %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @area_join_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !308 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = load ptr, ptr %4, align 8, !tbaa !305
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 14
  %9 = load i16, ptr %8, align 2, !tbaa !124
  %10 = and i16 %9, -7
  store i16 %10, ptr %8, align 2, !tbaa !124
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.sAreaJoinData, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !307
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 14
  %17 = load i16, ptr %16, align 2, !tbaa !124
  %18 = and i16 %17, -7
  store i16 %18, ptr %16, align 2, !tbaa !124
  br label %19

19:                                               ; preds = %15, %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #15
  tail call fastcc void @area_join_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @area_join_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !309 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = tail call i32 @RNA_int_get(ptr noundef %4, ptr noundef nonnull @.str.103) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !225
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.105) #15
  %8 = load ptr, ptr %3, align 8, !tbaa !225
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.107) #15
  %10 = load ptr, ptr %3, align 8, !tbaa !225
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.109) #15
  %12 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %13 = tail call fastcc ptr @screen_areahascursor(ptr noundef %12, i32 noundef %5, i32 noundef %7) #16
  %14 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %15 = tail call fastcc ptr @screen_areahascursor(ptr noundef %14, i32 noundef %9, i32 noundef %11) #16
  %16 = icmp eq ptr %13, null
  %17 = icmp eq ptr %15, null
  %18 = select i1 %16, i1 true, i1 %17
  %19 = icmp eq ptr %13, %15
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %113, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !264
  %24 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !264
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !266
  %30 = icmp eq ptr %23, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !268
  %34 = icmp eq ptr %23, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !267
  %38 = icmp eq ptr %23, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %27, %21
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ 1, %39 ], [ 0, %35 ]
  %42 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !266
  %44 = icmp eq ptr %43, %25
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !266
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !268
  %52 = icmp eq ptr %43, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !267
  %56 = icmp eq ptr %43, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49, %45, %40
  %58 = add nuw nsw i32 %41, 1
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ %41, %53 ]
  %61 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !268
  %63 = icmp eq ptr %62, %25
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !266
  %67 = icmp eq ptr %62, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !268
  %71 = icmp eq ptr %62, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !267
  %75 = icmp eq ptr %62, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68, %64, %59
  %77 = add nuw nsw i32 %60, 1
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %77, %76 ], [ %60, %72 ]
  %80 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !267
  %82 = icmp eq ptr %81, %25
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !266
  %86 = icmp eq ptr %81, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !268
  %90 = icmp eq ptr %81, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !267
  %94 = icmp eq ptr %81, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %87, %83, %78
  %96 = add nuw nsw i32 %79, 1
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i32 [ %96, %95 ], [ %79, %91 ]
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.226)
  br label %113

102:                                              ; preds = %97
  %103 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %104 = tail call ptr %103(i64 noundef 24, ptr noundef nonnull @.str.112) #15
  store ptr %13, ptr %104, align 8, !tbaa !305
  %105 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 14
  %106 = load i16, ptr %105, align 2, !tbaa !124
  %107 = or i16 %106, 4
  store i16 %107, ptr %105, align 2, !tbaa !124
  %108 = getelementptr inbounds %struct.sAreaJoinData, ptr %104, i64 0, i32 1
  store ptr %15, ptr %108, align 8, !tbaa !307
  %109 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 14
  %110 = load i16, ptr %109, align 2, !tbaa !124
  %111 = or i16 %110, 2
  store i16 %111, ptr %109, align 2, !tbaa !124
  %112 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %104, ptr %112, align 8, !tbaa !206
  br label %113

113:                                              ; preds = %2, %102, %100
  %114 = phi i32 [ 0, %100 ], [ 1, %102 ], [ 0, %2 ]
  ret i32 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_join_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !310 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %8 = load ptr, ptr %4, align 8, !tbaa !305
  %9 = getelementptr inbounds %struct.sAreaJoinData, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !307
  %11 = tail call i32 @screen_area_join(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %15 = load ptr, ptr %9, align 8, !tbaa !307
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #15
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #15
  br label %18

18:                                               ; preds = %13, %17, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_join_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !311 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %7(ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8, !tbaa !206
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removedouble_scredges(ptr noundef %9) #15
  %10 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removenotused_scredges(ptr noundef %10) #15
  %11 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @removenotused_scrverts(ptr noundef %11) #15
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare void @removenotused_scredges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @removenotused_scrverts(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @area_getorientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_area_options_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !312 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %10 = tail call i32 @WM_window_pixels_x(ptr noundef %8) #15
  %11 = tail call i32 @WM_window_pixels_y(ptr noundef %8) #15
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !214
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !216
  %16 = tail call ptr @screen_find_active_scredge(ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %13, i32 noundef %15) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !158
  %23 = tail call ptr @RNA_struct_ui_name(ptr noundef %22) #15
  %24 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %23, i32 noundef 0) #15
  %25 = tail call ptr @uiPupMenuLayout(ptr noundef %24) #15
  call void @WM_operator_properties_create(ptr noundef nonnull %4, ptr noundef nonnull @.str.17) #15
  %26 = load i32, ptr %12, align 4, !tbaa !214
  %27 = add nsw i32 %26, 4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.103, i32 noundef %27) #15
  %28 = load i32, ptr %14, align 8, !tbaa !216
  %29 = add nsw i32 %28, 4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.105, i32 noundef %29) #15
  %30 = load i32, ptr %12, align 4, !tbaa !214
  %31 = add nsw i32 %30, -4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.107, i32 noundef %31) #15
  %32 = load i32, ptr %14, align 8, !tbaa !216
  %33 = add nsw i32 %32, -4
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.109, i32 noundef %33) #15
  call void @WM_operator_properties_create(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #15
  %34 = load i32, ptr %12, align 4, !tbaa !214
  call void @RNA_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.92, i32 noundef %34) #15
  %35 = load i32, ptr %14, align 8, !tbaa !216
  call void @RNA_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.94, i32 noundef %35) #15
  %36 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, ptr noundef %37, i32 noundef 0, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %38 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, ptr noundef %39, i32 noundef 0, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %24) #15
  br label %40

40:                                               ; preds = %3, %18
  %41 = phi i32 [ 32, %18 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret i32 %41
}

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_dupli_invoke(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !316 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %7 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !212
  %10 = icmp eq i16 %9, 20480
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !228
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !208
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %16, %15 ], [ %7, %3 ]
  %19 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !317
  %20 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  %21 = load i16, ptr %20, align 8, !tbaa !318
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  %24 = load i16, ptr %23, align 2, !tbaa !319
  %25 = sext i16 %24 to i32
  call void @BLI_rcti_translate(ptr noundef nonnull %4, i32 noundef %22, i32 noundef %25) #15
  %26 = load i32, ptr %4, align 4, !tbaa !320
  %27 = sitofp i32 %26 to float
  %28 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #16
  %29 = sitofp i32 %28 to float
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %31 = fdiv float %29, %30
  %32 = fadd float %31, %27
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %33, ptr %34, align 4, !tbaa !321
  %35 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !322
  %37 = sitofp i32 %36 to float
  %38 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #16
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %39, %30
  %41 = fadd float %40, %37
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %42, ptr %43, align 4, !tbaa !323
  %44 = call ptr @WM_window_open(ptr noundef %0, ptr noundef nonnull %4) #15
  %45 = call ptr @CTX_data_scene(ptr noundef %0) #15
  %46 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  %47 = call ptr @ED_screen_add(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %46) #15
  %48 = getelementptr inbounds %struct.wmWindow, ptr %44, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !126
  %49 = getelementptr inbounds %struct.bScreen, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !324
  call void @ED_area_data_copy(ptr noundef %50, ptr noundef %18, i8 noundef zeroext 1) #15
  %51 = load ptr, ptr %49, align 8, !tbaa !324
  call void @ED_area_tag_redraw(ptr noundef %51) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  %52 = load i16, ptr %8, align 8, !tbaa !212
  %53 = icmp eq i16 %52, 20480
  br i1 %53, label %54, label %55

54:                                               ; preds = %17
  call fastcc void @actionzone_exit(ptr noundef %1) #16
  br label %55

55:                                               ; preds = %11, %17, %54
  %56 = phi i32 [ 4, %54 ], [ 4, %17 ], [ 8, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %56
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !321
  %4 = load i32, ptr %0, align 4, !tbaa !320
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !323
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !322
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @WM_window_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_screen_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_data_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_swap_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !327 {
  %4 = tail call fastcc i32 @area_swap_init(ptr noundef %1, ptr noundef %2) #16, !range !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_set(ptr noundef %7, i32 noundef 18) #15
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i32 [ 1, %6 ], [ 8, %3 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @area_swap_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !328 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  switch i16 %7, label %33 [
    i16 4, label %8
    i16 1, label %16
    i16 218, label %32
  ]

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !214
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !216
  %14 = tail call fastcc ptr @screen_areahascursor(ptr noundef %9, i32 noundef %11, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !219
  br label %33

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !227
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !219
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !tbaa !208
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %20
  tail call void @area_swap_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %33

28:                                               ; preds = %24
  tail call void @ED_area_tag_redraw(ptr noundef %25) #15
  %29 = load ptr, ptr %21, align 8, !tbaa !219
  tail call void @ED_area_tag_redraw(ptr noundef %29) #15
  %30 = load ptr, ptr %5, align 8, !tbaa !208
  %31 = load ptr, ptr %21, align 8, !tbaa !219
  tail call void @ED_area_swapspace(ptr noundef %0, ptr noundef %30, ptr noundef %31) #15
  tail call fastcc void @area_swap_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %33

32:                                               ; preds = %3
  tail call void @area_swap_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %33

33:                                               ; preds = %8, %3, %16, %32, %28, %27
  %34 = phi i32 [ 2, %32 ], [ 2, %27 ], [ 4, %28 ], [ 1, %16 ], [ 1, %3 ], [ 1, %8 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @area_swap_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !329 {
  tail call fastcc void @area_swap_exit(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @area_swap_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !330 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !208
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %11 = tail call ptr %10(i64 noundef 16, ptr noundef nonnull @.str.120) #15
  %12 = load <2 x ptr>, ptr %4, align 8, !tbaa !104
  store <2 x ptr> %12, ptr %11, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  store ptr %11, ptr %13, align 8, !tbaa !206
  br label %14

14:                                               ; preds = %2, %6, %9
  %15 = phi i32 [ 1, %9 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_swapspace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_swap_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !331 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %8(ptr noundef nonnull %5) #15
  br label %9

9:                                                ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !206
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @region_quadview_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !332 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !333
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !334
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.123) #15
  br label %121

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 9
  %14 = load i16, ptr %13, align 8, !tbaa !122
  %15 = icmp eq i16 %14, 8
  br i1 %15, label %16, label %87

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  store i16 0, ptr %13, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 8
  %19 = load i8, ptr %18, align 8, !tbaa !103
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !335
  br label %69

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %26 = load ptr, ptr %25, align 8, !tbaa !336
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %26, i64 0, i32 27
  %28 = load i8, ptr %27, align 1, !tbaa !337
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %31 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !104
  %35 = icmp eq ptr %5, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %25, align 8, !tbaa !336
  %38 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 30
  %39 = load ptr, ptr %38, align 8, !tbaa !336
  store ptr %39, ptr %25, align 8, !tbaa !336
  store ptr %37, ptr %38, align 8, !tbaa !336
  %40 = load ptr, ptr %25, align 8, !tbaa !336
  br label %41

41:                                               ; preds = %33, %36, %30
  %42 = phi ptr [ %40, %36 ], [ %26, %33 ], [ %26, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi ptr [ %42, %41 ], [ %26, %24 ]
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 28
  store i8 -128, ptr %45, align 4, !tbaa !339
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 27
  store i8 0, ptr %46, align 1, !tbaa !337
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 32
  %48 = load i16, ptr %47, align 2, !tbaa !340
  %49 = and i16 %48, -5
  store i16 %49, ptr %47, align 2, !tbaa !340
  %50 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !104
  %52 = icmp eq ptr %51, null
  br i1 %52, label %86, label %53

53:                                               ; preds = %43, %65
  %54 = phi i8 [ %66, %65 ], [ -128, %43 ]
  %55 = phi ptr [ %67, %65 ], [ %51, %43 ]
  %56 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 8
  %57 = load i16, ptr %56, align 2, !tbaa !333
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ARegion, ptr %55, i64 0, i32 30
  %61 = load ptr, ptr %60, align 8, !tbaa !336
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %61, i64 0, i32 27
  %63 = load i8, ptr %62, align 1, !tbaa !337
  %64 = or i8 %54, %63
  store i8 %64, ptr %45, align 4, !tbaa !339
  br label %65

65:                                               ; preds = %53, %59
  %66 = phi i8 [ %54, %53 ], [ %64, %59 ]
  %67 = load ptr, ptr %55, align 8, !tbaa !104
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %53, !llvm.loop !341

69:                                               ; preds = %65, %21
  %70 = phi ptr [ %23, %21 ], [ %51, %65 ]
  %71 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %72 = icmp eq ptr %70, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 18
  br label %75

75:                                               ; preds = %73, %84
  %76 = phi ptr [ %70, %73 ], [ %77, %84 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !144
  %78 = getelementptr inbounds %struct.ARegion, ptr %76, i64 0, i32 9
  %79 = load i16, ptr %78, align 8, !tbaa !122
  %80 = icmp eq i16 %79, 8
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  call void @ED_region_exit(ptr noundef %0, ptr noundef nonnull %76) #15
  %82 = load ptr, ptr %74, align 8, !tbaa !342
  call void @BKE_area_region_free(ptr noundef %82, ptr noundef nonnull %76) #15
  call void @BLI_remlink(ptr noundef nonnull %71, ptr noundef nonnull %76) #15
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  call void %83(ptr noundef nonnull %76) #15
  br label %84

84:                                               ; preds = %75, %81
  %85 = icmp eq ptr %77, null
  br i1 %85, label %86, label %75, !llvm.loop !343

86:                                               ; preds = %84, %43, %69
  call void @ED_area_tag_redraw(ptr noundef %17) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %121

87:                                               ; preds = %12
  %88 = load ptr, ptr %5, align 8, !tbaa !144
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %92 = load ptr, ptr %91, align 8, !tbaa !334
  tail call void @BKE_report(ptr noundef %92, i32 noundef 32, ptr noundef nonnull @.str.124) #15
  br label %121

93:                                               ; preds = %87
  %94 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  store i16 8, ptr %13, align 8, !tbaa !122
  %95 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 18
  %96 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 20
  br label %97

97:                                               ; preds = %93, %97
  %98 = phi i32 [ 0, %93 ], [ %101, %97 ]
  %99 = load ptr, ptr %95, align 8, !tbaa !342
  %100 = tail call ptr @BKE_area_region_copy(ptr noundef %99, ptr noundef nonnull %5) #15
  tail call void @BLI_addtail(ptr noundef nonnull %96, ptr noundef %100) #15
  %101 = add nuw nsw i32 %98, 1
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %97, !llvm.loop !344

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ScrArea, ptr %94, i64 0, i32 8
  %105 = load i8, ptr %104, align 8, !tbaa !103
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 30
  %109 = load ptr, ptr %108, align 8, !tbaa !336
  %110 = getelementptr inbounds %struct.RegionView3D, ptr %109, i64 0, i32 28
  %111 = load i8, ptr %110, align 4, !tbaa !339
  %112 = icmp sgt i8 %111, -1
  %113 = and i8 %111, 127
  %114 = select i1 %112, i8 1, i8 %113
  %115 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 0) #15
  tail call fastcc void @region_quadview_init_rv3d(ptr noundef nonnull %94, ptr noundef nonnull %5, i8 noundef zeroext %114, i8 noundef zeroext %115) #16
  %116 = load ptr, ptr %5, align 8, !tbaa !144
  %117 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 1) #15
  tail call fastcc void @region_quadview_init_rv3d(ptr noundef nonnull %94, ptr noundef %116, i8 noundef zeroext %114, i8 noundef zeroext %117) #16
  %118 = load ptr, ptr %116, align 8, !tbaa !144
  %119 = tail call zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef 2) #15
  tail call fastcc void @region_quadview_init_rv3d(ptr noundef nonnull %94, ptr noundef %118, i8 noundef zeroext %114, i8 noundef zeroext %119) #16
  br label %120

120:                                              ; preds = %107, %103
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %94) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %121

121:                                              ; preds = %86, %120, %90, %9
  ret i32 4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_exit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_area_region_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_quadview_init_rv3d(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !345 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !336
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 27
  store i8 %2, ptr %7, align 1, !tbaa !337
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 26
  store i8 %3, ptr %8, align 2, !tbaa !346
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 25
  store i8 0, ptr %9, align 1, !tbaa !347
  %10 = tail call zeroext i8 @ED_view3d_lock(ptr noundef %6) #15
  tail call fastcc void @view3d_localview_update_rv3d(ptr noundef %6) #16
  %11 = and i8 %2, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @ED_view3d_quadview_update(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #15
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_localview_update_rv3d(ptr noundef %0) unnamed_addr #0 !PGOFuncName !348 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !349
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %7 = load i8, ptr %6, align 2, !tbaa !346
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 26
  store i8 %7, ptr %8, align 2, !tbaa !346
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !347
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 25
  store i8 %10, ptr %11, align 1, !tbaa !347
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 17
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %12, ptr noundef nonnull %13) #15
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_quadview_update(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @region_scale_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !350 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  %8 = icmp eq i16 %7, 20481
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !334
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.127) #15
  br label %70

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sActionzoneData, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !210
  %15 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !351
  %17 = icmp eq ptr %16, null
  br i1 %17, label %70, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !104
  %20 = tail call ptr %19(i64 noundef 56, ptr noundef nonnull @.str.128) #15
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !206
  store ptr %14, ptr %20, align 8, !tbaa !352
  %22 = load ptr, ptr %15, align 8, !tbaa !351
  %23 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !354
  %24 = load ptr, ptr %5, align 8, !tbaa !208
  %25 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !355
  %26 = getelementptr inbounds %struct.AZone, ptr %14, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !356
  %28 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 9
  store i32 %27, ptr %28, align 8, !tbaa !357
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %30 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 6
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !107
  store <2 x i32> %31, ptr %30, align 4, !tbaa !107
  %32 = tail call fastcc i32 @area_max_regionsize(ptr noundef %24, ptr noundef %22, i32 noundef %27) #16
  %33 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 8
  store i32 %32, ptr %33, align 4, !tbaa !358
  %34 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 12
  %35 = load i16, ptr %34, align 8, !tbaa !359
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !360
  store i16 %39, ptr %34, align 8, !tbaa !359
  br label %40

40:                                               ; preds = %37, %18
  %41 = phi i16 [ %39, %37 ], [ %35, %18 ]
  %42 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 13
  %43 = load i16, ptr %42, align 2, !tbaa !361
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 6
  %47 = load i16, ptr %46, align 2, !tbaa !362
  store i16 %47, ptr %42, align 2, !tbaa !361
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i16 [ %47, %45 ], [ %43, %40 ]
  %50 = icmp ult i32 %27, 2
  %51 = select i1 %50, i16 %41, i16 %49
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds %struct.RegionMoveData, ptr %20, i64 0, i32 5
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  %55 = load i16, ptr %54, align 2, !tbaa !333
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = tail call i32 @ED_area_headersize() #15
  %59 = load i32, ptr %33, align 4, !tbaa !358
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi i32 [ %59, %57 ], [ %32, %48 ]
  %62 = phi i32 [ %58, %57 ], [ 1000, %48 ]
  %63 = icmp slt i32 %61, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i32 %61, %62
  br i1 %65, label %66, label %68

66:                                               ; preds = %64, %60
  %67 = phi i32 [ 0, %60 ], [ %62, %64 ]
  store i32 %67, ptr %33, align 4, !tbaa !358
  br label %68

68:                                               ; preds = %66, %64
  %69 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %70

70:                                               ; preds = %12, %68, %9
  %71 = phi i32 [ 2, %9 ], [ 1, %68 ], [ 4, %12 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @region_scale_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !363 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  switch i16 %7, label %168 [
    i16 4, label %8
    i16 1, label %128
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !357
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !214
  %15 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !364
  %17 = sub nsw i32 %14, %16
  %18 = icmp eq i32 %10, 1
  %19 = sub nsw i32 0, %17
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !121
  %23 = sitofp i32 %22 to float
  %24 = fmul float %21, %23
  %25 = fdiv float %24, 7.200000e+01
  %26 = sitofp i32 %20 to float
  %27 = fdiv float %26, %25
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !365
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !354
  %35 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 12
  store i16 %32, ptr %35, align 8, !tbaa !359
  %36 = shl i32 %31, 16
  %37 = ashr exact i32 %36, 16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !358
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = trunc i32 %41 to i16
  br label %45

45:                                               ; preds = %12, %43
  %46 = phi i16 [ %44, %43 ], [ 0, %12 ]
  store i16 %46, ptr %35, align 8, !tbaa !359
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i16 [ %32, %39 ], [ %46, %45 ]
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %50 = icmp slt i16 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = trunc i32 %30 to i16
  store i16 %52, ptr %35, align 8, !tbaa !359
  %53 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 10
  %54 = load i16, ptr %53, align 2, !tbaa !141
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %125

57:                                               ; preds = %51
  tail call fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %125

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.ARegion, ptr %34, i64 0, i32 10
  %60 = load i16, ptr %59, align 2, !tbaa !141
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %125, label %63

63:                                               ; preds = %58
  tail call fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %125

64:                                               ; preds = %8
  %65 = tail call fastcc i32 @region_scale_get_maxsize(ptr noundef nonnull %5) #16
  %66 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !216
  %68 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !366
  %70 = sub nsw i32 %67, %69
  %71 = icmp eq i32 %10, 3
  %72 = sub nsw i32 0, %70
  %73 = select i1 %71, i32 %72, i32 %70
  %74 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %75 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !121
  %76 = sitofp i32 %75 to float
  %77 = fmul float %74, %76
  %78 = fdiv float %77, 7.200000e+01
  %79 = sitofp i32 %73 to float
  %80 = fdiv float %79, %78
  %81 = fptosi float %80 to i32
  %82 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !365
  %84 = add nsw i32 %83, %81
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !354
  %88 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 13
  store i16 %85, ptr %88, align 2, !tbaa !361
  %89 = shl i32 %84, 16
  %90 = ashr exact i32 %89, 16
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %64
  %93 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 8
  %94 = load i32, ptr %93, align 4, !tbaa !358
  %95 = icmp sgt i32 %90, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = trunc i32 %94 to i16
  br label %98

98:                                               ; preds = %64, %96
  %99 = phi i16 [ %97, %96 ], [ 0, %64 ]
  store i16 %99, ptr %88, align 2, !tbaa !361
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi i16 [ %85, %92 ], [ %99, %98 ]
  %102 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %103 = sdiv i16 %102, 4
  %104 = icmp slt i16 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = trunc i32 %83 to i16
  store i16 %106, ptr %88, align 2, !tbaa !361
  %107 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 10
  %108 = load i16, ptr %107, align 2, !tbaa !141
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  tail call fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %125

112:                                              ; preds = %100
  %113 = sext i16 %101 to i32
  %114 = icmp sgt i32 %65, 0
  %115 = icmp slt i32 %65, %113
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = trunc i32 %65 to i16
  store i16 %118, ptr %88, align 2, !tbaa !361
  br label %125

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 10
  %121 = load i16, ptr %120, align 2, !tbaa !141
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %125

125:                                              ; preds = %111, %105, %119, %124, %117, %57, %51, %63, %58
  %126 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !355
  tail call void @ED_area_tag_redraw(ptr noundef %127) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %168

128:                                              ; preds = %3
  %129 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !227
  %131 = icmp eq i16 %130, 2
  br i1 %131, label %132, label %168

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %134 = load i32, ptr %133, align 4, !tbaa !214
  %135 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 6
  %136 = load i32, ptr %135, align 4, !tbaa !364
  %137 = sub nsw i32 %134, %136
  %138 = tail call i32 @llvm.abs.i32(i32 %137, i1 true)
  %139 = icmp ult i32 %138, 2
  br i1 %139, label %140, label %165

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %142 = load i32, ptr %141, align 8, !tbaa !216
  %143 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !366
  %145 = sub nsw i32 %142, %144
  %146 = tail call i32 @llvm.abs.i32(i32 %145, i1 true)
  %147 = icmp ult i32 %146, 2
  br i1 %147, label %148, label %165

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !354
  %151 = getelementptr inbounds %struct.ARegion, ptr %150, i64 0, i32 10
  %152 = load i16, ptr %151, align 2, !tbaa !141
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  tail call fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %161

157:                                              ; preds = %148
  %158 = and i32 %153, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  tail call fastcc void @region_scale_validate_size(ptr noundef nonnull %5) #16
  br label %161

161:                                              ; preds = %157, %160, %156
  %162 = getelementptr inbounds %struct.RegionMoveData, ptr %5, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !355
  tail call void @ED_area_tag_redraw(ptr noundef %163) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  %164 = load ptr, ptr %4, align 8, !tbaa !206
  br label %165

165:                                              ; preds = %161, %140, %132
  %166 = phi ptr [ %164, %161 ], [ %5, %140 ], [ %5, %132 ]
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  tail call void %167(ptr noundef %166) #15
  store ptr null, ptr %4, align 8, !tbaa !206
  br label %168

168:                                              ; preds = %125, %3, %128, %165
  %169 = phi i32 [ 4, %165 ], [ 1, %128 ], [ 1, %3 ], [ 1, %125 ]
  ret i32 %169
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @region_scale_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 !PGOFuncName !367 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  tail call void %3(ptr noundef %5) #15
  store ptr null, ptr %4, align 8, !tbaa !206
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @area_max_regionsize(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !368 {
  %4 = icmp ult i32 %2, 2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7
  br i1 %4, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #16
  br label %10

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #16
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  br label %17

17:                                               ; preds = %15, %92
  %18 = phi ptr [ %13, %15 ], [ %94, %92 ]
  %19 = phi i32 [ %11, %15 ], [ %93, %92 ]
  %20 = icmp eq ptr %18, %1
  br i1 %20, label %92, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %16, align 8, !tbaa !122
  switch i16 %22, label %59 [
    i16 1, label %23
    i16 2, label %32
    i16 3, label %41
    i16 4, label %50
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !122
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %29 = load i16, ptr %28, align 2, !tbaa !362
  %30 = sext i16 %29 to i32
  %31 = sub nsw i32 %19, %30
  br label %92

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %34 = load i16, ptr %33, align 8, !tbaa !122
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !362
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 %19, %39
  br label %92

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %43 = load i16, ptr %42, align 8, !tbaa !122
  %44 = icmp eq i16 %43, 4
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %47 = load i16, ptr %46, align 8, !tbaa !360
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %19, %48
  br label %92

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %52 = load i16, ptr %51, align 8, !tbaa !122
  %53 = icmp eq i16 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  %56 = load i16, ptr %55, align 8, !tbaa !360
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %19, %57
  br label %92

59:                                               ; preds = %21, %23, %32, %41, %50
  switch i32 %2, label %92 [
    i32 3, label %60
    i32 2, label %76
  ]

60:                                               ; preds = %59
  %61 = and i16 %22, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %65 = load i16, ptr %64, align 8, !tbaa !122
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 8
  %69 = load i16, ptr %68, align 2, !tbaa !333
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %73 = load i16, ptr %72, align 2, !tbaa !362
  %74 = sext i16 %73 to i32
  %75 = sub nsw i32 %19, %74
  br label %92

76:                                               ; preds = %59
  %77 = and i16 %22, 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %81 = load i16, ptr %80, align 8, !tbaa !122
  %82 = icmp eq i16 %81, 2
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 8
  %85 = load i16, ptr %84, align 2, !tbaa !333
  %86 = icmp eq i16 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  %89 = load i16, ptr %88, align 2, !tbaa !362
  %90 = sext i16 %89 to i32
  %91 = sub nsw i32 %19, %90
  br label %92

92:                                               ; preds = %60, %63, %67, %59, %27, %45, %71, %87, %83, %79, %76, %54, %36, %17
  %93 = phi i32 [ %19, %17 ], [ %31, %27 ], [ %40, %36 ], [ %49, %45 ], [ %58, %54 ], [ %75, %71 ], [ %91, %87 ], [ %19, %83 ], [ %19, %79 ], [ %19, %76 ], [ %19, %59 ], [ %19, %67 ], [ %19, %63 ], [ %19, %60 ]
  %94 = load ptr, ptr %18, align 8, !tbaa !104
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %17, !llvm.loop !369

96:                                               ; preds = %92, %10
  %97 = phi i32 [ %11, %10 ], [ %93, %92 ]
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @region_scale_toggle_hidden(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !370 {
  %3 = getelementptr inbounds %struct.RegionMoveData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !354
  tail call void @region_toggle_hidden(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 0) #15
  tail call fastcc void @region_scale_validate_size(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @region_scale_get_maxsize(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !357
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !286
  %10 = sitofp i16 %9 to float
  %11 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !121
  %13 = sitofp i32 %12 to float
  %14 = fmul float %11, %13
  %15 = fdiv float %14, 7.200000e+01
  %16 = fdiv float %10, %15
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
  %18 = sitofp i16 %17 to float
  %19 = fsub float %16, %18
  %20 = fptosi float %19 to i32
  br label %43

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !354
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !333
  %26 = icmp eq i16 %25, 6
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !358
  %30 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !355
  %32 = getelementptr inbounds %struct.ScrArea, ptr %31, i64 0, i32 12
  %33 = load i16, ptr %32, align 2, !tbaa !372
  %34 = icmp eq i16 %33, 2
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %36 = sext i16 %35 to i32
  %37 = zext i1 %34 to i32
  %38 = shl nsw i32 %36, %37
  %39 = sub i32 %29, %38
  %40 = sdiv i16 %35, -4
  %41 = sext i16 %40 to i32
  %42 = add i32 %39, %41
  br label %43

43:                                               ; preds = %21, %27, %5
  %44 = phi i32 [ %20, %5 ], [ %42, %27 ], [ 0, %21 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @region_scale_validate_size(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !373 {
  %2 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !354
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !141
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.RegionMoveData, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !357
  %11 = icmp ult i32 %10, 2
  %12 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 12
  %13 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 13
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = tail call fastcc i32 @region_scale_get_maxsize(ptr noundef nonnull %0) #16
  %16 = load i16, ptr %14, align 2, !tbaa !252
  %17 = sext i16 %16 to i32
  %18 = shl i32 %15, 16
  %19 = ashr exact i32 %18, 16
  %20 = icmp slt i32 %19, %17
  %21 = icmp sgt i32 %19, 0
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = trunc i32 %15 to i16
  store i16 %24, ptr %14, align 2, !tbaa !252
  br label %25

25:                                               ; preds = %8, %23, %1
  ret void
}

; Function Attrs: optsize
declare void @region_toggle_hidden(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @region_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !374 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !122
  %8 = add i16 %7, -1
  %9 = icmp ult i16 %8, 4
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = shl nuw nsw i16 %8, 4
  %12 = zext nneg i16 %11 to i64
  %13 = lshr i64 844442110066690, %12
  %14 = trunc i64 %13 to i16
  store i16 %14, ptr %6, align 8, !tbaa !122
  br label %15

15:                                               ; preds = %5, %10
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %16) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %17

17:                                               ; preds = %2, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @header_flip_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !375 {
  %3 = tail call fastcc ptr @screen_find_region_type(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !122
  %8 = add i16 %7, -1
  %9 = icmp ult i16 %8, 4
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = shl nuw nsw i16 %8, 4
  %12 = zext nneg i16 %11 to i64
  %13 = lshr i64 844442110066690, %12
  %14 = trunc i64 %13 to i16
  store i16 %14, ptr %6, align 8, !tbaa !122
  br label %15

15:                                               ; preds = %5, %10
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %16) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %17

17:                                               ; preds = %2, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @screen_find_region_type(ptr noundef %0) unnamed_addr #0 !PGOFuncName !376 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !333
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4, %1
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %10 = tail call ptr @BKE_area_find_region_type(ptr noundef %9, i32 noundef 1) #15
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @header_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !377 {
  %3 = tail call fastcc ptr @screen_find_region_type(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !141
  %8 = xor i16 %7, 1
  store i16 %8, ptr %6, align 2, !tbaa !141
  %9 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %9) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @header_toggle_menus_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !378 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !124
  %6 = xor i16 %5, 1
  store i16 %6, ptr %4, align 2, !tbaa !124
  tail call void @ED_area_tag_redraw(ptr noundef %3) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50331649, ptr noundef null) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @header_toolbox_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !379 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 0) #15
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #15
  tail call void @ED_screens_header_tools_menu_create(ptr noundef %0, ptr noundef %5, ptr poison) #16
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #15
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !380 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %6) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.30) #15
  %11 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 10
  %12 = load i16, ptr %11, align 2, !tbaa !381
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  switch i32 %10, label %59 [
    i32 1, label %17
    i32 -1, label %15
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26, i32 1
  br label %31

17:                                               ; preds = %14, %27
  %18 = phi ptr [ %28, %27 ], [ %4, %14 ]
  %19 = phi i32 [ %20, %27 ], [ %7, %14 ]
  %20 = add nsw i32 %19, -1
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 8, !tbaa !382
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 8, !tbaa !383
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %26, %25 ], [ %23, %22 ]
  %29 = tail call fastcc zeroext i8 @screen_set_is_ok(ptr noundef %28, ptr noundef %4) #16, !range !68
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %17, label %46, !llvm.loop !385

31:                                               ; preds = %15, %42
  %32 = phi ptr [ %43, %42 ], [ %4, %15 ]
  %33 = phi i32 [ %34, %42 ], [ %7, %15 ]
  %34 = add nsw i32 %33, -1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !386
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %16, align 8, !tbaa !387
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = tail call fastcc zeroext i8 @screen_set_is_ok(ptr noundef %43, ptr noundef %4) #16, !range !68
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %31, label %46, !llvm.loop !388

46:                                               ; preds = %42, %31, %17, %27
  %47 = phi ptr [ %18, %17 ], [ %28, %27 ], [ %32, %31 ], [ %43, %42 ]
  %48 = icmp eq ptr %47, null
  %49 = icmp eq ptr %4, %47
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = icmp eq ptr %5, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !125
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @ED_screen_full_restore(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %58

58:                                               ; preds = %57, %53, %51
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef nonnull %47) #15
  br label %59

59:                                               ; preds = %14, %46, %2, %58
  %60 = phi i32 [ 4, %58 ], [ 2, %2 ], [ 2, %46 ], [ 2, %14 ]
  ret i32 %60
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @screen_set_is_ok(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !389 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 11
  %4 = load i16, ptr %3, align 4, !tbaa !390
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 9
  %8 = load i16, ptr %7, align 8, !tbaa !277
  %9 = icmp ne i16 %8, 0
  %10 = icmp eq ptr %0, %1
  %11 = or i1 %10, %9
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %14 = load i8, ptr %13, align 2, !tbaa !391
  %15 = icmp ne i8 %14, 46
  %16 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %15, i1 true, i1 %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %12, %6, %2
  %22 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %20, %12 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ED_screen_full_restore(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_maximize_area_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !392 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.31) #15
  %7 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %18, !llvm.loop !393

16:                                               ; preds = %8
  %17 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %17, %16 ], [ %10, %12 ]
  %20 = and i32 %6, 255
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !277
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
  %29 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %30 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %29, ptr noundef %19, i16 noundef signext %28) #15
  br label %31

31:                                               ; preds = %27, %25, %24
  %32 = phi i32 [ 2, %24 ], [ 2, %25 ], [ 4, %27 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fullscreen_back_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !394 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %16, !llvm.loop !395

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !334
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.147) #15
  br label %17

16:                                               ; preds = %9
  tail call void @ED_screen_full_restore(ptr noundef %0, ptr noundef nonnull %7) #15
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 4, %16 ], [ 2, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @spacedata_cleanup_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !396 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %11

7:                                                ; preds = %28, %11
  %8 = phi i32 [ %13, %11 ], [ %29, %28 ]
  %9 = load ptr, ptr %12, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !llvm.loop !397

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %11, %28
  %18 = phi ptr [ %30, %28 ], [ %15, %11 ]
  %19 = phi i32 [ %29, %28 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !398
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  tail call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef %21) #15
  %26 = tail call i32 @BLI_countlist(ptr noundef nonnull %20) #15
  %27 = add nsw i32 %26, %19
  tail call void @BKE_spacedata_freelist(ptr noundef nonnull %20) #15
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %21) #15
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi i32 [ %27, %25 ], [ %19, %17 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !104
  %31 = icmp eq ptr %30, null
  br i1 %31, label %7, label %17, !llvm.loop !399

32:                                               ; preds = %7, %2
  %33 = phi i32 [ 0, %2 ], [ %8, %7 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !334
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %35, i32 noundef 2, ptr noundef nonnull @.str.151, i32 noundef %33) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_operator_winactive(ptr noundef) #1

; Function Attrs: optsize
declare void @BKE_spacedata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @userpref_show_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !400 {
  %4 = alloca %struct.rcti, align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !121
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 8.000000e+02
  %10 = fptosi float %9 to i32
  %11 = fmul float %8, 4.800000e+02
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !214
  %15 = sitofp i32 %14 to float
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !120
  %17 = fdiv float %15, %16
  %18 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  %19 = load i16, ptr %18, align 8, !tbaa !318
  %20 = sitofp i16 %19 to float
  %21 = fadd float %17, %20
  %22 = sdiv i32 %10, 2
  %23 = sitofp i32 %22 to float
  %24 = fsub float %21, %23
  %25 = fptosi float %24 to i32
  store i32 %25, ptr %4, align 4, !tbaa !320
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !216
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %28, %16
  %30 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !319
  %32 = sitofp i16 %31 to float
  %33 = fadd float %29, %32
  %34 = sdiv i32 %12, 2
  %35 = sitofp i32 %34 to float
  %36 = fsub float %33, %35
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 %37, ptr %38, align 4, !tbaa !322
  %39 = add nsw i32 %25, %10
  %40 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %39, ptr %40, align 4, !tbaa !321
  %41 = add nsw i32 %37, %12
  %42 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %41, ptr %42, align 4, !tbaa !323
  call void @WM_window_open_temp(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_window_open_temp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @region_blend_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !401 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !212
  %8 = icmp ne i16 %7, 279
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmTimer, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  tail call void @ED_region_tag_redraw(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.RegionAlphaInfo, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %17) #15
  br label %20

20:                                               ; preds = %19, %11
  %21 = load ptr, ptr %14, align 8, !tbaa !143
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !136
  %24 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 6
  %25 = load double, ptr %24, align 8, !tbaa !138
  %26 = fcmp ogt double %25, 0x3FC99999A0000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  tail call fastcc void @region_blend_end(ptr noundef %0, ptr noundef nonnull %21, i8 noundef zeroext 0) #16
  br label %28

28:                                               ; preds = %20, %3, %27
  %29 = phi i32 [ 12, %27 ], [ 8, %3 ], [ 12, %20 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @frame_offset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !402 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.30) #15
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !403
  %10 = add nsw i32 %9, %7
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !404
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %15 = select i1 %13, i32 %10, i32 %14
  store i32 %15, ptr %8, align 8
  %16 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %16, align 4, !tbaa !405
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_operator_screenactive_norender(ptr noundef %0) #0 !PGOFuncName !406 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !407
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @frame_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !409 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 3
  %13 = load i16, ptr %12, align 4, !tbaa !410
  %14 = or i16 %13, 16
  store i16 %14, ptr %12, align 4, !tbaa !410
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !225
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.55) #15
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %20 = load i16, ptr %19, align 8, !tbaa !411
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 5
  br i1 %18, label %29, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %26 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %27 = select i1 %22, ptr %26, ptr %25
  %28 = load i32, ptr %27, align 4, !tbaa !107
  store i32 %28, ptr %23, align 4, !tbaa !412
  br label %52

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %31 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %32 = select i1 %22, ptr %31, ptr %30
  %33 = load i32, ptr %32, align 4, !tbaa !107
  store i32 %33, ptr %23, align 4, !tbaa !412
  br label %52

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !225
  %37 = tail call i32 @RNA_boolean_get(ptr noundef %36, ptr noundef nonnull @.str.55) #15
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 13
  %40 = load i16, ptr %39, align 8, !tbaa !411
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 9
  %44 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  %45 = select i1 %42, ptr %44, ptr %43
  %46 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 10
  %47 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %48 = select i1 %42, ptr %47, ptr %46
  %49 = select i1 %38, ptr %45, ptr %48
  %50 = load i32, ptr %49, align 4, !tbaa !107
  %51 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  store i32 %50, ptr %51, align 8
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %4) #15
  br label %52

52:                                               ; preds = %24, %29, %34
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @keyframe_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !413 {
  %3 = alloca %struct.bDopeSheet, align 8
  %4 = alloca %struct.DLRBT_Tree, align 8
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !225
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.57) #15
  %12 = icmp eq ptr %7, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !403
  %16 = sitofp i32 %15 to float
  store float %16, ptr %5, align 4, !tbaa !414
  call void @BLI_dlrbTree_init(ptr noundef nonnull %4) #15
  %17 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 15
  %18 = load i16, ptr %17, align 4, !tbaa !415
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 4
  store i32 1, ptr %22, align 8, !tbaa !416
  br label %23

23:                                               ; preds = %21, %13
  call void @scene_to_keylist(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef null) #15
  %24 = icmp eq ptr %8, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  call void @ob_to_keylist(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %23
  %27 = call ptr @CTX_data_edit_mask(ptr noundef %0) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call ptr @BKE_mask_layer_active(ptr noundef nonnull %27) #15
  call void @mask_to_keylist(ptr noundef nonnull %3, ptr noundef %30, ptr noundef nonnull %4) #15
  br label %31

31:                                               ; preds = %29, %26
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %4) #15
  %32 = and i32 %11, 255
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %52, %31
  br i1 %33, label %37, label %35

35:                                               ; preds = %34
  %36 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %4, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %5) #15
  br label %39

37:                                               ; preds = %34
  %38 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %4, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %5) #15
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #15
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !334
  call void @BKE_report(ptr noundef %44, i32 noundef 2, ptr noundef nonnull @.str.165) #15
  br label %53

45:                                               ; preds = %39
  %46 = load i32, ptr %14, align 8, !tbaa !403
  %47 = getelementptr inbounds %struct.ActKeyColumn, ptr %40, i64 0, i32 8
  %48 = load float, ptr %47, align 4, !tbaa !418
  %49 = fptosi float %48 to i32
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 %49, ptr %14, align 8, !tbaa !403
  call void @BLI_dlrbTree_free(ptr noundef nonnull %4) #15
  call void @sound_seek_scene(ptr noundef %6, ptr noundef nonnull %7) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %7) #15
  br label %53

52:                                               ; preds = %45
  store float %48, ptr %5, align 4, !tbaa !414
  br label %34, !llvm.loop !420

53:                                               ; preds = %2, %51, %42
  %54 = phi i32 [ 2, %42 ], [ 4, %51 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #17
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mask_to_keylist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @compare_ak_cfraPtr(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_prev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @marker_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !421 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !403
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.57) #15
  %10 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = and i32 %9, 255
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 8, !tbaa !403
  br label %17

17:                                               ; preds = %13, %35
  %18 = phi ptr [ %11, %13 ], [ %38, %35 ]
  %19 = phi i8 [ 0, %13 ], [ %37, %35 ]
  %20 = phi i32 [ %6, %13 ], [ %36, %35 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !422
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
  %38 = load ptr, ptr %18, align 8, !tbaa !104
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %17, !llvm.loop !424

40:                                               ; preds = %35
  %41 = icmp eq i8 %37, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %2, %40
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !334
  tail call void @BKE_report(ptr noundef %44, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %46

45:                                               ; preds = %40
  store i32 %36, ptr %5, align 8, !tbaa !403
  tail call void @sound_seek_scene(ptr noundef %3, ptr noundef nonnull %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %4) #15
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ 4, %45 ], [ 2, %42 ]
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_animation_step(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !425 {
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %199, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  %11 = icmp eq ptr %6, %10
  br i1 %11, label %12, label %199

12:                                               ; preds = %8
  %13 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %15 = load ptr, ptr %5, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !131
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %19 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 3
  %20 = load i16, ptr %19, align 4, !tbaa !410
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
  %29 = load i16, ptr %28, align 4, !tbaa !415
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %12, %27
  %33 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 6
  %34 = load double, ptr %33, align 8, !tbaa !138
  %35 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 6
  %36 = load double, ptr %35, align 8, !tbaa !426
  %37 = fsub double %34, %36
  %38 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 55
  %39 = load i16, ptr %38, align 4, !tbaa !427
  %40 = sitofp i16 %39 to double
  %41 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 65
  %42 = load float, ptr %41, align 4, !tbaa !428
  %43 = fpext float %42 to double
  %44 = fdiv double %40, %43
  %45 = fmul double %37, %44
  %46 = tail call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = tail call fastcc i32 @max_ii(i32 noundef %47) #16
  %49 = and i16 %20, 1
  %50 = icmp eq i16 %49, 0
  %51 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !403
  br i1 %50, label %55, label %53

53:                                               ; preds = %32
  %54 = sub nsw i32 %52, %48
  store i32 %54, ptr %51, align 8, !tbaa !403
  br label %66

55:                                               ; preds = %32
  %56 = add nsw i32 %52, %48
  store i32 %56, ptr %51, align 8, !tbaa !403
  br label %92

57:                                               ; preds = %24, %27
  %58 = and i16 %20, 1
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !403
  br i1 %59, label %64, label %62

62:                                               ; preds = %57
  %63 = add nsw i32 %61, -1
  store i32 %63, ptr %60, align 8, !tbaa !403
  br label %66

64:                                               ; preds = %57
  %65 = add nsw i32 %61, 1
  store i32 %65, ptr %60, align 8, !tbaa !403
  br label %92

66:                                               ; preds = %62, %53
  %67 = phi i32 [ %54, %53 ], [ %63, %62 ]
  %68 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 6
  %69 = load double, ptr %68, align 8, !tbaa !138
  %70 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 6
  store double %69, ptr %70, align 8, !tbaa !426
  %71 = and i16 %20, -3
  store i16 %71, ptr %19, align 4, !tbaa !410
  %72 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %73 = load i16, ptr %72, align 8, !tbaa !411
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !429
  %79 = icmp slt i32 %67, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %82 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  %83 = load i32, ptr %82, align 4, !tbaa !430
  store i32 %83, ptr %81, align 8, !tbaa !403
  br label %118

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %86 = load i32, ptr %85, align 4, !tbaa !431
  %87 = icmp slt i32 %67, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %90 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %91 = load i32, ptr %90, align 8, !tbaa !432
  store i32 %91, ptr %89, align 8, !tbaa !403
  br label %118

92:                                               ; preds = %55, %64
  %93 = phi i32 [ %65, %64 ], [ %56, %55 ]
  %94 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 6
  %95 = load double, ptr %94, align 8, !tbaa !138
  %96 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 6
  store double %95, ptr %96, align 8, !tbaa !426
  %97 = and i16 %20, -3
  store i16 %97, ptr %19, align 4, !tbaa !410
  %98 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 13
  %99 = load i16, ptr %98, align 8, !tbaa !411
  %100 = and i16 %99, 1
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 10
  %104 = load i32, ptr %103, align 4, !tbaa !430
  %105 = icmp sgt i32 %93, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %108 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !429
  store i32 %109, ptr %107, align 8, !tbaa !403
  br label %118

110:                                              ; preds = %92
  %111 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 7
  %112 = load i32, ptr %111, align 8, !tbaa !432
  %113 = icmp sgt i32 %93, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  %116 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %117 = load i32, ptr %116, align 4, !tbaa !431
  store i32 %117, ptr %115, align 8, !tbaa !403
  br label %118

118:                                              ; preds = %88, %80, %114, %106
  %119 = or i16 %20, 2
  store i16 %119, ptr %19, align 4, !tbaa !410
  br label %120

120:                                              ; preds = %118, %102, %110, %76, %84
  %121 = phi i16 [ %97, %102 ], [ %97, %110 ], [ %71, %76 ], [ %71, %84 ], [ %119, %118 ]
  %122 = and i16 %121, 16
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !412
  %127 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 5
  store i32 %126, ptr %127, align 8, !tbaa !403
  %128 = and i16 %121, -19
  %129 = or disjoint i16 %128, 2
  store i16 %129, ptr %19, align 4, !tbaa !410
  br label %130

130:                                              ; preds = %124, %120
  %131 = phi i16 [ %129, %124 ], [ %121, %120 ]
  %132 = and i16 %131, 2
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @sound_seek_scene(ptr noundef %13, ptr noundef nonnull %14) #15
  br label %135

135:                                              ; preds = %134, %130
  tail call void @ED_update_for_newframe(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 1) #15
  %136 = getelementptr inbounds %struct.wmWindowManager, ptr %18, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !104
  %138 = icmp eq ptr %137, null
  br i1 %138, label %189, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 1
  %141 = getelementptr inbounds %struct.ScreenAnimData, ptr %17, i64 0, i32 2
  br label %145

142:                                              ; preds = %186, %145
  %143 = load ptr, ptr %146, align 8, !tbaa !104
  %144 = icmp eq ptr %143, null
  br i1 %144, label %189, label %145, !llvm.loop !433

145:                                              ; preds = %139, %142
  %146 = phi ptr [ %137, %139 ], [ %143, %142 ]
  %147 = getelementptr inbounds %struct.wmWindow, ptr %146, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !126
  %149 = getelementptr inbounds %struct.bScreen, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !104
  %151 = icmp eq ptr %150, null
  br i1 %151, label %142, label %152

152:                                              ; preds = %145, %186
  %153 = phi ptr [ %187, %186 ], [ %150, %145 ]
  %154 = getelementptr inbounds %struct.ScrArea, ptr %153, i64 0, i32 20
  %155 = load ptr, ptr %154, align 8, !tbaa !104
  %156 = icmp eq ptr %155, null
  br i1 %156, label %177, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ScrArea, ptr %153, i64 0, i32 8
  br label %159

159:                                              ; preds = %157, %174
  %160 = phi ptr [ %155, %157 ], [ %175, %174 ]
  %161 = load ptr, ptr %17, align 8, !tbaa !134
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %159
  %164 = load i8, ptr %158, align 8, !tbaa !103
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.ARegion, ptr %160, i64 0, i32 8
  %167 = load i16, ptr %166, align 2, !tbaa !333
  %168 = sext i16 %167 to i32
  %169 = load i16, ptr %140, align 8, !tbaa !434
  %170 = sext i16 %169 to i32
  %171 = tail call fastcc i32 @match_region_with_redraws(i32 noundef %165, i32 noundef %168, i32 noundef %170) #16, !range !70
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163, %159
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %160) #15
  br label %174

174:                                              ; preds = %173, %163
  %175 = load ptr, ptr %160, align 8, !tbaa !104
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %159, !llvm.loop !435

177:                                              ; preds = %174, %152
  %178 = getelementptr inbounds %struct.ScrArea, ptr %153, i64 0, i32 8
  %179 = load i8, ptr %178, align 8, !tbaa !103
  %180 = zext i8 %179 to i32
  %181 = load i16, ptr %141, align 2, !tbaa !436
  %182 = sext i16 %181 to i32
  %183 = tail call fastcc i32 @match_area_with_refresh(i32 noundef %180, i32 noundef %182) #16, !range !70
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %153) #15
  br label %186

186:                                              ; preds = %185, %177
  %187 = load ptr, ptr %153, align 8, !tbaa !104
  %188 = icmp eq ptr %187, null
  br i1 %188, label %142, label %152, !llvm.loop !437

189:                                              ; preds = %142, %135
  tail call void @ED_refresh_viewport_fps(ptr noundef %0) #15
  %190 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 55
  %191 = load i16, ptr %190, align 4, !tbaa !427
  %192 = sitofp i16 %191 to double
  %193 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 65
  %194 = load float, ptr %193, align 4, !tbaa !428
  %195 = fpext float %194 to double
  %196 = fdiv double %192, %195
  %197 = fdiv double 1.000000e+00, %196
  %198 = getelementptr inbounds %struct.wmTimer, ptr %15, i64 0, i32 3
  store double %197, ptr %198, align 8, !tbaa !438
  br label %199

199:                                              ; preds = %3, %8, %189
  %200 = phi i32 [ 4, %189 ], [ 8, %8 ], [ 8, %3 ]
  ret i32 %200
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #8 !PGOFuncName !439 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: optsize
declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @match_region_with_redraws(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !440 {
  switch i32 %1, label %44 [
    i32 0, label %4
    i32 2, label %29
    i32 4, label %33
    i32 1, label %38
    i32 7, label %40
  ]

4:                                                ; preds = %3
  switch i32 %0, label %44 [
    i32 1, label %5
    i32 2, label %8
    i32 12, label %8
    i32 13, label %8
    i32 15, label %11
    i32 4, label %14
    i32 8, label %17
    i32 16, label %20
    i32 6, label %23
    i32 20, label %26
  ]

5:                                                ; preds = %4
  %6 = and i32 %2, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %45

8:                                                ; preds = %4, %4, %4
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %45

11:                                               ; preds = %4
  %12 = and i32 %2, 7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %45

14:                                               ; preds = %4
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %45

17:                                               ; preds = %4
  %18 = and i32 %2, 36
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %45

20:                                               ; preds = %4
  %21 = and i32 %2, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %45

23:                                               ; preds = %4
  %24 = and i32 %2, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %45

26:                                               ; preds = %4
  %27 = and i32 %2, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %45

29:                                               ; preds = %3
  switch i32 %0, label %44 [
    i32 2, label %30
    i32 12, label %30
    i32 13, label %30
  ]

30:                                               ; preds = %29, %29, %29
  %31 = and i32 %2, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %45

33:                                               ; preds = %3
  %34 = icmp ne i32 %0, 20
  %35 = and i32 %2, 8
  %36 = icmp eq i32 %35, 0
  %37 = and i1 %34, %36
  br i1 %37, label %44, label %45

38:                                               ; preds = %3
  %39 = icmp eq i32 %0, 15
  br i1 %39, label %45, label %44

40:                                               ; preds = %3
  switch i32 %0, label %44 [
    i32 8, label %41
    i32 20, label %45
  ]

41:                                               ; preds = %40
  %42 = and i32 %2, 36
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %3, %30, %29, %38, %40, %41, %4, %5, %8, %11, %14, %17, %20, %23, %26
  br label %45

45:                                               ; preds = %40, %41, %38, %33, %30, %26, %23, %20, %17, %14, %11, %8, %5, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %5 ], [ 1, %8 ], [ 1, %11 ], [ 1, %14 ], [ 1, %17 ], [ 1, %20 ], [ 1, %23 ], [ 1, %26 ], [ 1, %30 ], [ 1, %33 ], [ 1, %38 ], [ 1, %41 ], [ 1, %40 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @match_area_with_refresh(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !441 {
  %3 = icmp eq i32 %0, 15
  %4 = and i32 %1, 15
  %5 = icmp ne i32 %4, 0
  %6 = and i1 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_refresh_viewport_fps(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_animation_play_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !442 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.59) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !225
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.177) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !225
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.177) #15
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ -1, %2 ]
  %14 = icmp eq i32 %5, 0
  %15 = select i1 %14, i32 1, i32 -1
  %16 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef %13, i32 noundef %15) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_animation_cancel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !443 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %4 = tail call ptr @ED_screen_animation_playing(ptr noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.182) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.wmTimer, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !131
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %17 = getelementptr inbounds %struct.ScreenAnimData, ptr %15, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !444
  %19 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  store i32 %18, ptr %19, align 8, !tbaa !403
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %16) #15
  br label %20

20:                                               ; preds = %11, %6
  %21 = tail call i32 @ED_screen_animation_play(ptr noundef %0, i32 noundef 0, i32 noundef 0) #16
  br label %22

22:                                               ; preds = %20, %2
  ret i32 8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !445 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %5 = tail call ptr @ED_screen_duplicate(ptr noundef %3, ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50397184, ptr noundef %5) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @screen_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !446 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50462720, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @scene_new_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !447 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !225
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.209) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_scene_add(ptr noundef %4, ptr noundef nonnull @.str.211) #15
  br label %16

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_scene_copy(ptr noundef %3, i32 noundef %7) #15
  switch i32 %7, label %16 [
    i32 3, label %13
    i32 4, label %14
  ]

13:                                               ; preds = %11
  tail call void @ED_object_single_users(ptr noundef %4, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #15
  br label %16

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #15
  tail call void @ED_object_single_users(ptr noundef %4, ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %16

16:                                               ; preds = %11, %13, %14, %9
  %17 = phi ptr [ %10, %9 ], [ %12, %13 ], [ %12, %14 ], [ %12, %11 ]
  %18 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %18, ptr noundef %17) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67174400, ptr noundef %17) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @BKE_scene_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_single_users(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @scene_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !448 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  tail call void @ED_screen_delete_scene(ptr noundef %0, ptr noundef %3) #15
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !449
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.215, ptr noundef %3) #16
  br label %9

9:                                                ; preds = %7, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108868, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @ED_screen_delete_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

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
!68 = !{i8 0, i8 2}
!69 = !{!"screen_ops.c:ed_spacetype_test"}
!70 = !{i32 0, i32 2}
!71 = !{!72, !41, i64 32}
!72 = !{!"SpaceLink", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !48, i64 36, !38, i64 40}
!73 = !{!74, !37, i64 288}
!74 = !{!"SpaceNode", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !48, i64 36, !38, i64 40, !75, i64 56, !37, i64 216, !37, i64 224, !40, i64 232, !40, i64 234, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !38, i64 256, !42, i64 264, !37, i64 280, !37, i64 288, !38, i64 296, !41, i64 360, !41, i64 364, !40, i64 368, !40, i64 370, !40, i64 372, !40, i64 374, !42, i64 376, !37, i64 392}
!75 = !{!"View2D", !53, i64 0, !53, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !38, i64 80, !38, i64 88, !48, i64 96, !48, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!76 = !{!77, !37, i64 24}
!77 = !{!"bNodeTree", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !42, i64 224, !42, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !53, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !78, i64 352, !41, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!78 = !{!"bNodeInstanceKey", !41, i64 0}
!79 = !{!"screen_ops.c:ed_object_hidden"}
!80 = !{!66, !38, i64 1160}
!81 = !{!66, !37, i64 24}
!82 = !{!66, !40, i64 136}
!83 = !{!66, !37, i64 296}
!84 = !{!36, !37, i64 24}
!85 = !{!86, !37, i64 160}
!86 = !{!"bArmature", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!87 = !{!88, !37, i64 0}
!88 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !63, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!89 = !{!90, !41, i64 12}
!90 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !91, i64 144, !91, i64 344, !91, i64 544, !91, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!91 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!92 = !{!93, !37, i64 152}
!93 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !48, i64 252, !48, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !94, i64 504, !48, i64 512, !48, i64 516, !48, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!94 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!95 = !{!93, !41, i64 268}
!96 = !{!93, !37, i64 376}
!97 = !{!98, !37, i64 272}
!98 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!99 = !{!100, !37, i64 160}
!100 = !{!"MetaBall", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 185, !40, i64 186, !40, i64 188, !40, i64 190, !38, i64 192, !38, i64 204, !38, i64 216, !48, i64 228, !48, i64 232, !48, i64 236, !37, i64 240}
!101 = !{!102, !37, i64 96}
!102 = !{!"ScrArea", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !54, i64 56, !38, i64 72, !38, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !38, i64 86, !38, i64 87, !37, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!103 = !{!102, !38, i64 72}
!104 = !{!37, !37, i64 0}
!105 = !{!106, !41, i64 24}
!106 = !{!"AZone", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !54, i64 40, !48, i64 56}
!107 = !{!41, !41, i64 0}
!108 = !{!106, !40, i64 32}
!109 = !{!106, !40, i64 34}
!110 = !{!111, !40, i64 8948}
!111 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !48, i64 8956, !48, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !48, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !112, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !48, i64 10904, !48, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !113, i64 10928}
!112 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!113 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !38, i64 26}
!114 = !{!106, !40, i64 36}
!115 = !{!106, !40, i64 38}
!116 = !{!106, !48, i64 56}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"screen_ops.c:fullscreen_click_rcti_init"}
!120 = !{!111, !48, i64 10908}
!121 = !{!111, !41, i64 8524}
!122 = !{!123, !40, i64 216}
!123 = !{!"ARegion", !37, i64 0, !37, i64 8, !75, i64 16, !54, i64 176, !54, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !48, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!124 = !{!102, !40, i64 82}
!125 = !{!102, !37, i64 48}
!126 = !{!127, !37, i64 24}
!127 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!128 = !{!35, !37, i64 232}
!129 = distinct !{!129, !118}
!130 = !{!35, !41, i64 200}
!131 = !{!132, !37, i64 40}
!132 = !{!"wmTimer", !37, i64 0, !37, i64 8, !37, i64 16, !133, i64 24, !41, i64 32, !37, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !41, i64 88}
!133 = !{!"double", !38, i64 0}
!134 = !{!135, !37, i64 0}
!135 = !{!"ScreenAnimData", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !41, i64 16, !41, i64 20, !133, i64 24}
!136 = !{!123, !37, i64 360}
!137 = !{!123, !37, i64 8}
!138 = !{!132, !133, i64 48}
!139 = !{!140, !41, i64 24}
!140 = !{!"RegionAlphaInfo", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24}
!141 = !{!123, !40, i64 218}
!142 = !{!140, !37, i64 0}
!143 = !{!140, !37, i64 8}
!144 = !{!123, !37, i64 0}
!145 = !{!140, !37, i64 16}
!146 = !{!"screen_ops.c:region_blend_end"}
!147 = !{!"screen_ops.c:SCREEN_OT_actionzone"}
!148 = !{!149, !37, i64 0}
!149 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !150, i64 152, !40, i64 184}
!150 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!151 = !{!149, !37, i64 24}
!152 = !{!149, !37, i64 8}
!153 = !{!149, !37, i64 48}
!154 = !{!149, !37, i64 64}
!155 = !{!149, !37, i64 72}
!156 = !{!149, !37, i64 56}
!157 = !{!149, !40, i64 184}
!158 = !{!149, !37, i64 88}
!159 = !{!"screen_ops.c:SCREEN_OT_repeat_last"}
!160 = !{!149, !37, i64 32}
!161 = !{!"screen_ops.c:SCREEN_OT_repeat_history"}
!162 = !{!"screen_ops.c:SCREEN_OT_redo_last"}
!163 = !{!"screen_ops.c:SCREEN_OT_area_move"}
!164 = !{!"screen_ops.c:SCREEN_OT_area_split"}
!165 = !{!"screen_ops.c:SCREEN_OT_area_join"}
!166 = !{!"screen_ops.c:SCREEN_OT_area_options"}
!167 = !{!"screen_ops.c:SCREEN_OT_area_dupli"}
!168 = !{!"screen_ops.c:SCREEN_OT_area_swap"}
!169 = !{!"screen_ops.c:SCREEN_OT_region_quadview"}
!170 = !{!"screen_ops.c:SCREEN_OT_region_scale"}
!171 = !{!"screen_ops.c:SCREEN_OT_region_flip"}
!172 = !{!"screen_ops.c:SCREEN_OT_header_flip"}
!173 = !{!"screen_ops.c:SCREEN_OT_header"}
!174 = !{!"screen_ops.c:SCREEN_OT_header_toggle_menus"}
!175 = !{!"screen_ops.c:SCREEN_OT_header_toolbox"}
!176 = !{!"screen_ops.c:SCREEN_OT_screen_set"}
!177 = !{!"screen_ops.c:SCREEN_OT_screen_full_area"}
!178 = !{!"screen_ops.c:SCREEN_OT_back_to_previous"}
!179 = !{!"screen_ops.c:SCREEN_OT_spacedata_cleanup"}
!180 = !{!"screen_ops.c:SCREEN_OT_userpref_show"}
!181 = !{!"screen_ops.c:SCREEN_OT_region_blend"}
!182 = !{!"screen_ops.c:SCREEN_OT_frame_offset"}
!183 = !{!"screen_ops.c:SCREEN_OT_frame_jump"}
!184 = !{!"screen_ops.c:SCREEN_OT_keyframe_jump"}
!185 = !{!"screen_ops.c:SCREEN_OT_marker_jump"}
!186 = !{!"screen_ops.c:SCREEN_OT_animation_step"}
!187 = !{!"screen_ops.c:SCREEN_OT_animation_play"}
!188 = !{!"screen_ops.c:SCREEN_OT_animation_cancel"}
!189 = !{!"screen_ops.c:SCREEN_OT_new"}
!190 = !{!"screen_ops.c:SCREEN_OT_delete"}
!191 = !{!"screen_ops.c:SCENE_OT_new"}
!192 = !{!149, !37, i64 104}
!193 = !{!"screen_ops.c:SCENE_OT_delete"}
!194 = !{!195, !37, i64 176}
!195 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176}
!196 = !{!"screen_ops.c:open_file_drop_poll"}
!197 = !{!198, !41, i64 20}
!198 = !{!"wmDrag", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !38, i64 32, !133, i64 1056, !37, i64 1064, !48, i64 1072, !41, i64 1076, !41, i64 1080, !38, i64 1084, !41, i64 1284}
!199 = !{!198, !41, i64 16}
!200 = !{!"screen_ops.c:open_file_drop_copy"}
!201 = !{!202, !37, i64 48}
!202 = !{!"wmDropBox", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !40, i64 56}
!203 = !{!202, !40, i64 56}
!204 = !{!"screen_ops.c:keymap_modal_set"}
!205 = !{!"screen_ops.c:actionzone_invoke"}
!206 = !{!207, !37, i64 96}
!207 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!208 = !{!209, !37, i64 0}
!209 = !{!"sActionzoneData", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!210 = !{!209, !37, i64 16}
!211 = !{!"screen_ops.c:actionzone_modal"}
!212 = !{!213, !40, i64 16}
!213 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !133, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!214 = !{!213, !41, i64 20}
!215 = !{!209, !41, i64 24}
!216 = !{!213, !41, i64 24}
!217 = !{!209, !41, i64 28}
!218 = !{!209, !41, i64 32}
!219 = !{!209, !37, i64 8}
!220 = !{!"screen_ops.c:actionzone_area_poll"}
!221 = !{!127, !37, i64 136}
!222 = distinct !{!222, !118}
!223 = !{!"screen_ops.c:actionzone_cancel"}
!224 = !{!"screen_ops.c:actionzone_apply"}
!225 = !{!207, !37, i64 112}
!226 = !{!209, !41, i64 36}
!227 = !{!213, !40, i64 18}
!228 = !{!213, !37, i64 112}
!229 = !{!213, !40, i64 106}
!230 = !{!"screen_ops.c:actionzone_exit"}
!231 = !{!"screen_ops.c:screen_areahascursor"}
!232 = distinct !{!232, !118}
!233 = !{!"screen_ops.c:repeat_last_exec"}
!234 = !{!235, !37, i64 168}
!235 = !{!"wmWindowManager", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !42, i64 160, !42, i64 176, !236, i64 192, !42, i64 232, !42, i64 248, !42, i64 264, !42, i64 280, !37, i64 296, !37, i64 304, !37, i64 312, !42, i64 320, !37, i64 336, !38, i64 344, !38, i64 345}
!236 = !{!"ReportList", !42, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!237 = !{!"screen_ops.c:repeat_history_invoke"}
!238 = !{!207, !37, i64 88}
!239 = distinct !{!239, !118}
!240 = !{!"screen_ops.c:repeat_history_exec"}
!241 = !{!"screen_ops.c:redo_last_invoke"}
!242 = !{!"screen_ops.c:area_move_exec"}
!243 = !{!"screen_ops.c:area_move_invoke"}
!244 = !{!"screen_ops.c:area_move_cancel"}
!245 = !{!"screen_ops.c:area_move_modal"}
!246 = !{!247, !38, i64 16}
!247 = !{!"sAreaMoveData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !38, i64 16}
!248 = !{!247, !41, i64 12}
!249 = !{!"screen_ops.c:area_move_init"}
!250 = !{!251, !37, i64 16}
!251 = !{!"ScrEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 34, !41, i64 36}
!252 = !{!40, !40, i64 0}
!253 = !{!254, !40, i64 28}
!254 = !{!"ScrVert", !37, i64 0, !37, i64 8, !37, i64 16, !255, i64 24, !40, i64 28, !40, i64 30}
!255 = !{!"vec2s", !40, i64 0, !40, i64 2}
!256 = !{!254, !40, i64 30}
!257 = distinct !{!257, !118}
!258 = !{!"screen_ops.c:area_move_apply"}
!259 = !{!247, !41, i64 8}
!260 = !{!247, !41, i64 0}
!261 = !{!247, !41, i64 4}
!262 = !{!"screen_ops.c:area_move_exit"}
!263 = !{!"screen_ops.c:area_move_set_limits"}
!264 = !{!102, !37, i64 16}
!265 = !{!254, !40, i64 26}
!266 = !{!102, !37, i64 24}
!267 = !{!102, !37, i64 40}
!268 = !{!102, !37, i64 32}
!269 = !{!254, !40, i64 24}
!270 = distinct !{!270, !118}
!271 = !{!"screen_ops.c:min_ii"}
!272 = !{!"screen_ops.c:area_move_apply_do"}
!273 = distinct !{!273, !118}
!274 = distinct !{!274, !118}
!275 = !{!"screen_ops.c:area_split_exec"}
!276 = !{!"screen_ops.c:area_split_invoke"}
!277 = !{!35, !40, i64 208}
!278 = !{!279, !41, i64 32}
!279 = !{!"sAreaSplitData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!280 = !{!"screen_ops.c:area_split_modal"}
!281 = !{!279, !41, i64 8}
!282 = !{!279, !41, i64 20}
!283 = !{!279, !41, i64 12}
!284 = !{!279, !41, i64 16}
!285 = !{!279, !37, i64 48}
!286 = !{!102, !40, i64 74}
!287 = !{!279, !41, i64 28}
!288 = !{!102, !40, i64 76}
!289 = !{!279, !41, i64 24}
!290 = !{!35, !40, i64 214}
!291 = !{!"screen_ops.c:area_split_cancel"}
!292 = !{!279, !37, i64 56}
!293 = !{!"screen_ops.c:screen_active_editable"}
!294 = !{!"screen_ops.c:area_split_init"}
!295 = !{!"screen_ops.c:area_split_apply"}
!296 = !{!279, !37, i64 40}
!297 = distinct !{!297, !118}
!298 = !{!251, !37, i64 24}
!299 = !{!"screen_ops.c:area_split_exit"}
!300 = !{!"screen_ops.c:area_findsharededge"}
!301 = !{!"screen_ops.c:area_split_menu_init"}
!302 = !{!"screen_ops.c:area_join_exec"}
!303 = !{!"screen_ops.c:area_join_invoke"}
!304 = !{!"screen_ops.c:area_join_modal"}
!305 = !{!306, !37, i64 0}
!306 = !{!"sAreaJoinData", !37, i64 0, !37, i64 8, !37, i64 16}
!307 = !{!306, !37, i64 8}
!308 = !{!"screen_ops.c:area_join_cancel"}
!309 = !{!"screen_ops.c:area_join_init"}
!310 = !{!"screen_ops.c:area_join_apply"}
!311 = !{!"screen_ops.c:area_join_exit"}
!312 = !{!"screen_ops.c:screen_area_options_invoke"}
!313 = !{!314, !37, i64 16}
!314 = !{!"PointerRNA", !315, i64 0, !37, i64 8, !37, i64 16}
!315 = !{!"", !37, i64 0}
!316 = !{!"screen_ops.c:area_dupli_invoke"}
!317 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !107}
!318 = !{!127, !40, i64 104}
!319 = !{!127, !40, i64 106}
!320 = !{!54, !41, i64 0}
!321 = !{!54, !41, i64 4}
!322 = !{!54, !41, i64 8}
!323 = !{!54, !41, i64 12}
!324 = !{!35, !37, i64 152}
!325 = !{!"screen_ops.c:BLI_rcti_size_x"}
!326 = !{!"screen_ops.c:BLI_rcti_size_y"}
!327 = !{!"screen_ops.c:area_swap_invoke"}
!328 = !{!"screen_ops.c:area_swap_modal"}
!329 = !{!"screen_ops.c:area_swap_cancel"}
!330 = !{!"screen_ops.c:area_swap_init"}
!331 = !{!"screen_ops.c:area_swap_exit"}
!332 = !{!"screen_ops.c:region_quadview_exec"}
!333 = !{!123, !40, i64 214}
!334 = !{!207, !37, i64 120}
!335 = !{!102, !37, i64 112}
!336 = !{!123, !37, i64 376}
!337 = !{!338, !38, i64 811}
!338 = !{!"RegionView3D", !38, i64 0, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !38, i64 320, !38, i64 384, !38, i64 448, !38, i64 544, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !38, i64 696, !38, i64 760, !48, i64 776, !48, i64 780, !48, i64 784, !48, i64 788, !38, i64 792, !48, i64 804, !38, i64 808, !38, i64 809, !38, i64 810, !38, i64 811, !38, i64 812, !38, i64 813, !38, i64 816, !40, i64 824, !40, i64 826, !38, i64 828, !40, i64 844, !40, i64 846, !48, i64 848, !38, i64 852, !48, i64 864, !38, i64 868}
!339 = !{!338, !38, i64 812}
!340 = !{!338, !40, i64 826}
!341 = distinct !{!341, !118}
!342 = !{!102, !37, i64 88}
!343 = distinct !{!343, !118}
!344 = distinct !{!344, !118}
!345 = !{!"screen_ops.c:region_quadview_init_rv3d"}
!346 = !{!338, !38, i64 810}
!347 = !{!338, !38, i64 809}
!348 = !{!"screen_ops.c:view3d_localview_update_rv3d"}
!349 = !{!338, !37, i64 648}
!350 = !{!"screen_ops.c:region_scale_invoke"}
!351 = !{!106, !37, i64 16}
!352 = !{!353, !37, i64 0}
!353 = !{!"RegionMoveData", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48}
!354 = !{!353, !37, i64 8}
!355 = !{!353, !37, i64 16}
!356 = !{!106, !41, i64 28}
!357 = !{!353, !41, i64 48}
!358 = !{!353, !41, i64 44}
!359 = !{!123, !40, i64 224}
!360 = !{!123, !40, i64 208}
!361 = !{!123, !40, i64 226}
!362 = !{!123, !40, i64 210}
!363 = !{!"screen_ops.c:region_scale_modal"}
!364 = !{!353, !41, i64 36}
!365 = !{!353, !41, i64 32}
!366 = !{!353, !41, i64 40}
!367 = !{!"screen_ops.c:region_scale_cancel"}
!368 = !{!"screen_ops.c:area_max_regionsize"}
!369 = distinct !{!369, !118}
!370 = !{!"screen_ops.c:region_scale_toggle_hidden"}
!371 = !{!"screen_ops.c:region_scale_get_maxsize"}
!372 = !{!102, !40, i64 78}
!373 = !{!"screen_ops.c:region_scale_validate_size"}
!374 = !{!"screen_ops.c:region_flip_exec"}
!375 = !{!"screen_ops.c:header_flip_exec"}
!376 = !{!"screen_ops.c:screen_find_region_type"}
!377 = !{!"screen_ops.c:header_exec"}
!378 = !{!"screen_ops.c:header_toggle_menus_exec"}
!379 = !{!"screen_ops.c:header_toolbox_invoke"}
!380 = !{!"screen_ops.c:screen_set_exec"}
!381 = !{!35, !40, i64 210}
!382 = !{!35, !37, i64 0}
!383 = !{!384, !37, i64 1328}
!384 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !63, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!385 = distinct !{!385, !118}
!386 = !{!35, !37, i64 8}
!387 = !{!384, !37, i64 1336}
!388 = distinct !{!388, !118}
!389 = !{!"screen_ops.c:screen_set_is_ok"}
!390 = !{!35, !40, i64 212}
!391 = !{!38, !38, i64 0}
!392 = !{!"screen_ops.c:screen_maximize_area_exec"}
!393 = distinct !{!393, !118}
!394 = !{!"screen_ops.c:fullscreen_back_exec"}
!395 = distinct !{!395, !118}
!396 = !{!"screen_ops.c:spacedata_cleanup_exec"}
!397 = distinct !{!397, !118}
!398 = !{!102, !37, i64 104}
!399 = distinct !{!399, !118}
!400 = !{!"screen_ops.c:userpref_show_invoke"}
!401 = !{!"screen_ops.c:region_blend_invoke"}
!402 = !{!"screen_ops.c:frame_offset_exec"}
!403 = !{!45, !41, i64 680}
!404 = !{!111, !41, i64 8}
!405 = !{!45, !48, i64 692}
!406 = !{!"screen_ops.c:ED_operator_screenactive_norender"}
!407 = !{!408, !38, i64 2090}
!408 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!409 = !{!"screen_ops.c:frame_jump_exec"}
!410 = !{!135, !40, i64 12}
!411 = !{!45, !40, i64 712}
!412 = !{!135, !41, i64 20}
!413 = !{!"screen_ops.c:keyframe_jump_exec"}
!414 = !{!48, !48, i64 0}
!415 = !{!45, !40, i64 244}
!416 = !{!417, !41, i64 96}
!417 = !{!"bDopeSheet", !37, i64 0, !42, i64 8, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108}
!418 = !{!419, !48, i64 44}
!419 = !{!"ActKeyColumn", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 41, !40, i64 42, !48, i64 44, !40, i64 48, !40, i64 50}
!420 = distinct !{!420, !118}
!421 = !{!"screen_ops.c:marker_jump_exec"}
!422 = !{!423, !41, i64 16}
!423 = !{!"TimeMarker", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !41, i64 84, !37, i64 88}
!424 = distinct !{!424, !118}
!425 = !{!"screen_ops.c:screen_animation_step"}
!426 = !{!135, !133, i64 24}
!427 = !{!45, !40, i64 820}
!428 = !{!45, !48, i64 900}
!429 = !{!45, !41, i64 696}
!430 = !{!45, !41, i64 700}
!431 = !{!45, !41, i64 684}
!432 = !{!45, !41, i64 688}
!433 = distinct !{!433, !118}
!434 = !{!135, !40, i64 8}
!435 = distinct !{!435, !118}
!436 = !{!135, !40, i64 10}
!437 = distinct !{!437, !118}
!438 = !{!132, !133, i64 24}
!439 = !{!"screen_ops.c:max_ii"}
!440 = !{!"screen_ops.c:match_region_with_redraws"}
!441 = !{!"screen_ops.c:match_area_with_refresh"}
!442 = !{!"screen_ops.c:screen_animation_play_exec"}
!443 = !{!"screen_ops.c:screen_animation_cancel_exec"}
!444 = !{!135, !41, i64 16}
!445 = !{!"screen_ops.c:screen_new_exec"}
!446 = !{!"screen_ops.c:screen_delete_exec"}
!447 = !{!"screen_ops.c:scene_new_exec"}
!448 = !{!"screen_ops.c:scene_delete_exec"}
!449 = !{!408, !41, i64 2100}
