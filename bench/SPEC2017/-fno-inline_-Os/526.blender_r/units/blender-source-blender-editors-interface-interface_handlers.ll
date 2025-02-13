; ModuleID = 'blender/source/blender/editors/interface/interface_handlers.c'
source_filename = "blender/source/blender/editors/interface/interface_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.rctf = type { float, float, float, float }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.uiStringInfo = type { i32, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.uiAfterFunc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, %struct.PointerRNA, ptr, ptr, [64 x i8] }
%struct.uiHandleButtonData = type { ptr, ptr, ptr, i8, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, double, double, double, [3 x float], [3 x float], ptr, ptr, ptr, i8, ptr, i32, i32, float, i32, i32, i32, i32, i32, i32, i8, i8, i32, float, float, ptr, [2 x float], ptr, i32, ptr, %struct.uiKeyNavLock, %struct.uiHandleButtonMulti, i32, ptr }
%struct.uiKeyNavLock = type { i8, [2 x i32] }
%struct.uiHandleButtonMulti = type { i32, i8, ptr, ptr, i8, [2 x float], [2 x i32], i32 }
%struct.uiPopupBlockHandle = type { ptr, [2 x float], double, i8, i8, ptr, ptr, ptr, %struct.uiPopupBlockCreate, ptr, %struct.uiKeyNavLock, ptr, ptr, ptr, i32, i32, i32, i32, [4 x float], i32, i8, [2 x i32] }
%struct.uiPopupBlockCreate = type { ptr, ptr, ptr, [2 x i32], ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.uiSafetyRct = type { ptr, ptr, %struct.rctf, %struct.rctf }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.uiButMultiState = type { double, ptr }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.uiDragToggleHandle = type { i8, i8, [2 x float], i32, [2 x i8], [2 x i32], [2 x i32] }
%struct.uiDragColorHandle = type { [3 x float], i8 }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.uiLinkLine = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.uiLink = type { ptr, ptr, ptr, i16, i16, i16, i16, %struct.ListBase }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.uiList = type { ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.uiListDyn = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@ui_pan_to_scroll.lastdy = internal unnamed_addr global i32 0, align 4
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.ui_handle_afterfunc_add_operator = private unnamed_addr constant [33 x i8] c"ui_handle_afterfunc_add_operator\00", align 1
@RNA_Panel = external global %struct.StructRNA, align 1
@.str = private unnamed_addr constant [6 x i8] c"Panel\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s|%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Pin\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Shift+Left Mouse\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"use_pin\00", align 1
@ui_radial_dir_to_angle = external local_unnamed_addr constant [8 x i16], align 16
@.str.5 = private unnamed_addr constant [24 x i8] c"uiHandleButtonData_Fake\00", align 1
@but_copypaste_curve = internal global %struct.CurveMapping zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"uiAfterFunc\00", align 1
@UIAfterFuncs = internal global %struct.ListBase zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"Can't edit driven number value, see graph editor for the driver setup.\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"textedit str\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s: invalid utf8 - stripped chars %d\0A\00", align 1
@__func__.ui_textedit_end = private unnamed_addr constant [16 x i8] c"ui_textedit_end\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%s: error, but->menu_key type: %d\0A\00", align 1
@__func__.ui_handle_menu_event = private unnamed_addr constant [21 x i8] c"ui_handle_menu_event\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Add button link\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Unknown Action\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"uiHandleButtonData\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"UI_OT_eyedropper_color\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"UI_OT_eyedropper_id\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"DoButton pointer error: %s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"[%f, %f, %f]\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"[%f, %f, %f, %f]\00", align 1
@but_copypaste_coba = internal unnamed_addr global %struct.ColorBand zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"colorband\00", align 1
@but_copypaste_curve_alive = internal unnamed_addr global i1 false, align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"curvemapping\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"bpy.ops.wm.call_menu(name=\22%s\22)\00", align 1
@__const.ui_but_menu.label = private unnamed_addr constant %struct.uiStringInfo { i32 4, ptr null }, align 8
@.str.23 = private unnamed_addr constant [18 x i8] c"Replace Keyframes\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_insert_button\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Replace Single Keyframe\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Delete Keyframes\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"ANIM_OT_keyframe_delete_button\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Delete Single Keyframe\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Replace Keyframe\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Delete Keyframe\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Insert Keyframes\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Insert Single Keyframe\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Insert Keyframe\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Clear Keyframes\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"ANIM_OT_keyframe_clear_button\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Clear Single Keyframes\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Delete Drivers\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"ANIM_OT_driver_button_remove\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Delete Single Driver\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"Delete Driver\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Copy Driver\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"ANIM_OT_copy_driver_button\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Paste Driver\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"ANIM_OT_paste_driver_button\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Add Drivers\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"ANIM_OT_driver_button_add\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"Add Single Driver\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Add Driver\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Add All to Keying Set\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"ANIM_OT_keyingset_button_add\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Add Single to Keying Set\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Remove from Keying Set\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"ANIM_OT_keyingset_button_remove\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Add to Keying Set\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"Reset All to Default Values\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"UI_OT_reset_default_button\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Reset Single to Default Value\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Reset to Default Value\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Unset\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"UI_OT_unset_property_button\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Copy Data Path\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"UI_OT_copy_data_path_button\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Copy To Selected\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"UI_OT_copy_to_selected_button\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"Change Shortcut\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Remove Shortcut\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Add Shortcut\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"WM_OT_doc_view_manual\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"doc_id\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"Online Manual\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"WM_OT_doc_view\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"Online Python Reference\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"UI_OT_editsource\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"UI_OT_edittranslation_init\00", align 1
@RNA_KeyMapItem = external global %struct.StructRNA, align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"_popup\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"%s: cant find button\0A\00", align 1
@__func__.ui_multibut_states_apply = private unnamed_addr constant [25 x i8] c"ui_multibut_states_apply\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"%s: utf8 char '%.*s'\0A\00", align 1
@__func__.ui_do_but_textedit = private unnamed_addr constant [19 x i8] c"ui_do_but_textedit\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.82 = private unnamed_addr constant [20 x i8] c"ui_textedit origstr\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"ui_textedit_copypaste\00", align 1
@.str.84 = private unnamed_addr constant [56 x i8] c"%s: entering invalid ascii char into an ascii key (%d)\0A\00", align 1
@__func__.ui_textedit_type_ascii = private unnamed_addr constant [23 x i8] c"ui_textedit_type_ascii\00", align 1
@__func__.ui_but_start_drag = private unnamed_addr constant [18 x i8] c"ui_but_start_drag\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"temp str\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.86 = private unnamed_addr constant [23 x i8] c"reset_defaults - float\00", align 1
@__func__.ui_multibut_add = private unnamed_addr constant [16 x i8] c"ui_multibut_add\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"new link\00", align 1
@RNA_Object = external global %struct.StructRNA, align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"LOGIC_OT_controller_add\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"uiBut\00", align 1
@__func__.ui_handle_list_event = private unnamed_addr constant [21 x i8] c"ui_handle_list_event\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ui_pan_to_scroll(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = sub nsw i32 %5, %7
  %9 = icmp sgt i32 %8, 0
  %10 = load i32, ptr @ui_pan_to_scroll.lastdy, align 4
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = icmp slt i32 %8, 0
  %15 = icmp sgt i32 %10, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %10, %8
  store i32 %18, ptr @ui_pan_to_scroll.lastdy, align 4, !tbaa !43
  %19 = tail call i32 @llvm.abs.i32(i32 %18, i1 true)
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !50
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  %27 = sub nsw i32 0, %8
  %28 = select i1 %26, i32 %8, i32 %27
  store i32 1, ptr %2, align 4, !tbaa !43
  %29 = icmp sgt i32 %28, 0
  %30 = select i1 %29, i32 10, i32 11
  store i32 %30, ptr %1, align 4, !tbaa !43
  br label %31

31:                                               ; preds = %3, %13, %23
  %32 = phi i32 [ 0, %23 ], [ %8, %13 ], [ %8, %3 ]
  store i32 %32, ptr @ui_pan_to_scroll.lastdy, align 4, !tbaa !43
  br label %33

33:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @ui_but_is_editable(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !51
  switch i32 %3, label %4 [
    i32 5120, label %7
    i32 10752, label %7
    i32 27648, label %7
    i32 14336, label %7
    i32 17920, label %7
  ]

4:                                                ; preds = %1
  %5 = icmp ne i32 %3, 26112
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %1, %4
  %8 = phi i8 [ 0, %1 ], [ %6, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ui_is_but_utf8(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %3) #25
  %7 = add i32 %6, -5
  %8 = icmp ult i32 %7, -4
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i1 [ %8, %5 ], [ %13, %9 ]
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ui_handle_afterfunc_add_operator(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc ptr @ui_afterfunc_new() #26
  %5 = getelementptr inbounds %struct.uiAfterFunc, ptr %4, i64 0, i32 16
  store ptr %0, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.uiAfterFunc, ptr %4, i64 0, i32 17
  store i32 %1, ptr %6, align 8, !tbaa !60
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %10 = tail call ptr %9(i64 noundef 24, ptr noundef nonnull @__func__.ui_handle_afterfunc_add_operator) #25
  tail call void @WM_operator_properties_create_ptr(ptr noundef %10, ptr noundef %0) #25
  %11 = getelementptr inbounds %struct.uiAfterFunc, ptr %4, i64 0, i32 18
  store ptr %10, ptr %11, align 8, !tbaa !62
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %10, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ui_afterfunc_new() unnamed_addr #3 !PGOFuncName !63 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %2 = tail call ptr %1(i64 noundef 256, ptr noundef nonnull @.str.6) #25
  tail call void @BLI_addtail(ptr noundef nonnull @UIAfterFuncs, ptr noundef %2) #25
  ret ptr %2
}

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_text_password_hide(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %5) #25
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %57

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17
  %15 = select i1 %13, ptr %14, ptr %12
  %16 = icmp eq i8 %2, 0
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 12
  br i1 %16, label %36, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef %0, i64 noundef 128) #25
  %20 = load i16, ptr %17, align 4, !tbaa !65
  %21 = icmp sgt i16 %20, -1
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = zext nneg i16 %20 to i32
  %24 = tail call fastcc i32 @ui_text_position_from_hidden(ptr noundef nonnull %1, i32 noundef %23) #26
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %17, align 4, !tbaa !65
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 13
  %27 = load i16, ptr %26, align 2, !tbaa !66
  %28 = sext i16 %27 to i32
  %29 = tail call fastcc i32 @ui_text_position_from_hidden(ptr noundef nonnull %1, i32 noundef %28) #26
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %26, align 2, !tbaa !66
  %31 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 14
  %32 = load i16, ptr %31, align 8, !tbaa !67
  %33 = sext i16 %32 to i32
  %34 = tail call fastcc i32 @ui_text_position_from_hidden(ptr noundef nonnull %1, i32 noundef %33) #26
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %31, align 8, !tbaa !67
  br label %57

36:                                               ; preds = %10
  %37 = tail call i64 @BLI_strlen_utf8(ptr noundef nonnull %15) #25
  %38 = load i16, ptr %17, align 4, !tbaa !65
  %39 = icmp sgt i16 %38, -1
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = zext nneg i16 %38 to i32
  %42 = tail call fastcc i32 @ui_text_position_to_hidden(ptr noundef nonnull %1, i32 noundef %41) #26
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %17, align 4, !tbaa !65
  %44 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 13
  %45 = load i16, ptr %44, align 2, !tbaa !66
  %46 = sext i16 %45 to i32
  %47 = tail call fastcc i32 @ui_text_position_to_hidden(ptr noundef nonnull %1, i32 noundef %46) #26
  %48 = trunc i32 %47 to i16
  store i16 %48, ptr %44, align 2, !tbaa !66
  %49 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 14
  %50 = load i16, ptr %49, align 8, !tbaa !67
  %51 = sext i16 %50 to i32
  %52 = tail call fastcc i32 @ui_text_position_to_hidden(ptr noundef nonnull %1, i32 noundef %51) #26
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr %49, align 8, !tbaa !67
  br label %54

54:                                               ; preds = %40, %36
  %55 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %15, i64 noundef 128) #25
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %15, i8 42, i64 %37, i1 false)
  %56 = getelementptr inbounds i8, ptr %15, i64 %37
  store i8 0, ptr %56, align 1, !tbaa !68
  br label %57

57:                                               ; preds = %54, %22, %18, %3, %7
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_text_position_from_hidden(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %12, %9 ], [ %7, %2 ]
  %12 = tail call ptr @BLI_str_find_next_char_utf8(ptr noundef %11, ptr noundef null) #25
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %9, !llvm.loop !70

15:                                               ; preds = %9, %2
  %16 = phi ptr [ %7, %2 ], [ %12, %9 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %7 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  ret i32 %20
}

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_text_position_to_hidden(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = sext i32 %1 to i64
  %9 = tail call i64 @BLI_strnlen_utf8(ptr noundef nonnull %7, i64 noundef %8) #25
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ui_button_open_menu_direction(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 67
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 39
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !78
  br label %12

12:                                               ; preds = %1, %5, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_panel_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [80 x i8], align 16
  %6 = tail call ptr @CTX_wm_screen(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_Panel, ptr noundef %2, ptr noundef nonnull %4) #25
  %7 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0) #25
  %8 = call ptr @uiPupMenuLayout(ptr noundef %7) #25
  %9 = call zeroext i8 @UI_panel_category_is_visible(ptr noundef %1) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #27
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #25
  call void @uiItemR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #25
  %13 = call ptr @uiLayoutGetBlock(ptr noundef %8) #25
  %14 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = or i32 %17, 134217728
  store i32 %18, ptr %16, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #27
  br label %19

19:                                               ; preds = %11, %3
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @UI_panel_category_is_visible(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @ui_but_pie_dir(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [8 x i16], ptr @ui_radial_dir_to_angle, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !84
  %6 = sitofp i16 %5 to float
  %7 = fmul float %6, 0x3F91DF46A0000000
  %8 = tail call float @cosf(float noundef %7) #25
  store float %8, ptr %1, align 4, !tbaa !85
  %9 = tail call float @sinf(float noundef %7) #25
  %10 = getelementptr inbounds float, ptr %1, i64 1
  store float %9, ptr %10, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ui_but_find_activated(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %8

5:                                                ; preds = %11
  %6 = load ptr, ptr %9, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !llvm.loop !86

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 67
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %11, label %19, !llvm.loop !87

19:                                               ; preds = %5, %15, %1
  %20 = phi ptr [ null, %1 ], [ %13, %15 ], [ null, %5 ]
  ret ptr %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ui_button_is_active(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = tail call ptr @ui_but_find_activated(ptr noundef %0) #26
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiFreeActiveButtons(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %9

6:                                                ; preds = %33, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9, !llvm.loop !88

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %33
  %15 = phi ptr [ %34, %33 ], [ %12, %9 ]
  %16 = tail call ptr @ui_but_find_activated(ptr noundef nonnull %15) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uiBut, ptr %16, i64 0, i32 67
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %20, i64 0, i32 39
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %20, i64 0, i32 41
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %20, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !90
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @ui_button_active_free(ptr noundef %0, ptr noundef nonnull %16) #26
  br label %33

33:                                               ; preds = %18, %24, %32, %28, %14
  %34 = load ptr, ptr %15, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %6, label %14, !llvm.loop !91

36:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_active_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 6
  store i8 1, ptr %7, align 4, !tbaa !92
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 1) #26
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @UI_but_active_drop_name(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %3 = tail call ptr @ui_but_find_activated(ptr noundef %2) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !51
  switch i32 %7, label %8 [
    i32 3072, label %9
    i32 20992, label %9
    i32 26624, label %9
  ]

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %5, %5, %5, %8
  %10 = phi i8 [ 0, %8 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @UI_but_active_drop_color(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ui_but_find_activated(ptr noundef nonnull %2) #26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i32 %9, 7680
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %4
  br label %12

12:                                               ; preds = %1, %11, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %11 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ui_is_but_search_unlink_visible(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %7 = load i8, ptr %6, align 8, !tbaa !68
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @button_activate_exit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #3 !PGOFuncName !93 {
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = icmp eq i32 %9, 28160
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  tail call void @WM_cursor_modal_restore(ptr noundef %13) #25
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !90
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %19

19:                                               ; preds = %18, %14
  %20 = icmp eq i8 %4, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) #26
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 43, i32 1
  %24 = load i8, ptr %23, align 4, !tbaa !96
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  br label %32

32:                                               ; preds = %30, %43
  %33 = phi ptr [ %28, %30 ], [ %44, %43 ]
  %34 = getelementptr inbounds %struct.uiBut, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = and i32 %35, 33554432
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = and i32 %35, -33554433
  store i32 %39, ptr %34, align 8, !tbaa !57
  %40 = load i8, ptr %31, align 4, !tbaa !92
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call fastcc void @ui_apply_autokey(ptr noundef %0, ptr noundef nonnull %33) #26
  br label %43

43:                                               ; preds = %32, %42, %38
  %44 = load ptr, ptr %33, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !97

46:                                               ; preds = %43, %26
  tail call fastcc void @ui_multibut_free(ptr noundef %2, ptr noundef %7) #26
  br label %47

47:                                               ; preds = %46, %22
  %48 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 46
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 27
  %53 = load i32, ptr %52, align 8, !tbaa !99
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  %58 = load i8, ptr %57, align 4, !tbaa !92
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 7
  %62 = load i8, ptr %61, align 1, !tbaa !100
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ 1, %60 ], [ 2, %56 ]
  %66 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !101
  %68 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %49, i64 0, i32 15
  store i32 %67, ptr %68, align 4, !tbaa !102
  %69 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %49, i64 0, i32 16
  store i32 %65, ptr %69, align 8, !tbaa !103
  br label %70

70:                                               ; preds = %60, %64, %51, %47
  br i1 %20, label %71, label %81

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  %73 = load i8, ptr %72, align 4, !tbaa !92
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  tail call fastcc void @ui_apply_undo(ptr noundef %1) #26
  tail call fastcc void @ui_apply_autokey(ptr noundef %0, ptr noundef %1) #26
  %76 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 27
  %77 = load i32, ptr %76, align 8, !tbaa !99
  %78 = and i32 %77, 4096
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @ui_popup_menu_memory_set(ptr noundef nonnull %7, ptr noundef %1) #25
  br label %81

81:                                               ; preds = %75, %80, %71, %70
  %82 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !104
  %84 = getelementptr inbounds %struct.ARegion, ptr %83, i64 0, i32 21
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %81, %99
  %88 = phi ptr [ %101, %99 ], [ %85, %81 ]
  %89 = getelementptr inbounds %struct.uiBlock, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %87, %92
  %93 = phi ptr [ %97, %92 ], [ %90, %87 ]
  %94 = getelementptr inbounds %struct.uiBut, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !57
  %96 = and i32 %95, -262145
  store i32 %96, ptr %94, align 8, !tbaa !57
  %97 = load ptr, ptr %93, align 8, !tbaa !61
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %92, !llvm.loop !105

99:                                               ; preds = %92, %87
  %100 = getelementptr inbounds %struct.uiBlock, ptr %88, i64 0, i32 37
  store i8 1, ptr %100, align 2, !tbaa !106
  %101 = load ptr, ptr %88, align 8, !tbaa !61
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %87, !llvm.loop !107

103:                                              ; preds = %99, %81
  tail call fastcc void @ui_blocks_set_tooltips(ptr noundef %83, i8 noundef zeroext 0) #26
  %104 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !108
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %108(ptr noundef nonnull %105) #25
  br label %109

109:                                              ; preds = %107, %103
  %110 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !109
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %114(ptr noundef nonnull %111) #25
  br label %115

115:                                              ; preds = %113, %109
  %116 = load ptr, ptr %82, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %116) #25
  %117 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %118 = load ptr, ptr %117, align 8, !tbaa !73
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %121(ptr noundef nonnull %118) #25
  store ptr null, ptr %117, align 8, !tbaa !73
  br label %122

122:                                              ; preds = %120, %115
  %123 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !57
  %125 = and i32 %124, -262150
  %126 = or disjoint i32 %125, 262144
  store i32 %126, ptr %123, align 8, !tbaa !57
  br i1 %20, label %127, label %128

127:                                              ; preds = %122
  tail call void @ui_check_but(ptr noundef nonnull %1) #25
  br label %128

128:                                              ; preds = %127, %122
  %129 = icmp eq i8 %3, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %128
  tail call void @WM_event_add_mousemove(ptr noundef %0) #25
  br label %131

131:                                              ; preds = %130, %128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiContextActiveButton(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @ui_context_button_active(ptr noundef %0, ptr noundef null) #26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_context_button_active(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 !PGOFuncName !110 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %14

10:                                               ; preds = %60
  %11 = getelementptr inbounds %struct.ARegion, ptr %61, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14, !llvm.loop !111

14:                                               ; preds = %5, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %5 ]
  %16 = phi ptr [ %19, %10 ], [ null, %5 ]
  %17 = phi ptr [ %61, %10 ], [ %3, %5 ]
  br label %22

18:                                               ; preds = %42, %22
  %19 = phi ptr [ %24, %22 ], [ %43, %42 ]
  %20 = load ptr, ptr %23, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22, !llvm.loop !112

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %20, %18 ], [ %15, %14 ]
  %24 = phi ptr [ %19, %18 ], [ null, %14 ]
  %25 = getelementptr inbounds %struct.uiBlock, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %22, %42
  %29 = phi ptr [ %44, %42 ], [ %26, %22 ]
  %30 = phi ptr [ %43, %42 ], [ %24, %22 ]
  %31 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 67
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !57
  %39 = and i32 %38, 262144
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr null, ptr %29
  br label %42

42:                                               ; preds = %36, %28, %34
  %43 = phi ptr [ %30, %34 ], [ %29, %28 ], [ %41, %36 ]
  %44 = load ptr, ptr %29, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %18, label %28, !llvm.loop !113

46:                                               ; preds = %18
  %47 = icmp eq ptr %19, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %46
  br i1 %6, label %52, label %49

49:                                               ; preds = %48
  %50 = tail call zeroext i8 %1(ptr noundef nonnull %19) #25, !callees !114
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %49, %48
  %53 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 67
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %54, i64 0, i32 39
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !115
  %62 = icmp eq ptr %17, %61
  %63 = icmp eq ptr %61, null
  %64 = or i1 %62, %63
  br i1 %64, label %65, label %10, !llvm.loop !111

65:                                               ; preds = %52, %56, %60, %46, %49, %10, %5, %2
  %66 = phi ptr [ null, %2 ], [ null, %5 ], [ %19, %10 ], [ %16, %49 ], [ %16, %46 ], [ %19, %60 ], [ %19, %56 ], [ %19, %52 ]
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiContextActiveProperty(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = tail call fastcc ptr @ui_context_rna_button_active(ptr noundef %0) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 54, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !117
  %13 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  store ptr %14, ptr %2, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 56
  %16 = load i32, ptr %15, align 8, !tbaa !118
  br label %18

17:                                               ; preds = %7, %4
  store ptr null, ptr %2, align 8, !tbaa !61
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ 0, %17 ], [ %16, %11 ]
  store i32 %19, ptr %3, align 4, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_context_rna_button_active(ptr noundef %0) unnamed_addr #3 !PGOFuncName !119 {
  %2 = tail call fastcc ptr @ui_context_button_active(ptr noundef %0, ptr noundef nonnull @ui_context_rna_button_active_test) #26
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiContextActivePropertyHandle(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @ui_context_rna_button_active(ptr noundef %0) #26
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !122
  %15 = sext i16 %14 to i32
  tail call void %8(ptr noundef %0, ptr noundef %12, i32 noundef %15) #25
  br label %16

16:                                               ; preds = %4, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiContextActiveOperator(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 21
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 47
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %35, !llvm.loop !124

14:                                               ; preds = %6
  %15 = tail call ptr @CTX_wm_screen(ptr noundef %0) #25
  %16 = getelementptr inbounds %struct.bScreen, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14, %32
  %20 = phi ptr [ %33, %32 ], [ %17, %14 ]
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 21
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiBlock, ptr %26, i64 0, i32 47
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  %31 = icmp eq ptr %30, null
  br i1 %31, label %24, label %35, !llvm.loop !125

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr %20, align 8, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !llvm.loop !126

35:                                               ; preds = %10, %32, %28, %14, %1
  %36 = phi ptr [ null, %1 ], [ null, %14 ], [ %30, %28 ], [ null, %32 ], [ %12, %10 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiContextAnimUpdate(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #25
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  br label %8

8:                                                ; preds = %5, %56
  %9 = phi ptr [ %3, %5 ], [ %57, %56 ]
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %17

13:                                               ; preds = %42, %17
  %14 = phi ptr [ %19, %17 ], [ %43, %42 ]
  %15 = load ptr, ptr %18, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17, !llvm.loop !127

17:                                               ; preds = %8, %13
  %18 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %19 = phi ptr [ %14, %13 ], [ null, %8 ]
  %20 = getelementptr inbounds %struct.uiBlock, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  br i1 %22, label %13, label %23

23:                                               ; preds = %17, %42
  %24 = phi ptr [ %44, %42 ], [ %21, %17 ]
  %25 = phi ptr [ %43, %42 ], [ %19, %17 ]
  br i1 %6, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %7, align 8, !tbaa !128
  %28 = sitofp i32 %27 to float
  br label %29

29:                                               ; preds = %23, %26
  %30 = phi float [ %28, %26 ], [ 0.000000e+00, %23 ]
  tail call void @ui_but_anim_flag(ptr noundef nonnull %24, float noundef %30) #25
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %9) #25
  %31 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 67
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = icmp eq ptr %25, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !57
  %39 = and i32 %38, 262144
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr null, ptr %24
  br label %42

42:                                               ; preds = %36, %29, %34
  %43 = phi ptr [ %25, %34 ], [ %24, %29 ], [ %41, %36 ]
  %44 = load ptr, ptr %24, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %13, label %23, !llvm.loop !148

46:                                               ; preds = %13
  %47 = icmp eq ptr %14, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 67
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.uiHandleButtonData, ptr %50, i64 0, i32 39
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %54, align 8, !tbaa !115
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %8, !llvm.loop !149

59:                                               ; preds = %8, %46, %56, %52, %48, %1
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_flag(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_activate_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.wmEvent, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #27
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #26
  call void @wm_event_init_from_window(ptr noundef %5, ptr noundef nonnull %4) #25
  %6 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 20513, ptr %6, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  store i16 1, ptr %7, align 2, !tbaa !151
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  store ptr %2, ptr %8, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 26
  store i16 0, ptr %9, align 2, !tbaa !153
  %10 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %11, ptr noundef %2, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #27
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @button_activate_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !154 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %6 = tail call ptr %5(i64 noundef 328, ptr noundef nonnull @.str.13) #25
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #25
  store ptr %7, ptr %6, align 8, !tbaa !155
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 38
  tail call fastcc void @copy_v2_fl(ptr noundef nonnull %11) #26
  %12 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !51
  switch i32 %13, label %14 [
    i32 16384, label %16
    i32 20992, label %16
    i32 26624, label %16
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !156
  br label %16

16:                                               ; preds = %4, %4, %4, %14
  %17 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 4
  store i32 0, ptr %17, align 4, !tbaa !90
  %18 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  store ptr %6, ptr %21, align 8, !tbaa !73
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = getelementptr inbounds %struct.uiBlock, ptr %25, i64 0, i32 31
  %27 = load i8, ptr %26, align 8, !tbaa !157
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.uiBlock, ptr %25, i64 0, i32 33
  %31 = load double, ptr %30, align 8, !tbaa !158
  %32 = fadd double %31, 3.000000e-01
  %33 = tail call double @PIL_check_seconds_timer() #25
  %34 = fcmp olt double %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr %24, align 8, !tbaa !94
  %37 = getelementptr inbounds %struct.uiBlock, ptr %36, i64 0, i32 31
  store i8 0, ptr %37, align 8, !tbaa !157
  br label %38

38:                                               ; preds = %23, %35, %29
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 21
  store i8 1, ptr %39, align 8, !tbaa !159
  br label %40

40:                                               ; preds = %16, %38
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #26
  %41 = load i32, ptr %18, align 8, !tbaa !57
  %42 = and i32 %41, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %12, align 8, !tbaa !51
  %46 = icmp eq i32 %45, 23552
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #26
  br label %48

48:                                               ; preds = %44, %47, %40
  switch i32 %3, label %66 [
    i32 4, label %49
    i32 3, label %64
    i32 2, label %65
  ]

49:                                               ; preds = %48
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #26
  %50 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 39
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !115
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !160
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @ui_but_first(ptr noundef nonnull %58) #26
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  tail call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef nonnull %54, ptr noundef nonnull %61, i32 noundef 1) #26
  br label %66

64:                                               ; preds = %48
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #26
  br label %66

65:                                               ; preds = %48
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #26
  br label %66

66:                                               ; preds = %48, %56, %63, %60, %64, %65, %49, %53
  %67 = load i32, ptr %12, align 8, !tbaa !51
  %68 = icmp eq i32 %67, 28160
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %71 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %70) #26
  %72 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %70) #26
  %73 = fcmp olt float %71, %72
  %74 = load ptr, ptr %9, align 8, !tbaa !95
  %75 = select i1 %73, i32 1003, i32 1004
  tail call void @WM_cursor_modal_set(ptr noundef %74, i32 noundef %75) #25
  br label %76

76:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !163 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %373

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %8, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  %16 = icmp eq i32 %15, 1
  %17 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  br i1 %16, label %21, label %19

19:                                               ; preds = %13
  %20 = icmp eq i16 %18, 20515
  br i1 %20, label %59, label %177

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  switch i16 %18, label %177 [
    i16 99, label %30
    i16 118, label %30
    i16 20515, label %59
    i16 101, label %23
    i16 105, label %98
    i16 100, label %124
    i16 107, label %149
    i16 3, label %26
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !151
  br label %60

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !151
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %174, label %177

30:                                               ; preds = %21, %21
  %31 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !151
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %36 = load i16, ptr %35, align 2, !tbaa !164
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %40 = load i16, ptr %39, align 2, !tbaa !165
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = icmp eq i32 %44, 18432
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = tail call fastcc ptr @ui_but_list_row_text_activate(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3, i32 noundef 0) #26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.uiBut, ptr %47, i64 0, i32 67
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  br label %52

52:                                               ; preds = %46, %49, %42
  %53 = phi ptr [ %8, %42 ], [ %51, %49 ], [ %8, %46 ]
  %54 = phi ptr [ %2, %42 ], [ %47, %49 ], [ %2, %46 ]
  %55 = load i16, ptr %22, align 8, !tbaa !150
  %56 = icmp eq i16 %55, 99
  %57 = select i1 %56, i8 99, i8 118
  tail call fastcc void @ui_but_copy_paste(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %53, i8 noundef zeroext %57) #26
  br label %373

58:                                               ; preds = %38, %30
  switch i16 %18, label %177 [
    i16 107, label %149
    i16 101, label %60
    i16 105, label %98
    i16 100, label %124
  ]

59:                                               ; preds = %19, %21
  tail call fastcc void @ui_but_drop(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %8) #26
  br label %177

60:                                               ; preds = %23, %58
  %61 = phi i16 [ %25, %23 ], [ %32, %58 ]
  %62 = icmp eq i16 %61, 1
  br i1 %62, label %63, label %177

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %65 = load i16, ptr %64, align 4, !tbaa !166
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %177

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %69 = load i16, ptr %68, align 8, !tbaa !167
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %177

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %73 = load i16, ptr %72, align 2, !tbaa !164
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %177

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %77 = load i16, ptr %76, align 2, !tbaa !165
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %177

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !51
  switch i32 %81, label %177 [
    i32 7680, label %82
    i32 26624, label %84
  ]

82:                                               ; preds = %79
  %83 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.14, i16 noundef signext 0, ptr noundef null) #25
  br label %373

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %86 = load ptr, ptr %85, align 8, !tbaa !56
  %87 = icmp eq ptr %86, null
  br i1 %87, label %177, label %88

88:                                               ; preds = %84
  %89 = tail call i32 @RNA_property_type(ptr noundef nonnull %86) #25
  %90 = icmp eq i32 %89, 5
  br i1 %90, label %91, label %177

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %93 = load ptr, ptr %85, align 8, !tbaa !56
  %94 = tail call ptr @RNA_property_pointer_type(ptr noundef nonnull %92, ptr noundef %93) #25
  %95 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef %94) #25
  switch i16 %95, label %177 [
    i16 21827, label %96
    i16 21580, label %96
    i16 21057, label %96
    i16 19283, label %96
    i16 17741, label %96
    i16 16975, label %96
    i16 16973, label %96
    i16 16716, label %96
    i16 16707, label %96
  ]

96:                                               ; preds = %91, %91, %91, %91, %91, %91, %91, %91, %91
  %97 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.15, i16 noundef signext 0, ptr noundef null) #25
  switch i16 %95, label %177 [
    i16 21827, label %373
    i16 21580, label %373
    i16 21057, label %373
    i16 19283, label %373
    i16 17741, label %373
    i16 16975, label %373
    i16 16973, label %373
    i16 16716, label %373
    i16 16707, label %373
  ]

98:                                               ; preds = %21, %58
  %99 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %100 = load i16, ptr %99, align 2, !tbaa !164
  %101 = icmp eq i16 %100, 1
  br i1 %101, label %177, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %104 = load i16, ptr %103, align 2, !tbaa !165
  %105 = icmp eq i16 %104, 1
  br i1 %105, label %177, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !151
  %109 = icmp eq i16 %108, 1
  br i1 %109, label %110, label %177

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %112 = load i16, ptr %111, align 4, !tbaa !166
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %116 = load i16, ptr %115, align 8, !tbaa !167
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @ui_but_anim_clear_keyframe(ptr noundef %0) #25
  br label %121

119:                                              ; preds = %114
  tail call void @ui_but_anim_delete_keyframe(ptr noundef %0) #25
  br label %121

120:                                              ; preds = %110
  tail call void @ui_but_anim_insert_keyframe(ptr noundef %0) #25
  br label %121

121:                                              ; preds = %118, %119, %120
  %122 = getelementptr inbounds %struct.uiHandleButtonData, ptr %8, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %123) #25
  br label %373

124:                                              ; preds = %21, %58
  %125 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %126 = load i16, ptr %125, align 2, !tbaa !164
  %127 = icmp eq i16 %126, 1
  br i1 %127, label %177, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %130 = load i16, ptr %129, align 2, !tbaa !165
  %131 = icmp eq i16 %130, 1
  br i1 %131, label %177, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %134 = load i16, ptr %133, align 8, !tbaa !167
  %135 = icmp eq i16 %134, 1
  br i1 %135, label %177, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !151
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %177

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %142 = load i16, ptr %141, align 4, !tbaa !166
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call void @ui_but_anim_remove_driver(ptr noundef %0) #25
  br label %146

145:                                              ; preds = %140
  tail call void @ui_but_anim_add_driver(ptr noundef %0) #25
  br label %146

146:                                              ; preds = %145, %144
  %147 = getelementptr inbounds %struct.uiHandleButtonData, ptr %8, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %148) #25
  br label %373

149:                                              ; preds = %58, %21
  %150 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %151 = load i16, ptr %150, align 2, !tbaa !164
  %152 = icmp eq i16 %151, 1
  br i1 %152, label %177, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %155 = load i16, ptr %154, align 2, !tbaa !165
  %156 = icmp eq i16 %155, 1
  br i1 %156, label %177, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %159 = load i16, ptr %158, align 8, !tbaa !167
  %160 = icmp eq i16 %159, 1
  br i1 %160, label %177, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %163 = load i16, ptr %162, align 2, !tbaa !151
  %164 = icmp eq i16 %163, 1
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %167 = load i16, ptr %166, align 4, !tbaa !166
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void @ui_but_anim_remove_keyingset(ptr noundef %0) #25
  br label %171

170:                                              ; preds = %165
  tail call void @ui_but_anim_add_keyingset(ptr noundef %0) #25
  br label %171

171:                                              ; preds = %170, %169
  %172 = getelementptr inbounds %struct.uiHandleButtonData, ptr %8, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %173) #25
  br label %373

174:                                              ; preds = %26
  %175 = tail call fastcc zeroext i8 @ui_but_menu(ptr noundef %0, ptr noundef nonnull %2) #26, !range !168
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %373

177:                                              ; preds = %21, %58, %60, %98, %102, %106, %124, %128, %132, %136, %149, %153, %157, %161, %91, %96, %79, %84, %88, %63, %67, %71, %75, %26, %174, %59, %19
  %178 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %179 = load i16, ptr %178, align 8, !tbaa !150
  switch i16 %179, label %200 [
    i16 1, label %180
    i16 220, label %180
  ]

180:                                              ; preds = %177, %177
  %181 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 45
  %182 = load i8, ptr %181, align 4, !tbaa !169
  %183 = icmp eq i8 %182, 1
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 43
  %186 = load ptr, ptr %185, align 8, !tbaa !170
  %187 = icmp eq ptr %186, null
  br i1 %187, label %200, label %188

188:                                              ; preds = %184
  tail call void @WM_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %186) #25
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %373

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 5
  %191 = load i32, ptr %190, align 4, !tbaa !171
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %195 = load ptr, ptr %194, align 8, !tbaa !172
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 15
  %199 = load ptr, ptr %198, align 8, !tbaa !173
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %199) #25
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %373

200:                                              ; preds = %177, %184, %193, %189
  %201 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %202 = load i32, ptr %201, align 8, !tbaa !51
  %203 = add i32 %202, -512
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 23)
  switch i32 %204, label %259 [
    i32 0, label %205
    i32 23, label %207
    i32 45, label %209
    i32 36, label %211
    i32 2, label %211
    i32 12, label %211
    i32 33, label %211
    i32 8, label %211
    i32 37, label %211
    i32 38, label %211
    i32 17, label %213
    i32 54, label %215
    i32 4, label %217
    i32 13, label %219
    i32 39, label %257
    i32 35, label %221
    i32 27, label %223
    i32 9, label %223
    i32 1, label %223
    i32 46, label %223
    i32 50, label %223
    i32 52, label %223
    i32 47, label %225
    i32 48, label %227
    i32 22, label %255
    i32 5, label %229
    i32 40, label %229
    i32 51, label %231
    i32 10, label %233
    i32 18, label %233
    i32 26, label %233
    i32 19, label %235
    i32 14, label %237
    i32 30, label %245
    i32 29, label %247
    i32 31, label %249
    i32 25, label %251
    i32 42, label %253
    i32 21, label %255
  ]

205:                                              ; preds = %200
  %206 = tail call fastcc i32 @ui_do_but_BUT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

207:                                              ; preds = %200
  %208 = tail call fastcc i32 @ui_do_but_KEYEVT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

209:                                              ; preds = %200
  %210 = tail call fastcc i32 @ui_do_but_HOTKEYEVT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

211:                                              ; preds = %200, %200, %200, %200, %200, %200, %200
  %212 = tail call fastcc i32 @ui_do_but_TOG(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

213:                                              ; preds = %200
  %214 = tail call fastcc i32 @ui_do_but_SCROLL(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

215:                                              ; preds = %200
  %216 = tail call fastcc i32 @ui_do_but_GRIP(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

217:                                              ; preds = %200
  %218 = tail call fastcc i32 @ui_do_but_NUM(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

219:                                              ; preds = %200
  %220 = tail call fastcc i32 @ui_do_but_SLI(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

221:                                              ; preds = %200
  %222 = tail call fastcc i32 @ui_do_but_LISTROW(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

223:                                              ; preds = %200, %200, %200, %200, %200, %200
  %224 = tail call fastcc i32 @ui_do_but_EXIT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

225:                                              ; preds = %200
  %226 = tail call fastcc i32 @ui_do_but_HISTOGRAM(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

227:                                              ; preds = %200
  %228 = tail call fastcc i32 @ui_do_but_WAVEFORM(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

229:                                              ; preds = %200, %200
  %230 = tail call fastcc i32 @ui_do_but_TEX(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

231:                                              ; preds = %200
  %232 = tail call fastcc i32 @ui_do_but_SEARCH_UNLINK(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

233:                                              ; preds = %200, %200, %200
  %234 = tail call fastcc i32 @ui_do_but_BLOCK(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

235:                                              ; preds = %200
  %236 = tail call fastcc i32 @ui_do_but_BUT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

237:                                              ; preds = %200
  %238 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %239 = load float, ptr %238, align 8, !tbaa !175
  %240 = fcmp oeq float %239, -1.000000e+00
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = tail call fastcc i32 @ui_do_but_EXIT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

243:                                              ; preds = %237
  %244 = tail call fastcc i32 @ui_do_but_COLOR(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

245:                                              ; preds = %200
  %246 = tail call fastcc i32 @ui_do_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

247:                                              ; preds = %200
  %248 = tail call fastcc i32 @ui_do_but_COLORBAND(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

249:                                              ; preds = %200
  %250 = tail call fastcc i32 @ui_do_but_CURVE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

251:                                              ; preds = %200
  %252 = tail call fastcc i32 @ui_do_but_HSVCUBE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

253:                                              ; preds = %200
  %254 = tail call fastcc i32 @ui_do_but_HSVCIRCLE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

255:                                              ; preds = %200, %200
  %256 = tail call fastcc i32 @ui_do_but_LINK(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

257:                                              ; preds = %200
  %258 = tail call fastcc i32 @ui_do_but_TRACKPREVIEW(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #26, !range !174
  br label %259

259:                                              ; preds = %241, %243, %200, %257, %255, %253, %251, %249, %247, %245, %235, %233, %231, %229, %227, %225, %223, %221, %219, %217, %215, %213, %211, %209, %207, %205
  %260 = phi i32 [ 0, %200 ], [ %254, %253 ], [ %252, %251 ], [ %250, %249 ], [ %248, %247 ], [ %246, %245 ], [ %242, %241 ], [ %244, %243 ], [ %236, %235 ], [ %234, %233 ], [ %232, %231 ], [ %230, %229 ], [ %256, %255 ], [ %228, %227 ], [ %226, %225 ], [ %224, %223 ], [ %222, %221 ], [ %258, %257 ], [ %220, %219 ], [ %218, %217 ], [ %216, %215 ], [ %214, %213 ], [ %212, %211 ], [ %210, %209 ], [ %208, %207 ], [ %206, %205 ]
  %261 = load ptr, ptr %7, align 8, !tbaa !73
  %262 = icmp eq ptr %261, null
  br i1 %262, label %373, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 4
  %265 = load i32, ptr %264, align 4, !tbaa !90
  %266 = icmp eq i32 %265, 1
  %267 = icmp eq i32 %260, 0
  %268 = select i1 %266, i1 %267, i1 false
  %269 = load i16, ptr %178, align 8, !tbaa !150
  br i1 %268, label %270, label %284

270:                                              ; preds = %263
  %271 = icmp eq i16 %269, 223
  br i1 %271, label %272, label %284

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %274 = load i16, ptr %273, align 2, !tbaa !151
  %275 = icmp eq i16 %274, 1
  br i1 %275, label %276, label %287

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %278 = load i16, ptr %277, align 2, !tbaa !164
  %279 = icmp eq i16 %278, 0
  %280 = zext i1 %279 to i8
  tail call void @ui_set_but_default(ptr noundef %0, i8 noundef zeroext %280, i8 noundef zeroext 1) #25
  %281 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %282) #25
  %283 = load i16, ptr %178, align 8, !tbaa !150
  br label %284

284:                                              ; preds = %276, %263, %270
  %285 = phi i16 [ %269, %270 ], [ %283, %276 ], [ %269, %263 ]
  %286 = phi i32 [ 0, %270 ], [ 1, %276 ], [ %260, %263 ]
  switch i16 %285, label %287 [
    i16 4, label %292
    i16 17, label %292
  ]

287:                                              ; preds = %272, %284
  %288 = phi i32 [ %286, %284 ], [ 0, %272 ]
  %289 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 43
  %290 = load i32, ptr %289, align 8, !tbaa !176
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %373

292:                                              ; preds = %284, %284, %287
  %293 = phi i32 [ %286, %284 ], [ %286, %284 ], [ %288, %287 ]
  %294 = load i32, ptr %201, align 8, !tbaa !51
  switch i32 %294, label %373 [
    i32 2560, label %295
    i32 7168, label %295
  ]

295:                                              ; preds = %292, %292
  %296 = load i32, ptr %264, align 4, !tbaa !90
  %297 = add i32 %296, -5
  %298 = icmp ult i32 %297, 2
  br i1 %298, label %299, label %373

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 43
  %301 = load i32, ptr %300, align 8, !tbaa !176
  switch i32 %301, label %373 [
    i32 0, label %302
    i32 1, label %325
  ]

302:                                              ; preds = %299
  %303 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %304 = sdiv i16 %303, 4
  %305 = sitofp i16 %304 to float
  %306 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %307 = load float, ptr %306, align 8, !tbaa !177
  %308 = tail call float @sqrtf(float noundef %307) #25
  %309 = fdiv float %305, %308
  %310 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 43, i32 5
  %311 = tail call fastcc float @len_squared_v2(ptr noundef nonnull %310) #26
  %312 = fmul float %309, %309
  %313 = fcmp ogt float %311, %312
  br i1 %313, label %314, label %362

314:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i64 4575657221408423936, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %315 = call fastcc float @normalize_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %310) #26
  %316 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %5) #26
  %317 = tail call float @llvm.fabs.f32(float %316)
  %318 = fcmp ogt float %317, 7.500000e-01
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %321 = load i32, ptr %320, align 4, !tbaa !178
  %322 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 43, i32 7
  store i32 %321, ptr %322, align 4, !tbaa !179
  br label %323

323:                                              ; preds = %314, %319
  %324 = phi i32 [ 1, %319 ], [ 3, %314 ]
  store i32 %324, ptr %300, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %364

325:                                              ; preds = %299
  %326 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %327 = sdiv i16 %326, 4
  %328 = sitofp i16 %327 to float
  %329 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 12
  %330 = load float, ptr %329, align 8, !tbaa !177
  %331 = tail call float @sqrtf(float noundef %330) #25
  %332 = fdiv float %328, %331
  %333 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 11
  %334 = load ptr, ptr %333, align 8, !tbaa !108
  %335 = icmp eq ptr %334, null
  br i1 %335, label %340, label %336

336:                                              ; preds = %325
  %337 = load i32, ptr %264, align 4, !tbaa !90
  %338 = add i32 %337, -5
  %339 = icmp ult i32 %338, 2
  br i1 %339, label %361, label %340

340:                                              ; preds = %336, %325
  %341 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 43, i32 7
  %342 = load i32, ptr %341, align 4, !tbaa !179
  %343 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %344 = load i32, ptr %343, align 4, !tbaa !178
  %345 = sub nsw i32 %342, %344
  %346 = tail call i32 @llvm.abs.i32(i32 %345, i1 true)
  %347 = sitofp i32 %346 to float
  %348 = fcmp olt float %332, %347
  br i1 %348, label %349, label %362

349:                                              ; preds = %340
  %350 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 12
  %351 = load i32, ptr %350, align 8, !tbaa !180
  %352 = sub nsw i32 %351, %344
  %353 = tail call i32 @llvm.abs.i32(i32 %352, i1 true)
  %354 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 13
  %355 = load i32, ptr %354, align 4, !tbaa !34
  %356 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %357 = load i32, ptr %356, align 8, !tbaa !42
  %358 = sub nsw i32 %355, %357
  %359 = tail call i32 @llvm.abs.i32(i32 %358, i1 true)
  %360 = icmp ugt i32 %353, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %336, %349
  tail call fastcc void @ui_multibut_states_create(ptr noundef nonnull %2, ptr noundef nonnull %261) #26
  store i32 2, ptr %300, align 8, !tbaa !176
  br label %373

362:                                              ; preds = %302, %349, %340
  %363 = load i32, ptr %300, align 8, !tbaa !176
  br label %364

364:                                              ; preds = %362, %323
  %365 = phi i32 [ %363, %362 ], [ %324, %323 ]
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = tail call fastcc zeroext i8 @ui_multibut_states_tag(ptr noundef nonnull %2, ptr noundef nonnull %261, ptr noundef nonnull %3) #26, !range !168
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.uiHandleButtonData, ptr %261, i64 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %372) #25
  br label %373

373:                                              ; preds = %299, %361, %259, %295, %367, %370, %364, %287, %292, %174, %96, %96, %96, %96, %96, %96, %96, %96, %96, %4, %197, %188, %171, %146, %121, %82, %52
  %374 = phi i32 [ 1, %52 ], [ 1, %188 ], [ 1, %197 ], [ 1, %82 ], [ 1, %96 ], [ 1, %171 ], [ 1, %146 ], [ 1, %121 ], [ 0, %4 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %96 ], [ 1, %174 ], [ %293, %295 ], [ %293, %292 ], [ %288, %287 ], [ %293, %364 ], [ %293, %370 ], [ %293, %367 ], [ %260, %259 ], [ %293, %361 ], [ %293, %299 ]
  ret i32 %374
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_activate_over(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_execute_begin(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  store ptr %6, ptr %3, align 8, !tbaa !61
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %8 = tail call ptr %7(i64 noundef 328, ptr noundef nonnull @.str.5) #25
  store ptr %8, ptr %5, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %8, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_execute_end(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef %8, i8 noundef zeroext 1) #26
  %9 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call fastcc void @ui_apply_autokey(ptr noundef %0, ptr noundef nonnull %2) #26
  br label %14

14:                                               ; preds = %13, %4
  %15 = load ptr, ptr %7, align 8, !tbaa !73
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 1) #26
  store ptr %3, ptr %7, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_button(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !PGOFuncName !181 {
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  %8 = load i8, ptr %7, align 4, !tbaa !92
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 8
  %12 = load i8, ptr %11, align 2, !tbaa !182
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %19(ptr noundef nonnull %16) #25
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  store ptr %22, ptr %15, align 8, !tbaa !108
  store ptr null, ptr %21, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 14
  %24 = load double, ptr %23, align 8, !tbaa !183
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  store double %24, ptr %25, align 8, !tbaa !184
  store double 0.000000e+00, ptr %23, align 8, !tbaa !183
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 16
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 17
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %27) #26
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 17, i64 2
  store float 0.000000e+00, ptr %28, align 4, !tbaa !85
  store <2 x float> zeroinitializer, ptr %27, align 4, !tbaa !85
  br label %36

29:                                               ; preds = %5
  %30 = icmp eq i8 %4, 0
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 9
  br i1 %30, label %33, label %32

32:                                               ; preds = %29
  store i8 1, ptr %31, align 1, !tbaa !185
  br label %36

33:                                               ; preds = %29
  %34 = load i8, ptr %31, align 1, !tbaa !185
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %32, %33, %20
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 69
  %38 = load <2 x ptr>, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 71
  %40 = load <2 x ptr>, ptr %39, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 73
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  %43 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %37, i8 0, i64 40, i1 false)
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = add i32 %44, -512
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 23)
  switch i32 %46, label %68 [
    i32 0, label %47
    i32 5, label %48
    i32 51, label %48
    i32 40, label %48
    i32 36, label %49
    i32 2, label %49
    i32 12, label %49
    i32 33, label %49
    i32 8, label %49
    i32 37, label %49
    i32 38, label %49
    i32 1, label %50
    i32 35, label %50
    i32 17, label %51
    i32 54, label %51
    i32 4, label %51
    i32 13, label %51
    i32 10, label %52
    i32 18, label %52
    i32 26, label %52
    i32 14, label %53
    i32 19, label %58
    i32 30, label %59
    i32 25, label %59
    i32 42, label %59
    i32 29, label %60
    i32 31, label %61
    i32 23, label %62
    i32 45, label %62
    i32 21, label %63
    i32 22, label %63
    i32 46, label %64
    i32 47, label %65
    i32 48, label %66
    i32 39, label %67
  ]

47:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_BUT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

48:                                               ; preds = %36, %36, %36
  tail call fastcc void @ui_apply_but_TEX(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

49:                                               ; preds = %36, %36, %36, %36, %36, %36, %36
  tail call fastcc void @ui_apply_but_TOG(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

50:                                               ; preds = %36, %36
  tail call fastcc void @ui_apply_but_ROW(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

51:                                               ; preds = %36, %36, %36, %36
  tail call fastcc void @ui_apply_but_NUM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

52:                                               ; preds = %36, %36, %36
  tail call fastcc void @ui_apply_but_BLOCK(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

53:                                               ; preds = %36
  %54 = load i8, ptr %7, align 4, !tbaa !92
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @ui_apply_but_VEC(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

57:                                               ; preds = %53
  tail call fastcc void @ui_apply_but_BLOCK(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

58:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_BUTM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

59:                                               ; preds = %36, %36, %36
  tail call fastcc void @ui_apply_but_VEC(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

60:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_COLORBAND(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

61:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_CURVE(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

62:                                               ; preds = %36, %36
  tail call fastcc void @ui_apply_but_BUT(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

63:                                               ; preds = %36, %36
  tail call fastcc void @ui_apply_but_LINK(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

64:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_IMAGE(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

65:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_HISTOGRAM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

66:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_WAVEFORM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

67:                                               ; preds = %36
  tail call fastcc void @ui_apply_but_TRACKPREVIEW(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %68

68:                                               ; preds = %36, %56, %57, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %52, %51, %50, %49, %48, %47
  %69 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 1
  %70 = load i8, ptr %69, align 4, !tbaa !96
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43
  %74 = load i32, ptr %73, align 8, !tbaa !176
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8, ptr %7, align 4, !tbaa !92
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call fastcc void @ui_multibut_restore(ptr noundef nonnull %3, ptr noundef %1) #26
  br label %81

80:                                               ; preds = %76
  tail call fastcc void @ui_multibut_states_apply(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #26
  br label %81

81:                                               ; preds = %72, %80, %79, %68
  store <2 x ptr> %38, ptr %37, align 8, !tbaa !61
  store <2 x ptr> %40, ptr %39, align 8, !tbaa !61
  store ptr %42, ptr %41, align 8, !tbaa !186
  br label %82

82:                                               ; preds = %33, %10, %81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_autokey(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !187 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = sitofp i32 %5 to float
  tail call void @ui_but_anim_autokey(ptr noundef %0, ptr noundef %1, ptr noundef %3, float noundef %6) #25
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %8) #25
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %15 = load ptr, ptr %7, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 56
  %17 = load i32, ptr %16, align 8, !tbaa !118
  %18 = tail call ptr @WM_prop_pystring_assign(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %15, i32 noundef %17) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @CTX_wm_reports(ptr noundef %0) #25
  tail call void @BKE_report(ptr noundef %21, i32 noundef 8, ptr noundef nonnull %18) #25
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %22(ptr noundef nonnull %18) #25
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251789312, ptr noundef null) #25
  br label %23

23:                                               ; preds = %20, %13, %10, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @ui_block_calculate_pie_segment(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53
  %6 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !188
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 2
  %11 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 1
  %12 = select i1 %9, ptr %10, ptr %11
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %12) #26
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #26
  %13 = call fastcc float @normalize_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %4) #26
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !189
  %15 = sitofp i16 %14 to float
  %16 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !190
  %17 = fmul float %16, %15
  %18 = fcmp olt float %13, %17
  %19 = load i32, ptr %6, align 8, !tbaa !188
  %20 = and i32 %19, -9
  %21 = select i1 %18, i32 8, i32 0
  %22 = or disjoint i32 %20, %21
  store i32 %22, ptr %6, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !191 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !192 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !193 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #26
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #25
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #26
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_add_region_handlers(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @WM_event_remove_ui_handler(ptr noundef %0, ptr noundef nonnull @ui_handler_region, ptr noundef nonnull @ui_handler_remove_region, ptr noundef null, i8 noundef zeroext 0) #25
  %2 = tail call ptr @WM_event_add_ui_handler(ptr noundef null, ptr noundef %0, ptr noundef nonnull @ui_handler_region, ptr noundef nonnull @ui_handler_remove_region, ptr noundef null, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ui_handler_region(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !194 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %8 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %7) #26, !range !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = tail call ptr @ui_but_find_activated(ptr noundef nonnull %4) #26
  %12 = tail call i32 @ui_handler_panel_region(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @ui_handle_list_event(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #26, !range !174
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = tail call fastcc i32 @ui_handle_button_event(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #26
  br label %22

21:                                               ; preds = %17
  tail call fastcc void @ui_handle_button_over(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #26
  br label %22

22:                                               ; preds = %10, %19, %21, %14
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ], [ 1, %14 ], [ %12, %10 ]
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !150
  %26 = icmp eq i16 %25, 4
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !178
  %30 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !180
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %37 = load i32, ptr %36, align 4, !tbaa !34
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %27
  tail call fastcc void @ui_blocks_set_tooltips(ptr noundef nonnull %4, i8 noundef zeroext 1) #26
  br label %40

40:                                               ; preds = %39, %33, %22
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  br label %41

41:                                               ; preds = %3, %6, %40
  %42 = phi i32 [ %23, %40 ], [ 0, %6 ], [ 0, %3 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_handler_remove_region(ptr noundef %0, ptr nocapture readnone %1) #3 !PGOFuncName !195 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 21
  tail call void @uiFreeBlocks(ptr noundef %0, ptr noundef nonnull %6) #25
  %7 = tail call ptr @CTX_wm_screen(ptr noundef %0) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 4
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %10, ptr noundef nonnull %3) #25
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  br label %14

14:                                               ; preds = %9, %13, %5, %2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_ui_handler(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_add_popup_handlers(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = tail call ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ui_handler_popup, ptr noundef nonnull @ui_handler_remove_popup, ptr noundef %2, i8 noundef zeroext %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ui_handler_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !PGOFuncName !196 {
  %4 = tail call ptr @CTX_wm_menu(ptr noundef %0) #25
  %5 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef %5) #25
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !150
  %8 = tail call fastcc i32 @ui_handle_menus_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #26
  %9 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  %14 = getelementptr inbounds i8, ptr %2, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa.struct !197
  %16 = getelementptr inbounds i8, ptr %2, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa.struct !198
  %18 = getelementptr inbounds i8, ptr %2, i64 48
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !199
  %20 = getelementptr inbounds i8, ptr %2, i64 120
  %21 = load ptr, ptr %20, align 8, !tbaa.struct !200
  %22 = getelementptr inbounds i8, ptr %2, i64 144
  %23 = load i32, ptr %22, align 8, !tbaa.struct !201
  %24 = load i32, ptr %9, align 8, !tbaa.struct !202
  %25 = getelementptr inbounds i8, ptr %2, i64 156
  %26 = load i32, ptr %25, align 4, !tbaa.struct !203
  %27 = load ptr, ptr %2, align 8, !tbaa !115
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 27
  %31 = load i32, ptr %30, align 8, !tbaa !99
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 53, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !204
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 20
  store i16 %37, ptr %38, align 2, !tbaa !205
  br label %39

39:                                               ; preds = %34, %12
  tail call void @ui_popup_block_free(ptr noundef %0, ptr noundef nonnull %2) #25
  %40 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 29
  tail call void @UI_remove_popup_handlers(ptr noundef nonnull %40, ptr noundef nonnull %2) #26
  tail call void @WM_event_free_ui_handler_all(ptr noundef %0, ptr noundef nonnull %40, ptr noundef nonnull @ui_handler_region_drag_toggle, ptr noundef nonnull @ui_handler_region_drag_toggle_remove) #25
  %41 = and i32 %24, 34
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = icmp eq ptr %15, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  tail call void %15(ptr noundef %0, ptr noundef %19, i32 noundef %26) #25
  br label %46

46:                                               ; preds = %45, %43
  %47 = icmp eq ptr %21, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = trunc i32 %23 to i16
  %50 = tail call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef nonnull %21, i16 noundef signext %49, ptr noundef null) #25
  br label %54

51:                                               ; preds = %39
  %52 = icmp eq ptr %17, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call void %17(ptr noundef %0, ptr noundef %19) #25
  br label %54

54:                                               ; preds = %51, %53, %46, %48
  tail call void @WM_event_add_mousemove(ptr noundef %0) #25
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  br i1 %33, label %78, label %72

55:                                               ; preds = %3
  %56 = load i16, ptr %6, align 8, !tbaa !150
  %57 = icmp eq i16 %56, 4
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !178
  %61 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %62 = load i32, ptr %61, align 8, !tbaa !180
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !42
  %67 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %64, %58
  %71 = load ptr, ptr %2, align 8, !tbaa !115
  tail call fastcc void @ui_blocks_set_tooltips(ptr noundef %71, i8 noundef zeroext 1) #26
  br label %77

72:                                               ; preds = %54
  %73 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.wmWindow, ptr %73, i64 0, i32 20
  store i16 0, ptr %76, align 2, !tbaa !205
  br label %78

77:                                               ; preds = %55, %64, %70
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  br label %78

78:                                               ; preds = %72, %75, %77, %54
  %79 = icmp ne i16 %7, 20515
  %80 = zext i1 %79 to i32
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %4) #25
  ret i32 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_handler_remove_popup(ptr noundef %0, ptr noundef %1) #3 !PGOFuncName !207 {
  tail call void @ui_popup_block_free(ptr noundef %0, ptr noundef %1) #25
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_remove_popup_handlers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @WM_event_remove_ui_handler(ptr noundef %0, ptr noundef nonnull @ui_handler_popup, ptr noundef nonnull @ui_handler_remove_popup, ptr noundef %1, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_remove_popup_handlers_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @WM_event_free_ui_handler_all(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ui_handler_popup, ptr noundef nonnull @ui_handler_remove_popup) #25
  ret void
}

; Function Attrs: optsize
declare void @WM_event_free_ui_handler_all(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @UI_textbutton_activate_rna(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %11

8:                                                ; preds = %33, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11, !llvm.loop !208

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %33
  %17 = phi ptr [ %34, %33 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = icmp eq i32 %19, 3072
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 54, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %23) #25
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %3) #28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %16, %29, %25, %21
  %34 = load ptr, ptr %17, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %8, label %16, !llvm.loop !209

36:                                               ; preds = %29
  %37 = tail call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %17) #25
  br label %38

38:                                               ; preds = %8, %4, %36
  %39 = phi i8 [ 1, %36 ], [ 0, %4 ], [ 0, %8 ]
  ret i8 %39
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @UI_textbutton_activate_but(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  br label %12

9:                                                ; preds = %23, %12
  %10 = load ptr, ptr %13, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !llvm.loop !210

12:                                               ; preds = %7, %9
  %13 = phi ptr [ %10, %9 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %17

17:                                               ; preds = %12, %23
  %18 = phi ptr [ %24, %23 ], [ %15, %12 ]
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 3072
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %20
  %24 = load ptr, ptr %18, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %9, label %17, !llvm.loop !211

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %1) #25
  br label %28

28:                                               ; preds = %9, %2, %26
  %29 = phi i8 [ 1, %26 ], [ 0, %2 ], [ 0, %9 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_button_clipboard_free() local_unnamed_addr #3 {
  tail call void @curvemapping_free_data(ptr noundef nonnull @but_copypaste_curve) #25
  ret void
}

; Function Attrs: optsize
declare void @curvemapping_free_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_str_find_next_char_utf8(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_strnlen_utf8(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !212 {
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !90
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %178, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 1
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !57
  br i1 %11, label %14, label %57

14:                                               ; preds = %10
  %15 = and i32 %13, -2
  store i32 %15, ptr %12, align 8, !tbaa !57
  tail call fastcc void @button_tooltip_timer_reset(ptr noundef %0, ptr noundef nonnull %1) #26
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !51
  switch i32 %17, label %64 [
    i32 9728, label %18
    i32 13824, label %18
  ]

18:                                               ; preds = %14, %14
  %19 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 21
  %20 = load i8, ptr %19, align 8, !tbaa !159
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 22
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 31
  %30 = load i8, ptr %29, align 8, !tbaa !157
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %49, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.uiBlock, ptr %28, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !99
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i32 %17, 9728
  %38 = or i1 %37, %36
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !214
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39, %32
  %44 = phi ptr [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 37), %32 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 36), %39 ]
  %45 = load i16, ptr %44, align 2, !tbaa !84
  %46 = zext nneg i16 %45 to i32
  %47 = mul nuw nsw i32 %46, 5
  %48 = icmp sgt i16 %45, -1
  br i1 %48, label %49, label %64

49:                                               ; preds = %26, %43
  %50 = phi i32 [ %47, %43 ], [ 1, %26 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !155
  %52 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = sitofp i32 %50 to double
  %55 = fmul double %54, 2.000000e-02
  %56 = tail call ptr @WM_event_add_timer(ptr noundef %51, ptr noundef %53, i32 noundef 272, double noundef %55) #25
  store ptr %56, ptr %23, align 8, !tbaa !213
  br label %64

57:                                               ; preds = %10
  %58 = or i32 %13, 1
  store i32 %58, ptr %12, align 8, !tbaa !57
  tail call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef nonnull %1) #26
  %59 = icmp eq i32 %2, 6
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, ptr %7, align 4, !tbaa !90
  %62 = icmp eq i32 %61, 7
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call fastcc void @ui_textedit_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  br label %82

64:                                               ; preds = %39, %18, %22, %14, %49, %43, %60, %57
  %65 = load i32, ptr %7, align 4, !tbaa !90
  %66 = icmp eq i32 %65, 6
  %67 = icmp ne i32 %2, 7
  %68 = and i1 %67, %66
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = icmp eq i32 %65, 7
  %71 = icmp ne i32 %2, 6
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %64
  tail call fastcc void @ui_textedit_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  br label %74

74:                                               ; preds = %73, %69
  %75 = icmp eq i32 %2, 5
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef nonnull %1) #26, !range !168
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  tail call void @WM_cursor_grab_enable(ptr noundef %80, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #25
  br label %81

81:                                               ; preds = %76, %79
  tail call fastcc void @ui_numedit_begin(ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  br label %114

82:                                               ; preds = %63, %74
  %83 = load i32, ptr %7, align 4, !tbaa !90
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  tail call fastcc void @ui_numedit_end(ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  %86 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !57
  %88 = and i32 %87, 32768
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void @WM_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.7) #25
  br label %91

91:                                               ; preds = %90, %85
  %92 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef nonnull %1) #26, !range !168
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 38
  %96 = load float, ptr %95, align 8, !tbaa !85
  %97 = fcmp une float %96, 0x47EFFFFFE0000000
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %99 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !104
  %101 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %102 = load ptr, ptr %101, align 8, !tbaa !94
  %103 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 38, i64 1
  tail call void @ui_block_to_window_fl(ptr noundef %100, ptr noundef %102, ptr noundef nonnull %95, ptr noundef nonnull %103) #25
  %104 = load <2 x float>, ptr %95, align 8, !tbaa !85
  %105 = fptosi <2 x float> %104 to <2 x i32>
  store <2 x i32> %105, ptr %4, align 8, !tbaa !43
  %106 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !95
  call void @WM_cursor_grab_disable(ptr noundef %107, ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %111

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !95
  tail call void @WM_cursor_grab_disable(ptr noundef %110, ptr noundef null) #25
  br label %111

111:                                              ; preds = %82, %98, %108, %91
  %112 = icmp eq i32 %2, 8
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  call fastcc void @ui_blockopen_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  br label %126

114:                                              ; preds = %81, %111
  %115 = load i32, ptr %7, align 4, !tbaa !90
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call fastcc void @ui_blockopen_end(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  br label %118

118:                                              ; preds = %114, %117
  %119 = icmp eq i32 %2, 2
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = load ptr, ptr %6, align 8, !tbaa !155
  %122 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  %124 = call ptr @WM_event_add_timer(ptr noundef %121, ptr noundef %123, i32 noundef 272, double noundef 2.000000e-02) #25
  %125 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 10
  store ptr %124, ptr %125, align 8, !tbaa !215
  br label %134

126:                                              ; preds = %113, %118
  %127 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !215
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %6, align 8, !tbaa !155
  %132 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !95
  call void @WM_event_remove_timer(ptr noundef %131, ptr noundef %133, ptr noundef nonnull %128) #25
  store ptr null, ptr %127, align 8, !tbaa !215
  br label %134

134:                                              ; preds = %126, %130, %120
  %135 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %136 = load ptr, ptr %135, align 8, !tbaa !94
  %137 = getelementptr inbounds %struct.uiBlock, ptr %136, i64 0, i32 46
  %138 = load ptr, ptr %137, align 8, !tbaa !98
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %138, i64 0, i32 4
  %142 = load i8, ptr %141, align 1, !tbaa !216
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %140, %134
  %145 = call fastcc zeroext i8 @button_modal_state(i32 noundef %2) #26, !range !168
  %146 = icmp eq i8 %145, 0
  %147 = load i32, ptr %7, align 4, !tbaa !90
  %148 = call fastcc zeroext i8 @button_modal_state(i32 noundef %147) #26, !range !168
  %149 = icmp eq i8 %148, 0
  br i1 %146, label %156, label %150

150:                                              ; preds = %144
  br i1 %149, label %151, label %161

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !95
  %154 = getelementptr inbounds %struct.wmWindow, ptr %153, i64 0, i32 29
  %155 = call ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef nonnull %154, ptr noundef nonnull @ui_handler_region_menu, ptr noundef null, ptr noundef nonnull %6, i8 noundef zeroext 0) #25
  br label %161

156:                                              ; preds = %144
  br i1 %149, label %161, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !95
  %160 = getelementptr inbounds %struct.wmWindow, ptr %159, i64 0, i32 29
  call void @WM_event_remove_ui_handler(ptr noundef nonnull %160, ptr noundef nonnull @ui_handler_region_menu, ptr noundef null, ptr noundef nonnull %6, i8 noundef zeroext 1) #25
  br label %161

161:                                              ; preds = %151, %150, %157, %156, %140
  %162 = icmp eq i32 %2, 9
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !57
  %166 = and i32 %165, -2
  store i32 %166, ptr %164, align 8, !tbaa !57
  store i32 9, ptr %7, align 4, !tbaa !90
  br label %174

167:                                              ; preds = %161
  store i32 %2, ptr %7, align 4, !tbaa !90
  switch i32 %2, label %174 [
    i32 10, label %175
    i32 1, label %168
  ]

168:                                              ; preds = %167
  %169 = load ptr, ptr %135, align 8, !tbaa !94
  %170 = getelementptr inbounds %struct.uiBlock, ptr %169, i64 0, i32 27
  %171 = load i32, ptr %170, align 8, !tbaa !99
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %163, %167, %168
  call void @ui_check_but(ptr noundef nonnull %1) #25
  br label %175

175:                                              ; preds = %167, %168, %174
  %176 = getelementptr inbounds %struct.uiHandleButtonData, ptr %6, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !104
  call void @ED_region_tag_redraw(ptr noundef %177) #25
  br label %178

178:                                              ; preds = %3, %175
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_multibut_free(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !217 {
  %3 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 43, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  tail call void @BLI_linklist_freeN(ptr noundef %4) #25
  store ptr null, ptr %3, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 43, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @UI_butstore_free(ptr noundef %1, ptr noundef nonnull %6) #25
  store ptr null, ptr %5, align 8, !tbaa !219
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_undo(ptr noundef %0) unnamed_addr #3 !PGOFuncName !220 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !51
  switch i32 %8, label %11 [
    i32 11264, label %19
    i32 11776, label %19
    i32 5632, label %9
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 17
  %13 = load i8, ptr %12, align 8, !tbaa !68
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 42
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6, %6, %9, %15
  %20 = phi ptr [ %10, %9 ], [ @.str.11, %6 ], [ @.str.11, %6 ], [ %17, %15 ]
  %21 = load i8, ptr %20, align 1, !tbaa !68
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %11, %23, %19
  %25 = phi ptr [ @.str.12, %23 ], [ %20, %19 ], [ %12, %11 ]
  %26 = tail call fastcc ptr @ui_afterfunc_new() #26
  %27 = getelementptr inbounds %struct.uiAfterFunc, ptr %26, i64 0, i32 22
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %25, i64 noundef 64) #25
  br label %29

29:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: optsize
declare void @ui_popup_menu_memory_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_blocks_set_tooltips(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #15 !PGOFuncName !222 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp eq i8 %1, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %6, %8 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 37
  store i8 %10, ptr %13, align 2, !tbaa !106
  %14 = load ptr, ptr %12, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !223

16:                                               ; preds = %11, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @ui_check_but(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @button_tooltip_timer_reset(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !224 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  tail call void @WM_event_remove_timer(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %7) #25
  store ptr null, ptr %6, align 8, !tbaa !225
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !226
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = and i32 %19, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.uiBlock, ptr %24, i64 0, i32 37
  %26 = load i8, ptr %25, align 2, !tbaa !106
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !227
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  %36 = tail call ptr @WM_event_add_timer(ptr noundef %33, ptr noundef %35, i32 noundef 272, double noundef 5.000000e-01) #25
  store ptr %36, ptr %6, align 8, !tbaa !225
  br label %37

37:                                               ; preds = %22, %32, %28, %17
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !230 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !155
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  tail call void @WM_event_remove_timer(ptr noundef %11, ptr noundef %13, ptr noundef nonnull %8) #25
  store ptr null, ptr %7, align 8, !tbaa !225
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !231
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @ui_tooltip_free(ptr noundef %0, ptr noundef nonnull %16) #25
  store ptr null, ptr %15, align 8, !tbaa !231
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 22
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !tbaa !155
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  tail call void @WM_event_remove_timer(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %21) #25
  store ptr null, ptr %20, align 8, !tbaa !213
  br label %27

27:                                               ; preds = %19, %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_textedit_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !232 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %8(ptr noundef nonnull %5) #25
  store ptr null, ptr %4, align 8, !tbaa !108
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 9
  %11 = load i8, ptr %10, align 1, !tbaa !185
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %14, align 4, !tbaa !92
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %16, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #26
  store i8 0, ptr %14, align 4, !tbaa !92
  store i8 0, ptr %10, align 1, !tbaa !185
  br label %17

17:                                               ; preds = %13, %9
  %18 = tail call i32 @ui_get_but_string_max_length(ptr noundef %1) #25
  %19 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 23
  store i32 %18, ptr %19, align 8, !tbaa !233
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %21 = sext i32 %18 to i64
  %22 = add nsw i64 %21, 1
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.8) #25
  store ptr %23, ptr %4, align 8, !tbaa !108
  %24 = load i32, ptr %19, align 8, !tbaa !233
  %25 = sext i32 %24 to i64
  tail call void @ui_get_but_string(ptr noundef %1, ptr noundef %23, i64 noundef %25) #25
  %26 = tail call zeroext i8 @ui_is_but_float(ptr noundef %1) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %17
  %29 = tail call zeroext i8 @ui_is_but_unit(ptr noundef %1) #25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 8, !tbaa !108
  %33 = tail call i32 @BLI_str_rstrip_float_zero(ptr noundef %32, i8 noundef zeroext 0) #25
  br label %34

34:                                               ; preds = %31, %28, %17
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !51
  switch i32 %36, label %41 [
    i32 2560, label %37
    i32 7168, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = load ptr, ptr %4, align 8, !tbaa !108
  %39 = load i32, ptr %19, align 8, !tbaa !233
  %40 = sext i32 %39 to i64
  tail call void @ui_convert_to_unit_alt_name(ptr noundef nonnull %1, ptr noundef %38, i64 noundef %40) #25
  br label %41

41:                                               ; preds = %34, %37
  %42 = load ptr, ptr %4, align 8, !tbaa !108
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #28
  %44 = shl i64 %43, 32
  %45 = ashr exact i64 %44, 32
  %46 = tail call ptr @BLI_strdupn(ptr noundef %42, i64 noundef %45) #25
  %47 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 12
  store ptr %46, ptr %47, align 8, !tbaa !109
  %48 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 24
  store i32 0, ptr %48, align 4, !tbaa !234
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 25
  store float 0.000000e+00, ptr %49, align 8, !tbaa !235
  %50 = load ptr, ptr %4, align 8, !tbaa !108
  %51 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  store ptr %50, ptr %51, align 8, !tbaa !64
  %52 = trunc i64 %43 to i16
  %53 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 12
  store i16 %52, ptr %53, align 4, !tbaa !65
  %54 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 13
  store i16 0, ptr %54, align 2, !tbaa !66
  %55 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 14
  store i16 %52, ptr %55, align 8, !tbaa !67
  %56 = load i32, ptr %35, align 8, !tbaa !51
  switch i32 %56, label %62 [
    i32 20992, label %57
    i32 26624, label %57
  ]

57:                                               ; preds = %41, %41
  %58 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !104
  %60 = tail call ptr @ui_searchbox_create(ptr noundef %0, ptr noundef %59, ptr noundef nonnull %1) #25
  %61 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 41
  store ptr %60, ptr %61, align 8, !tbaa !89
  tail call void @ui_searchbox_update(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %1, i8 noundef zeroext 1) #25
  br label %62

62:                                               ; preds = %41, %57
  %63 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !57
  %65 = and i32 %64, -65537
  store i32 %65, ptr %63, align 8, !tbaa !57
  tail call void @ui_check_but(ptr noundef nonnull %1) #25
  %66 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  tail call void @WM_cursor_modal_set(ptr noundef %66, i32 noundef 11) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_textedit_end(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !236 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @ui_is_but_utf8(ptr noundef nonnull %1) #26, !range !168
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #28
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @BLI_utf8_invalid_strip(ptr noundef %10, i32 noundef %12) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull @__func__.ui_textedit_end, i32 noundef %13) #26
  br label %17

17:                                               ; preds = %8, %15, %5
  %18 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 41
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  %23 = load i8, ptr %22, align 4, !tbaa !92
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = tail call zeroext i8 @ui_searchbox_apply(ptr noundef nonnull %1, ptr noundef nonnull %19) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 8, !tbaa !89
  %30 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = tail call i32 @ui_searchbox_find_index(ptr noundef %29, ptr noundef %31) #25
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  store i8 1, ptr %22, align 4, !tbaa !92
  %35 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 7
  store i8 1, ptr %35, align 1, !tbaa !100
  br label %36

36:                                               ; preds = %25, %28, %34, %21
  %37 = load ptr, ptr %18, align 8, !tbaa !89
  tail call void @ui_searchbox_free(ptr noundef %0, ptr noundef %37) #25
  store ptr null, ptr %18, align 8, !tbaa !89
  br label %38

38:                                               ; preds = %36, %17
  %39 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 69
  store ptr null, ptr %39, align 8, !tbaa !64
  %40 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 12
  store i16 -1, ptr %40, align 4, !tbaa !65
  br label %41

41:                                               ; preds = %38, %3
  %42 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  tail call void @WM_cursor_modal_restore(ptr noundef %42) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ui_is_a_warp_but(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !237 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !214
  %3 = and i32 %2, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !51
  switch i32 %7, label %8 [
    i32 2560, label %9
    i32 7168, label %9
    i32 22016, label %9
    i32 20480, label %9
    i32 13312, label %9
    i32 16384, label %9
  ]

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %5, %5, %5, %5, %5, %5, %8
  %10 = phi i8 [ 0, %8 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @WM_cursor_grab_enable(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_numedit_begin(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !238 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  switch i32 %4, label %18 [
    i32 16384, label %5
    i32 15360, label %9
    i32 15872, label %14
    i32 13312, label %14
    i32 22016, label %14
    i32 7680, label %14
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 73
  store ptr %7, ptr %8, align 8, !tbaa !186
  br label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 18
  store ptr %11, ptr %12, align 8, !tbaa !239
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 72
  store ptr %11, ptr %13, align 8, !tbaa !240
  br label %36

14:                                               ; preds = %2, %2, %2, %2
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 17
  tail call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %15) #25
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #26
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 71
  store ptr %16, ptr %17, align 8, !tbaa !241
  br label %36

18:                                               ; preds = %2
  %19 = tail call double @ui_get_but_val(ptr noundef nonnull %0) #25
  %20 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 15
  store double %19, ptr %20, align 8, !tbaa !242
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 14
  store double %19, ptr %21, align 8, !tbaa !183
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  store double %19, ptr %22, align 8, !tbaa !184
  %23 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  store ptr %22, ptr %23, align 8, !tbaa !243
  %24 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %25 = load float, ptr %24, align 8, !tbaa !244
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %27 = load float, ptr %26, align 4, !tbaa !245
  %28 = fsub float %27, %25
  %29 = fcmp oeq float %28, 0.000000e+00
  %30 = fptrunc double %19 to float
  %31 = fsub float %30, %25
  %32 = fdiv float %31, %28
  %33 = select i1 %29, float 0.000000e+00, float %32
  %34 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 36
  store float %33, ptr %34, align 8, !tbaa !246
  %35 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 35
  store float %33, ptr %35, align 4, !tbaa !247
  br label %36

36:                                               ; preds = %9, %18, %14, %5
  %37 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 0, ptr %37, align 4, !tbaa !248
  %38 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 33
  store i8 1, ptr %38, align 1, !tbaa !249
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ui_numedit_end(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 !PGOFuncName !250 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 70
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !251
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store i32 0, ptr %5, align 4, !tbaa !252
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 0, ptr %6, align 4, !tbaa !248
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 37
  store ptr null, ptr %7, align 8, !tbaa !253
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 34
  store i32 0, ptr %8, align 8, !tbaa !254
  ret void
}

; Function Attrs: optsize
declare void @WM_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_block_to_window_fl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_cursor_grab_disable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_blockopen_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !255 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = add i32 %5, -5632
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 21)
  switch i32 %7, label %64 [
    i32 2, label %8
    i32 4, label %8
    i32 0, label %41
    i32 1, label %21
  ]

8:                                                ; preds = %3, %3
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !256
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 52
  %14 = load ptr, ptr %13, align 8, !tbaa !257
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !172
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !258
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 17
  tail call void @ui_get_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %22) #25
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %22) #26
  %24 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 71
  store ptr %23, ptr %24, align 8, !tbaa !241
  br label %28

25:                                               ; preds = %18, %12
  %26 = phi ptr [ %16, %12 ], [ %20, %18 ]
  %27 = icmp eq ptr %14, null
  br i1 %27, label %64, label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %1, %21 ], [ %26, %25 ]
  %30 = phi ptr [ @ui_block_func_COLOR, %21 ], [ null, %25 ]
  %31 = phi ptr [ null, %21 ], [ %14, %25 ]
  %32 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !104
  %34 = tail call ptr @ui_popup_block_create(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %1, ptr noundef %31, ptr noundef %30, ptr noundef %29) #25
  %35 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 39
  store ptr %34, ptr %35, align 8, !tbaa !74
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = getelementptr inbounds %struct.uiBlock, ptr %37, i64 0, i32 46
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %58

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 53
  %43 = load ptr, ptr %42, align 8, !tbaa !256
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %8, %41
  %46 = phi ptr [ %43, %41 ], [ %10, %8 ]
  %47 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !172
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !104
  %51 = tail call ptr @ui_popup_menu_create(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %1, ptr noundef nonnull %46, ptr noundef %48) #25
  %52 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 39
  store ptr %51, ptr %52, align 8, !tbaa !74
  %53 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %54 = load ptr, ptr %53, align 8, !tbaa !94
  %55 = getelementptr inbounds %struct.uiBlock, ptr %54, i64 0, i32 46
  %56 = load ptr, ptr %55, align 8, !tbaa !98
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %45, %28
  %59 = phi ptr [ %39, %28 ], [ %56, %45 ]
  %60 = phi ptr [ %34, %28 ], [ %51, %45 ]
  %61 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %59, i64 0, i32 4
  %62 = load i8, ptr %61, align 1, !tbaa !216
  %63 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %60, i64 0, i32 4
  store i8 %62, ptr %63, align 1, !tbaa !216
  br label %64

64:                                               ; preds = %58, %25, %3, %41, %45, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_blockopen_end(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !259 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = tail call double @PIL_check_seconds_timer() #25
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 33
  store double %7, ptr %10, align 8, !tbaa !158
  br label %11

11:                                               ; preds = %5, %3
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @ui_popup_block_free(ptr noundef %0, ptr noundef nonnull %13) #25
  store ptr null, ptr %12, align 8, !tbaa !74
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @button_modal_state(i32 noundef %0) unnamed_addr #17 !PGOFuncName !260 {
  %2 = add i32 %0, -3
  %3 = icmp ult i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ui_handler_region_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !261 {
  %4 = tail call ptr @CTX_wm_menu(ptr noundef %0) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %6 ]
  %10 = tail call ptr @ui_but_find_activated(ptr noundef %9) #26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 67
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !90
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %63

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = icmp eq i32 %20, 13824
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @ui_but_find_mouse_over(ptr noundef %9, ptr noundef %1) #26
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %10, %23
  %26 = or i1 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %19, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %23, i32 noundef 0) #26
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 8) #26
  br label %65

33:                                               ; preds = %27, %22, %18
  %34 = load i32, ptr %15, align 4, !tbaa !90
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.uiHandleButtonData, ptr %14, i64 0, i32 39
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @ui_handle_menus_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #26
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %37, align 8, !tbaa !74
  %44 = icmp ne ptr %43, null
  %45 = select i1 %44, i1 %42, i1 false
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !150
  %49 = icmp eq i16 %48, 272
  br i1 %49, label %54, label %65

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %52 = load i16, ptr %51, align 8, !tbaa !150
  %53 = icmp eq i16 %52, 272
  br i1 %53, label %61, label %65

54:                                               ; preds = %46
  %55 = icmp eq ptr %43, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %40, %54
  %57 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %43, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !103
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call fastcc void @ui_handle_button_return_submenu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #26
  br label %65

61:                                               ; preds = %50, %56, %54
  %62 = tail call fastcc i32 @ui_handle_button_event(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #26
  br label %65

63:                                               ; preds = %12, %33
  %64 = tail call fastcc i32 @ui_handle_button_event(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #26
  br label %65

65:                                               ; preds = %50, %32, %63, %60, %61, %46, %8
  %66 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !150
  %68 = icmp eq i16 %67, 4
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !178
  %72 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %73 = load i32, ptr %72, align 8, !tbaa !180
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !42
  %78 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %79 = load i32, ptr %78, align 4, !tbaa !34
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %69
  tail call fastcc void @ui_blocks_set_tooltips(ptr noundef %9, i8 noundef zeroext 1) #26
  br label %82

82:                                               ; preds = %81, %75, %65
  tail call fastcc void @ui_apply_but_funcs_after(ptr noundef %0) #26
  ret i32 1
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_tooltip_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ui_get_but_string_max_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_get_but_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_float(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_unit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_str_rstrip_float_zero(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_convert_to_unit_alt_name(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ui_searchbox_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_searchbox_update(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: optsize
declare zeroext i8 @ui_searchbox_apply(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ui_searchbox_find_index(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_searchbox_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_get_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !262 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare double @ui_get_but_val(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ui_block_func_COLOR(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare ptr @ui_popup_block_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ui_popup_menu_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_popup_block_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_menu(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_but_find_mouse_over(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !263 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !178
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %8 = load i16, ptr %7, align 2, !tbaa !164
  %9 = icmp ne i16 %8, 0
  %10 = zext i1 %9 to i8
  %11 = tail call fastcc ptr @ui_but_find_mouse_over_ex(ptr noundef %0, i32 noundef %4, i32 noundef %6, i8 noundef zeroext %10) #26
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !264 {
  %5 = tail call ptr @ui_but_find_activated(ptr noundef %1) #26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 67
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %9, i64 0, i32 6
  store i8 1, ptr %10, align 4, !tbaa !92
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 0) #26
  br label %11

11:                                               ; preds = %7, %4
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_menus_recursive(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 !PGOFuncName !265 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %2, align 8, !tbaa !115
  %11 = tail call ptr @ui_but_find_activated(ptr noundef %10) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 67
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !51
  switch i32 %19, label %98 [
    i32 26624, label %85
    i32 20992, label %85
  ]

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %15, i64 0, i32 39
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !51
  switch i32 %26, label %98 [
    i32 26624, label %85
    i32 20992, label %85
  ]

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %29) #25
  %31 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !99
  %33 = and i32 %32, 1048576
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !150
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 53, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !204
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %69, label %42

42:                                               ; preds = %27, %35
  %43 = icmp eq i8 %4, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %45 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !178
  store i32 %46, ptr %8, align 4, !tbaa !43
  %47 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !42
  store i32 %48, ptr %9, align 4, !tbaa !43
  %49 = load ptr, ptr %2, align 8, !tbaa !115
  call void @ui_window_to_block(ptr noundef %49, ptr noundef nonnull %29, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %50 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 11
  %51 = load i32, ptr %8, align 4, !tbaa !43
  %52 = sitofp i32 %51 to float
  %53 = load i32, ptr %9, align 4, !tbaa !43
  %54 = sitofp i32 %53 to float
  %55 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %50, float noundef %52, float noundef %54) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  %56 = icmp ne i8 %55, 0
  br label %57

57:                                               ; preds = %42, %44
  %58 = phi i1 [ %56, %44 ], [ false, %42 ]
  %59 = add nsw i32 %3, 1
  %60 = icmp ne i8 %4, 0
  %61 = select i1 %60, i1 true, i1 %58
  %62 = zext i1 %61 to i8
  %63 = call fastcc i32 @ui_handle_menus_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, i32 noundef %59, i8 noundef zeroext %62, i8 noundef zeroext %30, i8 noundef zeroext 0) #26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !150
  %68 = icmp eq i16 %67, 272
  br i1 %68, label %69, label %121

69:                                               ; preds = %35, %65, %57
  %70 = phi i32 [ %63, %57 ], [ %63, %65 ], [ 0, %35 ]
  %71 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !51
  %73 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %22, i64 0, i32 16
  %74 = load i32, ptr %73, align 8, !tbaa !103
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = call fastcc i32 @ui_handle_menu_return_submenu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #26, !range !174
  %78 = icmp ne i32 %77, 0
  %79 = and i32 %74, 8
  %80 = icmp ne i32 %79, 0
  %81 = and i1 %80, %78
  br i1 %81, label %82, label %121

82:                                               ; preds = %76, %69
  %83 = phi i32 [ 1, %76 ], [ %70, %69 ]
  %84 = load ptr, ptr %2, align 8, !tbaa !115
  switch i32 %72, label %98 [
    i32 26624, label %85
    i32 20992, label %85
  ]

85:                                               ; preds = %82, %82, %24, %24, %17, %17
  %86 = phi ptr [ %10, %24 ], [ %10, %24 ], [ %10, %17 ], [ %10, %17 ], [ %84, %82 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 21
  %88 = load ptr, ptr %87, align 8, !tbaa !160
  %89 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #26
  %90 = getelementptr inbounds %struct.uiBlock, ptr %88, i64 0, i32 27
  %91 = load i32, ptr %90, align 8, !tbaa !99
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %85
  %95 = load ptr, ptr %2, align 8, !tbaa !115
  %96 = call ptr @ui_but_find_activated(ptr noundef %95) #26
  %97 = icmp eq ptr %96, %11
  br i1 %97, label %121, label %119

98:                                               ; preds = %82, %24, %17, %7
  %99 = phi ptr [ %84, %82 ], [ %10, %17 ], [ %10, %24 ], [ %10, %7 ]
  %100 = phi i32 [ %83, %82 ], [ 0, %17 ], [ 0, %24 ], [ 0, %7 ]
  %101 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 21
  %102 = load ptr, ptr %101, align 8, !tbaa !160
  %103 = getelementptr inbounds %struct.uiBlock, ptr %102, i64 0, i32 27
  %104 = load i32, ptr %103, align 8, !tbaa !99
  %105 = and i32 %104, 1048576
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  %108 = call fastcc i32 @ui_handler_pie(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #26
  br label %121

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %111 = load i16, ptr %110, align 8, !tbaa !150
  %112 = icmp eq i16 %111, 1
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !151
  %116 = icmp eq i16 %115, 4
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %109
  %118 = call fastcc i32 @ui_handle_menu_event(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #26
  br label %121

119:                                              ; preds = %94
  %120 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  call fastcc void @ui_mouse_motion_towards_reinit(ptr noundef nonnull %2, ptr noundef nonnull %120) #26
  br label %121

121:                                              ; preds = %94, %85, %113, %117, %107, %65, %76, %119
  %122 = phi i32 [ %89, %119 ], [ %77, %76 ], [ %63, %65 ], [ %89, %85 ], [ %108, %107 ], [ %118, %117 ], [ %100, %113 ], [ %89, %94 ]
  ret i32 %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_handle_button_return_submenu(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !266 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 39
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !103
  %10 = and i32 %9, 18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !51
  switch i32 %14, label %24 [
    i32 7680, label %15
    i32 5632, label %19
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 16
  %17 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 18
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #26
  %18 = load i32, ptr %8, align 8, !tbaa !103
  br label %24

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %7, i64 0, i32 17
  %21 = load i32, ptr %20, align 4, !tbaa !267
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 13
  store double %22, ptr %23, align 8, !tbaa !184
  br label %24

24:                                               ; preds = %12, %3, %15, %19
  %25 = phi i32 [ %9, %12 ], [ %9, %3 ], [ %18, %15 ], [ %9, %19 ]
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 3
  %30 = load i8, ptr %29, align 8, !tbaa !156
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %34, ptr noundef nonnull %2, ptr noundef nonnull %5, i8 noundef zeroext 1) #26
  br label %39

35:                                               ; preds = %28
  tail call void @ui_check_but(ptr noundef nonnull %2) #25
  br label %39

36:                                               ; preds = %24
  %37 = and i32 %25, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %40

39:                                               ; preds = %35, %32
  store i32 0, ptr %8, align 8, !tbaa !103
  br label %76

40:                                               ; preds = %36
  %41 = icmp eq i32 %25, 2
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %43, align 4, !tbaa !92
  br label %44

44:                                               ; preds = %42, %40
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #26
  br label %76

45:                                               ; preds = %36
  %46 = and i32 %25, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %50 = load i16, ptr %49, align 8, !tbaa !150
  %51 = icmp eq i16 %50, 4
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !104
  %55 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !178
  %57 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !42
  %59 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %54, ptr noundef nonnull %2, i32 noundef %56, i32 noundef %58) #26, !range !168
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i16, ptr %49, align 8, !tbaa !150
  br label %64

63:                                               ; preds = %52
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #26
  br label %76

64:                                               ; preds = %61, %48
  %65 = phi i16 [ %62, %61 ], [ %50, %48 ]
  %66 = add i16 %65, -32
  %67 = icmp ult i16 %66, 224
  %68 = add i16 %65, -300
  %69 = icmp ult i16 %68, 20
  %70 = or i1 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load ptr, ptr %4, align 8, !tbaa !73
  %73 = getelementptr inbounds %struct.uiHandleButtonData, ptr %72, i64 0, i32 21
  store i8 0, ptr %73, align 8, !tbaa !159
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #26
  br label %76

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %75, align 4, !tbaa !92
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #26
  br label %76

76:                                               ; preds = %39, %45, %71, %74, %63, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_button_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !268 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  switch i32 %7, label %169 [
    i32 1, label %12
    i32 3, label %88
    i32 2, label %124
    i32 8, label %135
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !150
  switch i16 %14, label %86 [
    i16 260, label %15
    i16 20516, label %15
    i16 4, label %17
    i16 272, label %54
    i16 10, label %85
    i16 11, label %85
    i16 2, label %85
    i16 14, label %85
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %16, align 4, !tbaa !92
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %171

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @ui_but_find_mouse_over(ptr noundef %11, ptr noundef nonnull %1) #26
  %19 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %9) #25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !94
  %23 = tail call zeroext i8 @ui_block_is_pie_menu(ptr noundef %22) #25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !178
  %28 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %27, i32 noundef %29) #26, !range !168
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25, %21
  %33 = icmp eq ptr %18, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = tail call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %18) #26, !range !168
  %36 = icmp eq i8 %35, 0
  %37 = icmp eq ptr %18, %2
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %25
  %40 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %40, align 4, !tbaa !92
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %171

41:                                               ; preds = %34, %32
  %42 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !178
  %44 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !180
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !42
  %50 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %51 = load i32, ptr %50, align 4, !tbaa !34
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %171, label %53

53:                                               ; preds = %47, %41
  tail call fastcc void @ui_blocks_set_tooltips(ptr noundef %11, i8 noundef zeroext 1) #26
  tail call fastcc void @button_tooltip_timer_reset(ptr noundef %0, ptr noundef nonnull %2) #26
  br label %171

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %56 = load ptr, ptr %55, align 8, !tbaa !152
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !225
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load ptr, ptr %5, align 8, !tbaa !155
  %62 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  tail call void @WM_event_remove_timer(ptr noundef %61, ptr noundef %63, ptr noundef %56) #25
  store ptr null, ptr %57, align 8, !tbaa !225
  %64 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !231
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %171

67:                                               ; preds = %60
  %68 = load ptr, ptr %10, align 8, !tbaa !104
  %69 = tail call ptr @ui_tooltip_create(ptr noundef %0, ptr noundef %68, ptr noundef nonnull %2) #25
  store ptr %69, ptr %64, align 8, !tbaa !231
  br label %171

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 22
  %72 = load ptr, ptr %71, align 8, !tbaa !213
  %73 = icmp eq ptr %56, %72
  br i1 %73, label %74, label %171

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 8, !tbaa !155
  %76 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !95
  tail call void @WM_event_remove_timer(ptr noundef %75, ptr noundef %77, ptr noundef %56) #25
  store ptr null, ptr %71, align 8, !tbaa !213
  %78 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !178
  %80 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !42
  %82 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %79, i32 noundef %81) #26, !range !168
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %171, label %84

84:                                               ; preds = %74
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #26
  br label %171

85:                                               ; preds = %12, %12, %12, %12
  tail call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef nonnull %2) #26
  br label %86

86:                                               ; preds = %12, %85
  %87 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %1) #26
  br label %171

88:                                               ; preds = %3
  %89 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %90 = load i16, ptr %89, align 8, !tbaa !150
  switch i16 %90, label %122 [
    i16 260, label %91
    i16 4, label %93
  ]

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %92, align 4, !tbaa !92
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %171

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !51
  switch i32 %95, label %101 [
    i32 11264, label %96
    i32 11776, label %96
  ]

96:                                               ; preds = %93, %93
  %97 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !57
  %99 = or i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !57
  %100 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %1) #26
  tail call void @ED_region_tag_redraw(ptr noundef %11) #25
  br label %171

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !178
  %104 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !42
  %106 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %103, i32 noundef %105) #26, !range !168
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !57
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %107, label %117, label %112

112:                                              ; preds = %101
  br i1 %111, label %113, label %171

113:                                              ; preds = %112
  %114 = or i32 %109, 5
  store i32 %114, ptr %108, align 8, !tbaa !57
  %115 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 0, ptr %115, align 4, !tbaa !92
  %116 = load ptr, ptr %10, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %116) #25
  br label %171

117:                                              ; preds = %101
  br i1 %111, label %171, label %118

118:                                              ; preds = %117
  %119 = and i32 %109, -6
  store i32 %119, ptr %108, align 8, !tbaa !57
  %120 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %120, align 4, !tbaa !92
  %121 = load ptr, ptr %10, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %121) #25
  br label %171

122:                                              ; preds = %88
  %123 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %1) #26
  br label %171

124:                                              ; preds = %3
  %125 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %126 = load i16, ptr %125, align 8, !tbaa !150
  %127 = icmp eq i16 %126, 272
  br i1 %127, label %128, label %171

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %130 = load ptr, ptr %129, align 8, !tbaa !152
  %131 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 10
  %132 = load ptr, ptr %131, align 8, !tbaa !215
  %133 = icmp eq ptr %130, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %128
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %171

135:                                              ; preds = %3
  %136 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %137 = load i16, ptr %136, align 8, !tbaa !150
  %138 = icmp eq i16 %137, 4
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 39
  %141 = load ptr, ptr %140, align 8, !tbaa !74
  %142 = icmp eq ptr %141, null
  br i1 %142, label %153, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %141, align 8, !tbaa !115
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %148 = load i32, ptr %147, align 4, !tbaa !178
  %149 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %150 = load i32, ptr %149, align 8, !tbaa !42
  %151 = tail call fastcc zeroext i8 @ui_mouse_inside_region(ptr noundef nonnull %144, i32 noundef %148, i32 noundef %150) #26, !range !168
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %146, %143, %139
  %154 = tail call fastcc ptr @ui_but_find_mouse_over(ptr noundef %11, ptr noundef nonnull %1) #26
  %155 = icmp eq ptr %154, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.uiBut, ptr %154, i64 0, i32 67
  %158 = load ptr, ptr %157, align 8, !tbaa !73
  %159 = icmp eq ptr %158, %5
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !51
  %163 = icmp eq i32 %162, 7680
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.uiHandleButtonData, ptr %5, i64 0, i32 6
  store i8 1, ptr %165, align 4, !tbaa !92
  br label %166

166:                                              ; preds = %164, %160
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %167

167:                                              ; preds = %146, %166, %156, %153, %135
  %168 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %1) #26
  br label %171

169:                                              ; preds = %3
  %170 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, ptr noundef %1) #26
  br label %171

171:                                              ; preds = %124, %134, %128, %91, %122, %113, %112, %118, %117, %96, %67, %60, %74, %84, %70, %39, %53, %47, %167, %169, %15, %86
  %172 = phi i32 [ %87, %86 ], [ 0, %15 ], [ 0, %167 ], [ %170, %169 ], [ 0, %47 ], [ 0, %53 ], [ 0, %39 ], [ 0, %70 ], [ 0, %84 ], [ 0, %74 ], [ 0, %60 ], [ 0, %67 ], [ 1, %96 ], [ 1, %117 ], [ 1, %118 ], [ 1, %112 ], [ 1, %113 ], [ 1, %122 ], [ 1, %91 ], [ 0, %128 ], [ 0, %134 ], [ 0, %124 ]
  %173 = load ptr, ptr %4, align 8, !tbaa !73
  %174 = icmp eq ptr %173, null
  br i1 %174, label %193, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.uiHandleButtonData, ptr %173, i64 0, i32 4
  %177 = load i32, ptr %176, align 4, !tbaa !90
  %178 = icmp eq i32 %177, 10
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.uiHandleButtonData, ptr %173, i64 0, i32 45
  %181 = load ptr, ptr %180, align 8, !tbaa !269
  %182 = getelementptr inbounds %struct.uiHandleButtonData, ptr %173, i64 0, i32 44
  %183 = load i32, ptr %182, align 8, !tbaa !270
  %184 = icmp eq ptr %181, null
  %185 = zext i1 %184 to i8
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %173, i8 noundef zeroext %185, i8 noundef zeroext 0) #26
  br i1 %184, label %187, label %186

186:                                              ; preds = %179
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %181, i32 noundef %183) #26
  br label %193

187:                                              ; preds = %179
  %188 = icmp ult i32 %7, 2
  br i1 %188, label %189, label %193

189:                                              ; preds = %187
  %190 = tail call fastcc ptr @ui_but_find_mouse_over(ptr noundef %11, ptr noundef %1) #26
  %191 = icmp eq ptr %190, %2
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %2, i32 noundef 0) #26
  br label %193

193:                                              ; preds = %186, %189, %192, %187, %175, %171
  ret i32 %172
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_funcs_after(ptr noundef %0) unnamed_addr #3 !PGOFuncName !271 {
  %2 = alloca %struct.uiAfterFunc, align 8
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) @UIAfterFuncs, i64 16, i1 false), !tbaa.struct !272
  tail call fastcc void @BLI_listbase_clear() #26
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 21
  %9 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 18
  %10 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 16
  %11 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 17
  %12 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 19, i32 2
  %13 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 19
  %14 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 20
  %15 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 2
  %16 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 3
  %17 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 4
  %18 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 5
  %19 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 6
  %20 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 10
  %21 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 11
  %22 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 12
  %23 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 13
  %24 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 14
  %25 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 15
  %26 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 7
  %27 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 8
  %28 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 9
  %29 = getelementptr inbounds %struct.uiAfterFunc, ptr %2, i64 0, i32 22
  br label %30

30:                                               ; preds = %7, %110
  %31 = phi ptr [ %5, %7 ], [ %111, %110 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %31, i64 256, i1 false), !tbaa.struct !273
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %31) #25
  %32 = load ptr, ptr %8, align 8, !tbaa !274
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @CTX_store_set(ptr noundef %0, ptr noundef nonnull %32) #25
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %9, align 8, !tbaa !62
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !tbaa.struct !117
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %39(ptr noundef nonnull %36) #25
  %40 = load ptr, ptr %9, align 8, !tbaa !62
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ null, %35 ]
  %43 = load ptr, ptr %10, align 8, !tbaa !58
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %11, align 8, !tbaa !60
  %47 = trunc i32 %46 to i16
  %48 = icmp eq ptr %42, null
  %49 = select i1 %48, ptr null, ptr %3
  %50 = call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef nonnull %43, i16 noundef signext %47, ptr noundef %49) #25
  %51 = load ptr, ptr %9, align 8, !tbaa !62
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi ptr [ %51, %45 ], [ %42, %41 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @WM_operator_properties_free(ptr noundef nonnull %3) #25
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr %12, align 8, !tbaa !275
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %14, align 8, !tbaa !276
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %60) #25
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr %8, align 8, !tbaa !274
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @CTX_store_set(ptr noundef %0, ptr noundef null) #25
  %65 = load ptr, ptr %8, align 8, !tbaa !274
  call void @CTX_store_free(ptr noundef %65) #25
  br label %66

66:                                               ; preds = %64, %61
  %67 = load ptr, ptr %15, align 8, !tbaa !277
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %16, align 8, !tbaa !278
  %71 = load ptr, ptr %17, align 8, !tbaa !279
  call void %67(ptr noundef %0, ptr noundef %70, ptr noundef %71) #25
  br label %72

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %18, align 8, !tbaa !280
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %19, align 8, !tbaa !281
  %77 = load ptr, ptr %17, align 8, !tbaa !279
  call void %73(ptr noundef %0, ptr noundef %76, ptr noundef %77) #25
  br label %78

78:                                               ; preds = %75, %72
  %79 = load ptr, ptr %19, align 8, !tbaa !281
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %82(ptr noundef nonnull %79) #25
  br label %83

83:                                               ; preds = %81, %78
  %84 = load ptr, ptr %20, align 8, !tbaa !282
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %21, align 8, !tbaa !283
  %88 = load i32, ptr %22, align 8, !tbaa !284
  call void %84(ptr noundef %0, ptr noundef %87, i32 noundef %88) #25
  br label %89

89:                                               ; preds = %86, %83
  %90 = load ptr, ptr %23, align 8, !tbaa !285
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %24, align 8, !tbaa !286
  %94 = load i32, ptr %25, align 8, !tbaa !287
  call void %90(ptr noundef %0, ptr noundef %93, i32 noundef %94) #25
  br label %95

95:                                               ; preds = %92, %89
  %96 = load ptr, ptr %26, align 8, !tbaa !288
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %27, align 8, !tbaa !289
  %100 = load ptr, ptr %28, align 8, !tbaa !290
  call void %96(ptr noundef %0, ptr noundef %99, ptr noundef %100) #25
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr %28, align 8, !tbaa !290
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %105(ptr noundef nonnull %102) #25
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i8, ptr %29, align 8, !tbaa !68
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %29) #25
  br label %110

110:                                              ; preds = %106, %109
  %111 = load ptr, ptr %2, align 8, !tbaa !61
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %30, !llvm.loop !291

113:                                              ; preds = %110, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_but_find_mouse_over_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #3 !PGOFuncName !292 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %7 = tail call fastcc zeroext i8 @ui_mouse_inside_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26, !range !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = sitofp i32 %1 to float
  %15 = sitofp i32 %2 to float
  br label %16

16:                                               ; preds = %13, %54
  %17 = phi ptr [ %11, %13 ], [ %55, %54 ]
  %18 = phi ptr [ null, %13 ], [ %43, %54 ]
  store float %14, ptr %5, align 4, !tbaa !85
  store float %15, ptr %6, align 4, !tbaa !85
  call void @ui_window_to_block_fl(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %19 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %16, %38
  %23 = phi ptr [ %40, %38 ], [ %20, %16 ]
  %24 = call fastcc zeroext i8 @ui_is_but_interactive(ptr noundef nonnull %23, i8 noundef zeroext %3) #26, !range !168
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 47
  %28 = load i8, ptr %27, align 2, !tbaa !293
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = call fastcc zeroext i8 @ui_but_isect_pie_seg(ptr noundef nonnull %17, ptr noundef nonnull %23) #26, !range !168
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %42

33:                                               ; preds = %26
  %34 = load float, ptr %5, align 4, !tbaa !85
  %35 = load float, ptr %6, align 4, !tbaa !85
  %36 = call fastcc zeroext i8 @ui_but_contains_pt(ptr noundef nonnull %23, float noundef %34, float noundef %35) #26
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22, %33, %30
  %39 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22, !llvm.loop !294

42:                                               ; preds = %38, %30, %33, %16
  %43 = phi ptr [ %18, %16 ], [ %23, %33 ], [ %23, %30 ], [ %18, %38 ]
  %44 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 27
  %45 = load i32, ptr %44, align 8, !tbaa !99
  %46 = and i32 %45, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 11
  %50 = load float, ptr %5, align 4, !tbaa !85
  %51 = load float, ptr %6, align 4, !tbaa !85
  %52 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %49, float noundef %50, float noundef %51) #25
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42, %48
  %55 = load ptr, ptr %17, align 8, !tbaa !61
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %16, !llvm.loop !295

57:                                               ; preds = %48, %54, %9, %4
  %58 = phi ptr [ null, %4 ], [ null, %9 ], [ %43, %54 ], [ %43, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_mouse_inside_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !296 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %7 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.uiBlock, ptr %14, i64 0, i32 31
  store i8 0, ptr %15, align 8, !tbaa !157
  %16 = load ptr, ptr %14, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %13, !llvm.loop !297

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !298
  %21 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 4, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !299
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 %1, ptr %4, align 4, !tbaa !43
  store i32 %2, ptr %5, align 4, !tbaa !43
  call void @ui_window_to_region(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %25 = load i32, ptr %4, align 4, !tbaa !43
  %26 = load i32, ptr %5, align 4, !tbaa !43
  %27 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %19, i32 noundef %25, i32 noundef %26) #25
  %28 = icmp eq i8 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %13, %9, %24, %29
  %31 = phi i8 [ 1, %29 ], [ 0, %24 ], [ 0, %9 ], [ 0, %13 ]
  ret i8 %31
}

; Function Attrs: optsize
declare void @ui_window_to_block_fl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @ui_is_but_interactive(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 !PGOFuncName !300 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  switch i32 %4, label %9 [
    i32 5120, label %5
    i32 14336, label %32
    i32 10752, label %32
    i32 27648, label %32
    i32 17920, label %32
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 64
  %7 = load ptr, ptr %6, align 8, !tbaa !301
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = and i32 %11, 34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %32

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = and i32 %16, 34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %32

19:                                               ; preds = %9
  %20 = icmp eq i32 %4, 3072
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 46
  %23 = load i8, ptr %22, align 1, !tbaa !302
  %24 = icmp ne i8 %23, 1
  %25 = icmp ne i8 %1, 0
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %32

27:                                               ; preds = %14, %21, %19
  %28 = icmp ne i32 %4, 18432
  %29 = icmp eq i8 %1, 0
  %30 = or i1 %29, %28
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %14, %2, %2, %2, %2, %27, %21, %9, %5
  %33 = phi i8 [ 0, %5 ], [ 0, %9 ], [ 0, %21 ], [ %31, %27 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %14 ]
  ret i8 %33
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i8 @ui_but_isect_pie_seg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !303 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, float 0x3FD921FB60000000, float 0x3FE921FB60000000
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 53
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 47
  %14 = load i8, ptr %13, align 2, !tbaa !293
  %15 = sext i8 %14 to i32
  call void @ui_but_pie_dir(i32 noundef %15, ptr noundef nonnull %3) #26
  %16 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %12) #26
  %17 = tail call fastcc float @saacos(float noundef %16) #26
  %18 = fcmp olt float %17, %11
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %8, %2
  %21 = phi i8 [ 0, %2 ], [ %19, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_but_contains_pt(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #3 !PGOFuncName !304 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %5 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %1, float noundef %2) #25
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_window_to_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #7 !PGOFuncName !305 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #25
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !306 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: optsize
declare zeroext i8 @ui_block_is_menu(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_window_to_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_menu_return_submenu(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !307 {
  %4 = load ptr, ptr %2, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = tail call ptr @ui_but_find_activated(ptr noundef %4) #26
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 67
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %9, i64 0, i32 39
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %11, i64 0, i32 16
  %13 = load i32, ptr %12, align 8, !tbaa !103
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = and i32 %13, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !99
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  store i32 %13, ptr %24, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %9, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 15
  store i32 %26, ptr %27, align 4, !tbaa !102
  %28 = load i32, ptr %12, align 8, !tbaa !103
  br label %29

29:                                               ; preds = %15, %18, %23
  %30 = phi i32 [ %13, %15 ], [ %13, %18 ], [ %28, %23 ]
  tail call fastcc void @ui_handle_button_return_submenu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #26
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, ptr %12, align 8, !tbaa !103
  br label %34

34:                                               ; preds = %29, %33, %3
  %35 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !99
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  tail call fastcc void @ui_mouse_motion_towards_reinit(ptr noundef nonnull %2, ptr noundef nonnull %40) #26
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  %43 = load i32, ptr %42, align 8, !tbaa !103
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !308 {
  %4 = load ptr, ptr %2, align 8, !tbaa !115
  %5 = tail call ptr @ui_but_find_activated(ptr noundef %4) #26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !151
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %45, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 74
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %13) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 8, !tbaa !94
  %18 = tail call zeroext i8 @ui_block_is_pie_menu(ptr noundef %17) #25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiBut, ptr %5, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !178
  %27 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !42
  %29 = tail call fastcc zeroext i8 @ui_mouse_inside_region(ptr noundef %24, i32 noundef %26, i32 noundef %28) #26, !range !168
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !150
  switch i16 %33, label %34 [
    i16 4, label %45
    i16 10, label %45
    i16 11, label %45
    i16 14, label %45
  ]

34:                                               ; preds = %31
  %35 = add i16 %33, -1
  %36 = icmp ult i16 %35, 19
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load ptr, ptr %21, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !104
  %41 = load i32, ptr %25, align 4, !tbaa !178
  %42 = load i32, ptr %27, align 8, !tbaa !42
  %43 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %40, ptr noundef nonnull %5, i32 noundef %41, i32 noundef %42) #26, !range !168
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %7, %16, %31, %31, %31, %31, %34, %20, %11, %37
  %46 = tail call ptr @CTX_wm_area(ptr noundef %0) #25
  %47 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %48 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !309
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %49) #25
  br label %52

52:                                               ; preds = %51, %45
  %53 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !310
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %54) #25
  br label %57

57:                                               ; preds = %56, %52
  %58 = tail call fastcc i32 @ui_handle_button_event(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #26
  %59 = load ptr, ptr %48, align 8, !tbaa !309
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %46) #25
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr %53, align 8, !tbaa !310
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %47) #25
  br label %67

66:                                               ; preds = %37, %3
  tail call fastcc void @ui_handle_button_over(ptr noundef %0, ptr noundef %1, ptr noundef %4) #26
  br label %67

67:                                               ; preds = %62, %65, %66
  %68 = phi i32 [ 0, %66 ], [ %58, %65 ], [ %58, %62 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handler_pie(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !311 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !150
  %9 = icmp ne i16 %8, 20515
  %10 = zext i1 %9 to i32
  %11 = load ptr, ptr %2, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !188
  %16 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !312
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmTimer, ptr %17, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !313
  br label %27

22:                                               ; preds = %3
  %23 = tail call ptr @CTX_wm_manager(ptr noundef %0) #25
  %24 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  %25 = tail call ptr @WM_event_add_timer(ptr noundef %23, ptr noundef %24, i32 noundef 272, double noundef 1.000000e-02) #25
  store ptr %25, ptr %16, align 8, !tbaa !312
  %26 = getelementptr inbounds %struct.wmTimer, ptr %25, i64 0, i32 6
  store double 0.000000e+00, ptr %26, align 8, !tbaa !313
  br label %27

27:                                               ; preds = %19, %22
  %28 = phi double [ 0.000000e+00, %22 ], [ %21, %19 ]
  %29 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %30 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !43
  %32 = sitofp <2 x i32> %31 to <2 x float>
  store <2 x float> %32, ptr %4, align 8, !tbaa !85
  call void @ui_window_to_block_fl(ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef nonnull %30) #25
  %33 = call float @ui_block_calculate_pie_segment(ptr noundef nonnull %13, ptr noundef nonnull %4) #26
  %34 = load i16, ptr %7, align 8, !tbaa !150
  %35 = icmp eq i16 %34, 272
  br i1 %35, label %36, label %129

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %38 = load ptr, ptr %37, align 8, !tbaa !152
  %39 = load ptr, ptr %16, align 8, !tbaa !312
  %40 = icmp eq ptr %38, %39
  %41 = load i32, ptr %14, align 8, !tbaa !188
  br i1 %40, label %42, label %109

42:                                               ; preds = %36
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 109), align 2, !tbaa !315
  %44 = sitofp i16 %43 to double
  %45 = fmul double %44, 1.000000e-02
  %46 = fcmp ogt double %28, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = and i32 %41, -3
  store i32 %48, ptr %14, align 8, !tbaa !188
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ %48, %47 ], [ %41, %42 ]
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %49
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !316
  %55 = sitofp i16 %54 to double
  %56 = fmul double %55, 1.000000e-02
  %57 = fdiv double %28, %56
  %58 = fptrunc double %57 to float
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !317
  %60 = sitofp i16 %59 to float
  %61 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !190
  %62 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !318
  %63 = sitofp i32 %62 to float
  %64 = fmul float %61, %63
  %65 = fdiv float %64, 7.200000e+01
  %66 = fmul float %65, %60
  %67 = fcmp ogt float %58, 1.000000e+00
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = or disjoint i32 %50, 32
  store i32 %69, ptr %14, align 8, !tbaa !188
  br label %70

70:                                               ; preds = %68, %53
  %71 = phi float [ 1.000000e+00, %68 ], [ %58, %53 ]
  %72 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = icmp eq ptr %73, null
  br i1 %74, label %106, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %77 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %78 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 2
  br label %79

79:                                               ; preds = %75, %103
  %80 = phi ptr [ %73, %75 ], [ %104, %103 ]
  %81 = getelementptr inbounds %struct.uiBut, ptr %80, i64 0, i32 47
  %82 = load i8, ptr %81, align 2, !tbaa !293
  %83 = icmp eq i8 %82, -1
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %85 = sext i8 %82 to i32
  call void @ui_but_pie_dir(i32 noundef %85, ptr noundef nonnull %5) #26
  %86 = load float, ptr %5, align 4, !tbaa !85
  %87 = fcmp ogt float %86, 0x3F847AE140000000
  %88 = fcmp olt float %86, 0xBF847AE140000000
  %89 = select i1 %88, float -5.000000e-01, float 0.000000e+00
  %90 = select i1 %87, float 5.000000e-01, float %89
  store float %90, ptr %6, align 4, !tbaa !85
  %91 = load float, ptr %76, align 4, !tbaa !85
  %92 = fcmp ogt float %91, 0x3FEFAE1480000000
  %93 = fcmp olt float %91, 0xBFEFAE1480000000
  %94 = select i1 %93, float -5.000000e-01, float 0.000000e+00
  %95 = select i1 %92, float 5.000000e-01, float %94
  %96 = getelementptr inbounds %struct.uiBut, ptr %80, i64 0, i32 18
  %97 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %96) #26
  %98 = fmul float %90, %97
  store float %98, ptr %6, align 4, !tbaa !85
  %99 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %96) #26
  %100 = fmul float %95, %99
  store float %100, ptr %77, align 4, !tbaa !85
  call fastcc void @mul_v2_fl(ptr noundef nonnull %5, float noundef %66) #26
  call fastcc void @add_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  call fastcc void @mul_v2_fl(ptr noundef nonnull %5, float noundef %71) #26
  call fastcc void @add_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %78) #26
  %101 = load float, ptr %5, align 4, !tbaa !85
  %102 = load float, ptr %76, align 4, !tbaa !85
  call void @BLI_rctf_recenter(ptr noundef nonnull %96, float noundef %101, float noundef %102) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %103

103:                                              ; preds = %79, %84
  %104 = load ptr, ptr %80, align 8, !tbaa !61
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %79, !llvm.loop !319

106:                                              ; preds = %103, %70
  %107 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 7
  store float %71, ptr %107, align 8, !tbaa !320
  call void @ED_region_tag_redraw(ptr noundef %11) #25
  %108 = load i32, ptr %14, align 8, !tbaa !188
  br label %109

109:                                              ; preds = %49, %106, %36
  %110 = phi i32 [ %50, %49 ], [ %108, %106 ], [ %41, %36 ]
  %111 = and i32 %110, 64
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 4
  %115 = load double, ptr %114, align 8, !tbaa !321
  %116 = fsub double %28, %115
  %117 = fcmp ogt double %116, 2.000000e-02
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 3
  %120 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %119) #26
  call fastcc void @copy_v2_v2(ptr noundef nonnull %119, ptr noundef nonnull %4) #26
  store double %28, ptr %114, align 8, !tbaa !321
  %121 = fcmp olt float %120, 1.000000e+00
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load ptr, ptr %2, align 8, !tbaa !115
  %124 = call ptr @ui_but_find_activated(ptr noundef %123) #26
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call fastcc void @ui_but_pie_menu_apply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %124, i8 noundef zeroext 1) #26
  br label %253

127:                                              ; preds = %113, %109, %122, %118
  %128 = load i16, ptr %7, align 8, !tbaa !150
  br label %129

129:                                              ; preds = %127, %27
  %130 = phi i16 [ %128, %127 ], [ %34, %27 ]
  %131 = sext i16 %130 to i32
  %132 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 6
  %133 = load i32, ptr %132, align 4, !tbaa !204
  %134 = icmp ne i32 %133, %131
  %135 = and i32 %15, 16
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %173, label %138

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %140 = load i16, ptr %139, align 2, !tbaa !151
  %141 = icmp eq i16 %140, 2
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  %144 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 1
  %145 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %144) #26
  %146 = fcmp ogt float %145, 5.000000e+01
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, ptr %14, align 8, !tbaa !188
  %149 = or i32 %148, 4
  store i32 %149, ptr %14, align 8, !tbaa !188
  br label %150

150:                                              ; preds = %147, %142
  call void @ED_region_tag_redraw(ptr noundef %11) #25
  br label %253

151:                                              ; preds = %138
  %152 = load i32, ptr %14, align 8, !tbaa !188
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = or i32 %152, 16
  store i32 %156, ptr %14, align 8, !tbaa !188
  br label %253

157:                                              ; preds = %151
  %158 = load ptr, ptr %2, align 8, !tbaa !115
  %159 = call ptr @ui_but_find_activated(ptr noundef %158) #26
  %160 = icmp ne ptr %159, null
  %161 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 111), align 2
  %162 = icmp sgt i16 %161, 0
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = zext nneg i16 %161 to i32
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !189
  %167 = sext i16 %166 to i32
  %168 = add nsw i32 %167, %165
  %169 = sitofp i32 %168 to float
  %170 = fcmp ult float %33, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  call fastcc void @ui_but_pie_menu_apply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %159, i8 noundef zeroext 1) #26
  br label %253

172:                                              ; preds = %157, %164
  call fastcc void @ui_but_pie_menu_apply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %159, i8 noundef zeroext 1) #26
  br label %253

173:                                              ; preds = %129
  switch i16 %130, label %251 [
    i16 4, label %174
    i16 1, label %199
    i16 218, label %208
    i16 3, label %208
    i16 97, label %210
    i16 98, label %210
    i16 99, label %210
    i16 100, label %210
    i16 101, label %210
    i16 102, label %210
    i16 103, label %210
    i16 104, label %210
    i16 105, label %210
    i16 106, label %210
    i16 107, label %210
    i16 108, label %210
    i16 109, label %210
    i16 110, label %210
    i16 111, label %210
    i16 112, label %210
    i16 113, label %210
    i16 114, label %210
    i16 115, label %210
    i16 116, label %210
    i16 117, label %210
    i16 118, label %210
    i16 119, label %210
    i16 120, label %210
    i16 121, label %210
    i16 122, label %210
    i16 49, label %247
    i16 151, label %247
    i16 50, label %241
    i16 152, label %241
    i16 51, label %242
    i16 153, label %242
    i16 52, label %243
    i16 154, label %243
    i16 54, label %244
    i16 156, label %244
    i16 55, label %245
    i16 157, label %245
    i16 56, label %246
    i16 158, label %246
    i16 57, label %248
    i16 159, label %248
  ]

174:                                              ; preds = %173
  br i1 %136, label %197, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 1
  %177 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %176) #26
  %178 = fcmp ogt float %177, 5.000000e+01
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, ptr %14, align 8, !tbaa !188
  %181 = or i32 %180, 4
  store i32 %181, ptr %14, align 8, !tbaa !188
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 111), align 2, !tbaa !322
  %184 = icmp sgt i16 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = zext nneg i16 %183 to i32
  %187 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !189
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %188, %186
  %190 = sitofp i32 %189 to float
  %191 = fcmp ult float %33, %190
  br i1 %191, label %197, label %192

192:                                              ; preds = %185
  %193 = load i32, ptr %14, align 8, !tbaa !188
  %194 = or i32 %193, 64
  store i32 %194, ptr %14, align 8, !tbaa !188
  %195 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %195, ptr noundef nonnull %4) #26
  %196 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 53, i32 4
  store double %28, ptr %196, align 8, !tbaa !321
  br label %197

197:                                              ; preds = %182, %185, %192, %174
  %198 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  call void @ED_region_tag_redraw(ptr noundef %11) #25
  br label %253

199:                                              ; preds = %173
  br i1 %136, label %200, label %253

200:                                              ; preds = %199
  %201 = load i32, ptr %14, align 8, !tbaa !188
  %202 = and i32 %201, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  store i32 1, ptr %205, align 8, !tbaa !103
  br label %253

206:                                              ; preds = %200
  %207 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  br label %253

208:                                              ; preds = %173, %173
  %209 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  store i32 1, ptr %209, align 8, !tbaa !103
  br label %253

210:                                              ; preds = %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173, %173
  %211 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %212 = load i16, ptr %211, align 2, !tbaa !151
  switch i16 %212, label %253 [
    i16 1, label %213
    i16 4, label %213
  ]

213:                                              ; preds = %210, %210
  %214 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %215 = load i16, ptr %214, align 8, !tbaa !167
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %253

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %219 = load i16, ptr %218, align 2, !tbaa !164
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 20
  %223 = load i16, ptr %222, align 2, !tbaa !165
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.uiBlock, ptr %13, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !61
  %228 = icmp eq ptr %227, null
  br i1 %228, label %253, label %229

229:                                              ; preds = %225, %238
  %230 = phi ptr [ %239, %238 ], [ %227, %225 ]
  %231 = getelementptr inbounds %struct.uiBut, ptr %230, i64 0, i32 62
  %232 = load i8, ptr %231, align 2, !tbaa !323
  %233 = zext i8 %232 to i32
  %234 = load i16, ptr %7, align 8, !tbaa !150
  %235 = sext i16 %234 to i32
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  call fastcc void @ui_but_pie_button_activate(ptr noundef %0, ptr noundef nonnull %230, ptr noundef nonnull %2) #26
  br label %238

238:                                              ; preds = %229, %237
  %239 = load ptr, ptr %230, align 8, !tbaa !61
  %240 = icmp eq ptr %239, null
  br i1 %240, label %253, label %229, !llvm.loop !324

241:                                              ; preds = %173, %173
  br label %248

242:                                              ; preds = %173, %173
  br label %248

243:                                              ; preds = %173, %173
  br label %248

244:                                              ; preds = %173, %173
  br label %248

245:                                              ; preds = %173, %173
  br label %248

246:                                              ; preds = %173, %173
  br label %248

247:                                              ; preds = %173, %173
  br label %248

248:                                              ; preds = %241, %242, %243, %244, %245, %246, %173, %173, %247
  %249 = phi i32 [ 1, %173 ], [ 1, %173 ], [ 0, %246 ], [ 7, %245 ], [ 2, %244 ], [ 6, %243 ], [ 3, %242 ], [ 4, %241 ], [ 5, %247 ]
  %250 = call fastcc ptr @ui_block_pie_dir_activate(ptr noundef nonnull %13, ptr noundef nonnull %1, i32 noundef %249) #26
  call fastcc void @ui_but_pie_button_activate(ptr noundef %0, ptr noundef %250, ptr noundef nonnull %2) #26
  br label %253

251:                                              ; preds = %173
  %252 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  br label %253

253:                                              ; preds = %238, %225, %172, %171, %126, %155, %150, %210, %213, %217, %221, %199, %206, %204, %251, %248, %208, %197
  %254 = phi i32 [ 1, %126 ], [ %10, %150 ], [ %10, %155 ], [ %252, %251 ], [ 1, %248 ], [ %10, %221 ], [ %10, %217 ], [ %10, %213 ], [ %10, %208 ], [ %10, %204 ], [ %207, %206 ], [ %10, %199 ], [ %10, %197 ], [ %10, %210 ], [ 1, %172 ], [ 1, %171 ], [ %10, %225 ], [ %10, %238 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret i32 %254
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_menu_event(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 !PGOFuncName !325 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %13 = load ptr, ptr %2, align 8, !tbaa !115
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !178
  store i32 %17, ptr %8, align 4, !tbaa !43
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !42
  store i32 %19, ptr %9, align 4, !tbaa !43
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %20 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 11
  %21 = load i32, ptr %8, align 4, !tbaa !43
  %22 = sitofp i32 %21 to float
  %23 = load i32, ptr %9, align 4, !tbaa !43
  %24 = sitofp i32 %23 to float
  %25 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %20, float noundef %22, float noundef %24) #25
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %7
  %28 = load i32, ptr %9, align 4, !tbaa !43
  %29 = sitofp i32 %28 to float
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %31 = sitofp i16 %30 to float
  %32 = call float @llvm.fmuladd.f32(float %31, float 1.500000e+00, float %29)
  %33 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 11, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !326
  %35 = fcmp ogt float %32, %34
  br label %36

36:                                               ; preds = %27, %7
  %37 = phi i1 [ false, %7 ], [ %35, %27 ]
  %38 = call ptr @ui_but_find_activated(ptr noundef nonnull %13) #26
  %39 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 20
  %40 = load i8, ptr %39, align 4, !tbaa !327
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %44 = load i16, ptr %43, align 8, !tbaa !150
  switch i16 %44, label %552 [
    i16 1, label %45
    i16 4, label %46
  ]

45:                                               ; preds = %42
  store i8 0, ptr %39, align 4, !tbaa !327
  br label %49

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  %47 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 21
  call fastcc void @sub_v2_v2v2_int(ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef nonnull %47) #26
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %47, ptr noundef nonnull %16) #26
  %48 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 8, i32 3
  call fastcc void @add_v2_v2v2_int(ptr noundef nonnull %48, ptr noundef nonnull %48, ptr noundef nonnull %10) #26
  call void @ui_popup_translate(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  br label %552

49:                                               ; preds = %45, %36
  %50 = phi i32 [ 1, %45 ], [ 0, %36 ]
  %51 = icmp eq ptr %38, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.uiBut, ptr %38, i64 0, i32 67
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = getelementptr inbounds %struct.uiHandleButtonData, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !90
  %57 = call fastcc zeroext i8 @button_modal_state(i32 noundef %56) #26, !range !168
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %61 = load i32, ptr %60, align 8, !tbaa !99
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %527, label %64

64:                                               ; preds = %59
  call fastcc void @ui_mouse_motion_towards_reinit(ptr noundef nonnull %2, ptr noundef nonnull %16) #26
  br label %527

65:                                               ; preds = %52, %49
  %66 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !150
  switch i16 %67, label %94 [
    i16 272, label %68
    i16 4, label %76
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %70 = load ptr, ptr %69, align 8, !tbaa !152
  %71 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !312
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %527

74:                                               ; preds = %68
  %75 = load i32, ptr %9, align 4, !tbaa !43
  call fastcc void @ui_menu_scroll(ptr noundef nonnull %13, ptr noundef %15, i32 noundef %75, ptr noundef null) #26
  br label %527

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %78 = load i32, ptr %77, align 8, !tbaa !99
  %79 = and i32 %78, 128
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  call fastcc void @ui_mouse_motion_towards_init(ptr noundef nonnull %2, ptr noundef nonnull %16) #26
  br label %82

82:                                               ; preds = %81, %76
  %83 = load i32, ptr %9, align 4, !tbaa !43
  %84 = call fastcc zeroext i8 @ui_menu_scroll_test(ptr noundef nonnull %15, i32 noundef %83) #26, !range !328
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !312
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call ptr @CTX_wm_manager(ptr noundef %0) #25
  %92 = call ptr @CTX_wm_window(ptr noundef %0) #25
  %93 = call ptr @WM_event_add_timer(ptr noundef %91, ptr noundef %92, i32 noundef 272, double noundef 1.000000e-01) #25
  store ptr %93, ptr %87, align 8, !tbaa !312
  br label %94

94:                                               ; preds = %65, %82, %90, %86
  %95 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 23
  %96 = load ptr, ptr %95, align 8, !tbaa !329
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = call i32 %96(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %1) #25
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %379

101:                                              ; preds = %98, %94
  %102 = load i16, ptr %66, align 8, !tbaa !150
  switch i16 %102, label %379 [
    i16 137, label %103
    i16 139, label %118
    i16 140, label %150
    i16 138, label %150
    i16 10, label %150
    i16 11, label %150
    i16 14, label %150
    i16 49, label %278
    i16 151, label %278
    i16 50, label %270
    i16 152, label %270
    i16 51, label %271
    i16 153, label %271
    i16 52, label %272
    i16 154, label %272
    i16 53, label %273
    i16 155, label %273
    i16 54, label %274
    i16 156, label %274
    i16 55, label %275
    i16 157, label %275
    i16 56, label %276
    i16 158, label %276
    i16 57, label %277
    i16 159, label %277
    i16 48, label %279
    i16 150, label %279
    i16 97, label %340
    i16 98, label %340
    i16 99, label %340
    i16 100, label %340
    i16 101, label %340
    i16 102, label %340
    i16 103, label %340
    i16 104, label %340
    i16 105, label %340
    i16 106, label %340
    i16 107, label %340
    i16 108, label %340
    i16 109, label %340
    i16 110, label %340
    i16 111, label %340
    i16 112, label %340
    i16 113, label %340
    i16 114, label %340
    i16 115, label %340
    i16 116, label %340
    i16 117, label %340
    i16 118, label %340
    i16 119, label %340
    i16 120, label %340
    i16 121, label %340
    i16 122, label %340
  ]

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !151
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %379

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %109 = load i32, ptr %108, align 8, !tbaa !99
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %379, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 45
  %114 = load ptr, ptr %113, align 8, !tbaa !330
  %115 = icmp eq ptr %114, null
  br i1 %115, label %379, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  store i32 4, ptr %117, align 8, !tbaa !103
  br label %379

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !151
  %121 = icmp eq i16 %120, 1
  br i1 %121, label %122, label %379

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %124 = load i32, ptr %123, align 8, !tbaa !99
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %379, label %127

127:                                              ; preds = %122
  %128 = call fastcc zeroext i8 @ui_menu_pass_event_to_parent_if_nonactive(ptr noundef nonnull %2, ptr noundef %38, i32 noundef %3) #26
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %379

130:                                              ; preds = %127
  %131 = call ptr @ui_but_find_activated(ptr noundef nonnull %13) #26
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 29
  %135 = load i8, ptr %134, align 2, !tbaa !331
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = call fastcc ptr @ui_but_last(ptr noundef nonnull %15) #26
  br label %142

140:                                              ; preds = %133
  %141 = call fastcc ptr @ui_but_first(ptr noundef nonnull %15) #26
  br label %142

142:                                              ; preds = %138, %140
  %143 = phi ptr [ %139, %138 ], [ %141, %140 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %379, label %145

145:                                              ; preds = %130, %142
  %146 = phi ptr [ %143, %142 ], [ %131, %130 ]
  %147 = getelementptr inbounds %struct.uiBut, ptr %146, i64 0, i32 4
  %148 = load i32, ptr %147, align 8, !tbaa !51
  switch i32 %148, label %379 [
    i32 9728, label %149
    i32 13824, label %149
  ]

149:                                              ; preds = %145, %145
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %146, i32 noundef 4) #26
  br label %379

150:                                              ; preds = %101, %101, %101, %101, %101
  %151 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %152 = load i16, ptr %151, align 4, !tbaa !166
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %379

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %156 = load i16, ptr %155, align 8, !tbaa !167
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %379

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %160 = load i16, ptr %159, align 2, !tbaa !164
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %379

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 20
  %164 = load i16, ptr %163, align 2, !tbaa !165
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %379

166:                                              ; preds = %162
  br i1 %26, label %172, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %169 = load i32, ptr %168, align 8, !tbaa !99
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %527, label %172

172:                                              ; preds = %167, %166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  %173 = zext nneg i16 %102 to i32
  store i32 %173, ptr %11, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  %174 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %175 = load i16, ptr %174, align 2, !tbaa !151
  %176 = sext i16 %175 to i32
  store i32 %176, ptr %12, align 4, !tbaa !43
  %177 = icmp eq i16 %102, 14
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  call void @ui_pan_to_scroll(ptr noundef nonnull %1, ptr noundef nonnull %11, ptr noundef nonnull %12) #26
  %179 = load i32, ptr %12, align 4, !tbaa !43
  br label %180

180:                                              ; preds = %178, %172
  %181 = phi i32 [ %179, %178 ], [ %176, %172 ]
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %267

183:                                              ; preds = %180
  %184 = call fastcc zeroext i8 @ui_menu_pass_event_to_parent_if_nonactive(ptr noundef nonnull %2, ptr noundef %38, i32 noundef %3) #26
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %267

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 10
  call fastcc void @ui_mouse_motion_keynav_init(ptr noundef nonnull %187, ptr noundef nonnull %1) #26
  %188 = call ptr @ui_but_find_activated(ptr noundef nonnull %13) #26
  %189 = icmp eq ptr %188, null
  %190 = load i32, ptr %11, align 4
  br i1 %189, label %229, label %191

191:                                              ; preds = %186
  switch i32 %190, label %215 [
    i32 138, label %192
    i32 11, label %192
    i32 140, label %201
    i32 10, label %201
  ]

192:                                              ; preds = %191, %191
  %193 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 29
  %194 = load i8, ptr %193, align 2, !tbaa !331
  %195 = and i8 %194, 2
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  switch i32 %190, label %215 [
    i32 138, label %198
    i32 11, label %198
  ]

198:                                              ; preds = %197, %197
  %199 = and i8 %194, 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %215, label %206

201:                                              ; preds = %191, %191
  %202 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 29
  %203 = load i8, ptr %202, align 2, !tbaa !331
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %201, %198, %192
  %207 = getelementptr inbounds %struct.uiBut, ptr %188, i64 0, i32 4
  %208 = load i32, ptr %207, align 8, !tbaa !51
  %209 = and i32 %208, 1536
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  %212 = call fastcc ptr @ui_but_next(ptr noundef nonnull %188) #26
  br label %224

213:                                              ; preds = %206
  %214 = call fastcc ptr @ui_but_prev(ptr noundef nonnull %188) #26
  br label %224

215:                                              ; preds = %198, %191, %197, %201
  %216 = getelementptr inbounds %struct.uiBut, ptr %188, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !51
  %218 = and i32 %217, 1536
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = call fastcc ptr @ui_but_prev(ptr noundef nonnull %188) #26
  br label %224

222:                                              ; preds = %215
  %223 = call fastcc ptr @ui_but_next(ptr noundef nonnull %188) #26
  br label %224

224:                                              ; preds = %220, %222, %211, %213
  %225 = phi ptr [ %212, %211 ], [ %214, %213 ], [ %221, %220 ], [ %223, %222 ]
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %225, i32 noundef 1) #26
  %228 = load i32, ptr %9, align 4, !tbaa !43
  call fastcc void @ui_menu_scroll(ptr noundef nonnull %13, ptr noundef nonnull %15, i32 noundef %228, ptr noundef nonnull %225) #26
  br label %267

229:                                              ; preds = %224, %186
  switch i32 %190, label %253 [
    i32 140, label %230
    i32 10, label %230
    i32 138, label %240
    i32 11, label %240
  ]

230:                                              ; preds = %229, %229
  %231 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 29
  %232 = load i8, ptr %231, align 2, !tbaa !331
  %233 = and i8 %232, 2
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  switch i32 %190, label %253 [
    i32 140, label %236
    i32 10, label %236
    i32 138, label %240
    i32 11, label %240
  ]

236:                                              ; preds = %235, %235
  %237 = and i8 %232, 8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  switch i32 %190, label %253 [
    i32 138, label %240
    i32 11, label %240
  ]

240:                                              ; preds = %229, %229, %235, %235, %239, %239
  %241 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 29
  %242 = load i8, ptr %241, align 2, !tbaa !331
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %240, %236, %230
  %246 = call fastcc ptr @ui_but_first(ptr noundef nonnull %15) #26
  %247 = icmp eq ptr %246, null
  br i1 %247, label %267, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.uiBut, ptr %246, i64 0, i32 4
  %250 = load i32, ptr %249, align 8, !tbaa !51
  %251 = and i32 %250, 1536
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %264, label %261

253:                                              ; preds = %229, %235, %239, %240
  %254 = call fastcc ptr @ui_but_first(ptr noundef nonnull %15) #26
  %255 = icmp eq ptr %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.uiBut, ptr %254, i64 0, i32 4
  %258 = load i32, ptr %257, align 8, !tbaa !51
  %259 = and i32 %258, 1536
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253, %256, %248
  %262 = call fastcc ptr @ui_but_last(ptr noundef nonnull %15) #26
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %256, %248, %261
  %265 = phi ptr [ %262, %261 ], [ %254, %256 ], [ %246, %248 ]
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %265, i32 noundef 1) #26
  %266 = load i32, ptr %9, align 4, !tbaa !43
  call fastcc void @ui_menu_scroll(ptr noundef nonnull %13, ptr noundef nonnull %15, i32 noundef %266, ptr noundef nonnull %265) #26
  br label %267

267:                                              ; preds = %183, %261, %264, %227, %245, %180
  %268 = phi i32 [ 1, %180 ], [ %50, %183 ], [ 1, %261 ], [ 1, %264 ], [ 1, %227 ], [ 1, %245 ]
  %269 = phi ptr [ %38, %180 ], [ %38, %183 ], [ null, %261 ], [ null, %264 ], [ %225, %227 ], [ null, %245 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  br label %379

270:                                              ; preds = %101, %101
  br label %279

271:                                              ; preds = %101, %101
  br label %279

272:                                              ; preds = %101, %101
  br label %279

273:                                              ; preds = %101, %101
  br label %279

274:                                              ; preds = %101, %101
  br label %279

275:                                              ; preds = %101, %101
  br label %279

276:                                              ; preds = %101, %101
  br label %279

277:                                              ; preds = %101, %101
  br label %279

278:                                              ; preds = %101, %101
  br label %279

279:                                              ; preds = %270, %271, %272, %273, %274, %275, %276, %277, %101, %101, %278
  %280 = phi i32 [ 10, %101 ], [ 10, %101 ], [ 9, %277 ], [ 8, %276 ], [ 7, %275 ], [ 6, %274 ], [ 5, %273 ], [ 4, %272 ], [ 3, %271 ], [ 2, %270 ], [ 1, %278 ]
  %281 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %282 = load i32, ptr %281, align 8, !tbaa !99
  %283 = and i32 %282, 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %379, label %285

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %287 = load i16, ptr %286, align 2, !tbaa !151
  %288 = icmp eq i16 %287, 1
  br i1 %288, label %289, label %379

289:                                              ; preds = %285
  %290 = call fastcc zeroext i8 @ui_menu_pass_event_to_parent_if_nonactive(ptr noundef nonnull %2, ptr noundef %38, i32 noundef %3) #26
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %379

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %294 = load i16, ptr %293, align 4, !tbaa !166
  %295 = icmp eq i16 %294, 0
  %296 = add nuw nsw i32 %280, 10
  %297 = select i1 %295, i32 %280, i32 %296
  %298 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !61
  %300 = icmp eq ptr %299, null
  br i1 %300, label %379, label %301

301:                                              ; preds = %292
  %302 = add nsw i32 %297, -1
  br label %303

303:                                              ; preds = %301, %337
  %304 = phi ptr [ %299, %301 ], [ %338, %337 ]
  %305 = phi i32 [ 0, %301 ], [ %311, %337 ]
  %306 = getelementptr inbounds %struct.uiBut, ptr %304, i64 0, i32 4
  %307 = load i32, ptr %306, align 8, !tbaa !51
  switch i32 %307, label %308 [
    i32 5120, label %310
    i32 10752, label %310
    i32 27648, label %310
  ]

308:                                              ; preds = %303
  %309 = add nsw i32 %305, 1
  br label %310

310:                                              ; preds = %303, %303, %303, %308
  %311 = phi i32 [ %305, %303 ], [ %309, %308 ], [ %305, %303 ], [ %305, %303 ]
  %312 = getelementptr inbounds %struct.uiBut, ptr %304, i64 0, i32 54, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !116
  %314 = icmp eq ptr %313, null
  br i1 %314, label %330, label %315

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.uiBut, ptr %304, i64 0, i32 55
  %317 = load ptr, ptr %316, align 8, !tbaa !56
  %318 = icmp eq ptr %317, null
  br i1 %318, label %330, label %319

319:                                              ; preds = %315
  %320 = call i32 @RNA_property_subtype(ptr noundef nonnull %317) #25
  %321 = icmp eq i32 %320, 40
  br i1 %321, label %326, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %316, align 8, !tbaa !56
  %324 = call i32 @RNA_property_subtype(ptr noundef %323) #25
  %325 = icmp eq i32 %324, 41
  br i1 %325, label %326, label %330

326:                                              ; preds = %322, %319
  %327 = getelementptr inbounds %struct.uiBut, ptr %304, i64 0, i32 56
  %328 = load i32, ptr %327, align 8, !tbaa !118
  %329 = icmp eq i32 %328, %302
  br i1 %329, label %332, label %337

330:                                              ; preds = %310, %315, %322
  %331 = icmp eq i32 %311, %297
  br i1 %331, label %332, label %337

332:                                              ; preds = %330, %326
  %333 = getelementptr inbounds %struct.uiBut, ptr %304, i64 0, i32 4
  %334 = load i32, ptr %333, align 8, !tbaa !51
  %335 = icmp eq i32 %334, 13824
  %336 = select i1 %335, i32 4, i32 2
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %304, i32 noundef %336) #26
  br label %379

337:                                              ; preds = %326, %330
  %338 = load ptr, ptr %304, align 8, !tbaa !61
  %339 = icmp eq ptr %338, null
  br i1 %339, label %379, label %303, !llvm.loop !332

340:                                              ; preds = %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101, %101
  %341 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %342 = load i16, ptr %341, align 2, !tbaa !151
  switch i16 %342, label %379 [
    i16 1, label %343
    i16 4, label %343
  ]

343:                                              ; preds = %340, %340
  %344 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %345 = load i16, ptr %344, align 8, !tbaa !167
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %347, label %379

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 18
  %349 = load i16, ptr %348, align 2, !tbaa !164
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %351, label %379

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 20
  %353 = load i16, ptr %352, align 2, !tbaa !165
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %355, label %379

355:                                              ; preds = %351
  %356 = call fastcc zeroext i8 @ui_menu_pass_event_to_parent_if_nonactive(ptr noundef nonnull %2, ptr noundef %38, i32 noundef %3) #26
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %379

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 2
  br label %360

360:                                              ; preds = %364, %358
  %361 = phi ptr [ %359, %358 ], [ %362, %364 ]
  %362 = load ptr, ptr %361, align 8, !tbaa !61
  %363 = icmp eq ptr %362, null
  br i1 %363, label %379, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.uiBut, ptr %362, i64 0, i32 62
  %366 = load i8, ptr %365, align 2, !tbaa !323
  %367 = zext i8 %366 to i32
  %368 = load i16, ptr %66, align 8, !tbaa !150
  %369 = sext i16 %368 to i32
  %370 = icmp eq i32 %367, %369
  br i1 %370, label %371, label %360, !llvm.loop !333

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.uiBut, ptr %362, i64 0, i32 4
  %373 = load i32, ptr %372, align 8, !tbaa !51
  switch i32 %373, label %377 [
    i32 512, label %374
    i32 10240, label %374
    i32 9728, label %375
    i32 13824, label %375
    i32 5632, label %376
  ]

374:                                              ; preds = %371, %371
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %362, i32 noundef 2) #26
  br label %379

375:                                              ; preds = %371, %371
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %362, i32 noundef 4) #26
  br label %379

376:                                              ; preds = %371
  call fastcc void @ui_handle_button_activate(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %362, i32 noundef 1) #26
  br label %379

377:                                              ; preds = %371
  %378 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @__func__.ui_handle_menu_event, i32 noundef %373) #26
  br label %379

379:                                              ; preds = %360, %337, %292, %332, %101, %127, %150, %154, %158, %162, %285, %279, %355, %351, %347, %343, %267, %112, %116, %107, %103, %145, %142, %149, %122, %118, %289, %340, %374, %376, %377, %375, %98
  %380 = phi i32 [ %50, %98 ], [ %50, %101 ], [ %50, %355 ], [ %50, %351 ], [ %50, %347 ], [ %50, %343 ], [ %50, %285 ], [ %50, %279 ], [ %50, %150 ], [ %50, %154 ], [ %50, %158 ], [ %50, %162 ], [ %268, %267 ], [ %50, %127 ], [ 1, %112 ], [ 1, %116 ], [ 1, %107 ], [ 1, %103 ], [ 1, %145 ], [ 1, %142 ], [ 1, %149 ], [ 1, %122 ], [ 1, %118 ], [ %50, %289 ], [ %50, %340 ], [ 1, %374 ], [ 1, %376 ], [ 1, %377 ], [ 1, %375 ], [ 1, %332 ], [ 1, %292 ], [ 1, %337 ], [ 1, %360 ]
  %381 = phi ptr [ %38, %98 ], [ %38, %101 ], [ %38, %355 ], [ %38, %351 ], [ %38, %347 ], [ %38, %343 ], [ %38, %285 ], [ %38, %279 ], [ %38, %150 ], [ %38, %154 ], [ %38, %158 ], [ %38, %162 ], [ %269, %267 ], [ %38, %127 ], [ %38, %112 ], [ %38, %116 ], [ %38, %107 ], [ %38, %103 ], [ %146, %145 ], [ null, %142 ], [ %146, %149 ], [ %38, %122 ], [ %38, %118 ], [ %38, %289 ], [ %38, %340 ], [ %362, %374 ], [ %362, %376 ], [ %362, %377 ], [ %362, %375 ], [ %304, %332 ], [ null, %292 ], [ null, %337 ], [ null, %360 ]
  %382 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 27
  %383 = load i32, ptr %382, align 8, !tbaa !99
  %384 = and i32 %383, 1
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %527, label %386

386:                                              ; preds = %379
  %387 = icmp eq i8 %25, 0
  br i1 %387, label %388, label %426

388:                                              ; preds = %386
  %389 = load i16, ptr %66, align 8, !tbaa !150
  %390 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 45
  %391 = load ptr, ptr %390, align 8, !tbaa !330
  %392 = add i16 %389, -1
  %393 = icmp ult i16 %392, 3
  br i1 %393, label %394, label %426

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %396 = load i16, ptr %395, align 2, !tbaa !151
  switch i16 %396, label %426 [
    i16 1, label %397
    i16 4, label %397
  ]

397:                                              ; preds = %394, %394
  %398 = icmp eq i8 %5, 0
  br i1 %398, label %399, label %409

399:                                              ; preds = %397
  %400 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !214
  %401 = and i32 %400, 512
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %399
  %404 = and i32 %383, 1024
  %405 = icmp eq i32 %404, 0
  %406 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  br i1 %405, label %408, label %407

407:                                              ; preds = %403
  store i32 2, ptr %406, align 8, !tbaa !103
  br label %426

408:                                              ; preds = %403
  store i32 4, ptr %406, align 8, !tbaa !103
  br label %426

409:                                              ; preds = %399, %397
  %410 = icmp eq ptr %391, null
  br i1 %410, label %426, label %411

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.uiSafetyRct, ptr %391, i64 0, i32 2
  %413 = load i32, ptr %16, align 4, !tbaa !178
  %414 = sitofp i32 %413 to float
  %415 = load i32, ptr %18, align 8, !tbaa !42
  %416 = sitofp i32 %415 to float
  %417 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %412, float noundef %414, float noundef %416) #25
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %411
  %420 = load i32, ptr %382, align 8, !tbaa !99
  %421 = and i32 %420, 1024
  %422 = icmp eq i32 %421, 0
  %423 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  br i1 %422, label %425, label %424

424:                                              ; preds = %419
  store i32 2, ptr %423, align 8, !tbaa !103
  br label %426

425:                                              ; preds = %419
  store i32 4, ptr %423, align 8, !tbaa !103
  br label %426

426:                                              ; preds = %388, %409, %411, %425, %424, %407, %408, %394, %386
  %427 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  %428 = load i32, ptr %427, align 8, !tbaa !103
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %527

430:                                              ; preds = %426
  %431 = load i16, ptr %66, align 8, !tbaa !150
  %432 = icmp eq i16 %431, 4
  br i1 %432, label %433, label %439

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 10
  %435 = call fastcc zeroext i8 @ui_mouse_motion_keynav_test(ptr noundef nonnull %434, ptr noundef nonnull %1) #26
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %527

437:                                              ; preds = %433
  %438 = load i16, ptr %66, align 8, !tbaa !150
  br label %439

439:                                              ; preds = %437, %430
  %440 = phi i16 [ %438, %437 ], [ %431, %430 ]
  switch i16 %440, label %472 [
    i16 218, label %441
    i16 220, label %446
    i16 163, label %446
    i16 1, label %454
  ]

441:                                              ; preds = %439
  %442 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %443 = load i16, ptr %442, align 2, !tbaa !151
  %444 = icmp eq i16 %443, 1
  br i1 %444, label %445, label %472

445:                                              ; preds = %441
  store i32 1, ptr %427, align 8, !tbaa !103
  br label %527

446:                                              ; preds = %439, %439
  %447 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %448 = load i16, ptr %447, align 2, !tbaa !151
  %449 = icmp eq i16 %448, 1
  br i1 %449, label %450, label %472

450:                                              ; preds = %446
  %451 = call ptr @ui_but_find_activated(ptr noundef %13) #26
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %527

453:                                              ; preds = %450
  store i32 33, ptr %427, align 8, !tbaa !103
  br label %527

454:                                              ; preds = %439
  %455 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %456 = load i16, ptr %455, align 2, !tbaa !151
  %457 = icmp eq i16 %456, 1
  %458 = icmp ne i8 %6, 0
  %459 = and i1 %458, %457
  %460 = and i1 %26, %459
  %461 = select i1 %460, i1 %37, i1 false
  br i1 %461, label %462, label %472

462:                                              ; preds = %454
  %463 = icmp eq ptr %381, null
  br i1 %463, label %470, label %464

464:                                              ; preds = %462
  %465 = load i32, ptr %16, align 4, !tbaa !178
  %466 = load i32, ptr %18, align 8, !tbaa !42
  %467 = call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %13, ptr noundef nonnull %381, i32 noundef %465, i32 noundef %466) #26, !range !168
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %527

469:                                              ; preds = %464
  call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef nonnull %381) #26
  br label %470

470:                                              ; preds = %462, %469
  store i8 1, ptr %39, align 4, !tbaa !327
  %471 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 21
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %471, ptr noundef nonnull %16) #26
  br label %527

472:                                              ; preds = %439, %441, %446, %454
  br i1 %387, label %473, label %527

473:                                              ; preds = %472
  %474 = load i32, ptr %382, align 8, !tbaa !99
  %475 = and i32 %474, 128
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %527, label %477

477:                                              ; preds = %473
  %478 = icmp eq i8 %4, 0
  %479 = zext i1 %478 to i8
  call fastcc void @ui_mouse_motion_towards_check(ptr noundef nonnull %15, ptr noundef nonnull %2, ptr noundef nonnull %16, i8 noundef zeroext %479) #26
  %480 = getelementptr inbounds %struct.uiBlock, ptr %15, i64 0, i32 45
  %481 = load ptr, ptr %480, align 8, !tbaa !61
  %482 = icmp eq ptr %481, null
  br i1 %482, label %509, label %483

483:                                              ; preds = %477, %506
  %484 = phi ptr [ %507, %506 ], [ %481, %477 ]
  %485 = load i16, ptr %66, align 8, !tbaa !150
  %486 = icmp eq i16 %485, 4
  br i1 %486, label %487, label %490

487:                                              ; preds = %483
  %488 = load ptr, ptr %480, align 8, !tbaa !330
  %489 = icmp eq ptr %484, %488
  br i1 %489, label %490, label %506

490:                                              ; preds = %487, %483
  %491 = getelementptr inbounds %struct.uiSafetyRct, ptr %484, i64 0, i32 2
  %492 = load i32, ptr %16, align 4, !tbaa !178
  %493 = sitofp i32 %492 to float
  %494 = load i32, ptr %18, align 8, !tbaa !42
  %495 = sitofp i32 %494 to float
  %496 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %491, float noundef %493, float noundef %495) #25
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %519

498:                                              ; preds = %490
  %499 = getelementptr inbounds %struct.uiSafetyRct, ptr %484, i64 0, i32 3
  %500 = load i32, ptr %16, align 4, !tbaa !178
  %501 = sitofp i32 %500 to float
  %502 = load i32, ptr %18, align 8, !tbaa !42
  %503 = sitofp i32 %502 to float
  %504 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %499, float noundef %501, float noundef %503) #25
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %506, label %519

506:                                              ; preds = %487, %498
  %507 = load ptr, ptr %484, align 8, !tbaa !61
  %508 = icmp eq ptr %507, null
  br i1 %508, label %509, label %483, !llvm.loop !334

509:                                              ; preds = %506, %477
  %510 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 3
  %511 = load i8, ptr %510, align 8, !tbaa !335
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %513, label %523

513:                                              ; preds = %509
  %514 = load i32, ptr %382, align 8, !tbaa !99
  %515 = and i32 %514, 1024
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %513
  store i32 2, ptr %427, align 8, !tbaa !103
  br label %527

518:                                              ; preds = %513
  store i32 4, ptr %427, align 8, !tbaa !103
  br label %527

519:                                              ; preds = %490, %498
  %520 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 3
  %521 = load i8, ptr %520, align 8, !tbaa !335
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %527, label %523

523:                                              ; preds = %509, %519
  %524 = load i16, ptr %66, align 8, !tbaa !150
  %525 = icmp eq i16 %524, 4
  %526 = select i1 %525, i32 1, i32 %380
  br label %527

527:                                              ; preds = %167, %523, %518, %517, %519, %433, %74, %68, %426, %445, %470, %464, %473, %472, %450, %453, %379, %59, %64
  %528 = phi i32 [ %50, %64 ], [ %50, %59 ], [ %50, %74 ], [ %50, %68 ], [ %380, %426 ], [ %380, %445 ], [ %380, %450 ], [ %380, %453 ], [ %380, %464 ], [ 1, %470 ], [ %380, %473 ], [ %380, %472 ], [ %380, %379 ], [ 1, %433 ], [ %380, %519 ], [ %380, %517 ], [ %380, %518 ], [ %526, %523 ], [ %50, %167 ]
  %529 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %530 = load i16, ptr %529, align 8, !tbaa !150
  %531 = icmp eq i16 %530, 272
  br i1 %531, label %543, label %532

532:                                              ; preds = %527
  %533 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  %534 = load i32, ptr %533, align 8, !tbaa !103
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %541, label %536

536:                                              ; preds = %532
  %537 = and i32 %534, 16
  %538 = icmp ne i32 %537, 0
  %539 = icmp eq i32 %528, 0
  %540 = and i1 %539, %538
  br i1 %540, label %543, label %552

541:                                              ; preds = %532
  %542 = icmp eq i32 %528, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %527, %541, %536
  %544 = call fastcc i32 @ui_handle_menu_button(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  %545 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %2, i64 0, i32 16
  %546 = load i32, ptr %545, align 8, !tbaa !103
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %552

548:                                              ; preds = %541, %543
  %549 = phi i32 [ %544, %543 ], [ 1, %541 ]
  %550 = icmp eq i8 %25, 0
  %551 = select i1 %550, i32 %549, i32 1
  br label %552

552:                                              ; preds = %536, %548, %543, %46, %42
  %553 = phi i32 [ 0, %42 ], [ 0, %46 ], [ 0, %543 ], [ %551, %548 ], [ 0, %536 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  ret i32 %553
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_mouse_motion_towards_reinit(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !336 {
  tail call fastcc void @ui_mouse_motion_towards_init_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ui_block_is_pie_menu(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_mouse_inside_button(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !337 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %9 = tail call fastcc zeroext i8 @ui_mouse_inside_region(ptr noundef %0, i32 noundef %2, i32 noundef %3) #26, !range !168
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %4
  %12 = sitofp i32 %2 to float
  store float %12, ptr %5, align 4, !tbaa !85
  %13 = sitofp i32 %3 to float
  store float %13, ptr %6, align 4, !tbaa !85
  call void @ui_window_to_block_fl(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 47
  %15 = load i8, ptr %14, align 2, !tbaa !293
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = call fastcc zeroext i8 @ui_but_isect_pie_seg(ptr noundef %8, ptr noundef nonnull %1) #26, !range !168
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %25

20:                                               ; preds = %11
  %21 = load float, ptr %5, align 4, !tbaa !85
  %22 = load float, ptr %6, align 4, !tbaa !85
  %23 = call fastcc zeroext i8 @ui_but_contains_pt(ptr noundef nonnull %1, float noundef %21, float noundef %22) #26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %20, %17, %4, %25
  %27 = phi i8 [ 1, %25 ], [ 0, %4 ], [ 0, %17 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_handle_button_over(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !338 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !150
  switch i16 %5, label %25 [
    i16 4, label %6
    i16 20513, label %18
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ui_but_find_mouse_over(ptr noundef %2, ptr noundef nonnull %1) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %11 = load i16, ptr %10, align 4, !tbaa !166
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = and i32 %14, -268435457
  %16 = select i1 %12, i32 0, i32 268435456
  %17 = or disjoint i32 %15, %16
  store i32 %17, ptr %13, align 8, !tbaa !57
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 0) #26
  br label %25

18:                                               ; preds = %3
  %19 = tail call fastcc ptr @uit_but_find_open_event(ptr noundef %2, ptr noundef nonnull %1) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %19, i32 noundef 0) #26
  %22 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 74
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = tail call fastcc i32 @ui_do_button(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %19, ptr noundef nonnull %1) #26
  br label %25

25:                                               ; preds = %3, %21, %18, %6, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @uit_but_find_open_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !339 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  br label %11

8:                                                ; preds = %14
  %9 = load ptr, ptr %12, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !llvm.loop !340

11:                                               ; preds = %6, %8
  %12 = phi ptr [ %4, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 2
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !tbaa !152
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %21, label %14, !llvm.loop !341

21:                                               ; preds = %8, %18, %2
  %22 = phi ptr [ null, %2 ], [ %16, %18 ], [ null, %8 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !342 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !343
  %4 = load float, ptr %0, align 4, !tbaa !344
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !345 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !346
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !347
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !348 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !349 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_recenter(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !350 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #26
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_but_pie_menu_apply(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #3 !PGOFuncName !351 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc zeroext i8 @ui_but_pie_menu_supported_apply(ptr noundef nonnull %2) #26, !range !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = icmp eq i32 %11, 5632
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !115
  %17 = tail call ptr @ui_but_find_activated(ptr noundef %16) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 67
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 0) #26
  %22 = load ptr, ptr %1, align 8, !tbaa !115
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %22, %19 ], [ %16, %15 ]
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %24, ptr noundef nonnull %2, i32 noundef 4) #26
  br label %37

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 16
  store i32 1, ptr %26, align 8, !tbaa !103
  br label %37

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %29 = load ptr, ptr %28, align 8, !tbaa !94
  %30 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 67
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %2, ptr noundef %31, i8 noundef zeroext 0) #26
  %32 = load ptr, ptr %30, align 8, !tbaa !73
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %32, i8 noundef zeroext 0, i8 noundef zeroext 1) #26
  %33 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 16
  store i32 2, ptr %33, align 8, !tbaa !103
  br label %37

34:                                               ; preds = %6, %4
  %35 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 16
  store i32 1, ptr %35, align 8, !tbaa !103
  %36 = load ptr, ptr %1, align 8, !tbaa !115
  tail call void @ED_region_tag_redraw(ptr noundef %36) #25
  br label %37

37:                                               ; preds = %34, %27, %25, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_but_pie_button_activate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !352 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 8, !tbaa !115
  %7 = tail call ptr @ui_but_find_activated(ptr noundef %6) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 67
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #26
  %12 = load ptr, ptr %2, align 8, !tbaa !115
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %6, %5 ]
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %1, i32 noundef 0) #26
  tail call fastcc void @ui_but_pie_menu_apply(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1, i8 noundef zeroext 0) #26
  br label %15

15:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_block_pie_dir_activate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !353 {
  %4 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !151
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 47
  %19 = load i8, ptr %18, align 2, !tbaa !293
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.uiBut, ptr %17, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !51
  switch i32 %24, label %28 [
    i32 10752, label %25
    i32 27648, label %25
  ]

25:                                               ; preds = %22, %22, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !354

28:                                               ; preds = %22, %25, %12, %3, %8
  %29 = phi ptr [ null, %8 ], [ null, %3 ], [ null, %12 ], [ %17, %22 ], [ null, %25 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ui_but_pie_menu_supported_apply(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = icmp ne i32 %3, 7168
  %5 = icmp ne i32 %3, 2560
  %6 = and i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !356 {
  %4 = load i32, ptr %1, align 4, !tbaa !43
  %5 = load i32, ptr %2, align 4, !tbaa !43
  %6 = sub nsw i32 %4, %5
  store i32 %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds i32, ptr %2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !357 {
  %3 = load i32, ptr %1, align 4, !tbaa !43
  store i32 %3, ptr %0, align 4, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !358 {
  %4 = load i32, ptr %1, align 4, !tbaa !43
  %5 = load i32, ptr %2, align 4, !tbaa !43
  %6 = add nsw i32 %5, %4
  store i32 %6, ptr %0, align 4, !tbaa !43
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds i32, ptr %2, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = add nsw i32 %10, %8
  %12 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @ui_popup_translate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_menu_scroll(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #3 !PGOFuncName !359 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !99
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 18, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !360
  %14 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %15 = load float, ptr %14, align 4, !tbaa !326
  %16 = fadd float %15, -1.200000e+01
  %17 = fcmp ogt float %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = fsub float %15, %13
  %20 = fadd float %19, -1.200000e+01
  br label %21

21:                                               ; preds = %11, %18, %6
  %22 = phi float [ %20, %18 ], [ 0.000000e+00, %11 ], [ 0.000000e+00, %6 ]
  %23 = and i32 %8, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 18, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !361
  %28 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !362
  %30 = fadd float %29, 1.200000e+01
  %31 = fcmp olt float %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = fsub float %29, %27
  %34 = fadd float %33, 1.200000e+01
  br label %45

35:                                               ; preds = %4
  %36 = tail call fastcc zeroext i8 @ui_menu_scroll_test(ptr noundef %1, i32 noundef %2) #26, !range !328
  switch i8 %36, label %112 [
    i8 116, label %37
    i8 98, label %42
  ]

37:                                               ; preds = %35
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = sitofp i32 %40 to float
  br label %45

42:                                               ; preds = %35
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %44 = sitofp i16 %43 to float
  br label %45

45:                                               ; preds = %37, %42, %21, %32, %25
  %46 = phi float [ %34, %32 ], [ %22, %25 ], [ %22, %21 ], [ %41, %37 ], [ %44, %42 ]
  %47 = fcmp une float %46, 0.000000e+00
  br i1 %47, label %48, label %112

48:                                               ; preds = %45
  %49 = fcmp olt float %46, 0.000000e+00
  %50 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = icmp eq ptr %51, null
  br i1 %49, label %53, label %76

53:                                               ; preds = %48
  br i1 %52, label %62, label %54

54:                                               ; preds = %53, %54
  %55 = phi ptr [ %60, %54 ], [ %51, %53 ]
  %56 = phi float [ %59, %54 ], [ 0xC7EFFFFFE0000000, %53 ]
  %57 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 18, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !360
  %59 = tail call fastcc float @max_ff(float noundef %56, float noundef %58) #26
  %60 = load ptr, ptr %55, align 8, !tbaa !61
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54, !llvm.loop !363

62:                                               ; preds = %54, %53
  %63 = phi float [ 0xC7EFFFFFE0000000, %53 ], [ %59, %54 ]
  %64 = fadd float %46, %63
  %65 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %66 = sitofp i16 %65 to float
  %67 = fneg float %66
  %68 = tail call float @llvm.fmuladd.f32(float %67, float 5.000000e-01, float %64)
  %69 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 3
  %70 = load float, ptr %69, align 4, !tbaa !326
  %71 = fadd float %70, -4.000000e+00
  %72 = fcmp olt float %68, %71
  %73 = fsub float %70, %63
  %74 = fadd float %73, -4.000000e+00
  %75 = select i1 %72, float %74, float %46
  br label %98

76:                                               ; preds = %48
  br i1 %52, label %85, label %77

77:                                               ; preds = %76, %77
  %78 = phi ptr [ %83, %77 ], [ %51, %76 ]
  %79 = phi float [ %82, %77 ], [ 0x47EFFFFFE0000000, %76 ]
  %80 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 18, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !361
  %82 = tail call fastcc float @min_ff(float noundef %79, float noundef %81) #26
  %83 = load ptr, ptr %78, align 8, !tbaa !61
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !llvm.loop !364

85:                                               ; preds = %77, %76
  %86 = phi float [ 0x47EFFFFFE0000000, %76 ], [ %82, %77 ]
  %87 = fadd float %46, %86
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %89 = sitofp i16 %88 to float
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 5.000000e-01, float %87)
  %91 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 11, i32 2
  %92 = load float, ptr %91, align 8, !tbaa !362
  %93 = fadd float %92, 4.000000e+00
  %94 = fcmp ogt float %90, %93
  %95 = fsub float %92, %86
  %96 = fadd float %95, 4.000000e+00
  %97 = select i1 %94, float %96, float %46
  br label %98

98:                                               ; preds = %85, %62
  %99 = phi float [ %75, %62 ], [ %97, %85 ]
  %100 = icmp eq ptr %51, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %98
  %102 = insertelement <2 x float> poison, float %99, i64 0
  %103 = shufflevector <2 x float> %102, <2 x float> poison, <2 x i32> zeroinitializer
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %109, %104 ], [ %51, %101 ]
  %106 = getelementptr inbounds %struct.uiBut, ptr %105, i64 0, i32 18, i32 2
  %107 = load <2 x float>, ptr %106, align 8, !tbaa !85
  %108 = fadd <2 x float> %103, %107
  store <2 x float> %108, ptr %106, align 8, !tbaa !85
  %109 = load ptr, ptr %105, align 8, !tbaa !61
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %104, !llvm.loop !365

111:                                              ; preds = %104, %98
  tail call void @ui_popup_block_scrolltest(ptr noundef %1) #25
  tail call void @ED_region_tag_redraw(ptr noundef %0) #25
  br label %112

112:                                              ; preds = %35, %45, %111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_mouse_motion_towards_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !366 {
  tail call fastcc void @ui_mouse_motion_towards_init_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @ui_menu_scroll_test(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !367 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !99
  %5 = and i32 %4, 96
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = and i32 %4, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = sitofp i32 %1 to float
  %12 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !326
  %14 = fadd float %13, -1.400000e+01
  %15 = fcmp olt float %14, %11
  br i1 %15, label %26, label %16

16:                                               ; preds = %10, %7
  %17 = and i32 %4, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = sitofp i32 %1 to float
  %21 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !362
  %23 = fadd float %22, 1.400000e+01
  %24 = fcmp ogt float %23, %20
  br i1 %24, label %26, label %25

25:                                               ; preds = %16, %19, %2
  br label %26

26:                                               ; preds = %19, %10, %25
  %27 = phi i8 [ 0, %25 ], [ 116, %10 ], [ 98, %19 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @ui_menu_pass_event_to_parent_if_nonactive(ptr nocapture noundef writeonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #16 !PGOFuncName !368 {
  %4 = icmp ne i32 %2, 0
  %5 = icmp eq ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %0, i64 0, i32 16
  store i32 12, ptr %8, align 8, !tbaa !103
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @ui_but_last(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !369 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %11, %9 ], [ %3, %1 ]
  %7 = tail call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %6) #26, !range !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !370

13:                                               ; preds = %5, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %6, %5 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_but_first(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %5) #26, !range !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %10, !llvm.loop !372

10:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_mouse_motion_keynav_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !373 {
  store i8 1, ptr %0, align 4, !tbaa !374
  %3 = getelementptr inbounds %struct.uiKeyNavLock, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_but_next(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !375 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !376
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %4) #26, !range !168
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %2, label %9, !llvm.loop !377

9:                                                ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_but_prev(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !378 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.uiBut, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !379
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @ui_but_is_editable(ptr noundef nonnull %5) #26, !range !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %2, label %10, !llvm.loop !380

10:                                               ; preds = %2, %7
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @ui_mouse_motion_keynav_test(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !381 {
  %3 = load i8, ptr %0, align 4, !tbaa !374
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uiKeyNavLock, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %8 = tail call fastcc i32 @len_manhattan_v2v2_int(ptr noundef nonnull %6, ptr noundef nonnull %7) #26, !range !382
  %9 = icmp sgt i32 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i8 0, ptr %0, align 4, !tbaa !374
  br label %11

11:                                               ; preds = %10, %5, %2
  %12 = phi i8 [ 0, %10 ], [ %3, %5 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_mouse_motion_towards_check(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #3 !PGOFuncName !383 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca %struct.rctf, align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  %14 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 1
  %15 = load <2 x float>, ptr %14, align 8, !tbaa !85
  store <2 x float> %15, ptr %9, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  %16 = load <2 x i32>, ptr %2, align 4, !tbaa !43
  %17 = sitofp <2 x i32> %16 to <2 x float>
  store <2 x float> %17, ptr %10, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #27
  %18 = load ptr, ptr %1, align 8, !tbaa !115
  %19 = load ptr, ptr %18, align 8, !tbaa !384
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %4, %29
  %22 = phi ptr [ %30, %29 ], [ %19, %4 ]
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call zeroext i8 @ui_block_is_menu(ptr noundef nonnull %24) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %21, %26
  %30 = load ptr, ptr %22, align 8, !tbaa !384
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !385

32:                                               ; preds = %29, %4
  %33 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !335
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %86, label %36

36:                                               ; preds = %32
  %37 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %10) #26
  %38 = fcmp olt float %37, 1.600000e+01
  br i1 %38, label %86, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %1, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 11
  call void @ui_block_to_window_rctf(ptr noundef %40, ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %41) #25
  %42 = load <4 x float>, ptr %11, align 16
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %44 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 2
  %45 = load float, ptr %44, align 8, !tbaa !347
  %46 = insertelement <2 x float> %43, float %45, i64 1
  %47 = fadd <2 x float> %46, <float -2.000000e+01, float -2.000000e+01>
  store <2 x float> %47, ptr %5, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !343
  %50 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %51 = extractelement <2 x float> %47, i64 1
  store float %51, ptr %50, align 4, !tbaa !85
  %52 = getelementptr inbounds %struct.rctf, ptr %11, i64 0, i32 3
  %53 = load float, ptr %52, align 4, !tbaa !346
  %54 = insertelement <2 x float> poison, float %49, i64 0
  %55 = insertelement <2 x float> %54, float %53, i64 1
  %56 = fadd <2 x float> %55, <float 2.000000e+01, float 2.000000e+01>
  %57 = extractelement <2 x float> %56, i64 0
  store float %57, ptr %6, align 4, !tbaa !85
  store <2 x float> %56, ptr %7, align 8, !tbaa !85
  %58 = extractelement <2 x float> %47, i64 0
  store float %58, ptr %8, align 4, !tbaa !85
  %59 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %60 = extractelement <2 x float> %56, i64 1
  store float %60, ptr %59, align 4, !tbaa !85
  %61 = icmp eq i8 %3, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  %63 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %11) #26
  store float %63, ptr %12, align 4, !tbaa !85
  %64 = getelementptr inbounds float, ptr %12, i64 1
  %65 = call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %11) #26
  store float %65, ptr %64, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %12) #26
  call fastcc void @normalize_v2(ptr noundef nonnull %13) #26
  call fastcc void @mul_v2_fl(ptr noundef nonnull %13, float noundef 6.400000e+01) #26
  call fastcc void @add_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %13) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  br label %66

66:                                               ; preds = %62, %39
  %67 = call i32 @isect_point_tri_v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = call i32 @isect_point_tri_v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = call i32 @isect_point_tri_v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call i32 @isect_point_tri_v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %5) #25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i8 0, ptr %33, align 8, !tbaa !335
  br label %79

79:                                               ; preds = %72, %69, %66, %78, %75
  %80 = call double @PIL_check_seconds_timer() #25
  %81 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %1, i64 0, i32 2
  %82 = load double, ptr %81, align 8, !tbaa !386
  %83 = fsub double %80, %82
  %84 = fcmp ogt double %83, 1.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i8 0, ptr %33, align 8, !tbaa !335
  br label %86

86:                                               ; preds = %26, %79, %85, %36, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #17 !PGOFuncName !387 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #17 !PGOFuncName !388 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @ui_popup_block_scrolltest(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_mouse_motion_towards_init_ex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #3 !PGOFuncName !389 {
  %4 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !335
  %6 = icmp eq i8 %5, 0
  %7 = icmp ne i8 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  store i8 1, ptr %4, align 8, !tbaa !335
  %10 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %0, i64 0, i32 1
  %11 = load <2 x i32>, ptr %1, align 4, !tbaa !43
  %12 = sitofp <2 x i32> %11 to <2 x float>
  store <2 x float> %12, ptr %10, align 8, !tbaa !85
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call double @PIL_check_seconds_timer() #25
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi double [ %15, %14 ], [ 0x7FEFFFFFFFFFFFFF, %9 ]
  %18 = getelementptr inbounds %struct.uiPopupBlockHandle, ptr %0, i64 0, i32 2
  store double %17, ptr %18, align 8, !tbaa !386
  br label %19

19:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @len_manhattan_v2v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !390 {
  %3 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call fastcc void @sub_v2_v2v2_int(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #26
  %4 = call fastcc i32 @len_manhattan_v2_int(ptr noundef nonnull %3) #26, !range !382
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @len_manhattan_v2_int(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !391 {
  %2 = load i32, ptr %0, align 4, !tbaa !43
  %3 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = add nuw nsw i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: optsize
declare void @ui_block_to_window_rctf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !392 {
  %2 = load float, ptr %0, align 4, !tbaa !344
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !343
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !393 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !347
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !346
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !394 {
  %2 = tail call fastcc float @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #26
  ret void
}

; Function Attrs: optsize
declare i32 @isect_point_tri_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ui_tooltip_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_listbase_clear() unnamed_addr #20 !PGOFuncName !395 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @UIAfterFuncs, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_store_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_store_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_butstore_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ui_context_rna_button_active_test(ptr nocapture noundef readonly %0) #2 !PGOFuncName !396 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !397 {
  store <2 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr %0, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_but_list_row_text_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !398 {
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %7 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !178
  %9 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = tail call fastcc ptr @ui_but_find_mouse_over_ex(ptr noundef %6, i32 noundef %8, i32 noundef %10, i8 noundef zeroext 1) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i32 %15, 3072
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !57
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %23, align 4, !tbaa !92
  tail call fastcc void @button_activate_exit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #26
  tail call fastcc void @button_activate_init(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %11, i32 noundef %4) #26
  br label %24

24:                                               ; preds = %5, %13, %17, %22
  %25 = phi ptr [ %11, %22 ], [ null, %17 ], [ null, %13 ], [ null, %5 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_but_copy_paste(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #3 !PGOFuncName !399 {
  %5 = alloca i32, align 4
  %6 = alloca [400 x i8], align 16
  %7 = alloca double, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [400 x i8], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [400 x i8], align 16
  %12 = alloca [96 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !tbaa !43
  switch i8 %3, label %29 [
    i8 118, label %13
    i8 99, label %17
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 45
  %15 = load i8, ptr %14, align 4, !tbaa !169
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %245, label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %19) #25
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %245, label %29

24:                                               ; preds = %13
  %25 = call ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext 0, ptr noundef nonnull %5) #25
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  %28 = select i1 %26, ptr %25, ptr @.str.17
  br label %29

29:                                               ; preds = %4, %21, %17, %24
  %30 = phi i1 [ false, %24 ], [ true, %17 ], [ true, %21 ], [ false, %4 ]
  %31 = phi i8 [ %27, %24 ], [ 0, %17 ], [ 0, %21 ], [ 0, %4 ]
  %32 = phi ptr [ %28, %24 ], [ @.str.17, %17 ], [ @.str.17, %21 ], [ @.str.17, %4 ]
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !51
  switch i32 %34, label %224 [
    i32 2560, label %35
    i32 7168, label %35
    i32 15872, label %54
    i32 7680, label %84
    i32 3072, label %152
    i32 20992, label %152
    i32 26624, label %152
    i32 15360, label %186
    i32 16384, label %205
  ]

35:                                               ; preds = %29, %29
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !172
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !116
  %42 = icmp eq ptr %41, null
  br i1 %42, label %241, label %43

43:                                               ; preds = %39, %35
  br i1 %30, label %44, label %46

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %6) #27
  call void @ui_get_but_string_ex(ptr noundef nonnull %1, ptr noundef nonnull %6, i64 noundef 400, i32 noundef 6) #25
  %45 = call i32 @BLI_str_rstrip_float_zero(ptr noundef nonnull %6, i8 noundef zeroext 0) #25
  call void @WM_clipboard_text_set(ptr noundef nonnull %6, i8 noundef zeroext 0) #25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %6) #27
  br label %241

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %47 = call zeroext i8 @ui_set_but_string_eval_num(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %7) #25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #26
  %50 = load double, ptr %7, align 8, !tbaa !400
  %51 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 13
  store double %50, ptr %51, align 8, !tbaa !184
  %52 = call zeroext i8 @ui_set_but_string(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %32) #25
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %53

53:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  br label %241

54:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %55 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !172
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !116
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %58, %54
  br i1 %30, label %63, label %73

63:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %9) #27
  call void @ui_get_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %8) #25
  %64 = load float, ptr %8, align 4, !tbaa !85
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !85
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !85
  %71 = fpext float %70 to double
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 400, ptr noundef nonnull @.str.18, double noundef %65, double noundef %68, double noundef %71) #25
  call void @WM_clipboard_text_set(ptr noundef nonnull %9, i8 noundef zeroext 0) #25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %9) #27
  br label %83

73:                                               ; preds = %62
  %74 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %75 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %76 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %32, ptr noundef nonnull @.str.18, ptr noundef nonnull %8, ptr noundef nonnull %74, ptr noundef nonnull %75) #25
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #26
  %80 = fcmp oeq float %79, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store float 1.000000e+00, ptr %75, align 4, !tbaa !85
  br label %82

82:                                               ; preds = %81, %78
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #26
  call void @ui_set_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %8) #25
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %83

83:                                               ; preds = %63, %82, %73, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  br label %241

84:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  %85 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !172
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !116
  %91 = icmp eq ptr %90, null
  br i1 %91, label %151, label %92

92:                                               ; preds = %88, %84
  br i1 %30, label %93, label %126

93:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %11) #27
  %94 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %95 = load ptr, ptr %94, align 8, !tbaa !56
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %99 = call i32 @RNA_property_array_length(ptr noundef nonnull %98, ptr noundef nonnull %95) #25
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load ptr, ptr %94, align 8, !tbaa !56
  %103 = call float @RNA_property_float_get_index(ptr noundef nonnull %98, ptr noundef %102, i32 noundef 3) #25
  br label %104

104:                                              ; preds = %93, %97, %101
  %105 = phi float [ %103, %101 ], [ 1.000000e+00, %97 ], [ 1.000000e+00, %93 ]
  %106 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float %105, ptr %106, align 4, !tbaa !85
  call void @ui_get_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %10) #25
  %107 = load ptr, ptr %94, align 8, !tbaa !56
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = call i32 @RNA_property_subtype(ptr noundef nonnull %107) #25
  %111 = icmp eq i32 %110, 30
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #26
  br label %113

113:                                              ; preds = %112, %109, %104
  %114 = load float, ptr %10, align 16, !tbaa !85
  %115 = fpext float %114 to double
  %116 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !85
  %118 = fpext float %117 to double
  %119 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %120 = load float, ptr %119, align 8, !tbaa !85
  %121 = fpext float %120 to double
  %122 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %123 = load float, ptr %122, align 4, !tbaa !85
  %124 = fpext float %123 to double
  %125 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 400, ptr noundef nonnull @.str.19, double noundef %115, double noundef %118, double noundef %121, double noundef %124) #25
  call void @WM_clipboard_text_set(ptr noundef nonnull %11, i8 noundef zeroext 0) #25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %11) #27
  br label %151

126:                                              ; preds = %92
  %127 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %128 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %129 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %130 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %32, ptr noundef nonnull @.str.19, ptr noundef nonnull %10, ptr noundef nonnull %127, ptr noundef nonnull %128, ptr noundef nonnull %129) #25
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %134 = load ptr, ptr %133, align 8, !tbaa !56
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = call i32 @RNA_property_subtype(ptr noundef nonnull %134) #25
  %138 = icmp eq i32 %137, 30
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #26
  br label %140

140:                                              ; preds = %139, %136, %132
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #26
  call void @ui_set_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %10) #25
  %141 = load ptr, ptr %133, align 8, !tbaa !56
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %145 = call i32 @RNA_property_array_length(ptr noundef nonnull %144, ptr noundef nonnull %141) #25
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load ptr, ptr %133, align 8, !tbaa !56
  %149 = load float, ptr %129, align 4, !tbaa !85
  call void @RNA_property_float_set_index(ptr noundef nonnull %144, ptr noundef %148, i32 noundef 3, float noundef %149) #25
  br label %150

150:                                              ; preds = %147, %143, %140
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %151

151:                                              ; preds = %113, %150, %126, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  br label %241

152:                                              ; preds = %29, %29, %29
  %153 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %154 = load ptr, ptr %153, align 8, !tbaa !73
  %155 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %156 = load ptr, ptr %155, align 8, !tbaa !172
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !116
  %161 = icmp eq ptr %160, null
  br i1 %161, label %241, label %162

162:                                              ; preds = %158, %152
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 6) #26
  br i1 %30, label %163, label %167

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.uiHandleButtonData, ptr %154, i64 0, i32 11
  %165 = load ptr, ptr %164, align 8, !tbaa !108
  call void @WM_clipboard_text_set(ptr noundef %165, i8 noundef zeroext 0) #25
  %166 = getelementptr inbounds %struct.uiHandleButtonData, ptr %154, i64 0, i32 6
  store i8 1, ptr %166, align 4, !tbaa !92
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %241

167:                                              ; preds = %162
  %168 = call zeroext i8 @ui_is_but_utf8(ptr noundef nonnull %1) #26, !range !168
  %169 = icmp eq i8 %168, 0
  %170 = getelementptr inbounds %struct.uiHandleButtonData, ptr %154, i64 0, i32 11
  %171 = load ptr, ptr %170, align 8, !tbaa !108
  %172 = getelementptr inbounds %struct.uiHandleButtonData, ptr %154, i64 0, i32 23
  %173 = load i32, ptr %172, align 8, !tbaa !233
  %174 = sext i32 %173 to i64
  br i1 %169, label %177, label %175

175:                                              ; preds = %167
  %176 = call ptr @BLI_strncpy_utf8(ptr noundef %171, ptr noundef nonnull %32, i64 noundef %174) #25
  br label %179

177:                                              ; preds = %167
  %178 = call ptr @BLI_strncpy(ptr noundef %171, ptr noundef nonnull %32, i64 noundef %174) #25
  br label %179

179:                                              ; preds = %177, %175
  %180 = load i32, ptr %33, align 8, !tbaa !51
  switch i32 %180, label %185 [
    i32 20992, label %181
    i32 26624, label %181
  ]

181:                                              ; preds = %179, %179
  %182 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 48
  store i8 1, ptr %182, align 1, !tbaa !401
  %183 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 41
  %184 = load ptr, ptr %183, align 8, !tbaa !89
  call void @ui_searchbox_update(ptr noundef %0, ptr noundef %184, ptr noundef nonnull %1, i8 noundef zeroext 1) #25
  br label %185

185:                                              ; preds = %179, %181
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %241

186:                                              ; preds = %29
  br i1 %30, label %187, label %192

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %189 = load ptr, ptr %188, align 8, !tbaa !172
  %190 = icmp eq ptr %189, null
  br i1 %190, label %241, label %191

191:                                              ; preds = %187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) @but_copypaste_coba, ptr noundef nonnull align 1 dereferenceable(776) %189, i64 776, i1 false)
  br label %241

192:                                              ; preds = %186
  %193 = load i16, ptr @but_copypaste_coba, align 4, !tbaa !402
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %241, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %197 = load ptr, ptr %196, align 8, !tbaa !172
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %201 = call ptr %200(i64 noundef 776, ptr noundef nonnull @.str.20) #25
  store ptr %201, ptr %196, align 8, !tbaa !172
  br label %202

202:                                              ; preds = %199, %195
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #26
  %203 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 18
  %204 = load ptr, ptr %203, align 8, !tbaa !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) %204, ptr noundef nonnull align 4 dereferenceable(776) @but_copypaste_coba, i64 776, i1 false)
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %241

205:                                              ; preds = %29
  br i1 %30, label %206, label %212

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %208 = load ptr, ptr %207, align 8, !tbaa !172
  %209 = icmp eq ptr %208, null
  br i1 %209, label %241, label %210

210:                                              ; preds = %206
  store i1 true, ptr @but_copypaste_curve_alive, align 1
  call void @curvemapping_free_data(ptr noundef nonnull @but_copypaste_curve) #25
  %211 = load ptr, ptr %207, align 8, !tbaa !172
  call void @curvemapping_copy_data(ptr noundef nonnull @but_copypaste_curve, ptr noundef %211) #25
  br label %241

212:                                              ; preds = %205
  %213 = load i1, ptr @but_copypaste_curve_alive, align 1
  br i1 %213, label %214, label %241

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %216 = load ptr, ptr %215, align 8, !tbaa !172
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %220 = call ptr %219(i64 noundef 384, ptr noundef nonnull @.str.21) #25
  store ptr %220, ptr %215, align 8, !tbaa !172
  br label %221

221:                                              ; preds = %218, %214
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #26
  %222 = load ptr, ptr %215, align 8, !tbaa !172
  call void @curvemapping_free_data(ptr noundef %222) #25
  %223 = load ptr, ptr %215, align 8, !tbaa !172
  call void @curvemapping_copy_data(ptr noundef %223, ptr noundef nonnull @but_copypaste_curve) #25
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %241

224:                                              ; preds = %29
  %225 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %226 = load ptr, ptr %225, align 8, !tbaa !403
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  br i1 %30, label %229, label %241

229:                                              ; preds = %228
  %230 = call ptr @uiButGetOperatorPtrRNA(ptr noundef nonnull %1) #25
  %231 = load ptr, ptr %225, align 8, !tbaa !403
  %232 = call ptr @WM_operator_pystring_ex(ptr noundef %0, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %231, ptr noundef %230) #25
  call void @WM_clipboard_text_set(ptr noundef %232, i8 noundef zeroext 0) #25
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %233(ptr noundef %232) #25
  br label %241

234:                                              ; preds = %224
  switch i32 %34, label %241 [
    i32 5632, label %235
    i32 13824, label %235
  ]

235:                                              ; preds = %234, %234
  %236 = call ptr @uiButGetMenuType(ptr noundef nonnull %1) #25
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #27
  %239 = getelementptr inbounds %struct.MenuType, ptr %236, i64 0, i32 2
  %240 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 96, ptr noundef nonnull @.str.22, ptr noundef nonnull %239) #25
  call void @WM_clipboard_text_set(ptr noundef nonnull %12, i8 noundef zeroext 0) #25
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #27
  br label %241

241:                                              ; preds = %235, %238, %234, %158, %185, %163, %83, %212, %221, %206, %210, %228, %229, %191, %187, %202, %192, %151, %39, %53, %44
  %242 = icmp eq i8 %31, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %241
  %244 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %244(ptr noundef nonnull %32) #25
  br label %245

245:                                              ; preds = %241, %243, %21, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_but_drop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !404 {
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 28
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 11
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 23
  %13 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 48
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  br label %15

15:                                               ; preds = %9, %34
  %16 = phi ptr [ %7, %9 ], [ %35, %34 ]
  %17 = getelementptr inbounds %struct.wmDrag, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !405
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 8, !tbaa !51
  switch i32 %21, label %34 [
    i32 3072, label %22
    i32 20992, label %22
    i32 26624, label %22
  ]

22:                                               ; preds = %20, %20, %20
  %23 = getelementptr inbounds %struct.wmDrag, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !407
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #26
  %25 = load ptr, ptr %11, align 8, !tbaa !108
  %26 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 4, i64 2
  %27 = load i32, ptr %12, align 8, !tbaa !233
  %28 = sext i32 %27 to i64
  %29 = tail call ptr @BLI_strncpy(ptr noundef %25, ptr noundef nonnull %26, i64 noundef %28) #25
  %30 = load i32, ptr %10, align 8, !tbaa !51
  switch i32 %30, label %33 [
    i32 20992, label %31
    i32 26624, label %31
  ]

31:                                               ; preds = %22, %22
  store i8 1, ptr %13, align 1, !tbaa !401
  %32 = load ptr, ptr %14, align 8, !tbaa !89
  tail call void @ui_searchbox_update(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %2, i8 noundef zeroext 1) #25
  br label %33

33:                                               ; preds = %22, %31
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %34

34:                                               ; preds = %20, %15, %33
  %35 = load ptr, ptr %16, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %15, !llvm.loop !408

37:                                               ; preds = %34, %4
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_clear_keyframe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_delete_keyframe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_insert_keyframe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_remove_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_add_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_remove_keyingset(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_add_keyingset(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_but_menu(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !409 {
  %3 = alloca %struct.uiStringInfo, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.ui_but_menu.label, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = icmp eq i32 %14, 24064
  br i1 %15, label %231, label %16

16:                                               ; preds = %2
  tail call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef nonnull %1) #26
  call void (ptr, ptr, ...) @uiButGetStrInfo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef null) #25
  %17 = getelementptr inbounds %struct.uiStringInfo, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.17, ptr %18
  %21 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 0) #25
  %22 = call ptr @uiPupMenuLayout(ptr noundef %21) #25
  %23 = load ptr, ptr %17, align 8, !tbaa !410
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %26(ptr noundef nonnull %23) #25
  br label %27

27:                                               ; preds = %25, %16
  call void @uiLayoutSetOperatorContext(ptr noundef %22, i32 noundef 0) #25
  %28 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = icmp eq ptr %30, null
  br i1 %31, label %138, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %138, label %36

36:                                               ; preds = %32
  %37 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %28, ptr noundef nonnull %34) #25
  %38 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %28, ptr noundef nonnull %34) #25
  %39 = call zeroext i8 @RNA_property_is_set(ptr noundef nonnull %28, ptr noundef nonnull %34) #25
  %40 = icmp eq i8 %37, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %33, align 8, !tbaa !56
  %43 = call zeroext i8 @RNA_property_path_from_ID_check(ptr noundef nonnull %28, ptr noundef %42) #25
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i8 [ %43, %41 ], [ 0, %36 ]
  %46 = load ptr, ptr %33, align 8, !tbaa !56
  %47 = call i32 @RNA_property_array_length(ptr noundef nonnull %28, ptr noundef %46) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 56
  %51 = load i32, ptr %50, align 8, !tbaa !118
  %52 = icmp ne i32 %51, -1
  %53 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !57
  %55 = and i32 %54, 16384
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %62

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !57
  %60 = and i32 %59, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %64

62:                                               ; preds = %49
  br i1 %52, label %63, label %64

63:                                               ; preds = %62
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %66

64:                                               ; preds = %57, %62
  %65 = phi ptr [ %53, %62 ], [ %58, %57 ]
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i1 [ false, %64 ], [ true, %63 ]
  %68 = phi ptr [ %65, %64 ], [ %53, %63 ]
  call void @uiItemS(ptr noundef %22) #25
  br label %81

69:                                               ; preds = %49
  %70 = and i32 %54, 32768
  %71 = icmp eq i32 %70, 0
  %72 = icmp ne i8 %45, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %79, label %81

74:                                               ; preds = %57
  %75 = and i32 %59, 32768
  %76 = icmp eq i32 %75, 0
  %77 = icmp ne i8 %45, 0
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %87, label %92

79:                                               ; preds = %69
  br i1 %52, label %80, label %87

80:                                               ; preds = %79
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %81

81:                                               ; preds = %69, %80, %66
  %82 = phi ptr [ %53, %69 ], [ %53, %80 ], [ %68, %66 ]
  %83 = phi i1 [ %52, %69 ], [ true, %80 ], [ %67, %66 ]
  %84 = load i32, ptr %82, align 8, !tbaa !57
  %85 = and i32 %84, 8192
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %95

87:                                               ; preds = %79, %74
  %88 = phi ptr [ %53, %79 ], [ %58, %74 ]
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  %89 = load i32, ptr %88, align 8, !tbaa !57
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %97

92:                                               ; preds = %74
  %93 = and i32 %59, 8192
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %97

95:                                               ; preds = %81
  br i1 %83, label %96, label %97

96:                                               ; preds = %95
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %99

97:                                               ; preds = %87, %92, %95
  %98 = phi ptr [ %82, %95 ], [ %58, %92 ], [ %88, %87 ]
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  br label %99

99:                                               ; preds = %87, %92, %96, %97, %81
  %100 = phi i1 [ false, %92 ], [ true, %96 ], [ false, %97 ], [ %83, %81 ], [ false, %87 ]
  %101 = phi ptr [ %58, %92 ], [ %82, %96 ], [ %98, %97 ], [ %82, %81 ], [ %88, %87 ]
  %102 = load i32, ptr %101, align 8, !tbaa !57
  %103 = and i32 %102, 32768
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  call void @uiItemS(ptr noundef %22) #25
  br i1 %100, label %106, label %107

106:                                              ; preds = %105
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %108

107:                                              ; preds = %105
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  br label %108

108:                                              ; preds = %107, %106
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.43) #25
  %109 = call zeroext i8 @ANIM_driver_can_paste() #25
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.45) #25
  br label %124

112:                                              ; preds = %99
  %113 = and i32 %102, 24576
  %114 = icmp eq i32 %113, 0
  %115 = icmp ne i8 %45, 0
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  call void @uiItemS(ptr noundef %22) #25
  br i1 %100, label %118, label %119

118:                                              ; preds = %117
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %120

119:                                              ; preds = %117
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  br label %120

120:                                              ; preds = %119, %118
  %121 = call zeroext i8 @ANIM_driver_can_paste() #25
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.45) #25
  br label %126

124:                                              ; preds = %112, %108, %111
  %125 = icmp eq i8 %45, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123, %120, %124
  call void @uiItemS(ptr noundef %22) #25
  br i1 %100, label %127, label %128

127:                                              ; preds = %126
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.52, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54) #25
  call void @uiItemS(ptr noundef %22) #25
  br label %130

128:                                              ; preds = %126
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54) #25
  call void @uiItemS(ptr noundef %22) #25
  br label %131

129:                                              ; preds = %124
  call void @uiItemS(ptr noundef %22) #25
  br i1 %100, label %130, label %131

130:                                              ; preds = %127, %129
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.25, i32 noundef 0) #25
  br label %132

131:                                              ; preds = %128, %129
  call void @uiItemBooleanO(ptr noundef %22, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.25, i32 noundef 1) #25
  br label %132

132:                                              ; preds = %131, %130
  %133 = icmp ne i8 %38, 0
  %134 = icmp ne i8 %39, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.61) #25
  br label %137

137:                                              ; preds = %136, %132
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef nonnull @.str.63) #25
  call void @uiItemO(ptr noundef %22, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef nonnull @.str.65) #25
  call void @uiItemS(ptr noundef %22) #25
  br label %138

138:                                              ; preds = %137, %32, %27
  %139 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %140 = load ptr, ptr %139, align 8, !tbaa !403
  %141 = icmp eq ptr %140, null
  br i1 %141, label %190, label %142

142:                                              ; preds = %138
  %143 = call ptr @uiLayoutGetBlock(ptr noundef %22) #25
  %144 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %145 = load ptr, ptr %144, align 8, !tbaa !412
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.PointerRNA, ptr %145, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !413
  br label %150

150:                                              ; preds = %142, %147
  %151 = phi ptr [ %149, %147 ], [ null, %142 ]
  %152 = call i32 @uiLayoutGetWidth(ptr noundef %22) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %153 = load ptr, ptr %139, align 8, !tbaa !403
  %154 = getelementptr inbounds %struct.wmOperatorType, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !414
  %156 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %157 = load i16, ptr %156, align 8, !tbaa !417
  %158 = sext i16 %157 to i32
  %159 = call i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %155, i32 noundef %158, ptr noundef %151, i8 noundef zeroext 1, ptr noundef nonnull %4) #25
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %150
  %162 = load ptr, ptr %4, align 8, !tbaa !61
  %163 = call ptr @WM_keymap_item_find_id(ptr noundef %162, i32 noundef %159) #25
  %164 = icmp eq ptr %163, null
  br i1 %164, label %179, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.wmKeyMapItem, ptr %163, i64 0, i32 6
  %167 = load i16, ptr %166, align 2, !tbaa !418
  %168 = add i16 %167, -32
  %169 = icmp ult i16 %168, 224
  %170 = add i16 %167, -300
  %171 = icmp ult i16 %170, 20
  %172 = or i1 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = trunc i32 %152 to i16
  %175 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %176 = call ptr @uiDefIconTextBut(ptr noundef %143, i32 noundef 512, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 0, i16 noundef signext %174, i16 noundef signext %175, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.17) #25
  call void @uiButSetFunc(ptr noundef %176, ptr noundef nonnull @popup_change_shortcut_func, ptr noundef nonnull %1, ptr noundef null) #25
  %177 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %178 = call ptr @uiDefIconTextBut(ptr noundef %143, i32 noundef 512, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0, i16 noundef signext %174, i16 noundef signext %177, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.17) #25
  call void @uiButSetFunc(ptr noundef %178, ptr noundef nonnull @remove_shortcut_func, ptr noundef nonnull %1, ptr noundef null) #25
  br label %189

179:                                              ; preds = %165, %150, %161
  %180 = load ptr, ptr %139, align 8, !tbaa !403
  %181 = getelementptr inbounds %struct.wmOperatorType, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !414
  %183 = call ptr @WM_keymap_guess_opname(ptr noundef %0, ptr noundef %182) #25
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = trunc i32 %152 to i16
  %187 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %188 = call ptr @uiDefIconTextBut(ptr noundef %143, i32 noundef 512, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 0, i16 noundef signext %186, i16 noundef signext %187, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.17) #25
  call void @uiButSetFunc(ptr noundef %188, ptr noundef nonnull @popup_add_shortcut_func, ptr noundef nonnull %1, ptr noundef null) #25
  br label %189

189:                                              ; preds = %179, %185, %173
  call void @uiItemS(ptr noundef %22) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %190

190:                                              ; preds = %189, %138
  %191 = call ptr @CTX_wm_region(ptr noundef %0) #25
  %192 = icmp eq ptr %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.ARegion, ptr %191, i64 0, i32 8
  %195 = load i16, ptr %194, align 2, !tbaa !420
  %196 = icmp eq i16 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  call void @uiItemMenuF(ptr noundef %22, ptr noundef nonnull @.str.69, i32 noundef 0, ptr noundef nonnull @ED_screens_header_tools_menu_create, ptr noundef null) #25
  call void @uiItemS(ptr noundef %22) #25
  br label %198

198:                                              ; preds = %197, %193, %190
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  %199 = load ptr, ptr %29, align 8, !tbaa !116
  %200 = icmp eq ptr %199, null
  br i1 %200, label %215, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  %204 = icmp eq ptr %203, null
  br i1 %204, label %215, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !421
  %208 = call ptr @RNA_struct_identifier(ptr noundef %207) #25
  %209 = load ptr, ptr %202, align 8, !tbaa !56
  %210 = call ptr @RNA_property_identifier(ptr noundef %209) #25
  %211 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 512, ptr noundef nonnull @.str.70, ptr noundef %208, ptr noundef %210) #25
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.71) #25
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #25
  %212 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %22, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef %213, i32 noundef 6, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.74) #25
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #25
  %214 = load ptr, ptr %212, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %22, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %214, i32 noundef 6, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  br label %224

215:                                              ; preds = %201, %198
  %216 = load ptr, ptr %139, align 8, !tbaa !403
  %217 = icmp eq ptr %216, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.wmOperatorType, ptr %216, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !414
  call void @WM_operator_py_idname(ptr noundef nonnull %5, ptr noundef %220) #25
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.71) #25
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #25
  %221 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %22, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef %222, i32 noundef 6, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.74) #25
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull %5) #25
  %223 = load ptr, ptr %221, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %22, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %223, i32 noundef 6, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  br label %224

224:                                              ; preds = %215, %218, %205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #27
  %225 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %226 = load ptr, ptr %225, align 8, !tbaa !94
  %227 = call zeroext i8 @ui_block_is_menu(ptr noundef %226) #25
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %22, ptr noundef nonnull @.str.76, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #27
  br label %230

230:                                              ; preds = %229, %224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #27
  call void @uiItemFullO(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef %22, ptr noundef nonnull @.str.77, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #27
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %21) #25
  br label %231

231:                                              ; preds = %2, %230
  %232 = phi i8 [ 1, %230 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  ret i8 %232
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_BUT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !422 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %50 [
    i32 1, label %7
    i32 3, label %34
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %50 [
    i16 1, label %10
    i16 163, label %29
    i16 220, label %29
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !151
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 3) #26
  br label %50

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 46
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = and i32 %23, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %27, align 4, !tbaa !92
  br label %28

28:                                               ; preds = %26, %21
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %50

29:                                               ; preds = %7, %7
  %30 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !151
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 2) #26
  br label %50

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %36 = load i16, ptr %35, align 8, !tbaa !150
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !151
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %48, align 4, !tbaa !92
  br label %49

49:                                               ; preds = %47, %42
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %50

50:                                               ; preds = %7, %15, %29, %34, %38, %4, %49, %33, %28, %14
  %51 = phi i32 [ 1, %14 ], [ 1, %28 ], [ 1, %33 ], [ 1, %49 ], [ 0, %4 ], [ 0, %38 ], [ 0, %34 ], [ 0, %29 ], [ 0, %15 ], [ 0, %7 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_KEYEVT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !423 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %33 [
    i32 1, label %7
    i32 4, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %33 [
    i16 1, label %10
    i16 163, label %10
    i16 220, label %10
  ]

10:                                               ; preds = %7, %7, %7
  %11 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !151
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %30, label %33

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !150
  switch i16 %16, label %17 [
    i16 4, label %33
    i16 17, label %33
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !151
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = tail call ptr @WM_key_event_string(i16 noundef signext %16) #25
  %23 = load i8, ptr %22, align 1, !tbaa !68
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %15, align 8, !tbaa !150
  %27 = sitofp i16 %26 to double
  tail call void @ui_set_but_val(ptr noundef %1, double noundef %27) #25
  br label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %29, align 4, !tbaa !92
  br label %30

30:                                               ; preds = %25, %28, %10
  %31 = phi i32 [ 4, %10 ], [ 10, %28 ], [ 10, %25 ]
  %32 = phi i32 [ 1, %10 ], [ 0, %28 ], [ 0, %25 ]
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef %31) #26
  br label %33

33:                                               ; preds = %30, %10, %17, %7, %4, %14, %14
  %34 = phi i32 [ 0, %14 ], [ 0, %14 ], [ 0, %4 ], [ 0, %7 ], [ 0, %17 ], [ 0, %10 ], [ %32, %30 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_HOTKEYEVT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !424 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %103 [
    i32 1, label %7
    i32 4, label %17
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %103 [
    i16 1, label %10
    i16 163, label %10
    i16 220, label %10
  ]

10:                                               ; preds = %7, %7, %7
  %11 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !151
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %103

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 17
  store i8 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 50
  store i16 0, ptr %16, align 2, !tbaa !425
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 4) #26
  br label %103

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !150
  switch i16 %19, label %44 [
    i16 4, label %103
    i16 1, label %20
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 67
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !178
  %31 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !42
  %33 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %28, ptr noundef %1, i32 noundef %30, i32 noundef %32) #26, !range !168
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !57
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef 0.000000e+00) #25
  br label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %42, align 4, !tbaa !92
  br label %43

43:                                               ; preds = %41, %40
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %103

44:                                               ; preds = %17, %24, %20
  %45 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 50
  %46 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %47 = load i16, ptr %46, align 8, !tbaa !167
  %48 = icmp ne i16 %47, 0
  %49 = zext i1 %48 to i16
  store i16 %49, ptr %45, align 2
  %50 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %51 = load i16, ptr %50, align 4, !tbaa !166
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = or disjoint i16 %49, 4
  store i16 %54, ptr %45, align 2, !tbaa !425
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi i16 [ %54, %53 ], [ %49, %44 ]
  %57 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %58 = load i16, ptr %57, align 2, !tbaa !164
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = or i16 %56, 2
  store i16 %61, ptr %45, align 2, !tbaa !425
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i16 [ %61, %60 ], [ %56, %55 ]
  %64 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %65 = load i16, ptr %64, align 2, !tbaa !165
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = or i16 %63, 8
  store i16 %68, ptr %45, align 2, !tbaa !425
  br label %69

69:                                               ; preds = %67, %62
  tail call void @ui_check_but(ptr noundef nonnull %1) #25
  %70 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %71) #25
  %72 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %73 = load i16, ptr %72, align 2, !tbaa !151
  %74 = icmp eq i16 %73, 1
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = load i16, ptr %18, align 8, !tbaa !150
  %77 = add i16 %76, -32
  %78 = icmp ult i16 %77, 224
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = add i16 %76, -300
  %81 = icmp ult i16 %80, 20
  %82 = add i16 %76, -1
  %83 = icmp ult i16 %82, 19
  %84 = or i1 %81, %83
  %85 = add i16 %76, -400
  %86 = icmp ult i16 %85, 39
  %87 = or i1 %84, %86
  br i1 %87, label %90, label %103

88:                                               ; preds = %75
  %89 = trunc i16 %76 to i8
  switch i8 %89, label %90 [
    i8 -38, label %100
    i8 -85, label %103
    i8 -84, label %103
    i8 -83, label %103
    i8 -44, label %103
    i8 -43, label %103
    i8 -42, label %103
    i8 -41, label %103
    i8 -40, label %103
    i8 -39, label %103
  ]

90:                                               ; preds = %79, %88
  %91 = tail call ptr @WM_key_event_string(i16 noundef signext %76) #25
  %92 = load i8, ptr %91, align 1, !tbaa !68
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr %18, align 8, !tbaa !150
  %96 = sitofp i16 %95 to double
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef %96) #25
  br label %99

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %98, align 4, !tbaa !92
  br label %99

99:                                               ; preds = %97, %94
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %103

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %101, align 4, !tbaa !92
  %102 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 7
  store i8 1, ptr %102, align 1, !tbaa !100
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %103

103:                                              ; preds = %79, %88, %88, %88, %88, %88, %88, %88, %88, %88, %10, %69, %100, %7, %4, %17, %99, %43, %14
  %104 = phi i32 [ 1, %14 ], [ 1, %43 ], [ 1, %99 ], [ 0, %17 ], [ 0, %4 ], [ 0, %7 ], [ 0, %100 ], [ 0, %69 ], [ 0, %10 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %88 ], [ 0, %79 ]
  ret i32 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_do_but_TOG(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !426 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %29 [
    i32 1, label %7
    i32 9, label %26
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !151
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @ui_is_but_drag_toggle(ptr noundef %1) #26, !range !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, ptr %5, align 4, !tbaa !90
  br label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %22, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #26
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 9) #26
  %23 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %24 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %25 = load <2 x i32>, ptr %23, align 4, !tbaa !43
  store <2 x i32> %25, ptr %24, align 4, !tbaa !43
  br label %42

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 0, ptr %27, align 2, !tbaa !182
  %28 = tail call fastcc i32 @ui_do_but_EXIT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #26, !range !174
  br label %42

29:                                               ; preds = %18, %4
  %30 = phi i32 [ %6, %4 ], [ %19, %18 ]
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %11, %29
  %33 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !150
  br label %35

35:                                               ; preds = %32, %7
  %36 = phi i16 [ %34, %32 ], [ %9, %7 ]
  switch i16 %36, label %42 [
    i16 1, label %37
    i16 163, label %37
    i16 220, label %37
  ]

37:                                               ; preds = %35, %35, %35
  %38 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !151
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 10) #26
  br label %42

42:                                               ; preds = %29, %37, %35, %41, %26, %20
  %43 = phi i32 [ 1, %20 ], [ 1, %41 ], [ %28, %26 ], [ 0, %35 ], [ 0, %37 ], [ 0, %29 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_SCROLL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !427 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #26
  %10 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %8) #26
  %11 = fcmp ogt float %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !178
  store i32 %14, ptr %6, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !42
  store i32 %16, ptr %7, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %18, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %19 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !90
  switch i32 %20, label %57 [
    i32 1, label %21
    i32 5, label %35
  ]

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !151
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !150
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %7, align 4
  %32 = select i1 %11, i32 %30, i32 %31
  %33 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %32, ptr %34, align 4
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  br label %57

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !150
  switch i16 %37, label %57 [
    i16 218, label %38
    i16 1, label %45
    i16 4, label %50
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !151
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %43, align 4, !tbaa !92
  %44 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %44, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %57

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %47 = load i16, ptr %46, align 2, !tbaa !151
  %48 = icmp eq i16 %47, 1
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %57

50:                                               ; preds = %35
  %51 = load i32, ptr %6, align 4
  %52 = load i32, ptr %7, align 4
  %53 = select i1 %11, i32 %51, i32 %52
  %54 = call fastcc zeroext i8 @ui_numedit_but_SLI(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %53, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 0) #26, !range !168
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %57

57:                                               ; preds = %35, %45, %42, %38, %56, %50, %49, %5, %21, %29, %25
  %58 = phi i32 [ 1, %29 ], [ 0, %25 ], [ 0, %21 ], [ 0, %5 ], [ 1, %49 ], [ 1, %50 ], [ 1, %56 ], [ 1, %38 ], [ 1, %42 ], [ 1, %45 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_GRIP(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !428 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %11 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %10) #26
  %12 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %10) #26
  %13 = fcmp olt float %11, %12
  %14 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !178
  store i32 %15, ptr %6, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !42
  store i32 %17, ptr %7, align 4, !tbaa !43
  %18 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %20 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !90
  switch i32 %21, label %69 [
    i32 1, label %22
    i32 5, label %33
  ]

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !151
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !150
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  %32 = load <2 x i32>, ptr %14, align 4, !tbaa !43
  store <2 x i32> %32, ptr %31, align 4, !tbaa !43
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  br label %69

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !150
  switch i16 %35, label %69 [
    i16 218, label %36
    i16 1, label %43
    i16 4, label %48
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %38 = load i16, ptr %37, align 2, !tbaa !151
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %41, align 4, !tbaa !92
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %42, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %69

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !151
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %69

48:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  %50 = load i32, ptr %49, align 4, !tbaa !251
  store i32 %50, ptr %8, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %51 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  %52 = load i32, ptr %51, align 8, !tbaa !429
  store i32 %52, ptr %9, align 4, !tbaa !43
  %53 = load ptr, ptr %18, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %53, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %54 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 14
  %55 = load double, ptr %54, align 8, !tbaa !183
  br i1 %13, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, ptr %6, align 4, !tbaa !43
  %58 = load i32, ptr %8, align 4, !tbaa !43
  %59 = sub nsw i32 %57, %58
  br label %64

60:                                               ; preds = %48
  %61 = load i32, ptr %9, align 4, !tbaa !43
  %62 = load i32, ptr %7, align 4, !tbaa !43
  %63 = sub nsw i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %59, %56 ], [ %63, %60 ]
  %66 = sitofp i32 %65 to double
  %67 = fadd double %55, %66
  %68 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  store double %67, ptr %68, align 8, !tbaa !184
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %69

69:                                               ; preds = %33, %43, %40, %36, %64, %47, %5, %22, %30, %26
  %70 = phi i32 [ 1, %30 ], [ 0, %26 ], [ 0, %22 ], [ 0, %5 ], [ 1, %47 ], [ 1, %64 ], [ 1, %36 ], [ 1, %40 ], [ 1, %43 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_NUM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !PGOFuncName !430 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !178
  store i32 %11, ptr %6, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !42
  store i32 %13, ptr %7, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !90
  switch i32 %17, label %220 [
    i32 1, label %18
    i32 5, label %65
    i32 6, label %126
    i32 7, label %127
  ]

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %19 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !150
  %21 = sext i16 %20 to i32
  store i32 %21, ptr %8, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %23 = icmp eq i16 %20, 14
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  call void @ui_pan_to_scroll(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #26
  %25 = load i32, ptr %8, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %25, %24 ], [ %21, %18 ]
  switch i32 %27, label %44 [
    i32 14, label %28
    i32 11, label %32
    i32 10, label %38
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %30 = load i16, ptr %29, align 4, !tbaa !166
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %44, label %128

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %34 = load i16, ptr %33, align 4, !tbaa !166
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  br label %130

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %40 = load i16, ptr %39, align 4, !tbaa !166
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  br label %130

44:                                               ; preds = %26, %28, %32, %38
  %45 = load i16, ptr %22, align 2, !tbaa !151
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %128

47:                                               ; preds = %44
  %48 = load i16, ptr %19, align 8, !tbaa !150
  switch i16 %48, label %136 [
    i16 1, label %49
    i16 163, label %49
    i16 220, label %49
    i16 230, label %61
  ]

49:                                               ; preds = %47, %47, %47
  %50 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %51 = load i16, ptr %50, align 2, !tbaa !164
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %49
  switch i16 %48, label %136 [
    i16 1, label %54
    i16 163, label %139
    i16 220, label %139
  ]

54:                                               ; preds = %53
  %55 = call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %2) #26, !range !168
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr %6, align 4
  %58 = select i1 %56, i32 %57, i32 %11
  %59 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %58, ptr %59, align 4, !tbaa !252
  %60 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %58, ptr %60, align 4, !tbaa !251
  br label %134

61:                                               ; preds = %47
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %62 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %63 = load double, ptr %62, align 8, !tbaa !184
  %64 = fneg double %63
  store double %64, ptr %62, align 8, !tbaa !184
  br label %134

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !150
  switch i16 %67, label %220 [
    i16 218, label %68
    i16 3, label %68
    i16 1, label %75
    i16 4, label %88
  ]

68:                                               ; preds = %65, %65
  %69 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !151
  %71 = icmp eq i16 %70, 1
  br i1 %71, label %72, label %220

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %73, align 4, !tbaa !92
  %74 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %74, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %220

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !151
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %220, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 32
  %81 = load i8, ptr %80, align 4, !tbaa !248
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %141, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43
  %85 = load i32, ptr %84, align 8, !tbaa !176
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %141, label %87

87:                                               ; preds = %83
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %220

88:                                               ; preds = %65
  %89 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %90 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %91 = load i32, ptr %6, align 4
  %92 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43
  %93 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 5
  %94 = load i32, ptr %7, align 4, !tbaa !43
  %95 = load <2 x i32>, ptr %90, align 4, !tbaa !43
  %96 = insertelement <2 x i32> poison, i32 %91, i64 0
  %97 = insertelement <2 x i32> %96, i32 %94, i64 1
  %98 = sub nsw <2 x i32> %95, %97
  %99 = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %98, i1 true)
  %100 = sitofp <2 x i32> %99 to <2 x float>
  %101 = load <2 x float>, ptr %93, align 4, !tbaa !85
  %102 = fadd <2 x float> %101, %100
  store <2 x float> %102, ptr %93, align 4, !tbaa !85
  %103 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %104 = load i16, ptr %103, align 8, !tbaa !167
  %105 = icmp eq i16 %104, 0
  %106 = select i1 %105, float 1.000000e+00, float 0x3FB99999A0000000
  %107 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %108 = load i16, ptr %107, align 4, !tbaa !166
  %109 = icmp eq i16 %108, 0
  %110 = fdiv float %106, 2.000000e+01
  %111 = select i1 %109, float %106, float %110
  %112 = call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %2) #26, !range !168
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 %91, i32 %11
  %115 = call fastcc zeroext i8 @ui_numedit_but_NUM(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %114, i32 noundef %89, float noundef %111) #26, !range !168
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %88
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %220

118:                                              ; preds = %88
  %119 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 1
  %120 = load i8, ptr %119, align 4, !tbaa !96
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %220, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %92, align 8, !tbaa !176
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %220

125:                                              ; preds = %122
  call fastcc void @ui_multibut_states_apply(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #26
  br label %220

126:                                              ; preds = %5
  call fastcc void @ui_do_but_textedit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %220

127:                                              ; preds = %5
  call fastcc void @ui_do_but_textedit_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %220

128:                                              ; preds = %44, %28
  %129 = phi i32 [ 1, %28 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %220

130:                                              ; preds = %36, %42
  %131 = phi ptr [ %43, %42 ], [ %37, %36 ]
  %132 = load float, ptr %131, align 4, !tbaa !85
  %133 = fptosi float %132 to i32
  store i32 %133, ptr %6, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %141

134:                                              ; preds = %49, %61, %54
  %135 = phi i32 [ 5, %54 ], [ 10, %61 ], [ 6, %49 ]
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef %135) #26
  br label %136

136:                                              ; preds = %134, %47, %53
  %137 = phi i32 [ 0, %53 ], [ 0, %47 ], [ 1, %134 ]
  %138 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %138, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %220

139:                                              ; preds = %53, %53
  %140 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %140, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %141

141:                                              ; preds = %79, %83, %139, %130
  %142 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 22
  %143 = load float, ptr %142, align 8, !tbaa !244
  %144 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 23
  %145 = load float, ptr %144, align 4, !tbaa !245
  %146 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %147 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %146) #26
  %148 = fdiv float %147, 3.000000e+00
  %149 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %146) #26
  %150 = call fastcc float @min_ff(float noundef %148, float noundef %149) #26
  %151 = call zeroext i8 @ui_is_but_float(ptr noundef %2) #25
  %152 = icmp eq i8 %151, 0
  %153 = load i32, ptr %6, align 4, !tbaa !43
  %154 = sitofp i32 %153 to float
  %155 = load float, ptr %146, align 8, !tbaa !432
  %156 = fadd float %150, %155
  %157 = fcmp ogt float %156, %154
  br i1 %152, label %158, label %193

158:                                              ; preds = %141
  br i1 %157, label %159, label %173

159:                                              ; preds = %158
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 5) #26
  %160 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %161 = load double, ptr %160, align 8, !tbaa !184
  %162 = fptosi double %161 to i32
  %163 = add nsw i32 %162, -1
  %164 = sitofp i32 %163 to float
  %165 = fcmp ugt float %143, %164
  %166 = fcmp ult float %145, %164
  %167 = select i1 %165, i1 true, i1 %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %159
  %169 = sitofp i32 %163 to double
  store double %169, ptr %160, align 8, !tbaa !184
  br label %172

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %171, align 4, !tbaa !92
  br label %172

172:                                              ; preds = %170, %168
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %220

173:                                              ; preds = %158
  %174 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %175 = load float, ptr %174, align 4, !tbaa !433
  %176 = fsub float %175, %150
  %177 = fcmp olt float %176, %154
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 5) #26
  %179 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %180 = load double, ptr %179, align 8, !tbaa !184
  %181 = fptosi double %180 to i32
  %182 = add nsw i32 %181, 1
  %183 = sitofp i32 %182 to float
  %184 = fcmp ugt float %143, %183
  %185 = fcmp ult float %145, %183
  %186 = select i1 %184, i1 true, i1 %185
  br i1 %186, label %189, label %187

187:                                              ; preds = %178
  %188 = sitofp i32 %182 to double
  store double %188, ptr %179, align 8, !tbaa !184
  br label %191

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %190, align 4, !tbaa !92
  br label %191

191:                                              ; preds = %189, %187
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %220

192:                                              ; preds = %173
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #26
  br label %220

193:                                              ; preds = %141
  br i1 %157, label %194, label %204

194:                                              ; preds = %193
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 5) #26
  %195 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %196 = load double, ptr %195, align 8, !tbaa !184
  %197 = fptrunc double %196 to float
  %198 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %199 = load float, ptr %198, align 8, !tbaa !175
  %200 = call float @llvm.fmuladd.f32(float %199, float 0xBF847AE140000000, float %197)
  %201 = fcmp olt float %200, %143
  %202 = select i1 %201, float %143, float %200
  %203 = fpext float %202 to double
  store double %203, ptr %195, align 8, !tbaa !184
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %220

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %206 = load float, ptr %205, align 4, !tbaa !433
  %207 = fsub float %206, %150
  %208 = fcmp olt float %207, %154
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 5) #26
  %210 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %211 = load double, ptr %210, align 8, !tbaa !184
  %212 = fptrunc double %211 to float
  %213 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %214 = load float, ptr %213, align 8, !tbaa !175
  %215 = call float @llvm.fmuladd.f32(float %214, float 0x3F847AE140000000, float %212)
  %216 = fcmp ogt float %215, %145
  %217 = select i1 %216, float %145, float %215
  %218 = fpext float %217 to double
  store double %218, ptr %210, align 8, !tbaa !184
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %220

219:                                              ; preds = %204
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #26
  br label %220

220:                                              ; preds = %65, %75, %5, %117, %122, %125, %118, %87, %68, %72, %127, %126, %136, %128, %191, %192, %172, %209, %219, %194
  %221 = phi i32 [ 1, %194 ], [ 1, %219 ], [ 1, %209 ], [ 1, %172 ], [ 1, %192 ], [ 1, %191 ], [ %129, %128 ], [ %137, %136 ], [ 0, %5 ], [ 1, %72 ], [ 1, %68 ], [ 1, %87 ], [ 1, %118 ], [ 1, %125 ], [ 1, %122 ], [ 1, %117 ], [ 1, %127 ], [ 1, %126 ], [ 1, %75 ], [ 1, %65 ]
  %222 = load i32, ptr %6, align 4, !tbaa !43
  %223 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %222, ptr %223, align 4, !tbaa !252
  %224 = load i32, ptr %7, align 4, !tbaa !43
  %225 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %224, ptr %225, align 8, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %221
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_SLI(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !PGOFuncName !435 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !178
  store i32 %11, ptr %6, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !42
  store i32 %13, ptr %7, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !90
  switch i32 %17, label %192 [
    i32 1, label %18
    i32 5, label %80
    i32 6, label %136
    i32 7, label %137
  ]

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %19 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !150
  %21 = sext i16 %20 to i32
  store i32 %21, ptr %8, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %23 = icmp eq i16 %20, 14
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  call void @ui_pan_to_scroll(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #26
  %25 = load i32, ptr %8, align 4, !tbaa !43
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %25, %24 ], [ %21, %18 ]
  switch i32 %27, label %48 [
    i32 14, label %28
    i32 11, label %32
    i32 10, label %40
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %30 = load i16, ptr %29, align 4, !tbaa !166
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %48, label %140

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %34 = load i16, ptr %33, align 4, !tbaa !166
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %38 = load float, ptr %37, align 8, !tbaa !432
  %39 = fptosi float %38 to i32
  store i32 %39, ptr %6, align 4, !tbaa !43
  br label %145

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %42 = load i16, ptr %41, align 4, !tbaa !166
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !433
  %47 = fptosi float %46 to i32
  store i32 %47, ptr %6, align 4, !tbaa !43
  br label %145

48:                                               ; preds = %26, %28, %32, %40
  %49 = load i16, ptr %22, align 2, !tbaa !151
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %140

51:                                               ; preds = %48
  %52 = load i16, ptr %19, align 8, !tbaa !150
  switch i16 %52, label %140 [
    i16 1, label %53
    i16 163, label %53
    i16 220, label %53
    i16 230, label %76
  ]

53:                                               ; preds = %51, %51, %51
  %54 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %55 = load i16, ptr %54, align 2, !tbaa !164
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %138

57:                                               ; preds = %53
  switch i16 %52, label %140 [
    i16 1, label %58
    i16 220, label %143
    i16 163, label %143
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %60 = load i16, ptr %59, align 4, !tbaa !166
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %64 = call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %63) #26
  %65 = fptosi float %64 to i32
  %66 = load i32, ptr %6, align 4, !tbaa !43
  %67 = icmp slt i32 %66, %65
  %68 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 1
  %69 = select i1 %67, ptr %63, ptr %68
  %70 = load float, ptr %69, align 4, !tbaa !85
  %71 = fptosi float %70 to i32
  store i32 %71, ptr %6, align 4, !tbaa !43
  br label %145

72:                                               ; preds = %58
  %73 = load i32, ptr %6, align 4, !tbaa !43
  %74 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %73, ptr %74, align 4, !tbaa !251
  %75 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %73, ptr %75, align 4, !tbaa !252
  br label %138

76:                                               ; preds = %51
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %77 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %78 = load double, ptr %77, align 8, !tbaa !184
  %79 = fneg double %78
  store double %79, ptr %77, align 8, !tbaa !184
  br label %138

80:                                               ; preds = %5
  %81 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %82 = load i16, ptr %81, align 8, !tbaa !150
  switch i16 %82, label %192 [
    i16 218, label %83
    i16 3, label %83
    i16 1, label %90
    i16 4, label %103
  ]

83:                                               ; preds = %80, %80
  %84 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !151
  %86 = icmp eq i16 %85, 1
  br i1 %86, label %87, label %192

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %88, align 4, !tbaa !92
  %89 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %89, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %192

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %92 = load i16, ptr %91, align 2, !tbaa !151
  %93 = icmp eq i16 %92, 1
  br i1 %93, label %192, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 32
  %96 = load i8, ptr %95, align 4, !tbaa !248
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %191, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43
  %100 = load i32, ptr %99, align 8, !tbaa !176
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %191, label %102

102:                                              ; preds = %98
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %192

103:                                              ; preds = %80
  %104 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %105 = load i32, ptr %6, align 4, !tbaa !43
  %106 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43
  %107 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 5
  %108 = load i32, ptr %7, align 4, !tbaa !43
  %109 = load <2 x i32>, ptr %104, align 4, !tbaa !43
  %110 = insertelement <2 x i32> poison, i32 %105, i64 0
  %111 = insertelement <2 x i32> %110, i32 %108, i64 1
  %112 = sub nsw <2 x i32> %109, %111
  %113 = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %112, i1 true)
  %114 = sitofp <2 x i32> %113 to <2 x float>
  %115 = load <2 x float>, ptr %107, align 4, !tbaa !85
  %116 = fadd <2 x float> %115, %114
  store <2 x float> %116, ptr %107, align 4, !tbaa !85
  %117 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %118 = load i16, ptr %117, align 2, !tbaa !164
  %119 = icmp ne i16 %118, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %122 = load i16, ptr %121, align 8, !tbaa !167
  %123 = icmp ne i16 %122, 0
  %124 = zext i1 %123 to i8
  %125 = call fastcc zeroext i8 @ui_numedit_but_SLI(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %105, i8 noundef zeroext 1, i8 noundef zeroext %120, i8 noundef zeroext %124) #26, !range !168
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %103
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %192

128:                                              ; preds = %103
  %129 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 1
  %130 = load i8, ptr %129, align 4, !tbaa !96
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %192, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %106, align 8, !tbaa !176
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %192

135:                                              ; preds = %132
  call fastcc void @ui_multibut_states_apply(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #26
  br label %192

136:                                              ; preds = %5
  call fastcc void @ui_do_but_textedit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %192

137:                                              ; preds = %5
  call fastcc void @ui_do_but_textedit_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %192

138:                                              ; preds = %53, %76, %72
  %139 = phi i32 [ 5, %72 ], [ 10, %76 ], [ 6, %53 ]
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef %139) #26
  br label %140

140:                                              ; preds = %138, %51, %57, %48, %28
  %141 = phi i32 [ 1, %28 ], [ 0, %48 ], [ 0, %57 ], [ 0, %51 ], [ 1, %138 ]
  %142 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %142, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %192

143:                                              ; preds = %57, %57
  %144 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %144, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %191

145:                                              ; preds = %36, %44, %62
  %146 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 43, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %146, ptr noundef nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %147 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 22
  %148 = load float, ptr %147, align 8, !tbaa !244
  %149 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 23
  %150 = load float, ptr %149, align 4, !tbaa !245
  %151 = fsub float %150, %148
  %152 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 13
  %153 = load double, ptr %152, align 8, !tbaa !184
  %154 = load i32, ptr %6, align 4, !tbaa !43
  %155 = sitofp i32 %154 to float
  %156 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %157 = load float, ptr %156, align 8, !tbaa !432
  %158 = fsub float %155, %157
  %159 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %156) #26
  %160 = fdiv float %158, %159
  %161 = call float @llvm.fmuladd.f32(float %160, float %151, float %148)
  %162 = call zeroext i8 @ui_is_but_float(ptr noundef %2) #25
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %145
  %165 = fptosi double %153 to i32
  %166 = sitofp i32 %165 to float
  %167 = fcmp olt float %161, %166
  %168 = select i1 %167, i32 -1, i32 1
  %169 = add nsw i32 %168, %165
  %170 = sitofp i32 %169 to float
  %171 = fcmp ugt float %148, %170
  %172 = fcmp ult float %150, %170
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %164
  %175 = sitofp i32 %169 to double
  store double %175, ptr %152, align 8, !tbaa !184
  br label %190

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %177, align 4, !tbaa !92
  br label %190

178:                                              ; preds = %145
  %179 = fptrunc double %153 to float
  %180 = fcmp olt float %161, %179
  %181 = select i1 %180, float 0xBF847AE140000000, float 0x3F847AE140000000
  %182 = fadd float %181, %179
  %183 = fcmp ult float %182, %148
  %184 = fcmp ugt float %182, %150
  %185 = select i1 %183, i1 true, i1 %184
  br i1 %185, label %188, label %186

186:                                              ; preds = %178
  %187 = fpext float %182 to double
  store double %187, ptr %152, align 8, !tbaa !184
  br label %190

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %189, align 4, !tbaa !92
  br label %190

190:                                              ; preds = %186, %188, %174, %176
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %192

191:                                              ; preds = %94, %98, %143
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 6) #26
  br label %192

192:                                              ; preds = %80, %90, %5, %128, %132, %135, %127, %102, %83, %87, %137, %136, %140, %190, %191
  %193 = phi i32 [ 1, %190 ], [ 1, %191 ], [ %141, %140 ], [ 0, %5 ], [ 1, %87 ], [ 1, %83 ], [ 1, %128 ], [ 1, %135 ], [ 1, %132 ], [ 1, %127 ], [ 1, %102 ], [ 1, %137 ], [ 1, %136 ], [ 1, %90 ], [ 1, %80 ]
  %194 = load i32, ptr %6, align 4, !tbaa !43
  %195 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %194, ptr %195, align 4, !tbaa !252
  %196 = load i32, ptr %7, align 4, !tbaa !43
  %197 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %196, ptr %197, align 8, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %193
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_do_but_LISTROW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !436 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !150
  switch i16 %10, label %26 [
    i16 1, label %11
    i16 163, label %11
    i16 220, label %11
  ]

11:                                               ; preds = %8, %8, %8
  %12 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !151
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %17 = load i16, ptr %16, align 2, !tbaa !164
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %23

19:                                               ; preds = %11
  %20 = icmp eq i16 %10, 1
  %21 = icmp eq i16 %13, 4
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15
  %24 = tail call fastcc ptr @ui_but_list_row_text_activate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 3) #26
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15, %8, %23, %19, %4
  %27 = tail call fastcc i32 @ui_do_but_EXIT(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #26, !range !174
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i32 [ 1, %23 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_do_but_EXIT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !437 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %70 [
    i32 1, label %7
    i32 9, label %58
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 64
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef nonnull %1, ptr noundef %17, ptr noundef nonnull %3) #26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %21 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %23 = load <2 x i32>, ptr %21, align 4, !tbaa !43
  store <2 x i32> %23, ptr %22, align 4, !tbaa !43
  br label %70

24:                                               ; preds = %15
  %25 = load i16, ptr %8, align 8, !tbaa !150
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %11, %24
  %28 = tail call fastcc zeroext i8 @ui_is_but_drag_toggle(ptr noundef nonnull %1) #26, !range !168
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %31 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %32 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %33 = load <2 x i32>, ptr %31, align 4, !tbaa !43
  store <2 x i32> %33, ptr %32, align 4, !tbaa !43
  br label %70

34:                                               ; preds = %27
  %35 = load i16, ptr %8, align 8, !tbaa !150
  br label %36

36:                                               ; preds = %7, %34, %24
  %37 = phi i16 [ %35, %34 ], [ %25, %24 ], [ %9, %7 ]
  switch i16 %37, label %70 [
    i16 1, label %38
    i16 163, label %38
    i16 220, label %38
  ]

38:                                               ; preds = %36, %36, %36
  %39 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !151
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 64
  %44 = load ptr, ptr %43, align 8, !tbaa !301
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 65
  %48 = load ptr, ptr %47, align 8, !tbaa !438
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !104
  %53 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef nonnull %1, ptr noundef %52, ptr noundef nonnull %3) #26
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %50, %46, %42
  %57 = phi i32 [ 1, %46 ], [ 1, %42 ], [ %55, %50 ]
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %70

58:                                               ; preds = %4
  %59 = tail call fastcc zeroext i8 @ui_but_start_drag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #26, !range !168
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %63 = load i16, ptr %62, align 8, !tbaa !150
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !151
  %68 = icmp eq i16 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 10) #26
  br label %70

70:                                               ; preds = %38, %36, %4, %61, %65, %58, %69, %56, %30, %20
  %71 = phi i32 [ 0, %20 ], [ 0, %30 ], [ %57, %56 ], [ 0, %69 ], [ 1, %58 ], [ 1, %65 ], [ 1, %61 ], [ 0, %4 ], [ 0, %36 ], [ 0, %38 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_HISTOGRAM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !439 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !178
  store i32 %9, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !42
  store i32 %11, ptr %7, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  switch i32 %15, label %66 [
    i32 1, label %16
    i32 5, label %40
  ]

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  switch i16 %18, label %66 [
    i16 1, label %19
    i16 223, label %32
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !151
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %24, ptr %25, align 4, !tbaa !251
  %26 = load i32, ptr %7, align 4, !tbaa !43
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %26, ptr %27, align 8, !tbaa !429
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %24, ptr %28, align 4, !tbaa !252
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %26, ptr %29, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %30 = load i32, ptr %6, align 4, !tbaa !43
  %31 = load i32, ptr %7, align 4, !tbaa !43
  call fastcc void @ui_numedit_but_HISTOGRAM(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %30, i32 noundef %31) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %66

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !151
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !172
  %39 = getelementptr inbounds %struct.Histogram, ptr %38, i64 0, i32 8
  store float 1.000000e+00, ptr %39, align 4, !tbaa !440
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !150
  switch i16 %42, label %66 [
    i16 218, label %43
    i16 4, label %50
    i16 1, label %61
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !151
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %48, align 4, !tbaa !92
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %49, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

50:                                               ; preds = %40
  %51 = load i32, ptr %6, align 4, !tbaa !43
  %52 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %53 = load i32, ptr %52, align 4, !tbaa !252
  %54 = icmp eq i32 %51, %53
  %55 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %54, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %58 = load i32, ptr %57, align 8, !tbaa !434
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %56, %50
  call fastcc void @ui_numedit_but_HISTOGRAM(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %51, i32 noundef %55) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %66

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %63 = load i16, ptr %62, align 2, !tbaa !151
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

66:                                               ; preds = %16, %19, %32, %5, %47, %43, %61, %65, %56, %60, %40, %36, %23
  %67 = phi i32 [ 1, %23 ], [ 1, %36 ], [ 1, %40 ], [ 1, %60 ], [ 1, %56 ], [ 1, %65 ], [ 1, %61 ], [ 1, %43 ], [ 1, %47 ], [ 0, %5 ], [ 0, %32 ], [ 0, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_WAVEFORM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !442 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !178
  store i32 %9, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !42
  store i32 %11, ptr %7, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  switch i32 %15, label %66 [
    i32 1, label %16
    i32 5, label %40
  ]

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  switch i16 %18, label %66 [
    i16 1, label %19
    i16 223, label %32
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !151
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %24, ptr %25, align 4, !tbaa !251
  %26 = load i32, ptr %7, align 4, !tbaa !43
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %26, ptr %27, align 8, !tbaa !429
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %24, ptr %28, align 4, !tbaa !252
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %26, ptr %29, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %30 = load i32, ptr %6, align 4, !tbaa !43
  %31 = load i32, ptr %7, align 4, !tbaa !43
  call fastcc void @ui_numedit_but_WAVEFORM(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %30, i32 noundef %31) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %66

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !151
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !172
  %39 = getelementptr inbounds %struct.Scopes, ptr %38, i64 0, i32 6
  store float 1.000000e+00, ptr %39, align 8, !tbaa !443
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !150
  switch i16 %42, label %66 [
    i16 218, label %43
    i16 4, label %50
    i16 1, label %61
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !151
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %48, align 4, !tbaa !92
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %49, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

50:                                               ; preds = %40
  %51 = load i32, ptr %6, align 4, !tbaa !43
  %52 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %53 = load i32, ptr %52, align 4, !tbaa !252
  %54 = icmp eq i32 %51, %53
  %55 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %54, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %58 = load i32, ptr %57, align 8, !tbaa !434
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %56, %50
  call fastcc void @ui_numedit_but_WAVEFORM(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %51, i32 noundef %55) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %66

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %63 = load i16, ptr %62, align 2, !tbaa !151
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %66

66:                                               ; preds = %16, %19, %32, %5, %47, %43, %61, %65, %56, %60, %40, %36, %23
  %67 = phi i32 [ 1, %23 ], [ 1, %36 ], [ 1, %40 ], [ 1, %60 ], [ 1, %56 ], [ 1, %65 ], [ 1, %61 ], [ 1, %43 ], [ 1, %47 ], [ 0, %5 ], [ 0, %32 ], [ 0, %19 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_TEX(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !PGOFuncName !445 {
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !90
  switch i32 %7, label %30 [
    i32 1, label %8
    i32 6, label %28
    i32 7, label %29
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !150
  switch i16 %10, label %30 [
    i16 1, label %11
    i16 20513, label %11
    i16 163, label %11
    i16 220, label %11
  ]

11:                                               ; preds = %8, %8, %8, %8
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !151
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  switch i16 %10, label %19 [
    i16 163, label %16
    i16 220, label %16
  ]

16:                                               ; preds = %15, %15
  %17 = tail call zeroext i8 @ui_is_but_utf8(ptr noundef %2) #26, !range !168
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15, %16
  %20 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 46
  %21 = load i8, ptr %20, align 1, !tbaa !302
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %25 = load i16, ptr %24, align 2, !tbaa !164
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 6) #26
  br label %30

28:                                               ; preds = %5
  tail call fastcc void @ui_do_but_textedit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #26
  br label %30

29:                                               ; preds = %5
  tail call fastcc void @ui_do_but_textedit_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #26
  br label %30

30:                                               ; preds = %16, %23, %11, %8, %5, %29, %28, %27
  %31 = phi i32 [ 1, %27 ], [ 1, %28 ], [ 1, %29 ], [ 0, %5 ], [ 0, %8 ], [ 0, %11 ], [ 0, %23 ], [ 0, %16 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_SEARCH_UNLINK(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !PGOFuncName !446 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !150
  switch i16 %10, label %46 [
    i16 1, label %11
    i16 20513, label %11
    i16 163, label %11
    i16 220, label %11
  ]

11:                                               ; preds = %5, %5, %5, %5
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !151
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @ui_is_but_search_unlink_visible(ptr noundef %2) #26, !range !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !178
  store i32 %22, ptr %7, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !42
  store i32 %24, ptr %8, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  call void @ui_window_to_block(ptr noundef %20, ptr noundef %26, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %27 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %6, ptr noundef nonnull %27) #25
  %28 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !447
  %30 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %6) #26
  %31 = sub nsw i32 %29, %30
  store i32 %31, ptr %6, align 4, !tbaa !448
  %32 = load i32, ptr %7, align 4, !tbaa !43
  %33 = load i32, ptr %8, align 4, !tbaa !43
  %34 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %6, i32 noundef %32, i32 noundef %33) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %46

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !108
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %43 = call ptr %42(i64 noundef 1, ptr noundef nonnull @.str.85) #25
  store ptr %43, ptr %38, align 8, !tbaa !108
  br label %44

44:                                               ; preds = %37, %41
  %45 = phi ptr [ %39, %37 ], [ %43, %41 ]
  store i8 0, ptr %45, align 1, !tbaa !68
  call fastcc void @ui_apply_but_TEX(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %48

46:                                               ; preds = %36, %5, %15, %11
  %47 = call fastcc i32 @ui_do_but_TEX(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #26, !range !174
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi i32 [ 1, %44 ], [ %47, %46 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_BLOCK(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !449 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !90
  switch i32 %6, label %93 [
    i32 1, label %7
    i32 9, label %74
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 64
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !151
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef nonnull %1, ptr noundef %21, ptr noundef nonnull %3) #26
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %25 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !43
  store <2 x i32> %27, ptr %26, align 4, !tbaa !43
  br label %93

28:                                               ; preds = %19
  %29 = load i16, ptr %8, align 8, !tbaa !150
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %11, %15, %28
  %32 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !151
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = tail call fastcc zeroext i8 @ui_is_but_drag_toggle(ptr noundef nonnull %1) #26, !range !168
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i16, ptr %8, align 8, !tbaa !150
  br label %44

40:                                               ; preds = %35
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %41 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %43 = load <2 x i32>, ptr %41, align 4, !tbaa !43
  store <2 x i32> %43, ptr %42, align 4, !tbaa !43
  br label %93

44:                                               ; preds = %38, %7, %28
  %45 = phi i16 [ %29, %28 ], [ %9, %7 ], [ %39, %38 ]
  switch i16 %45, label %52 [
    i16 1, label %46
    i16 163, label %46
    i16 220, label %46
  ]

46:                                               ; preds = %31, %44, %44, %44
  %47 = phi i16 [ %45, %44 ], [ %45, %44 ], [ %45, %44 ], [ 1, %31 ]
  %48 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %49 = load i16, ptr %48, align 2, !tbaa !151
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 8) #26
  br label %93

52:                                               ; preds = %44, %46
  %53 = phi i16 [ %45, %44 ], [ %47, %46 ]
  %54 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !51
  %56 = icmp eq i32 %55, 5632
  %57 = and i16 %53, -2
  %58 = icmp eq i16 %57, 10
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %93

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %62 = load i16, ptr %61, align 4, !tbaa !166
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %60
  %65 = icmp eq i16 %53, 11
  %66 = select i1 %65, i32 -1, i32 1
  %67 = tail call i32 @ui_step_name_menu(ptr noundef nonnull %1, i32 noundef %66) #25
  %68 = sitofp i32 %67 to double
  %69 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 13
  store double %68, ptr %69, align 8, !tbaa !184
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  %70 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %71 = load ptr, ptr %70, align 8, !tbaa !94
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %71, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #26
  %72 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 45
  store ptr %1, ptr %72, align 8, !tbaa !269
  %73 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 44
  store i32 0, ptr %73, align 8, !tbaa !270
  tail call void @WM_event_add_mousemove(ptr noundef %0) #25
  br label %93

74:                                               ; preds = %4
  %75 = tail call fastcc zeroext i8 @ui_but_start_drag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #26, !range !168
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !104
  %80 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef %1, ptr noundef %79, ptr noundef %3) #26
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 10) #26
  %83 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %83, align 4, !tbaa !92
  br label %93

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %86 = load i16, ptr %85, align 8, !tbaa !150
  %87 = icmp eq i16 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %90 = load i16, ptr %89, align 2, !tbaa !151
  %91 = icmp eq i16 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 8) #26
  br label %93

93:                                               ; preds = %52, %60, %84, %88, %4, %74, %92, %82, %64, %51, %40, %24
  %94 = phi i32 [ 1, %24 ], [ 1, %40 ], [ 1, %51 ], [ 1, %64 ], [ 1, %82 ], [ 1, %92 ], [ 1, %74 ], [ 0, %4 ], [ 0, %88 ], [ 0, %84 ], [ 0, %60 ], [ 0, %52 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_COLOR(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !450 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !90
  switch i32 %8, label %203 [
    i32 1, label %9
    i32 9, label %117
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !150
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 64
  %15 = load ptr, ptr %14, align 8, !tbaa !301
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !151
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  tail call fastcc void @ui_palette_set_active(ptr noundef nonnull %1) #26
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  %24 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef nonnull %1, ptr noundef %23, ptr noundef nonnull %3) #26
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %27 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %29 = load <2 x i32>, ptr %27, align 4, !tbaa !43
  store <2 x i32> %29, ptr %28, align 4, !tbaa !43
  br label %203

30:                                               ; preds = %21
  %31 = load i16, ptr %10, align 8, !tbaa !150
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %13, %17, %30
  %34 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !151
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  tail call fastcc void @ui_palette_set_active(ptr noundef nonnull %1) #26
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 9) #26
  %38 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %40 = load <2 x i32>, ptr %38, align 4, !tbaa !43
  store <2 x i32> %40, ptr %39, align 4, !tbaa !43
  br label %203

41:                                               ; preds = %9, %30
  %42 = phi i16 [ %31, %30 ], [ %11, %9 ]
  switch i16 %42, label %49 [
    i16 220, label %43
    i16 163, label %43
  ]

43:                                               ; preds = %41, %33, %41
  %44 = phi i16 [ %42, %41 ], [ %42, %41 ], [ 1, %33 ]
  %45 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !151
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call fastcc void @ui_palette_set_active(ptr noundef %1) #26
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 8) #26
  br label %203

49:                                               ; preds = %41, %43
  %50 = phi i16 [ %42, %41 ], [ %44, %43 ]
  switch i16 %50, label %101 [
    i16 14, label %51
    i16 11, label %51
    i16 10, label %51
  ]

51:                                               ; preds = %49, %49, %49
  %52 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %53 = load i16, ptr %52, align 4, !tbaa !166
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %203, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %57 = load ptr, ptr %56, align 8, !tbaa !94
  %58 = tail call ptr @ui_block_hsv_get(ptr noundef %57) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call void @ui_get_but_vectorf(ptr noundef %1, ptr noundef nonnull %5) #25
  call void @rgb_to_hsv_compat_v(ptr noundef nonnull %5, ptr noundef %58) #25
  %59 = load i16, ptr %10, align 8, !tbaa !150
  switch i16 %59, label %80 [
    i16 11, label %60
    i16 10, label %70
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds float, ptr %58, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !85
  %63 = fadd float %62, 0xBFA99999A0000000
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = fcmp ogt float %63, 1.000000e+00
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %65, %60
  %69 = phi float [ 0.000000e+00, %60 ], [ %63, %67 ], [ 1.000000e+00, %65 ]
  store float %69, ptr %61, align 4, !tbaa !85
  br label %98

70:                                               ; preds = %55
  %71 = getelementptr inbounds float, ptr %58, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !85
  %73 = fadd float %72, 0x3FA99999A0000000
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = fcmp ogt float %73, 1.000000e+00
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %75, %70
  %79 = phi float [ 0.000000e+00, %70 ], [ %73, %77 ], [ 1.000000e+00, %75 ]
  store float %79, ptr %71, align 4, !tbaa !85
  br label %98

80:                                               ; preds = %55
  %81 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !42
  %83 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 13
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = sub nsw i32 %82, %84
  %86 = sitofp i32 %85 to double
  %87 = fmul double %86, 5.000000e-03
  %88 = fptrunc double %87 to float
  %89 = getelementptr inbounds float, ptr %58, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !85
  %91 = fadd float %90, %88
  %92 = fcmp olt float %91, 0.000000e+00
  br i1 %92, label %96, label %93

93:                                               ; preds = %80
  %94 = fcmp ogt float %91, 1.000000e+00
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %93, %80
  %97 = phi float [ 0.000000e+00, %80 ], [ %91, %95 ], [ 1.000000e+00, %93 ]
  store float %97, ptr %89, align 4, !tbaa !85
  br label %98

98:                                               ; preds = %78, %96, %68
  %99 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 16
  call void @hsv_to_rgb_v(ptr noundef nonnull %58, ptr noundef nonnull %99) #25
  call void @ui_set_but_vectorf(ptr noundef nonnull %1, ptr noundef nonnull %99) #25
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  %100 = load ptr, ptr %56, align 8, !tbaa !94
  call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %100, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  br label %203

101:                                              ; preds = %49
  %102 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 24
  %103 = load float, ptr %102, align 8, !tbaa !175
  %104 = fptosi float %103 to i32
  %105 = icmp eq i32 %104, 20
  %106 = icmp eq i16 %50, 224
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %203

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !151
  %111 = icmp eq i16 %110, 1
  br i1 %111, label %112, label %203

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %114 = load ptr, ptr %113, align 8, !tbaa !451
  %115 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !116
  tail call void @BKE_palette_color_remove(ptr noundef %114, ptr noundef %116) #25
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  br label %203

117:                                              ; preds = %4
  %118 = tail call fastcc zeroext i8 @ui_but_start_drag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #26, !range !168
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %203

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !104
  %123 = tail call fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef %1, ptr noundef %122, ptr noundef %3) #26
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 10) #26
  %126 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %126, align 4, !tbaa !92
  br label %203

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %129 = load i16, ptr %128, align 8, !tbaa !150
  %130 = icmp eq i16 %129, 1
  br i1 %130, label %131, label %203

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %133 = load i16, ptr %132, align 2, !tbaa !151
  %134 = icmp eq i16 %133, 2
  br i1 %134, label %135, label %203

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 24
  %137 = load float, ptr %136, align 8, !tbaa !175
  %138 = fptosi float %137 to i32
  %139 = icmp eq i32 %138, 20
  br i1 %139, label %140, label %202

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %142 = load i16, ptr %141, align 2, !tbaa !164
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %201

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  %145 = tail call ptr @CTX_data_scene(ptr noundef %0) #25
  %146 = tail call ptr @BKE_paint_get_active(ptr noundef %145) #25
  %147 = tail call ptr @BKE_paint_brush(ptr noundef %146) #25
  %148 = getelementptr inbounds %struct.Brush, ptr %147, i64 0, i32 16
  %149 = load i32, ptr %148, align 8, !tbaa !452
  %150 = and i32 %149, 2097152
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %179, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.Brush, ptr %147, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !456
  %155 = getelementptr inbounds %struct.ColorBand, ptr %154, i64 0, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !457
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds %struct.ColorBand, ptr %154, i64 0, i32 6, i64 %157
  %159 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %160 = load ptr, ptr %159, align 8, !tbaa !56
  %161 = icmp eq ptr %160, null
  br i1 %161, label %200, label %162

162:                                              ; preds = %152
  %163 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %160) #25
  %164 = icmp eq i32 %163, 30
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %167 = load ptr, ptr %159, align 8, !tbaa !56
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %166, ptr noundef %167, ptr noundef nonnull %158) #25
  %168 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %169 = load ptr, ptr %168, align 8, !tbaa !94
  tail call void @ui_block_to_scene_linear_v3(ptr noundef %169, ptr noundef nonnull %158) #25
  br label %200

170:                                              ; preds = %162
  %171 = load ptr, ptr %159, align 8, !tbaa !56
  %172 = icmp eq ptr %171, null
  br i1 %172, label %200, label %173

173:                                              ; preds = %170
  %174 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %171) #25
  %175 = icmp eq i32 %174, 20
  br i1 %175, label %176, label %200

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %178 = load ptr, ptr %159, align 8, !tbaa !56
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %177, ptr noundef %178, ptr noundef nonnull %158) #25
  br label %200

179:                                              ; preds = %144
  %180 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %181 = load ptr, ptr %180, align 8, !tbaa !56
  %182 = icmp eq ptr %181, null
  br i1 %182, label %200, label %183

183:                                              ; preds = %179
  %184 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %181) #25
  %185 = icmp eq i32 %184, 30
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %188 = load ptr, ptr %180, align 8, !tbaa !56
  call void @RNA_property_float_get_array(ptr noundef nonnull %187, ptr noundef %188, ptr noundef nonnull %6) #25
  call void @BKE_brush_color_set(ptr noundef %145, ptr noundef nonnull %147, ptr noundef nonnull %6) #25
  br label %200

189:                                              ; preds = %183
  %190 = load ptr, ptr %180, align 8, !tbaa !56
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %190) #25
  %194 = icmp eq i32 %193, 20
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %197 = load ptr, ptr %180, align 8, !tbaa !56
  call void @RNA_property_float_get_array(ptr noundef nonnull %196, ptr noundef %197, ptr noundef nonnull %6) #25
  %198 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %199 = load ptr, ptr %198, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %199, ptr noundef nonnull %6) #25
  call void @BKE_brush_color_set(ptr noundef %145, ptr noundef nonnull %147, ptr noundef nonnull %6) #25
  br label %200

200:                                              ; preds = %179, %152, %165, %176, %173, %170, %186, %195, %192, %189
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 10) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  br label %203

201:                                              ; preds = %140
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8) #26
  br label %203

202:                                              ; preds = %135
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8) #26
  br label %203

203:                                              ; preds = %51, %108, %101, %127, %131, %4, %202, %201, %200, %117, %125, %112, %98, %48, %37, %26
  %204 = phi i32 [ 1, %26 ], [ 1, %37 ], [ 1, %48 ], [ 1, %98 ], [ 1, %112 ], [ 1, %125 ], [ 1, %117 ], [ 1, %200 ], [ 1, %201 ], [ 1, %202 ], [ 0, %4 ], [ 0, %131 ], [ 0, %127 ], [ 0, %101 ], [ 0, %108 ], [ 0, %51 ]
  ret i32 %204
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_NORMAL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !458 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !178
  store i32 %9, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !42
  store i32 %11, ptr %7, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  switch i32 %15, label %60 [
    i32 1, label %16
    i32 5, label %37
  ]

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %26 = load i32, ptr %6, align 4, !tbaa !43
  %27 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %26, ptr %27, align 4, !tbaa !251
  %28 = load i32, ptr %7, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %28, ptr %29, align 8, !tbaa !429
  %30 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %26, ptr %30, align 4, !tbaa !252
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %28, ptr %31, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %32 = load i32, ptr %6, align 4, !tbaa !43
  %33 = load i32, ptr %7, align 4, !tbaa !43
  %34 = call fastcc zeroext i8 @ui_numedit_but_NORMAL(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %32, i32 noundef %33, i32 noundef %25) #26, !range !168
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %24
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %60

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !150
  switch i16 %39, label %60 [
    i16 4, label %40
    i16 1, label %55
  ]

40:                                               ; preds = %37
  %41 = load i32, ptr %6, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %43 = load i32, ptr %42, align 4, !tbaa !252
  %44 = icmp eq i32 %41, %43
  %45 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %44, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %48 = load i32, ptr %47, align 8, !tbaa !434
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %46, %40
  %51 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %52 = call fastcc zeroext i8 @ui_numedit_but_NORMAL(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %41, i32 noundef %45, i32 noundef %51) #26, !range !168
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %60

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %57 = load i16, ptr %56, align 2, !tbaa !151
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %60

60:                                               ; preds = %20, %16, %5, %46, %59, %55, %54, %50, %37, %24, %36
  %61 = phi i32 [ 1, %36 ], [ 1, %24 ], [ 1, %37 ], [ 1, %50 ], [ 1, %54 ], [ 1, %55 ], [ 1, %59 ], [ 1, %46 ], [ 0, %5 ], [ 0, %16 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_COLORBAND(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !459 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !178
  store i32 %9, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !42
  store i32 %11, ptr %7, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  switch i32 %15, label %109 [
    i32 1, label %16
    i32 5, label %87
  ]

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %109

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %109

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !172
  %27 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %28 = load i16, ptr %27, align 2, !tbaa !164
  %29 = icmp eq i16 %28, 0
  %30 = load i32, ptr %6, align 4, !tbaa !43
  br i1 %29, label %39, label %31

31:                                               ; preds = %24
  %32 = sitofp i32 %30 to float
  %33 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %34 = load float, ptr %33, align 8, !tbaa !432
  %35 = fsub float %32, %34
  %36 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %33) #26
  %37 = fdiv float %35, %36
  %38 = call ptr @colorband_element_add(ptr noundef %26, float noundef %37) #25
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %109

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %30, ptr %40, align 4, !tbaa !251
  %41 = load i32, ptr %7, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %41, ptr %42, align 8, !tbaa !429
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %30, ptr %43, align 4, !tbaa !252
  %44 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %41, ptr %44, align 8, !tbaa !434
  %45 = getelementptr inbounds %struct.ColorBand, ptr %26, i64 0, i32 6
  %46 = load i16, ptr %26, align 4, !tbaa !402
  %47 = sext i16 %46 to i32
  %48 = icmp sgt i16 %46, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ColorBand, ptr %26, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !457
  br label %82

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %54 = load float, ptr %53, align 8, !tbaa !432
  %55 = getelementptr inbounds %struct.ColorBand, ptr %26, i64 0, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !457
  br label %57

57:                                               ; preds = %52, %76
  %58 = phi i16 [ %56, %52 ], [ %77, %76 ]
  %59 = phi i32 [ 12, %52 ], [ %78, %76 ]
  %60 = phi i32 [ 0, %52 ], [ %79, %76 ]
  %61 = phi ptr [ %45, %52 ], [ %80, %76 ]
  %62 = getelementptr inbounds %struct.CBData, ptr %61, i64 0, i32 4
  %63 = load float, ptr %62, align 4, !tbaa !460
  %64 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %53) #26
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float %54)
  %66 = fptosi float %65 to i32
  %67 = sub nsw i32 %66, %30
  %68 = call i32 @llvm.abs.i32(i32 %67, i1 true)
  %69 = sext i16 %58 to i32
  %70 = icmp eq i32 %60, %69
  %71 = add nuw nsw i32 %68, 5
  %72 = select i1 %70, i32 %71, i32 %68
  %73 = icmp slt i32 %72, %59
  br i1 %73, label %74, label %76

74:                                               ; preds = %57
  %75 = trunc i32 %60 to i16
  store i16 %75, ptr %55, align 2, !tbaa !457
  br label %76

76:                                               ; preds = %57, %74
  %77 = phi i16 [ %75, %74 ], [ %58, %57 ]
  %78 = phi i32 [ %72, %74 ], [ %59, %57 ]
  %79 = add nuw nsw i32 %60, 1
  %80 = getelementptr inbounds %struct.CBData, ptr %61, i64 1
  %81 = icmp eq i32 %79, %47
  br i1 %81, label %82, label %57, !llvm.loop !462

82:                                               ; preds = %76, %49
  %83 = phi i16 [ %51, %49 ], [ %77, %76 ]
  %84 = sext i16 %83 to i64
  %85 = getelementptr inbounds %struct.CBData, ptr %45, i64 %84
  %86 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 37
  store ptr %85, ptr %86, align 8, !tbaa !253
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 5) #26
  br label %109

87:                                               ; preds = %5
  %88 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %89 = load i16, ptr %88, align 8, !tbaa !150
  switch i16 %89, label %109 [
    i16 4, label %90
    i16 1, label %104
  ]

90:                                               ; preds = %87
  %91 = load i32, ptr %6, align 4, !tbaa !43
  %92 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %93 = load i32, ptr %92, align 4, !tbaa !252
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, ptr %7, align 4, !tbaa !43
  %97 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %98 = load i32, ptr %97, align 8, !tbaa !434
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %95, %90
  %101 = call fastcc zeroext i8 @ui_numedit_but_COLORBAND(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %91) #26, !range !168
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %109

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !151
  %107 = icmp eq i16 %106, 1
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %109

109:                                              ; preds = %20, %16, %5, %100, %103, %95, %108, %104, %87, %31, %82
  %110 = phi i32 [ 1, %82 ], [ 1, %31 ], [ 1, %87 ], [ 1, %104 ], [ 1, %108 ], [ 1, %95 ], [ 1, %103 ], [ 1, %100 ], [ 0, %5 ], [ 0, %16 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_CURVE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !463 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #25
  %9 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !178
  store i32 %10, ptr %6, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !42
  store i32 %12, ptr %7, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !90
  switch i32 %16, label %254 [
    i32 1, label %17
    i32 5, label %185
  ]

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !150
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %254

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !151
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %254

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !172
  %28 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 6
  %29 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !464
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.CurveMap, ptr %28, i64 %31
  %33 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18
  %34 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %33) #26
  %35 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 4
  %36 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %35) #26
  %37 = fdiv float %34, %36
  %38 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %33) #26
  %39 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %35) #26
  %40 = fdiv float %38, %39
  %41 = load float, ptr %35, align 8, !tbaa !466
  %42 = getelementptr inbounds %struct.CurveMapping, ptr %27, i64 0, i32 4, i32 2
  %43 = load float, ptr %42, align 8, !tbaa !467
  %44 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %45 = load i16, ptr %44, align 2, !tbaa !164
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %25
  %48 = load i32, ptr %6, align 4, !tbaa !43
  %49 = sitofp i32 %48 to float
  %50 = load float, ptr %33, align 8, !tbaa !432
  %51 = fsub float %49, %50
  %52 = fdiv float %51, %37
  %53 = fadd float %41, %52
  %54 = load i32, ptr %7, align 4, !tbaa !43
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !361
  %58 = fsub float %55, %57
  %59 = fdiv float %58, %40
  %60 = fadd float %43, %59
  %61 = call ptr @curvemap_insert(ptr noundef nonnull %32, float noundef %53, float noundef %60) #25
  call void @curvemapping_changed(ptr noundef nonnull %27, i8 noundef zeroext 0) #25
  br label %62

62:                                               ; preds = %47, %25
  %63 = getelementptr inbounds %struct.CurveMap, ptr %28, i64 %31, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !468
  %65 = load i16, ptr %32, align 8, !tbaa !470
  %66 = icmp sgt i16 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = zext nneg i16 %65 to i64
  %69 = load float, ptr %33, align 8, !tbaa !432
  %70 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %71 = load float, ptr %70, align 8, !tbaa !361
  %72 = load i32, ptr %6, align 4, !tbaa !43
  %73 = sitofp i32 %72 to float
  %74 = load i32, ptr %7, align 4, !tbaa !43
  %75 = sitofp i32 %74 to float
  br label %76

76:                                               ; preds = %67, %76
  %77 = phi i64 [ 0, %67 ], [ %96, %76 ]
  %78 = phi i32 [ -1, %67 ], [ %95, %76 ]
  %79 = phi float [ 2.000000e+02, %67 ], [ %93, %76 ]
  %80 = getelementptr inbounds %struct.CurveMapPoint, ptr %64, i64 %77
  %81 = load float, ptr %80, align 4, !tbaa !471
  %82 = fsub float %81, %41
  %83 = call float @llvm.fmuladd.f32(float %37, float %82, float %69)
  %84 = getelementptr inbounds %struct.CurveMapPoint, ptr %64, i64 %77, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !473
  %86 = fsub float %85, %43
  %87 = call float @llvm.fmuladd.f32(float %40, float %86, float %71)
  %88 = fsub float %83, %73
  %89 = fsub float %87, %75
  %90 = fmul float %89, %89
  %91 = call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = fcmp olt float %91, %79
  %93 = select i1 %92, float %91, float %79
  %94 = trunc i64 %77 to i32
  %95 = select i1 %92, i32 %94, i32 %78
  %96 = add nuw nsw i64 %77, 1
  %97 = icmp eq i64 %96, %68
  br i1 %97, label %98, label %76, !llvm.loop !474

98:                                               ; preds = %76
  %99 = icmp eq i32 %95, -1
  br i1 %99, label %100, label %151

100:                                              ; preds = %62, %98
  %101 = load i32, ptr %6, align 4, !tbaa !43
  %102 = sitofp i32 %101 to float
  %103 = load float, ptr %33, align 8, !tbaa !432
  %104 = fsub float %102, %103
  %105 = fdiv float %104, %37
  %106 = fadd float %41, %105
  %107 = load i32, ptr %7, align 4, !tbaa !43
  %108 = sitofp i32 %107 to float
  %109 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 18, i32 2
  %110 = load float, ptr %109, align 8, !tbaa !361
  %111 = fsub float %108, %110
  %112 = fdiv float %111, %40
  %113 = fadd float %43, %112
  %114 = getelementptr inbounds %struct.CurveMap, ptr %28, i64 %31, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !475
  br label %116

116:                                              ; preds = %100, %146
  %117 = phi i64 [ 0, %100 ], [ %147, %146 ]
  %118 = getelementptr inbounds %struct.CurveMapPoint, ptr %115, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !471
  %120 = fsub float %106, %119
  %121 = call float @llvm.fabs.f32(float %120)
  %122 = fcmp olt float %121, 0x3FA99999A0000000
  br i1 %122, label %123, label %146

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.CurveMapPoint, ptr %115, i64 %117, i32 1
  %125 = load float, ptr %124, align 4, !tbaa !473
  %126 = fsub float %113, %125
  %127 = call float @llvm.fabs.f32(float %126)
  %128 = fcmp olt float %127, 0x3FA99999A0000000
  br i1 %128, label %129, label %146

129:                                              ; preds = %123
  %130 = call ptr @curvemap_insert(ptr noundef nonnull %32, float noundef %106, float noundef %113) #25
  call void @curvemapping_changed(ptr noundef %27, i8 noundef zeroext 0) #25
  %131 = load ptr, ptr %63, align 8, !tbaa !468
  %132 = load i16, ptr %32, align 8, !tbaa !470
  %133 = icmp sgt i16 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %129
  %135 = zext nneg i16 %132 to i64
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ 0, %134 ], [ %144, %136 ]
  %138 = phi i32 [ -1, %134 ], [ %143, %136 ]
  %139 = getelementptr inbounds %struct.CurveMapPoint, ptr %131, i64 %137
  %140 = load float, ptr %139, align 4, !tbaa !471
  %141 = fcmp oeq float %140, %106
  %142 = trunc i64 %137 to i32
  %143 = select i1 %141, i32 %142, i32 %138
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %149, label %136, !llvm.loop !476

146:                                              ; preds = %116, %123
  %147 = add nuw nsw i64 %117, 1
  %148 = icmp eq i64 %147, 257
  br i1 %148, label %177, label %116, !llvm.loop !477

149:                                              ; preds = %136
  %150 = icmp eq i32 %143, -1
  br i1 %150, label %177, label %151

151:                                              ; preds = %98, %149
  %152 = phi i16 [ %132, %149 ], [ %65, %98 ]
  %153 = phi i32 [ %143, %149 ], [ %95, %98 ]
  %154 = phi ptr [ %131, %149 ], [ %64, %98 ]
  %155 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %156 = load i16, ptr %155, align 8, !tbaa !167
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %151
  %159 = zext nneg i16 %152 to i64
  br label %160

160:                                              ; preds = %158, %160
  %161 = phi i64 [ 0, %158 ], [ %165, %160 ]
  %162 = getelementptr inbounds %struct.CurveMapPoint, ptr %154, i64 %161, i32 2
  %163 = load i16, ptr %162, align 4, !tbaa !478
  %164 = and i16 %163, -2
  store i16 %164, ptr %162, align 4, !tbaa !478
  %165 = add nuw nsw i64 %161, 1
  %166 = icmp eq i64 %165, %159
  br i1 %166, label %167, label %160, !llvm.loop !479

167:                                              ; preds = %160
  %168 = sext i32 %153 to i64
  %169 = getelementptr inbounds %struct.CurveMapPoint, ptr %154, i64 %168, i32 2
  %170 = load i16, ptr %169, align 4, !tbaa !478
  %171 = or i16 %170, 1
  store i16 %171, ptr %169, align 4, !tbaa !478
  br label %179

172:                                              ; preds = %151
  %173 = sext i32 %153 to i64
  %174 = getelementptr inbounds %struct.CurveMapPoint, ptr %154, i64 %173, i32 2
  %175 = load i16, ptr %174, align 4, !tbaa !478
  %176 = xor i16 %175, 1
  store i16 %176, ptr %174, align 4, !tbaa !478
  br label %179

177:                                              ; preds = %146, %129, %149
  %178 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %178, align 4, !tbaa !92
  br label %179

179:                                              ; preds = %167, %172, %177
  %180 = phi i32 [ %153, %167 ], [ %153, %172 ], [ -1, %177 ]
  %181 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 34
  store i32 %180, ptr %181, align 8, !tbaa !254
  %182 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %183 = load <2 x i32>, ptr %9, align 4, !tbaa !43
  %184 = shufflevector <2 x i32> %183, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %184, ptr %182, align 4, !tbaa !43
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  br label %254

185:                                              ; preds = %5
  %186 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %187 = load i16, ptr %186, align 8, !tbaa !150
  switch i16 %187, label %254 [
    i16 4, label %188
    i16 1, label %210
  ]

188:                                              ; preds = %185
  %189 = load i32, ptr %9, align 4, !tbaa !178
  %190 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %191 = load i32, ptr %190, align 4, !tbaa !252
  %192 = icmp eq i32 %189, %191
  %193 = load i32, ptr %11, align 8, !tbaa !42
  br i1 %192, label %194, label %198

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %196 = load i32, ptr %195, align 8, !tbaa !434
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %254, label %198

198:                                              ; preds = %194, %188
  %199 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %200 = load i16, ptr %199, align 2, !tbaa !164
  %201 = icmp ne i16 %200, 0
  %202 = zext i1 %201 to i8
  %203 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %204 = load i16, ptr %203, align 8, !tbaa !167
  %205 = icmp ne i16 %204, 0
  %206 = zext i1 %205 to i8
  %207 = call fastcc zeroext i8 @ui_numedit_but_CURVE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %189, i32 noundef %193, i8 noundef zeroext %202, i8 noundef zeroext %206) #26, !range !168
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %254, label %209

209:                                              ; preds = %198
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %254

210:                                              ; preds = %185
  %211 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %212 = load i16, ptr %211, align 2, !tbaa !151
  %213 = icmp eq i16 %212, 1
  br i1 %213, label %254, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 34
  %216 = load i32, ptr %215, align 8, !tbaa !254
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %253, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %220 = load ptr, ptr %219, align 8, !tbaa !172
  %221 = getelementptr inbounds %struct.CurveMapping, ptr %220, i64 0, i32 6
  %222 = getelementptr inbounds %struct.CurveMapping, ptr %220, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !464
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.CurveMap, ptr %221, i64 %224
  %226 = getelementptr inbounds %struct.CurveMap, ptr %221, i64 %224, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !468
  %228 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 32
  %229 = load i8, ptr %228, align 4, !tbaa !248
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %218
  %232 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %233 = load i16, ptr %232, align 8, !tbaa !167
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %235, label %253

235:                                              ; preds = %231
  %236 = load i16, ptr %225, align 8, !tbaa !470
  %237 = icmp sgt i16 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = zext nneg i16 %236 to i64
  br label %240

240:                                              ; preds = %238, %240
  %241 = phi i64 [ 0, %238 ], [ %245, %240 ]
  %242 = getelementptr inbounds %struct.CurveMapPoint, ptr %227, i64 %241, i32 2
  %243 = load i16, ptr %242, align 4, !tbaa !478
  %244 = and i16 %243, -2
  store i16 %244, ptr %242, align 4, !tbaa !478
  %245 = add nuw nsw i64 %241, 1
  %246 = icmp eq i64 %245, %239
  br i1 %246, label %247, label %240, !llvm.loop !480

247:                                              ; preds = %240, %235
  %248 = sext i32 %216 to i64
  %249 = getelementptr inbounds %struct.CurveMapPoint, ptr %227, i64 %248, i32 2
  %250 = load i16, ptr %249, align 4, !tbaa !478
  %251 = or i16 %250, 1
  store i16 %251, ptr %249, align 4, !tbaa !478
  br label %253

252:                                              ; preds = %218
  call void @curvemapping_changed(ptr noundef nonnull %220, i8 noundef zeroext 1) #25
  call void @BKE_paint_invalidate_cursor_overlay(ptr noundef %8, ptr noundef nonnull %220) #25
  br label %253

253:                                              ; preds = %252, %247, %231, %214
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %254

254:                                              ; preds = %21, %17, %5, %198, %209, %194, %253, %210, %185, %179
  %255 = phi i32 [ 1, %179 ], [ 1, %185 ], [ 1, %210 ], [ 1, %253 ], [ 1, %194 ], [ 1, %209 ], [ 1, %198 ], [ 0, %5 ], [ 0, %17 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %255
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_HSVCUBE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !481 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 8
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %11 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !178
  store i32 %12, ptr %6, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !42
  store i32 %14, ptr %7, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %17 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !90
  switch i32 %18, label %105 [
    i32 1, label %19
    i32 5, label %74
  ]

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !150
  switch i16 %21, label %105 [
    i16 1, label %22
    i16 400, label %40
    i16 223, label %50
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !151
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %105

26:                                               ; preds = %22
  %27 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %28 = load i32, ptr %6, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %28, ptr %29, align 4, !tbaa !251
  %30 = load i32, ptr %7, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %30, ptr %31, align 8, !tbaa !429
  %32 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %28, ptr %32, align 4, !tbaa !252
  %33 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %30, ptr %33, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %34 = load i32, ptr %6, align 4, !tbaa !43
  %35 = load i32, ptr %7, align 4, !tbaa !43
  %36 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %37 = load i16, ptr %36, align 8, !tbaa !167
  %38 = icmp ne i16 %37, 0
  %39 = zext i1 %38 to i8
  call fastcc void @ui_numedit_but_HSVCUBE(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %34, i32 noundef %35, i32 noundef %27, i8 noundef zeroext %39) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %105

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  %42 = load ptr, ptr %41, align 8, !tbaa !152
  %43 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %44 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %45 = load i16, ptr %44, align 8, !tbaa !167
  %46 = icmp ne i16 %45, 0
  %47 = zext i1 %46 to i8
  call fastcc void @ui_ndofedit_but_HSVCUBE(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %42, i32 noundef %43, i8 noundef zeroext %47) #26
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  %48 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %49 = load ptr, ptr %48, align 8, !tbaa !94
  call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %49, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 1) #26
  br label %105

50:                                               ; preds = %19
  %51 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !151
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %105

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 24
  %56 = load float, ptr %55, align 8, !tbaa !175
  %57 = fcmp oeq float %56, 9.000000e+00
  %58 = fcmp oeq float %56, 1.000000e+01
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %62 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  %64 = call i32 @RNA_property_array_length(ptr noundef nonnull %61, ptr noundef %63) #25
  %65 = add i32 %64, -5
  %66 = icmp ult i32 %65, -2
  br i1 %66, label %105, label %67

67:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  %68 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %69 = load ptr, ptr %68, align 8, !tbaa !94
  %70 = call ptr @ui_block_hsv_get(ptr noundef %69) #25
  %71 = load ptr, ptr %62, align 8, !tbaa !56
  call void @RNA_property_float_get_default_array(ptr noundef nonnull %61, ptr noundef %71, ptr noundef nonnull %10) #25
  call fastcc void @ui_rgb_to_color_picker_HSVCUBE_v(ptr noundef nonnull %2, ptr noundef nonnull %10, ptr noundef nonnull %9) #26
  call void @ui_get_but_vectorf(ptr noundef nonnull %2, ptr noundef nonnull %8) #25
  call fastcc void @ui_rgb_to_color_picker_HSVCUBE_compat_v(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef %70) #26
  %72 = load <2 x float>, ptr %70, align 4, !tbaa !85
  store <2 x float> %72, ptr %9, align 8, !tbaa !85
  call fastcc void @ui_color_picker_to_rgb_HSVCUBE_v(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef nonnull %8) #26
  call void @ui_set_but_vectorf(ptr noundef nonnull %2, ptr noundef nonnull %8) #25
  %73 = load ptr, ptr %62, align 8, !tbaa !56
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %61, ptr noundef %73) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  br label %105

74:                                               ; preds = %5
  %75 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %76 = load i16, ptr %75, align 8, !tbaa !150
  switch i16 %76, label %105 [
    i16 218, label %77
    i16 3, label %77
    i16 4, label %84
    i16 1, label %100
  ]

77:                                               ; preds = %74, %74
  %78 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !151
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %82, align 4, !tbaa !92
  %83 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %83, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %105

84:                                               ; preds = %74
  %85 = load i32, ptr %6, align 4, !tbaa !43
  %86 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %87 = load i32, ptr %86, align 4, !tbaa !252
  %88 = icmp eq i32 %85, %87
  %89 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %88, label %90, label %94

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %92 = load i32, ptr %91, align 8, !tbaa !434
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %90, %84
  %95 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %96 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %97 = load i16, ptr %96, align 8, !tbaa !167
  %98 = icmp ne i16 %97, 0
  %99 = zext i1 %98 to i8
  call fastcc void @ui_numedit_but_HSVCUBE(ptr noundef %2, ptr noundef nonnull %3, i32 noundef %85, i32 noundef %89, i32 noundef %95, i8 noundef zeroext %99) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %105

100:                                              ; preds = %74
  %101 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !151
  %103 = icmp eq i16 %102, 1
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %105

105:                                              ; preds = %19, %22, %50, %54, %5, %60, %67, %81, %77, %100, %104, %90, %94, %74, %40, %26
  %106 = phi i32 [ 1, %26 ], [ 1, %40 ], [ 1, %67 ], [ 1, %74 ], [ 1, %94 ], [ 1, %90 ], [ 1, %104 ], [ 1, %100 ], [ 1, %77 ], [ 1, %81 ], [ 0, %60 ], [ 0, %5 ], [ 0, %54 ], [ 0, %50 ], [ 0, %22 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %106
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_HSVCIRCLE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !482 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !178
  store i32 %11, ptr %6, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !42
  store i32 %13, ptr %7, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !90
  switch i32 %17, label %135 [
    i32 1, label %18
    i32 5, label %76
  ]

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !150
  switch i16 %20, label %135 [
    i16 1, label %21
    i16 400, label %41
    i16 223, label %51
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !151
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %135

25:                                               ; preds = %21
  %26 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %27 = load i32, ptr %6, align 4, !tbaa !43
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %27, ptr %28, align 4, !tbaa !251
  %29 = load i32, ptr %7, align 4, !tbaa !43
  %30 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %29, ptr %30, align 8, !tbaa !429
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %27, ptr %31, align 4, !tbaa !252
  %32 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %29, ptr %32, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %33 = load i32, ptr %6, align 4, !tbaa !43
  %34 = sitofp i32 %33 to float
  %35 = load i32, ptr %7, align 4, !tbaa !43
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %38 = load i16, ptr %37, align 8, !tbaa !167
  %39 = icmp ne i16 %38, 0
  %40 = zext i1 %39 to i8
  call fastcc void @ui_numedit_but_HSVCIRCLE(ptr noundef %2, ptr noundef nonnull %3, float noundef %34, float noundef %36, i32 noundef %26, i8 noundef zeroext %40) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %135

41:                                               ; preds = %18
  %42 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %43 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 28
  %44 = load ptr, ptr %43, align 8, !tbaa !152
  %45 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %46 = load i16, ptr %45, align 8, !tbaa !167
  %47 = icmp ne i16 %46, 0
  %48 = zext i1 %47 to i8
  call fastcc void @ui_ndofedit_but_HSVCIRCLE(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %44, i32 noundef %42, i8 noundef zeroext %48) #26
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  %49 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %50, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 1) #26
  br label %135

51:                                               ; preds = %18
  %52 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %53 = load i16, ptr %52, align 2, !tbaa !151
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %135

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 54
  %57 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 55
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = call i32 @RNA_property_array_length(ptr noundef nonnull %56, ptr noundef %58) #25
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %135

61:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #27
  %62 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %63 = load ptr, ptr %62, align 8, !tbaa !94
  %64 = call ptr @ui_block_hsv_get(ptr noundef %63) #25
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %66 = zext nneg i32 %59 to i64
  %67 = shl nuw nsw i64 %66, 2
  %68 = call ptr %65(i64 noundef %67, ptr noundef nonnull @.str.86) #25
  %69 = load ptr, ptr %57, align 8, !tbaa !56
  call void @RNA_property_float_get_default_array(ptr noundef nonnull %56, ptr noundef %69, ptr noundef %68) #25
  call void @ui_color_picker_to_rgb_v(ptr noundef %68, ptr noundef nonnull %9) #25
  call void @ui_get_but_vectorf(ptr noundef nonnull %2, ptr noundef nonnull %8) #25
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %8, ptr noundef %64) #25
  %70 = load float, ptr %64, align 4, !tbaa !85
  store float %70, ptr %9, align 4, !tbaa !85
  %71 = getelementptr inbounds float, ptr %64, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !85
  %73 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %72, ptr %73, align 4, !tbaa !85
  call void @hsv_to_rgb_v(ptr noundef nonnull %9, ptr noundef nonnull %8) #25
  call void @ui_set_but_vectorf(ptr noundef nonnull %2, ptr noundef nonnull %8) #25
  %74 = load ptr, ptr %57, align 8, !tbaa !56
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %74) #25
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %75(ptr noundef %68) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  br label %135

76:                                               ; preds = %5
  %77 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %78 = load i16, ptr %77, align 8, !tbaa !150
  switch i16 %78, label %135 [
    i16 218, label %79
    i16 3, label %79
    i16 11, label %86
    i16 10, label %99
    i16 4, label %112
    i16 1, label %130
  ]

79:                                               ; preds = %76, %76
  %80 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !151
  %82 = icmp eq i16 %81, 1
  br i1 %82, label %83, label %135

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %84, align 4, !tbaa !92
  %85 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %85, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %135

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %88 = load ptr, ptr %87, align 8, !tbaa !94
  %89 = call ptr @ui_block_hsv_get(ptr noundef %88) #25
  %90 = getelementptr inbounds float, ptr %89, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !85
  %92 = fadd float %91, 0xBFA99999A0000000
  %93 = fcmp olt float %92, 0.000000e+00
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = fcmp ogt float %92, 1.000000e+00
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %94, %86
  %98 = phi float [ 0.000000e+00, %86 ], [ %92, %96 ], [ 1.000000e+00, %94 ]
  store float %98, ptr %90, align 4, !tbaa !85
  call void @ui_set_but_hsv(ptr noundef nonnull %2) #25
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %135

99:                                               ; preds = %76
  %100 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 74
  %101 = load ptr, ptr %100, align 8, !tbaa !94
  %102 = call ptr @ui_block_hsv_get(ptr noundef %101) #25
  %103 = getelementptr inbounds float, ptr %102, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !85
  %105 = fadd float %104, 0x3FA99999A0000000
  %106 = fcmp olt float %105, 0.000000e+00
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = fcmp ogt float %105, 1.000000e+00
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %107, %99
  %111 = phi float [ 0.000000e+00, %99 ], [ %105, %109 ], [ 1.000000e+00, %107 ]
  store float %111, ptr %103, align 4, !tbaa !85
  call void @ui_set_but_hsv(ptr noundef nonnull %2) #25
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  br label %135

112:                                              ; preds = %76
  %113 = load i32, ptr %6, align 4, !tbaa !43
  %114 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %115 = load i32, ptr %114, align 4, !tbaa !252
  %116 = icmp eq i32 %113, %115
  %117 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %116, label %118, label %122

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %120 = load i32, ptr %119, align 8, !tbaa !434
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %135, label %122

122:                                              ; preds = %118, %112
  %123 = call fastcc i32 @ui_event_to_snap(ptr noundef nonnull %4) #26, !range !431
  %124 = sitofp i32 %113 to float
  %125 = sitofp i32 %117 to float
  %126 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %127 = load i16, ptr %126, align 8, !tbaa !167
  %128 = icmp ne i16 %127, 0
  %129 = zext i1 %128 to i8
  call fastcc void @ui_numedit_but_HSVCIRCLE(ptr noundef %2, ptr noundef nonnull %3, float noundef %124, float noundef %125, i32 noundef %123, i8 noundef zeroext %129) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %135

130:                                              ; preds = %76
  %131 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !151
  %133 = icmp eq i16 %132, 1
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %135

135:                                              ; preds = %18, %21, %51, %5, %83, %79, %110, %130, %134, %118, %122, %97, %76, %55, %61, %41, %25
  %136 = phi i32 [ 1, %25 ], [ 1, %41 ], [ 1, %61 ], [ 1, %55 ], [ 1, %76 ], [ 1, %97 ], [ 1, %122 ], [ 1, %118 ], [ 1, %134 ], [ 1, %130 ], [ 1, %110 ], [ 1, %79 ], [ 1, %83 ], [ 0, %5 ], [ 0, %51 ], [ 0, %21 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %136
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_LINK(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !483 {
  %5 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  %6 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 41
  %7 = load <2 x i32>, ptr %5, align 4, !tbaa !43
  %8 = trunc <2 x i32> %7 to <2 x i16>
  store <2 x i16> %8, ptr %6, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !90
  switch i32 %10, label %42 [
    i32 1, label %11
    i32 3, label %25
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !150
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !151
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.uiBlock, ptr %21, i64 0, i32 46
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %40

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !150
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !151
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %39, align 4, !tbaa !92
  br label %40

40:                                               ; preds = %33, %38, %19, %15
  %41 = phi i32 [ 3, %15 ], [ 10, %19 ], [ 10, %38 ], [ 10, %33 ]
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %41) #26
  br label %42

42:                                               ; preds = %40, %11, %19, %25, %29, %4
  %43 = phi i32 [ 0, %4 ], [ 0, %29 ], [ 0, %25 ], [ 0, %19 ], [ 0, %11 ], [ 1, %40 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ui_do_but_TRACKPREVIEW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !484 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !178
  store i32 %9, ptr %6, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !42
  store i32 %11, ptr %7, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !90
  switch i32 %15, label %67 [
    i32 1, label %16
    i32 5, label %37
  ]

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !150
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !151
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 28
  store i32 %25, ptr %26, align 4, !tbaa !251
  %27 = load i32, ptr %7, align 4, !tbaa !43
  %28 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 29
  store i32 %27, ptr %28, align 8, !tbaa !429
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  store i32 %25, ptr %29, align 4, !tbaa !252
  %30 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  store i32 %27, ptr %30, align 8, !tbaa !434
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 5) #26
  %31 = load i32, ptr %6, align 4, !tbaa !43
  %32 = load i32, ptr %7, align 4, !tbaa !43
  %33 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %34 = load i16, ptr %33, align 8, !tbaa !167
  %35 = icmp ne i16 %34, 0
  %36 = zext i1 %35 to i8
  call fastcc void @ui_numedit_but_TRACKPREVIEW(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %31, i32 noundef %32, i8 noundef zeroext %36) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %67

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !150
  switch i16 %39, label %67 [
    i16 218, label %40
    i16 4, label %47
    i16 1, label %62
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !151
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %45, align 4, !tbaa !92
  %46 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %46, align 1, !tbaa !100
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %67

47:                                               ; preds = %37
  %48 = load i32, ptr %6, align 4, !tbaa !43
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 26
  %50 = load i32, ptr %49, align 4, !tbaa !252
  %51 = icmp eq i32 %48, %50
  %52 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %51, label %53, label %57

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 27
  %55 = load i32, ptr %54, align 8, !tbaa !434
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %59 = load i16, ptr %58, align 8, !tbaa !167
  %60 = icmp ne i16 %59, 0
  %61 = zext i1 %60 to i8
  call fastcc void @ui_numedit_but_TRACKPREVIEW(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %48, i32 noundef %52, i8 noundef zeroext %61) #26
  call fastcc void @ui_numedit_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #26
  br label %67

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %64 = load i16, ptr %63, align 2, !tbaa !151
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %67

67:                                               ; preds = %20, %16, %5, %44, %40, %62, %66, %53, %57, %37, %24
  %68 = phi i32 [ 1, %24 ], [ 1, %37 ], [ 1, %57 ], [ 1, %53 ], [ 1, %66 ], [ 1, %62 ], [ 1, %40 ], [ 1, %44 ], [ 0, %5 ], [ 0, %16 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %68
}

; Function Attrs: optsize
declare void @ui_set_but_default(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !485 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_multibut_states_create(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !486 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = tail call ptr @UI_butstore_create(ptr noundef %4) #25
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !219
  %7 = load ptr, ptr %3, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.uiBlock, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call fastcc void @ui_multibut_add(ptr noundef %1, ptr noundef nonnull %12) #26
  br label %18

18:                                               ; preds = %11, %17
  %19 = load ptr, ptr %12, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !487

21:                                               ; preds = %18, %2
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 14
  %27 = load double, ptr %26, align 8, !tbaa !183
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = tail call i32 @RNA_property_flag(ptr noundef nonnull %23) #25
  %31 = and i32 %30, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43, i32 4
  store i8 1, ptr %34, align 8, !tbaa !488
  br label %35

35:                                               ; preds = %25, %29, %33, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_multibut_states_tag(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !489 {
  %4 = alloca [2 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43, i32 6
  %6 = load <2 x i32>, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %9 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1
  %10 = load <2 x i32>, ptr %8, align 4, !tbaa !43
  %11 = getelementptr inbounds [2 x [2 x float]], ptr %4, i64 0, i64 1, i64 1
  %12 = shufflevector <2 x i32> %6, <2 x i32> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = sitofp <4 x i32> %12 to <4 x float>
  store <4 x float> %13, ptr %4, align 16, !tbaa !85
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  call void @ui_window_to_block_fl(ptr noundef %15, ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %7) #25
  %18 = load ptr, ptr %14, align 8, !tbaa !104
  %19 = load ptr, ptr %16, align 8, !tbaa !94
  call void @ui_window_to_block_fl(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %9, ptr noundef nonnull %11) #25
  %20 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43, i32 1
  store i8 0, ptr %20, align 4, !tbaa !96
  %21 = load ptr, ptr %16, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.uiBlock, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %3, %50
  %26 = phi ptr [ %55, %50 ], [ %23, %3 ]
  %27 = phi i8 [ %54, %50 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = and i32 %29, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = and i32 %29, -33554433
  store i32 %33, ptr %28, align 8, !tbaa !57
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i32 [ 1, %32 ], [ 0, %25 ]
  %36 = call fastcc zeroext i8 @ui_is_but_interactive(ptr noundef nonnull %26, i8 noundef zeroext 0) #26, !range !168
  %37 = icmp eq i8 %36, 0
  %38 = icmp eq ptr %26, %0
  %39 = or i1 %38, %37
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = call zeroext i8 @ui_is_but_compatible(ptr noundef %0, ptr noundef nonnull %26) #25
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 18
  %45 = call zeroext i8 @BLI_rctf_isect_segment(ptr noundef nonnull %44, ptr noundef nonnull %4, ptr noundef nonnull %9) #25
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %28, align 8, !tbaa !57
  %49 = or i32 %48, 33554432
  store i32 %49, ptr %28, align 8, !tbaa !57
  store i8 1, ptr %20, align 4, !tbaa !96
  br label %50

50:                                               ; preds = %43, %47, %40, %34
  %51 = phi i32 [ 1, %47 ], [ 0, %43 ], [ 0, %40 ], [ 0, %34 ]
  %52 = icmp ne i32 %35, %51
  %53 = zext i1 %52 to i8
  %54 = or i8 %27, %53
  %55 = load ptr, ptr %26, align 8, !tbaa !61
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %25, !llvm.loop !490

57:                                               ; preds = %50, %3
  %58 = phi i8 [ 0, %3 ], [ %54, %50 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret i8 %58
}

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_get_but_string_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_set_but_string_eval_num(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_set_but_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !491 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #26
  ret float %2
}

; Function Attrs: optsize
declare void @ui_set_but_vectorf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !492 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #25
  store float %4, ptr %0, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #25
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #25
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !493 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #25
  store float %4, ptr %0, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #25
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #25
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_set_index(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_copy_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_operator_pystring_ex(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiButGetMenuType(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !494 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #26
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #25
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #26
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !495 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 !PGOFuncName !496 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !497 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !85
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiButGetStrInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_path_from_ID_check(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemBooleanO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ANIM_driver_can_paste() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @uiLayoutGetWidth(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @WM_key_event_operator_id(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_keymap_item_find_id(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @popup_change_shortcut_func(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !498 {
  tail call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef %1) #26
  tail call void @uiPupBlock(ptr noundef %0, ptr noundef nonnull @menu_change_shortcut, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_shortcut_func(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !499 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %6 = load ptr, ptr %5, align 8, !tbaa !412
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !413
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %10, %8 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %14 = load ptr, ptr %13, align 8, !tbaa !403
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !414
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %18 = load i16, ptr %17, align 8, !tbaa !417
  %19 = sext i16 %18 to i32
  %20 = call i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %16, i32 noundef %19, ptr noundef %12, i8 noundef zeroext 1, ptr noundef nonnull %4) #25
  %21 = load ptr, ptr %4, align 8, !tbaa !61
  %22 = call ptr @WM_keymap_item_find_id(ptr noundef %21, i32 noundef %20) #25
  %23 = load ptr, ptr %4, align 8, !tbaa !61
  %24 = call zeroext i8 @WM_keymap_remove_item(ptr noundef %23, ptr noundef %22) #25
  call void @but_shortcut_name_func(ptr noundef %0, ptr noundef nonnull %1, i32 poison) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_guess_opname(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @popup_add_shortcut_func(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #3 !PGOFuncName !500 {
  tail call fastcc void @button_timers_tooltip_remove(ptr noundef %0, ptr noundef %1) #26
  tail call void @uiPupBlockEx(ptr noundef %0, ptr noundef nonnull @menu_add_shortcut, ptr noundef null, ptr noundef nonnull @menu_add_shortcut_cancel, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @uiItemMenuF(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_screens_header_tools_menu_create(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiItemFullO(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_py_idname(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPupBlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @menu_change_shortcut(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !PGOFuncName !501 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %7 = tail call ptr @UI_GetStyleDraw() #25
  %8 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 60
  %9 = load ptr, ptr %8, align 8, !tbaa !412
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !413
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %17 = load ptr, ptr %16, align 8, !tbaa !403
  %18 = getelementptr inbounds %struct.wmOperatorType, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !414
  %20 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 61
  %21 = load i16, ptr %20, align 8, !tbaa !417
  %22 = sext i16 %21 to i32
  %23 = call i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %19, i32 noundef %22, ptr noundef %15, i8 noundef zeroext 1, ptr noundef nonnull %4) #25
  %24 = load ptr, ptr %4, align 8, !tbaa !61
  %25 = call ptr @WM_keymap_item_find_id(ptr noundef %24, i32 noundef %23) #25
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_KeyMapItem, ptr noundef %25, ptr noundef nonnull %5) #25
  %26 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #25
  call void @uiBlockSetHandleFunc(ptr noundef %26, ptr noundef nonnull @but_shortcut_name_func, ptr noundef nonnull %2) #25
  call void @uiBlockSetFlag(ptr noundef %26, i32 noundef 128) #25
  call void @uiBlockSetDirection(ptr noundef %26, i8 noundef zeroext 16) #25
  %27 = call ptr @uiBlockLayout(ptr noundef %26, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 20, i32 noundef 0, ptr noundef %7) #25
  call void @uiItemR(ptr noundef %27, ptr noundef nonnull %5, ptr noundef nonnull @.str.79, i32 noundef 320, ptr noundef nonnull @.str.17, i32 noundef 0) #25
  call void @uiPopupBoundsBlock(ptr noundef %26, i32 noundef 6, i32 noundef -50, i32 noundef 26) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @UI_GetStyleDraw() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @but_shortcut_name_func(ptr noundef %0, ptr noundef %1, i32 %2) #3 !PGOFuncName !502 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !403
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %10 = load ptr, ptr %9, align 8, !tbaa !412
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !413
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !414
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %20 = load i16, ptr %19, align 8, !tbaa !417
  %21 = sext i16 %20 to i32
  %22 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %18, i32 noundef %21, ptr noundef %16, i8 noundef zeroext 1, ptr noundef nonnull %4, i32 noundef 128) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  call void @ui_but_add_shortcut(ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext 1) #25
  br label %26

25:                                               ; preds = %15
  call void @ui_but_add_shortcut(ptr noundef nonnull %1, ptr noundef null, i8 noundef zeroext 1) #25
  br label %26

26:                                               ; preds = %25, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPopupBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_add_shortcut(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @WM_keymap_remove_item(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiPupBlockEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @menu_add_shortcut(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 !PGOFuncName !503 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %6 = tail call ptr @UI_GetStyleDraw() #25
  %7 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !412
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !413
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 59
  %16 = load ptr, ptr %15, align 8, !tbaa !403
  %17 = getelementptr inbounds %struct.wmOperatorType, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !414
  %19 = tail call ptr @WM_keymap_guess_opname(ptr noundef %0, ptr noundef %18) #25
  %20 = load ptr, ptr %15, align 8, !tbaa !403
  %21 = getelementptr inbounds %struct.wmOperatorType, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !414
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %19, ptr noundef %22, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #25
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 15
  %25 = load i16, ptr %24, align 4, !tbaa !504
  %26 = icmp eq ptr %14, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %13
  %28 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %14) #25
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi ptr [ %28, %27 ], [ null, %13 ]
  %31 = sext i16 %25 to i32
  tail call void @WM_keymap_properties_reset(ptr noundef nonnull %23, ptr noundef %30) #25
  tail call void @WM_keyconfig_update(ptr noundef %5) #25
  %32 = load ptr, ptr %15, align 8, !tbaa !403
  %33 = getelementptr inbounds %struct.wmOperatorType, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !414
  %35 = tail call ptr @WM_keymap_guess_opname(ptr noundef %0, ptr noundef %34) #25
  %36 = tail call ptr @WM_keymap_item_find_id(ptr noundef %35, i32 noundef %31) #25
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_KeyMapItem, ptr noundef %36, ptr noundef nonnull %4) #25
  %37 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #25
  call void @uiBlockSetHandleFunc(ptr noundef %37, ptr noundef nonnull @but_shortcut_name_func, ptr noundef nonnull %2) #25
  call void @uiBlockSetDirection(ptr noundef %37, i8 noundef zeroext 16) #25
  %38 = call ptr @uiBlockLayout(ptr noundef %37, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 200, i32 noundef 20, i32 noundef 0, ptr noundef %6) #25
  call void @uiItemR(ptr noundef %38, ptr noundef nonnull %4, ptr noundef nonnull @.str.79, i32 noundef 320, ptr noundef nonnull @.str.17, i32 noundef 0) #25
  call void @uiPopupBoundsBlock(ptr noundef %37, i32 noundef 6, i32 noundef -50, i32 noundef 26) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @menu_add_shortcut_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !505 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %5 = load ptr, ptr %4, align 8, !tbaa !412
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !413
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %13 = load ptr, ptr %12, align 8, !tbaa !403
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !414
  %16 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %17 = load i16, ptr %16, align 8, !tbaa !417
  %18 = sext i16 %17 to i32
  %19 = call i32 @WM_key_event_operator_id(ptr noundef %0, ptr noundef %15, i32 noundef %18, ptr noundef %11, i8 noundef zeroext 1, ptr noundef nonnull %3) #25
  %20 = load ptr, ptr %3, align 8, !tbaa !61
  %21 = call ptr @WM_keymap_item_find_id(ptr noundef %20, i32 noundef %19) #25
  %22 = load ptr, ptr %3, align 8, !tbaa !61
  %23 = call zeroext i8 @WM_keymap_remove_item(ptr noundef %22, ptr noundef %21) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_keymap_properties_reset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_key_event_string(i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_set_but_val(ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_is_but_drag_toggle(ptr noundef %0) unnamed_addr #3 !PGOFuncName !506 {
  %2 = tail call zeroext i8 @ui_is_but_bool(ptr noundef %0) #25
  %3 = icmp eq i8 %2, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = tail call zeroext i8 @ui_block_is_menu(ptr noundef %6) #25
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_bool(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_numedit_but_SLI(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #3 !PGOFuncName !507 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %10 = load float, ptr %9, align 8, !tbaa !244
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %12 = load float, ptr %11, align 4, !tbaa !245
  %13 = fsub float %12, %10
  %14 = sitofp i32 %2 to float
  call fastcc void @ui_mouse_scale_warp(ptr noundef %1, float noundef %14, float noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext %5) #26
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !51
  switch i32 %16, label %38 [
    i32 7168, label %17
    i32 9216, label %23
  ]

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %19 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %18) #26
  %20 = fmul float %19, 5.000000e-01
  %21 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %18) #26
  %22 = fsub float %21, %20
  br label %44

23:                                               ; preds = %6
  %24 = icmp eq i8 %3, 0
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  br i1 %24, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %25) #26
  br label %31

28:                                               ; preds = %23
  %29 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %25) #26
  %30 = fneg float %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi float [ %27, %26 ], [ %30, %28 ]
  %33 = fmul float %13, %32
  %34 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %35 = load float, ptr %34, align 8, !tbaa !175
  %36 = fadd float %13, %35
  %37 = fdiv float %33, %36
  br label %44

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %40 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %39) #26
  %41 = fmul float %40, 5.000000e-01
  %42 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %39) #26
  %43 = fsub float %42, %41
  br label %44

44:                                               ; preds = %31, %38, %17
  %45 = phi float [ %20, %17 ], [ 0.000000e+00, %31 ], [ %41, %38 ]
  %46 = phi float [ %22, %17 ], [ %37, %31 ], [ %43, %38 ]
  %47 = load float, ptr %7, align 4, !tbaa !85
  %48 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %49 = load i32, ptr %48, align 4, !tbaa !251
  %50 = sitofp i32 %49 to float
  %51 = fsub float %47, %50
  %52 = fdiv float %51, %46
  %53 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 36
  %54 = load float, ptr %53, align 8, !tbaa !246
  %55 = fadd float %54, %52
  %56 = fcmp olt float %55, 0.000000e+00
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = fcmp ogt float %55, 1.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %44, %57, %59
  %61 = phi float [ 1.000000e+00, %59 ], [ %55, %57 ], [ 0.000000e+00, %44 ]
  %62 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef nonnull %0) #26, !range !168
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  %65 = icmp eq i8 %3, 0
  %66 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  br i1 %65, label %74, label %67

67:                                               ; preds = %64
  %68 = load float, ptr %66, align 8, !tbaa !432
  %69 = fadd float %45, %68
  %70 = tail call float @llvm.fmuladd.f32(float %61, float %46, float %69)
  %71 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38
  store float %70, ptr %71, align 8, !tbaa !85
  %72 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %66) #26
  %73 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38, i64 1
  store float %72, ptr %73, align 4, !tbaa !85
  br label %82

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18, i32 2
  %76 = load float, ptr %75, align 8, !tbaa !361
  %77 = fadd float %45, %76
  %78 = tail call float @llvm.fmuladd.f32(float %61, float %46, float %77)
  %79 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38
  %80 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38, i64 1
  store float %78, ptr %80, align 4, !tbaa !85
  %81 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %66) #26
  store float %81, ptr %79, align 8, !tbaa !85
  br label %82

82:                                               ; preds = %74, %67
  %83 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %84 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38
  %85 = tail call zeroext i8 @BLI_rctf_clamp_pt_v(ptr noundef nonnull %83, ptr noundef nonnull %84) #25
  br label %86

86:                                               ; preds = %82, %60
  %87 = tail call float @llvm.fmuladd.f32(float %61, float %13, float %10)
  %88 = fadd float %87, 5.000000e-01
  %89 = tail call float @llvm.floor.f32(float %88)
  %90 = fptosi float %89 to i32
  %91 = freeze i32 %90
  %92 = icmp eq i8 %4, 0
  %93 = fcmp oeq float %87, %10
  %94 = select i1 %92, i1 true, i1 %93
  %95 = fcmp oeq float %87, %12
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %133, label %97

97:                                               ; preds = %86
  %98 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %0) #25
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %97
  %101 = icmp eq i8 %5, 0
  %102 = fcmp olt float %13, 0x4000CCCCC0000000
  br i1 %101, label %116, label %103

103:                                              ; preds = %100
  br i1 %102, label %104, label %108

104:                                              ; preds = %103
  %105 = fmul float %87, 1.000000e+02
  %106 = tail call float @llvm.floor.f32(float %105)
  %107 = fmul float %106, 0x3F847AE140000000
  br label %133

108:                                              ; preds = %103
  %109 = fcmp olt float %13, 2.100000e+01
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = fmul float %87, 1.000000e+01
  %112 = tail call float @llvm.floor.f32(float %111)
  %113 = fmul float %112, 0x3FB99999A0000000
  br label %133

114:                                              ; preds = %108
  %115 = tail call float @llvm.floor.f32(float %87)
  br label %133

116:                                              ; preds = %100
  br i1 %102, label %117, label %121

117:                                              ; preds = %116
  %118 = fmul float %87, 1.000000e+01
  %119 = tail call float @llvm.floor.f32(float %118)
  %120 = fmul float %119, 0x3FB99999A0000000
  br label %133

121:                                              ; preds = %116
  %122 = fcmp olt float %13, 2.100000e+01
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = tail call float @llvm.floor.f32(float %87)
  br label %133

125:                                              ; preds = %121
  %126 = fdiv float %87, 1.000000e+01
  %127 = tail call float @llvm.floor.f32(float %126)
  %128 = fmul float %127, 1.000000e+01
  br label %133

129:                                              ; preds = %97
  %130 = srem i32 %91, 10
  %131 = sub nsw i32 %91, %130
  %132 = sitofp i32 %131 to float
  br label %133

133:                                              ; preds = %104, %114, %110, %123, %125, %117, %129, %86
  %134 = phi float [ %107, %104 ], [ %113, %110 ], [ %115, %114 ], [ %120, %117 ], [ %124, %123 ], [ %128, %125 ], [ %132, %129 ], [ %87, %86 ]
  %135 = phi i32 [ %91, %104 ], [ %91, %110 ], [ %91, %114 ], [ %91, %117 ], [ %91, %123 ], [ %91, %125 ], [ %131, %129 ], [ %91, %86 ]
  %136 = tail call zeroext i8 @ui_is_but_float(ptr noundef nonnull %0) #25
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %140 = load double, ptr %139, align 8, !tbaa !184
  %141 = fadd double %140, 5.000000e-01
  %142 = tail call double @llvm.floor.f64(double %141)
  %143 = fptosi double %142 to i32
  %144 = sitofp i32 %135 to float
  %145 = fcmp ogt float %10, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = fptosi float %10 to i32
  br label %152

148:                                              ; preds = %138
  %149 = fcmp olt float %12, %144
  br i1 %149, label %150, label %152

150:                                              ; preds = %148
  %151 = fptosi float %12 to i32
  br label %152

152:                                              ; preds = %148, %150, %146
  %153 = phi i32 [ %147, %146 ], [ %151, %150 ], [ %135, %148 ]
  %154 = icmp eq i32 %153, %143
  br i1 %154, label %172, label %155

155:                                              ; preds = %152
  %156 = sitofp i32 %153 to double
  store double %156, ptr %139, align 8, !tbaa !184
  br label %170

157:                                              ; preds = %133
  %158 = fcmp olt float %134, %10
  br i1 %158, label %162, label %159

159:                                              ; preds = %157
  %160 = fcmp ogt float %134, %12
  br i1 %160, label %161, label %162

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %157, %159, %161
  %163 = phi float [ %12, %161 ], [ %134, %159 ], [ %10, %157 ]
  %164 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %165 = load double, ptr %164, align 8, !tbaa !184
  %166 = fptrunc double %165 to float
  %167 = fcmp une float %163, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = fpext float %163 to double
  store double %169, ptr %164, align 8, !tbaa !184
  br label %170

170:                                              ; preds = %155, %168
  %171 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 1, ptr %171, align 4, !tbaa !248
  br label %172

172:                                              ; preds = %170, %162, %152
  %173 = phi i8 [ 0, %162 ], [ 0, %152 ], [ 1, %170 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  ret i8 %173
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_numedit_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !PGOFuncName !508 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !156
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 1) #26
  br label %10

9:                                                ; preds = %4
  tail call void @ui_check_but(ptr noundef %2) #25
  br label %10

10:                                               ; preds = %9, %8
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  tail call void @ED_region_tag_redraw(ptr noundef %12) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_mouse_scale_warp(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5) unnamed_addr #12 !PGOFuncName !509 {
  %7 = tail call fastcc float @ui_mouse_scale_warp_factor(i8 noundef zeroext %5) #26
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 28
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = sitofp i32 %9 to float
  %11 = fsub float 1.000000e+00, %7
  %12 = fmul float %7, %1
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %12)
  store float %13, ptr %3, align 4, !tbaa !85
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !429
  %16 = sitofp i32 %15 to float
  %17 = fmul float %7, %2
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %11, float %17)
  store float %18, ptr %4, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_clamp_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @ui_mouse_scale_warp_factor(i8 noundef zeroext %0) unnamed_addr #17 !PGOFuncName !510 {
  %2 = icmp eq i8 %0, 0
  %3 = select i1 %2, float 1.000000e+00, float 0x3FA99999A0000000
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @ui_event_to_snap(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !511 {
  %2 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 18
  %3 = load i16, ptr %2, align 2, !tbaa !164
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmEvent, ptr %0, i64 0, i32 17
  %7 = load i16, ptr %6, align 8, !tbaa !167
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_numedit_but_NUM(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #3 !PGOFuncName !512 {
  %6 = tail call zeroext i8 @ui_is_but_float(ptr noundef %0) #25
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  %8 = load i32, ptr %7, align 4, !tbaa !252
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %224, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 33
  %12 = load i8, ptr %11, align 1, !tbaa !249
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %16 = load i32, ptr %15, align 4, !tbaa !251
  %17 = sub nsw i32 %2, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %224, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43
  %22 = load i32, ptr %21, align 8, !tbaa !176
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %224, label %24

24:                                               ; preds = %20
  store i8 0, ptr %11, align 1, !tbaa !249
  store i32 %2, ptr %15, align 4, !tbaa !251
  br label %25

25:                                               ; preds = %24, %10
  %26 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %27 = load float, ptr %26, align 8, !tbaa !244
  %28 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %29 = load float, ptr %28, align 4, !tbaa !245
  %30 = fsub float %29, %27
  %31 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %0) #26, !range !168
  %32 = icmp eq i8 %31, 0
  %33 = icmp eq i8 %6, 0
  br i1 %32, label %119, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 15
  %36 = load double, ptr %35, align 8, !tbaa !242
  %37 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %38 = load i32, ptr %37, align 4, !tbaa !251
  br i1 %33, label %77, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %41 = load float, ptr %40, align 8, !tbaa !175
  %42 = fmul float %41, 0x3F847AE140000000
  %43 = fmul float %42, %4
  %44 = fptrunc double %36 to float
  %45 = sub nsw i32 %2, %38
  %46 = sitofp i32 %45 to float
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %43, float %44)
  %48 = tail call fastcc float @ui_numedit_apply_snapf(ptr noundef nonnull %0, float noundef %47, float noundef %27, float noundef %29, float noundef %30, i32 noundef %3) #26
  %49 = fcmp olt float %48, %27
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = fsub float %27, %48
  %52 = fdiv float %51, %43
  %53 = load i32, ptr %37, align 4, !tbaa !251
  %54 = sitofp i32 %53 to float
  %55 = fsub float %54, %52
  br label %64

56:                                               ; preds = %39
  %57 = fcmp ogt float %48, %29
  br i1 %57, label %58, label %68

58:                                               ; preds = %56
  %59 = fsub float %48, %29
  %60 = fdiv float %59, %43
  %61 = load i32, ptr %37, align 4, !tbaa !251
  %62 = sitofp i32 %61 to float
  %63 = fadd float %60, %62
  br label %64

64:                                               ; preds = %50, %58
  %65 = phi float [ %63, %58 ], [ %55, %50 ]
  %66 = phi float [ %29, %58 ], [ %27, %50 ]
  %67 = fptosi float %65 to i32
  store i32 %67, ptr %37, align 4, !tbaa !251
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi float [ %48, %56 ], [ %66, %64 ]
  %70 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %71 = load double, ptr %70, align 8, !tbaa !184
  %72 = fptrunc double %71 to float
  %73 = fcmp une float %69, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 1, ptr %75, align 4, !tbaa !248
  %76 = fpext float %69 to double
  store double %76, ptr %70, align 8, !tbaa !184
  br label %117

77:                                               ; preds = %34
  %78 = fcmp ogt float %30, 2.560000e+02
  %79 = fcmp ogt float %30, 3.200000e+01
  %80 = select i1 %79, float 5.000000e-01, float 6.250000e-02
  %81 = select i1 %78, float 1.000000e+00, float %80
  %82 = sitofp i32 %2 to double
  %83 = sitofp i32 %38 to double
  %84 = fsub double %82, %83
  %85 = fpext float %81 to double
  %86 = tail call double @llvm.fmuladd.f64(double %84, double %85, double %36)
  %87 = fptosi double %86 to i32
  %88 = tail call fastcc float @ui_numedit_apply_snap(i32 noundef %87, float noundef %27, float noundef %29, i32 noundef %3) #26
  %89 = fptosi float %88 to i32
  %90 = sitofp i32 %89 to float
  %91 = fcmp ogt float %27, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %77
  %93 = fsub float %27, %90
  %94 = fdiv float %93, %81
  %95 = sitofp i32 %38 to float
  %96 = fsub float %95, %94
  br label %104

97:                                               ; preds = %77
  %98 = fcmp olt float %29, %90
  br i1 %98, label %99, label %109

99:                                               ; preds = %97
  %100 = fsub float %90, %29
  %101 = fdiv float %100, %81
  %102 = sitofp i32 %38 to float
  %103 = fadd float %101, %102
  br label %104

104:                                              ; preds = %92, %99
  %105 = phi float [ %103, %99 ], [ %96, %92 ]
  %106 = phi float [ %29, %99 ], [ %27, %92 ]
  %107 = fptosi float %105 to i32
  store i32 %107, ptr %37, align 4, !tbaa !251
  %108 = fptosi float %106 to i32
  br label %109

109:                                              ; preds = %104, %97
  %110 = phi i32 [ %89, %97 ], [ %108, %104 ]
  %111 = sitofp i32 %110 to double
  %112 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %113 = load double, ptr %112, align 8, !tbaa !184
  %114 = fcmp une double %113, %111
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 1, ptr %116, align 4, !tbaa !248
  store double %111, ptr %112, align 8, !tbaa !184
  br label %117

117:                                              ; preds = %109, %115, %68, %74
  %118 = phi i8 [ 1, %74 ], [ 0, %68 ], [ 1, %115 ], [ 0, %109 ]
  store i32 %2, ptr %7, align 4, !tbaa !252
  br label %224

119:                                              ; preds = %25
  br i1 %33, label %120, label %130

120:                                              ; preds = %119
  %121 = fcmp ogt float %30, 6.000000e+02
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = tail call float @powf(float noundef %30, float noundef 7.500000e-01) #25
  %124 = load i32, ptr %7, align 4, !tbaa !252
  br label %148

125:                                              ; preds = %120
  %126 = fcmp olt float %30, 2.500000e+01
  br i1 %126, label %148, label %127

127:                                              ; preds = %125
  %128 = fcmp olt float %30, 1.000000e+02
  br i1 %128, label %129, label %148

129:                                              ; preds = %127
  br label %148

130:                                              ; preds = %119
  %131 = fdiv float 5.000000e+02, %4
  %132 = icmp eq i8 %6, 1
  %133 = fcmp ogt float %30, 1.100000e+01
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %166

135:                                              ; preds = %130
  %136 = sub nsw i32 %2, %8
  %137 = sitofp i32 %136 to float
  %138 = fdiv float %137, %131
  %139 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %140 = load i32, ptr %139, align 4, !tbaa !251
  %141 = sub nsw i32 %2, %140
  %142 = tail call i32 @llvm.abs.i32(i32 %141, i1 true)
  %143 = sitofp i32 %142 to float
  %144 = fdiv float %143, 5.000000e+02
  %145 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 35
  %146 = load float, ptr %145, align 4, !tbaa !247
  %147 = tail call float @llvm.fmuladd.f32(float %138, float %144, float %146)
  store float %147, ptr %145, align 4, !tbaa !247
  br label %175

148:                                              ; preds = %125, %122, %127, %129
  %149 = phi i32 [ %8, %125 ], [ %8, %127 ], [ %8, %129 ], [ %124, %122 ]
  %150 = phi float [ 5.000000e+01, %125 ], [ 5.000000e+02, %127 ], [ 1.000000e+02, %129 ], [ %123, %122 ]
  %151 = fdiv float %150, %4
  %152 = fcmp ogt float %30, 1.290000e+02
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = sub nsw i32 %2, %149
  %155 = sitofp i32 %154 to float
  %156 = fdiv float %155, %151
  %157 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %158 = load i32, ptr %157, align 4, !tbaa !251
  %159 = sub nsw i32 %2, %158
  %160 = tail call i32 @llvm.abs.i32(i32 %159, i1 true)
  %161 = sitofp i32 %160 to float
  %162 = fdiv float %161, 2.500000e+02
  %163 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 35
  %164 = load float, ptr %163, align 4, !tbaa !247
  %165 = tail call float @llvm.fmuladd.f32(float %156, float %162, float %164)
  store float %165, ptr %163, align 4, !tbaa !247
  br label %175

166:                                              ; preds = %130, %148
  %167 = phi i32 [ %149, %148 ], [ %8, %130 ]
  %168 = phi float [ %151, %148 ], [ %131, %130 ]
  %169 = sub nsw i32 %2, %167
  %170 = sitofp i32 %169 to float
  %171 = fdiv float %170, %168
  %172 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 35
  %173 = load float, ptr %172, align 4, !tbaa !247
  %174 = fadd float %173, %171
  store float %174, ptr %172, align 4, !tbaa !247
  br label %175

175:                                              ; preds = %153, %166, %135
  %176 = phi float [ %165, %153 ], [ %174, %166 ], [ %147, %135 ]
  %177 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 35
  %178 = fcmp olt float %176, 0.000000e+00
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = fcmp ogt float %176, 1.000000e+00
  br i1 %180, label %181, label %183

181:                                              ; preds = %179, %175
  %182 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %179 ]
  store float %182, ptr %177, align 4, !tbaa !247
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi float [ %176, %179 ], [ %182, %181 ]
  store i32 %2, ptr %7, align 4, !tbaa !252
  %185 = tail call float @llvm.fmuladd.f32(float %184, float %30, float %27)
  br i1 %33, label %186, label %209

186:                                              ; preds = %183
  %187 = fadd float %185, 5.000000e-01
  %188 = tail call float @llvm.floor.f32(float %187)
  %189 = fptosi float %188 to i32
  %190 = tail call fastcc float @ui_numedit_apply_snap(i32 noundef %189, float noundef %27, float noundef %29, i32 noundef %3) #26
  %191 = fptosi float %190 to i32
  %192 = sitofp i32 %191 to float
  %193 = fcmp ogt float %27, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %186
  %195 = fptosi float %27 to i32
  br label %200

196:                                              ; preds = %186
  %197 = fcmp olt float %29, %192
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = fptosi float %29 to i32
  br label %200

200:                                              ; preds = %196, %198, %194
  %201 = phi i32 [ %195, %194 ], [ %199, %198 ], [ %191, %196 ]
  %202 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %203 = load double, ptr %202, align 8, !tbaa !184
  %204 = fptosi double %203 to i32
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %224, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 1, ptr %207, align 4, !tbaa !248
  %208 = sitofp i32 %201 to double
  store double %208, ptr %202, align 8, !tbaa !184
  br label %224

209:                                              ; preds = %183
  %210 = tail call fastcc float @ui_numedit_apply_snapf(ptr noundef nonnull %0, float noundef %185, float noundef %27, float noundef %29, float noundef %30, i32 noundef %3) #26
  %211 = fcmp olt float %210, %27
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = fcmp ogt float %210, %29
  br i1 %213, label %214, label %215

214:                                              ; preds = %212
  br label %215

215:                                              ; preds = %209, %212, %214
  %216 = phi float [ %29, %214 ], [ %210, %212 ], [ %27, %209 ]
  %217 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %218 = load double, ptr %217, align 8, !tbaa !184
  %219 = fptrunc double %218 to float
  %220 = fcmp une float %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 32
  store i8 1, ptr %222, align 4, !tbaa !248
  %223 = fpext float %216 to double
  store double %223, ptr %217, align 8, !tbaa !184
  br label %224

224:                                              ; preds = %20, %117, %215, %221, %200, %206, %14, %5
  %225 = phi i8 [ 0, %5 ], [ 0, %14 ], [ 0, %20 ], [ %118, %117 ], [ 1, %221 ], [ 0, %215 ], [ 1, %206 ], [ 0, %200 ]
  ret i8 %225
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_multibut_states_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !513 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 13
  %8 = load double, ptr %7, align 8, !tbaa !184
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 14
  %10 = load double, ptr %9, align 8, !tbaa !183
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 43, i32 4
  %13 = load i8, ptr %12, align 8, !tbaa !488
  %14 = icmp eq i8 %13, 0
  %15 = fdiv double %8, %10
  %16 = select i1 %14, double 0.000000e+00, double %15
  %17 = getelementptr inbounds %struct.uiBlock, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  br label %22

22:                                               ; preds = %20, %66
  %23 = phi ptr [ %18, %20 ], [ %67, %66 ]
  %24 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = and i32 %25, 33554432
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %22
  %29 = tail call fastcc ptr @ui_multibut_lookup(ptr noundef %1, ptr noundef nonnull %23) #26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @ui_button_execute_begin(ptr poison, ptr noundef %6, ptr noundef nonnull %23, ptr noundef nonnull %4) #26
  %32 = load ptr, ptr %21, align 8, !tbaa !108
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load double, ptr %7, align 8, !tbaa !184
  %36 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 67
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %struct.uiHandleButtonData, ptr %37, i64 0, i32 13
  store double %35, ptr %38, align 8, !tbaa !184
  %39 = tail call zeroext i8 @ui_set_but_string(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %32) #25
  br label %62

40:                                               ; preds = %31
  %41 = load i8, ptr %12, align 8, !tbaa !488
  %42 = icmp eq i8 %41, 0
  %43 = load double, ptr %29, align 8, !tbaa !514
  %44 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 67
  %45 = load ptr, ptr %44, align 8, !tbaa !73
  %46 = getelementptr inbounds %struct.uiHandleButtonData, ptr %45, i64 0, i32 13
  %47 = fadd double %11, %43
  %48 = fmul double %16, %43
  %49 = select i1 %42, double %47, double %48
  store double %49, ptr %46, align 8, !tbaa !184
  %50 = getelementptr inbounds %struct.uiHandleButtonData, ptr %45, i64 0, i32 13
  %51 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 22
  %52 = load float, ptr %51, align 8, !tbaa !244
  %53 = fpext float %52 to double
  %54 = fcmp olt double %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store double %53, ptr %50, align 8, !tbaa !184
  br label %62

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.uiBut, ptr %23, i64 0, i32 23
  %58 = load float, ptr %57, align 4, !tbaa !245
  %59 = fpext float %58 to double
  %60 = fcmp ogt double %49, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store double %59, ptr %50, align 8, !tbaa !184
  br label %62

62:                                               ; preds = %55, %61, %56, %34
  %63 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @ui_button_execute_end(ptr noundef %0, ptr poison, ptr noundef nonnull %23, ptr noundef %63) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %66

64:                                               ; preds = %28
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull @__func__.ui_multibut_states_apply) #26
  br label %66

66:                                               ; preds = %62, %64, %22
  %67 = load ptr, ptr %23, align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %22, !llvm.loop !516

69:                                               ; preds = %66, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_do_but_textedit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !PGOFuncName !517 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %93 [
    i16 4, label %10
    i16 14, label %10
    i16 3, label %24
    i16 218, label %24
    i16 1, label %31
  ]

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = icmp eq i16 %9, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 42
  %18 = tail call fastcc zeroext i8 @ui_mouse_motion_keynav_test(ptr noundef nonnull %17, ptr noundef nonnull %4) #26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %16
  %21 = load ptr, ptr %11, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %21, %20 ], [ %12, %14 ]
  tail call void @ui_searchbox_event(ptr noundef %0, ptr noundef %23, ptr noundef %2, ptr noundef nonnull %4) #25
  br label %93

24:                                               ; preds = %5, %5
  %25 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !151
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %29, align 4, !tbaa !92
  %30 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %30, align 1, !tbaa !100
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %93

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 13
  %33 = load i16, ptr %32, align 2, !tbaa !66
  %34 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 14
  %35 = load i16, ptr %34, align 8, !tbaa !67
  %36 = icmp eq i16 %33, %35
  %37 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !178
  %43 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !42
  %45 = tail call zeroext i8 @ui_searchbox_inside(ptr noundef nonnull %38, i32 noundef %42, i32 noundef %44) #25
  br label %46

46:                                               ; preds = %40, %31
  %47 = phi i8 [ %45, %40 ], [ 0, %31 ]
  %48 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %49 = load i16, ptr %48, align 2, !tbaa !151
  switch i16 %49, label %86 [
    i16 1, label %50
    i16 4, label %50
  ]

50:                                               ; preds = %46, %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %51 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !178
  %53 = sitofp i32 %52 to float
  store float %53, ptr %6, align 4, !tbaa !85
  %54 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !42
  %56 = sitofp i32 %55 to float
  store float %56, ptr %7, align 4, !tbaa !85
  %57 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  call void @ui_window_to_block_fl(ptr noundef %58, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %59 = load float, ptr %6, align 4, !tbaa !85
  %60 = load float, ptr %7, align 4, !tbaa !85
  %61 = call fastcc zeroext i8 @ui_but_contains_pt(ptr noundef nonnull %2, float noundef %59, float noundef %60) #26
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %50
  %64 = load i32, ptr %51, align 4, !tbaa !178
  %65 = sitofp i32 %64 to float
  call fastcc void @ui_textedit_set_cursor_pos(ptr noundef nonnull %2, ptr noundef nonnull %3, float noundef %65) #26
  %66 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 12
  %67 = load i16, ptr %66, align 4, !tbaa !65
  store i16 %67, ptr %34, align 8, !tbaa !67
  store i16 %67, ptr %32, align 2, !tbaa !66
  %68 = load i32, ptr %51, align 4, !tbaa !178
  %69 = sitofp i32 %68 to float
  %70 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 25
  store float %69, ptr %70, align 8, !tbaa !235
  br label %79

71:                                               ; preds = %50
  %72 = icmp eq i8 %47, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %71
  %74 = load ptr, ptr %37, align 8, !tbaa !89
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 7
  store i8 1, ptr %77, align 1, !tbaa !100
  %78 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 6
  store i8 1, ptr %78, align 4, !tbaa !92
  br label %79

79:                                               ; preds = %73, %76, %63
  %80 = phi i32 [ 7, %63 ], [ 10, %76 ], [ 10, %73 ]
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %80) #26
  br label %81

81:                                               ; preds = %79, %71
  %82 = phi i32 [ 0, %71 ], [ 1, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  %83 = load i16, ptr %48, align 2, !tbaa !151
  %84 = icmp eq i16 %83, 4
  %85 = select i1 %84, i1 %36, i1 false
  br i1 %85, label %98, label %86

86:                                               ; preds = %46, %81
  %87 = phi i32 [ %82, %81 ], [ 0, %46 ]
  %88 = phi i16 [ %83, %81 ], [ %49, %46 ]
  %89 = icmp ne i8 %47, 0
  %90 = icmp eq i16 %88, 2
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %93

93:                                               ; preds = %92, %86, %24, %28, %10, %16, %22, %5
  %94 = phi i32 [ 0, %5 ], [ 1, %28 ], [ 0, %24 ], [ 0, %16 ], [ 0, %22 ], [ 0, %10 ], [ 1, %92 ], [ %87, %86 ]
  %95 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %96 = load i16, ptr %95, align 2, !tbaa !151
  %97 = icmp eq i16 %96, 1
  br i1 %97, label %102, label %283

98:                                               ; preds = %81
  call fastcc void @ui_textedit_move(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 1) #26
  call fastcc void @ui_textedit_move(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i8 noundef zeroext 1, i32 noundef 1) #26
  %99 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !151
  %101 = icmp eq i16 %100, 1
  br i1 %101, label %102, label %276

102:                                              ; preds = %98, %93
  %103 = phi i32 [ 1, %98 ], [ %94, %93 ]
  %104 = phi i8 [ 1, %98 ], [ 0, %93 ]
  %105 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %105, label %225 [
    i16 118, label %106
    i16 120, label %106
    i16 99, label %106
    i16 139, label %121
    i16 137, label %130
    i16 11, label %139
    i16 138, label %139
    i16 170, label %146
    i16 10, label %151
    i16 140, label %151
    i16 167, label %158
    i16 163, label %163
    i16 220, label %163
    i16 224, label %164
    i16 223, label %170
    i16 97, label %176
    i16 219, label %193
  ]

106:                                              ; preds = %102, %102, %102
  %107 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %108 = load i16, ptr %107, align 2, !tbaa !164
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 20
  %112 = load i16, ptr %111, align 2, !tbaa !165
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %225, label %114

114:                                              ; preds = %110, %106
  switch i16 %105, label %225 [
    i16 118, label %115
    i16 99, label %117
    i16 120, label %119
  ]

115:                                              ; preds = %114
  %116 = call fastcc zeroext i8 @ui_textedit_copypaste(ptr noundef %2, ptr noundef %3, i32 noundef 1) #26, !range !168
  br label %225

117:                                              ; preds = %114
  %118 = call fastcc zeroext i8 @ui_textedit_copypaste(ptr noundef %2, ptr noundef %3, i32 noundef 2) #26, !range !168
  br label %225

119:                                              ; preds = %114
  %120 = call fastcc zeroext i8 @ui_textedit_copypaste(ptr noundef %2, ptr noundef %3, i32 noundef 3) #26, !range !168
  br label %225

121:                                              ; preds = %102
  %122 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %123 = load i16, ptr %122, align 8, !tbaa !167
  %124 = icmp ne i16 %123, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %127 = load i16, ptr %126, align 2, !tbaa !164
  %128 = icmp ne i16 %127, 0
  %129 = zext i1 %128 to i32
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext %125, i32 noundef %129) #26
  br label %225

130:                                              ; preds = %102
  %131 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %132 = load i16, ptr %131, align 8, !tbaa !167
  %133 = icmp ne i16 %132, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %136 = load i16, ptr %135, align 2, !tbaa !164
  %137 = icmp ne i16 %136, 0
  %138 = zext i1 %137 to i32
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 0, i8 noundef zeroext %134, i32 noundef %138) #26
  br label %225

139:                                              ; preds = %102, %102
  %140 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %141 = load ptr, ptr %140, align 8, !tbaa !89
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 42
  call fastcc void @ui_mouse_motion_keynav_init(ptr noundef nonnull %144, ptr noundef nonnull %4) #26
  %145 = load ptr, ptr %140, align 8, !tbaa !89
  call void @ui_searchbox_event(ptr noundef %0, ptr noundef %145, ptr noundef %2, ptr noundef nonnull %4) #25
  br label %225

146:                                              ; preds = %139, %102
  %147 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %148 = load i16, ptr %147, align 8, !tbaa !167
  %149 = icmp ne i16 %148, 0
  %150 = zext i1 %149 to i8
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext %150, i32 noundef 2) #26
  br label %225

151:                                              ; preds = %102, %102
  %152 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %153 = load ptr, ptr %152, align 8, !tbaa !89
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 42
  call fastcc void @ui_mouse_motion_keynav_init(ptr noundef nonnull %156, ptr noundef nonnull %4) #26
  %157 = load ptr, ptr %152, align 8, !tbaa !89
  call void @ui_searchbox_event(ptr noundef %0, ptr noundef %157, ptr noundef %2, ptr noundef nonnull %4) #25
  br label %225

158:                                              ; preds = %151, %102
  %159 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %160 = load i16, ptr %159, align 8, !tbaa !167
  %161 = icmp ne i16 %160, 0
  %162 = zext i1 %161 to i8
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 0, i8 noundef zeroext %162, i32 noundef 2) #26
  br label %225

163:                                              ; preds = %102, %102
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 10) #26
  br label %225

164:                                              ; preds = %102
  %165 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %166 = load i16, ptr %165, align 2, !tbaa !164
  %167 = icmp ne i16 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call fastcc zeroext i8 @ui_textedit_delete(ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %168) #26, !range !168
  br label %225

170:                                              ; preds = %102
  %171 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %172 = load i16, ptr %171, align 2, !tbaa !164
  %173 = icmp ne i16 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call fastcc zeroext i8 @ui_textedit_delete(ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %174) #26, !range !168
  br label %225

176:                                              ; preds = %102
  %177 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %178 = load i16, ptr %177, align 2, !tbaa !164
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %225, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %182 = load i16, ptr %181, align 4, !tbaa !166
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %225

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %186 = load i16, ptr %185, align 8, !tbaa !167
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 20
  %190 = load i16, ptr %189, align 2, !tbaa !165
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %192, label %225

192:                                              ; preds = %188
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 2) #26
  call fastcc void @ui_textedit_move(ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext 1, i32 noundef 2) #26
  br label %225

193:                                              ; preds = %102
  %194 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 33
  %195 = load ptr, ptr %194, align 8, !tbaa !518
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %199 = load ptr, ptr %198, align 8, !tbaa !89
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %197, %193
  %202 = call fastcc i32 @ui_textedit_autocomplete(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #26
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i8
  %205 = icmp eq i32 %202, 1
  br i1 %205, label %206, label %225

206:                                              ; preds = %201
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %225

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 17
  %209 = load i16, ptr %208, align 8, !tbaa !167
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 18
  %213 = load i16, ptr %212, align 2, !tbaa !164
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 19
  %217 = load i16, ptr %216, align 4, !tbaa !166
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 20
  %221 = load i16, ptr %220, align 2, !tbaa !165
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219, %215, %211, %207
  call fastcc void @ui_textedit_prev_but(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %225

224:                                              ; preds = %219
  call fastcc void @ui_textedit_next_but(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #26
  call fastcc void @button_activate_state(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #26
  br label %225

225:                                              ; preds = %224, %223, %206, %201, %115, %119, %117, %114, %176, %180, %184, %188, %192, %110, %102, %170, %164, %163, %158, %155, %146, %143, %130, %121
  %226 = phi i1 [ true, %102 ], [ true, %180 ], [ true, %184 ], [ true, %188 ], [ true, %192 ], [ true, %176 ], [ true, %170 ], [ true, %164 ], [ true, %163 ], [ true, %158 ], [ true, %155 ], [ true, %146 ], [ true, %143 ], [ true, %130 ], [ true, %121 ], [ true, %110 ], [ true, %114 ], [ true, %117 ], [ true, %119 ], [ true, %115 ], [ true, %223 ], [ true, %224 ], [ false, %206 ], [ false, %201 ]
  %227 = phi i8 [ %104, %102 ], [ %104, %180 ], [ %104, %184 ], [ %104, %188 ], [ %104, %192 ], [ %104, %176 ], [ %175, %170 ], [ %169, %164 ], [ %104, %163 ], [ %104, %158 ], [ %104, %155 ], [ %104, %146 ], [ %104, %143 ], [ %104, %130 ], [ %104, %121 ], [ %104, %110 ], [ %104, %114 ], [ %118, %117 ], [ %120, %119 ], [ %116, %115 ], [ %104, %223 ], [ %104, %224 ], [ %204, %206 ], [ %204, %201 ]
  %228 = phi i32 [ %103, %102 ], [ %103, %180 ], [ %103, %184 ], [ %103, %188 ], [ 1, %192 ], [ %103, %176 ], [ 1, %170 ], [ 1, %164 ], [ 1, %163 ], [ 1, %158 ], [ %103, %155 ], [ 1, %146 ], [ %103, %143 ], [ 1, %130 ], [ 1, %121 ], [ %103, %110 ], [ 1, %114 ], [ 1, %117 ], [ 1, %119 ], [ 1, %115 ], [ 1, %223 ], [ 1, %224 ], [ 1, %206 ], [ 1, %201 ]
  %229 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 8
  %230 = load i8, ptr %229, align 2, !tbaa !519
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 7
  %234 = load i8, ptr %233, align 4, !tbaa !68
  %235 = icmp ne i8 %234, 0
  %236 = icmp eq i32 %228, 0
  %237 = and i1 %236, %235
  br i1 %237, label %240, label %262

238:                                              ; preds = %225
  %239 = icmp eq i32 %228, 0
  br i1 %239, label %240, label %262

240:                                              ; preds = %232, %238
  %241 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 7
  %242 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %243 = load i32, ptr %242, align 8, !tbaa !51
  switch i32 %243, label %249 [
    i32 2560, label %244
    i32 7168, label %244
  ]

244:                                              ; preds = %240, %240
  %245 = load i16, ptr %8, align 8, !tbaa !150
  %246 = icmp eq i16 %245, 199
  %247 = icmp eq i8 %230, 44
  %248 = and i1 %247, %246
  br i1 %248, label %259, label %249

249:                                              ; preds = %240, %244
  %250 = load i8, ptr %241, align 1, !tbaa !68
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %249
  %253 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %241) #25
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef nonnull @__func__.ui_do_but_textedit, i32 noundef %253, ptr noundef nonnull %241) #26
  br label %257

257:                                              ; preds = %255, %252
  %258 = call fastcc zeroext i8 @ui_textedit_type_buf(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %241, i32 noundef %253) #26, !range !168
  br label %262

259:                                              ; preds = %244, %249
  %260 = phi i8 [ %230, %249 ], [ 46, %244 ]
  %261 = call fastcc zeroext i8 @ui_textedit_type_ascii(ptr noundef nonnull %2, ptr noundef %3, i8 noundef zeroext %260) #26, !range !168
  br label %262

262:                                              ; preds = %232, %238, %259, %257
  %263 = phi i8 [ %227, %238 ], [ %227, %232 ], [ %258, %257 ], [ %261, %259 ]
  %264 = phi i32 [ 1, %238 ], [ %228, %232 ], [ 1, %257 ], [ 1, %259 ]
  %265 = icmp eq i8 %263, 0
  br i1 %265, label %283, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 44
  %268 = load i32, ptr %267, align 8, !tbaa !520
  %269 = icmp ne i32 %268, 30
  %270 = and i1 %226, %269
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 3
  %273 = load i8, ptr %272, align 8, !tbaa !156
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  call fastcc void @ui_apply_button(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1) #26
  br label %277

276:                                              ; preds = %98, %271, %266
  call void @ui_check_but(ptr noundef nonnull %2) #25
  br label %277

277:                                              ; preds = %276, %275
  %278 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 48
  store i8 1, ptr %278, align 1, !tbaa !401
  %279 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 41
  %280 = load ptr, ptr %279, align 8, !tbaa !89
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %277
  call void @ui_searchbox_update(ptr noundef %0, ptr noundef nonnull %280, ptr noundef nonnull %2, i8 noundef zeroext 1) #25
  br label %286

283:                                              ; preds = %93, %262
  %284 = phi i32 [ %264, %262 ], [ %94, %93 ]
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %289

286:                                              ; preds = %282, %277, %283
  %287 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !104
  call void @ED_region_tag_redraw(ptr noundef %288) #25
  br label %289

289:                                              ; preds = %283, %286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_do_but_textedit_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 !PGOFuncName !521 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %27 [
    i16 4, label %10
    i16 1, label %19
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !178
  store i32 %12, ptr %6, align 4, !tbaa !43
  %13 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !42
  store i32 %14, ptr %7, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %17 = load i32, ptr %11, align 4, !tbaa !178
  %18 = sitofp i32 %17 to float
  call fastcc void @ui_textedit_set_cursor_select(ptr noundef %2, ptr noundef %3, float noundef %18) #26
  br label %24

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 3
  %21 = load i16, ptr %20, align 2, !tbaa !151
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %2, i32 noundef 6) #26
  br label %24

24:                                               ; preds = %10, %23, %19
  call void @ui_check_but(ptr noundef %2) #25
  %25 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  call void @ED_region_tag_redraw(ptr noundef %26) #25
  br label %27

27:                                               ; preds = %5, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @ui_numedit_apply_snapf(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #3 !PGOFuncName !522 {
  %7 = fcmp oeq float %1, %2
  br i1 %7, label %72, label %8

8:                                                ; preds = %6
  %9 = fcmp oeq float %1, %3
  %10 = icmp eq i32 %5, 0
  %11 = or i1 %9, %10
  br i1 %11, label %72, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i8 @ui_is_but_unit(ptr noundef %0) #25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.uiBlock, ptr %17, i64 0, i32 49
  %19 = load ptr, ptr %18, align 8, !tbaa !523
  %20 = tail call i32 @uiButGetUnitType(ptr noundef %0) #25
  %21 = ashr i32 %20, 16
  %22 = getelementptr inbounds %struct.UnitSettings, ptr %19, i64 0, i32 1
  %23 = load i8, ptr %22, align 4, !tbaa !524
  %24 = zext i8 %23 to i32
  %25 = tail call zeroext i8 @bUnit_IsValid(i32 noundef %24, i32 noundef %21) #25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %15
  %28 = load i8, ptr %22, align 4, !tbaa !524
  %29 = zext i8 %28 to i32
  %30 = tail call double @bUnit_BaseScalar(i32 noundef %29, i32 noundef %21) #25
  %31 = fptrunc double %30 to float
  %32 = add nsw i32 %21, -1
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load float, ptr %19, align 4, !tbaa !525
  %36 = fdiv float %31, %35
  br label %37

37:                                               ; preds = %15, %27, %34, %12
  %38 = phi float [ 1.000000e+00, %12 ], [ %36, %34 ], [ %31, %27 ], [ 1.000000e+00, %15 ]
  %39 = fdiv float %4, %38
  %40 = fdiv float %1, %38
  %41 = icmp eq i32 %5, 1
  %42 = fcmp olt float %39, 0x4000CCCCC0000000
  br i1 %41, label %43, label %56

43:                                               ; preds = %37
  br i1 %42, label %44, label %48

44:                                               ; preds = %43
  %45 = fmul float %40, 1.000000e+01
  %46 = tail call float @llvm.floor.f32(float %45)
  %47 = fmul float %46, 0x3FB99999A0000000
  br label %69

48:                                               ; preds = %43
  %49 = fcmp olt float %39, 2.100000e+01
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = tail call float @llvm.floor.f32(float %40)
  br label %69

52:                                               ; preds = %48
  %53 = fdiv float %40, 1.000000e+01
  %54 = tail call float @llvm.floor.f32(float %53)
  %55 = fmul float %54, 1.000000e+01
  br label %69

56:                                               ; preds = %37
  br i1 %42, label %57, label %61

57:                                               ; preds = %56
  %58 = fmul float %40, 1.000000e+02
  %59 = tail call float @llvm.floor.f32(float %58)
  %60 = fmul float %59, 0x3F847AE140000000
  br label %69

61:                                               ; preds = %56
  %62 = fcmp olt float %39, 2.100000e+01
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = fmul float %40, 1.000000e+01
  %65 = tail call float @llvm.floor.f32(float %64)
  %66 = fmul float %65, 0x3FB99999A0000000
  br label %69

67:                                               ; preds = %61
  %68 = tail call float @llvm.floor.f32(float %40)
  br label %69

69:                                               ; preds = %63, %67, %57, %44, %52, %50
  %70 = phi float [ %47, %44 ], [ %51, %50 ], [ %55, %52 ], [ %60, %57 ], [ %66, %63 ], [ %68, %67 ]
  %71 = fmul float %38, %70
  br label %72

72:                                               ; preds = %6, %8, %69
  %73 = phi float [ %1, %6 ], [ %1, %8 ], [ %71, %69 ]
  ret float %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @ui_numedit_apply_snap(i32 noundef %0, float noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #17 !PGOFuncName !526 {
  %5 = sitofp i32 %0 to float
  %6 = fcmp oeq float %5, %1
  %7 = fcmp oeq float %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  switch i32 %3, label %16 [
    i32 2, label %13
    i32 1, label %10
  ]

10:                                               ; preds = %9
  %11 = srem i32 %0, 10
  %12 = sub nsw i32 %0, %11
  br label %16

13:                                               ; preds = %9
  %14 = srem i32 %0, 100
  %15 = sub nsw i32 %0, %14
  br label %16

16:                                               ; preds = %9, %13, %10
  %17 = phi i32 [ %0, %9 ], [ %12, %10 ], [ %15, %13 ]
  %18 = sitofp i32 %17 to float
  br label %19

19:                                               ; preds = %4, %16
  %20 = phi float [ %18, %16 ], [ %5, %4 ]
  ret float %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @uiButGetUnitType(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bUnit_IsValid(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare double @bUnit_BaseScalar(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_multibut_lookup(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !527 {
  %3 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 43, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LinkNode, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !528
  %11 = getelementptr inbounds %struct.uiButMultiState, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !530
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !531

14:                                               ; preds = %4, %8
  %15 = phi ptr [ %10, %8 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @ui_searchbox_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_searchbox_inside(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_textedit_set_cursor_pos(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !532 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @UI_GetStyle() #25
  %10 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds %struct.uiBlock, ptr %12, i64 0, i32 12
  %14 = load float, ptr %13, align 8, !tbaa !177
  %15 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !533
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %17 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %18 = load float, ptr %17, align 8, !tbaa !432
  store float %18, ptr %4, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store float 0.000000e+00, ptr %5, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #27
  %19 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  call void @ui_block_to_window_fl(ptr noundef %20, ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call void @ui_fontscale(ptr noundef nonnull %15, float noundef %14) #25
  call void @uiStyleFontSet(ptr noundef nonnull %10) #25
  %21 = getelementptr inbounds %struct.uiStyle, ptr %9, i64 0, i32 6, i32 2
  %22 = load i16, ptr %21, align 4, !tbaa !535
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i16, ptr %10, align 4, !tbaa !536
  %26 = sext i16 %25 to i32
  call void @BLF_enable(i32 noundef %26, i32 noundef 8) #25
  br label %27

27:                                               ; preds = %24, %3
  call void @ui_button_text_password_hide(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 23
  %30 = load i32, ptr %29, align 8, !tbaa !233
  %31 = sext i32 %30 to i64
  %32 = call ptr %28(i64 noundef %31, ptr noundef nonnull @.str.82) #25
  %33 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 69
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = load i32, ptr %29, align 8, !tbaa !233
  %36 = sext i32 %35 to i64
  %37 = call ptr @BLI_strncpy(ptr noundef %32, ptr noundef %34, i64 noundef %36) #25
  %38 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !51
  switch i32 %39, label %40 [
    i32 3072, label %42
    i32 20992, label %42
    i32 26624, label %42
  ]

40:                                               ; preds = %27
  %41 = load float, ptr %4, align 4, !tbaa !85
  br label %57

42:                                               ; preds = %27, %27, %27
  %43 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !57
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  %47 = load float, ptr %4, align 4, !tbaa !85
  br i1 %46, label %57, label %48

48:                                               ; preds = %42
  %49 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !190
  %50 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !318
  %51 = sitofp i32 %50 to float
  %52 = fmul float %49, %51
  %53 = fdiv float %52, 7.200000e+01
  %54 = fmul float %53, 1.600000e+01
  %55 = fdiv float %54, %14
  %56 = fadd float %47, %55
  br label %57

57:                                               ; preds = %40, %42, %48
  %58 = phi float [ %41, %40 ], [ %47, %42 ], [ %56, %48 ]
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !44
  %60 = sitofp i16 %59 to float
  %61 = fmul float %60, 0x3FDCCCCCE0000000
  %62 = fdiv float %61, %14
  %63 = fadd float %58, %62
  store float %63, ptr %4, align 4, !tbaa !85
  %64 = fcmp ogt float %63, %2
  br i1 %64, label %65, label %97

65:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %66 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 11
  %67 = load i16, ptr %66, align 2, !tbaa !537
  %68 = sext i16 %67 to i32
  store i32 %68, ptr %7, align 4, !tbaa !43
  %69 = sext i16 %67 to i64
  %70 = getelementptr inbounds i8, ptr %32, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !68
  %71 = icmp sgt i16 %67, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65, %78
  %73 = load i16, ptr %66, align 2, !tbaa !537
  %74 = sext i16 %73 to i64
  %75 = call zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %32, i64 noundef %74, ptr noundef nonnull %7) #25
  %76 = icmp eq i8 %75, 0
  %77 = load i32, ptr %7, align 4, !tbaa !43
  br i1 %76, label %91, label %78

78:                                               ; preds = %72
  %79 = load i16, ptr %10, align 4, !tbaa !536
  %80 = sext i16 %79 to i32
  %81 = sext i32 %77 to i64
  %82 = getelementptr inbounds i8, ptr %32, i64 %81
  %83 = call float @BLF_width(i32 noundef %80, ptr noundef %82, i64 noundef 1024) #25
  %84 = load float, ptr %4, align 4, !tbaa !85
  %85 = fsub float %84, %2
  %86 = fmul float %85, 2.500000e-01
  %87 = fcmp ule float %83, %86
  %88 = load i32, ptr %7, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %72, label %91, !llvm.loop !538

91:                                               ; preds = %78, %72
  %92 = phi i32 [ %88, %78 ], [ %77, %72 ]
  %93 = trunc i32 %92 to i16
  br label %94

94:                                               ; preds = %91, %65
  %95 = phi i16 [ %93, %91 ], [ %67, %65 ]
  store i16 %95, ptr %66, align 2, !tbaa !537
  %96 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  store i16 %95, ptr %96, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %153

97:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #28
  %99 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 11
  %100 = load i16, ptr %99, align 2, !tbaa !537
  %101 = trunc i64 %98 to i16
  %102 = sub i16 %101, %100
  %103 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  store i16 %102, ptr %103, align 4, !tbaa !65
  %104 = load i16, ptr %10, align 4, !tbaa !536
  %105 = sext i16 %104 to i32
  %106 = sext i16 %100 to i64
  %107 = getelementptr inbounds i8, ptr %32, i64 %106
  %108 = call float @BLF_width(i32 noundef %105, ptr noundef %107, i64 noundef 1024) #25
  %109 = fadd float %63, %108
  %110 = fcmp olt float %109, %2
  br i1 %110, label %111, label %119

111:                                              ; preds = %129, %97
  %112 = phi float [ 0.000000e+00, %97 ], [ %120, %129 ]
  %113 = phi i16 [ %102, %97 ], [ %121, %129 ]
  %114 = phi float [ %109, %97 ], [ %146, %129 ]
  %115 = fsub float %2, %114
  %116 = fsub float %112, %2
  %117 = fcmp ogt float %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %111
  store i16 %113, ptr %103, align 4, !tbaa !65
  br label %148

119:                                              ; preds = %97, %129
  %120 = phi float [ %146, %129 ], [ %109, %97 ]
  %121 = load i16, ptr %103, align 4, !tbaa !65
  %122 = sext i16 %121 to i32
  store i32 %122, ptr %8, align 4, !tbaa !43
  %123 = icmp slt i16 %121, 1
  br i1 %123, label %148, label %124

124:                                              ; preds = %119
  %125 = load i16, ptr %99, align 2, !tbaa !537
  %126 = sext i16 %125 to i64
  %127 = call zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef %32, i64 noundef %126, ptr noundef nonnull %8) #25
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %8, align 4, !tbaa !43
  %131 = trunc i32 %130 to i16
  store i16 %131, ptr %103, align 4, !tbaa !65
  %132 = shl i32 %130, 16
  %133 = ashr exact i32 %132, 16
  %134 = load i16, ptr %99, align 2, !tbaa !537
  %135 = sext i16 %134 to i32
  %136 = add nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %32, i64 %137
  store i8 0, ptr %138, align 1, !tbaa !68
  %139 = load float, ptr %4, align 4, !tbaa !85
  %140 = load i16, ptr %10, align 4, !tbaa !536
  %141 = sext i16 %140 to i32
  %142 = load i16, ptr %99, align 2, !tbaa !537
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds i8, ptr %32, i64 %143
  %145 = call float @BLF_width(i32 noundef %141, ptr noundef %144, i64 noundef 1024) #25
  %146 = fadd float %139, %145
  %147 = fcmp olt float %146, %2
  br i1 %147, label %111, label %119

148:                                              ; preds = %124, %119, %111, %118
  %149 = load i16, ptr %99, align 2, !tbaa !537
  %150 = load i16, ptr %103, align 4, !tbaa !65
  %151 = add i16 %150, %149
  %152 = call i16 @llvm.smax.i16(i16 %151, i16 0)
  store i16 %152, ptr %103, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %153

153:                                              ; preds = %148, %94
  %154 = load i16, ptr %21, align 4, !tbaa !535
  %155 = icmp eq i16 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i16, ptr %10, align 4, !tbaa !536
  %158 = sext i16 %157 to i32
  call void @BLF_disable(i32 noundef %158, i32 noundef 8) #25
  br label %159

159:                                              ; preds = %156, %153
  call void @ui_button_text_password_hide(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 1) #26
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %160(ptr noundef %32) #25
  store i16 %16, ptr %15, align 2, !tbaa !533
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_textedit_move(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #3 !PGOFuncName !539 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #28
  %10 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %11 = load i16, ptr %10, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %13 = load i16, ptr %12, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %15 = load i16, ptr %14, align 2, !tbaa !66
  %16 = icmp sgt i16 %13, %15
  tail call void @ui_check_but(ptr noundef %0) #25
  %17 = icmp eq i8 %3, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = icmp eq i32 %4, 2
  %21 = icmp eq i32 %2, 0
  br i1 %20, label %22, label %25

22:                                               ; preds = %19
  %23 = trunc i64 %9 to i16
  %24 = select i1 %21, i16 0, i16 %23
  store i16 %24, ptr %10, align 4, !tbaa !65
  store i16 %24, ptr %12, align 8, !tbaa !67
  store i16 %24, ptr %14, align 2, !tbaa !66
  br label %30

25:                                               ; preds = %19
  br i1 %21, label %28, label %26

26:                                               ; preds = %25
  %27 = load i16, ptr %12, align 8, !tbaa !67
  store i16 %27, ptr %10, align 4, !tbaa !65
  store i16 %27, ptr %14, align 2, !tbaa !66
  br label %30

28:                                               ; preds = %25
  %29 = load i16, ptr %14, align 2, !tbaa !66
  store i16 %29, ptr %12, align 8, !tbaa !67
  store i16 %29, ptr %10, align 4, !tbaa !65
  br label %30

30:                                               ; preds = %26, %28, %22
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 24
  store i32 0, ptr %31, align 4, !tbaa !234
  br label %71

32:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %33 = load i16, ptr %10, align 4, !tbaa !65
  %34 = sext i16 %33 to i32
  store i32 %34, ptr %6, align 4, !tbaa !43
  %35 = shl i64 %9, 32
  %36 = ashr exact i64 %35, 32
  call void @BLI_str_cursor_step_utf8(ptr noundef %8, i64 noundef %36, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %4, i8 noundef zeroext 1) #25
  %37 = load i32, ptr %6, align 4, !tbaa !43
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %10, align 4, !tbaa !65
  br i1 %17, label %70, label %39

39:                                               ; preds = %32
  br i1 %16, label %40, label %65

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 24
  %42 = load i32, ptr %41, align 4, !tbaa !234
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %52, label %48

46:                                               ; preds = %40
  store i32 2, ptr %41, align 4, !tbaa !234
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %55, label %50

48:                                               ; preds = %44
  %49 = icmp eq i32 %42, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %48
  store i16 %38, ptr %12, align 8, !tbaa !67
  br label %59

51:                                               ; preds = %48
  store i16 %38, ptr %14, align 2, !tbaa !66
  br label %59

52:                                               ; preds = %44
  %53 = icmp eq i32 %42, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  store i16 %38, ptr %14, align 2, !tbaa !66
  br label %59

55:                                               ; preds = %46, %52
  %56 = phi i32 [ %42, %52 ], [ 2, %46 ]
  store i16 %38, ptr %12, align 8, !tbaa !67
  %57 = icmp eq i32 %56, 2
  %58 = select i1 %57, i32 1, i32 2
  br label %59

59:                                               ; preds = %54, %55, %50, %51
  %60 = phi i32 [ 2, %54 ], [ %58, %55 ], [ 1, %50 ], [ 2, %51 ]
  %61 = load i16, ptr %12, align 8, !tbaa !67
  %62 = load i16, ptr %14, align 2, !tbaa !66
  %63 = icmp slt i16 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  store i16 %61, ptr %14, align 2, !tbaa !66
  store i16 %62, ptr %12, align 8, !tbaa !67
  store i32 %60, ptr %41, align 4, !tbaa !234
  br label %70

65:                                               ; preds = %39
  %66 = icmp eq i32 %2, 0
  %67 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 24
  br i1 %66, label %69, label %68

68:                                               ; preds = %65
  store i32 2, ptr %67, align 4, !tbaa !234
  store i16 %38, ptr %12, align 8, !tbaa !67
  store i16 %11, ptr %14, align 2, !tbaa !66
  br label %70

69:                                               ; preds = %65
  store i32 1, ptr %67, align 4, !tbaa !234
  store i16 %11, ptr %12, align 8, !tbaa !67
  store i16 %38, ptr %14, align 2, !tbaa !66
  br label %70

70:                                               ; preds = %64, %59, %69, %68, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %71

71:                                               ; preds = %70, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_textedit_copypaste(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !540 {
  %4 = alloca i32, align 4
  %5 = alloca [400 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #28
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %10, label %71

10:                                               ; preds = %3
  %11 = call ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext 0, ptr noundef nonnull %4) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %97, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %5, i8 0, i64 400, i1 false)
  %14 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %5, ptr noundef nonnull %11, i64 noundef 400) #25
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %4, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %17 = load i16, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %19 = load i16, ptr %18, align 2, !tbaa !66
  %20 = icmp sgt i16 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call fastcc zeroext i8 @ui_textedit_delete_selection(ptr noundef nonnull %0, ptr noundef nonnull %1) #26, !range !168
  %23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #28
  %24 = load i32, ptr %4, align 4, !tbaa !43
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ %15, %13 ]
  %27 = phi i64 [ %23, %21 ], [ %8, %13 ]
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %25
  %30 = trunc i64 %27 to i32
  %31 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 23
  %32 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %33 = zext i32 %26 to i64
  br label %34

34:                                               ; preds = %29, %65
  %35 = phi i64 [ 0, %29 ], [ %67, %65 ]
  %36 = phi i32 [ %30, %29 ], [ %66, %65 ]
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %31, align 8, !tbaa !233
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load i16, ptr %32, align 4, !tbaa !65
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = sext i32 %38 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ %45, %44 ], [ %51, %46 ]
  %48 = getelementptr i8, ptr %7, i64 %47
  %49 = getelementptr i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !68
  store i8 %50, ptr %48, align 1, !tbaa !68
  %51 = add nsw i64 %47, -1
  %52 = load i16, ptr %32, align 4, !tbaa !65
  %53 = sext i16 %52 to i64
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %46, label %55, !llvm.loop !541

55:                                               ; preds = %46, %40
  %56 = phi i16 [ %41, %40 ], [ %52, %46 ]
  %57 = getelementptr inbounds [400 x i8], ptr %5, i64 0, i64 %35
  %58 = load i8, ptr %57, align 1, !tbaa !68
  %59 = sext i16 %56 to i64
  %60 = getelementptr inbounds i8, ptr %7, i64 %59
  store i8 %58, ptr %60, align 1, !tbaa !68
  %61 = load i16, ptr %32, align 4, !tbaa !65
  %62 = add i16 %61, 1
  store i16 %62, ptr %32, align 4, !tbaa !65
  %63 = sext i32 %37 to i64
  %64 = getelementptr inbounds i8, ptr %7, i64 %63
  store i8 0, ptr %64, align 1, !tbaa !68
  br label %65

65:                                               ; preds = %34, %55
  %66 = phi i32 [ %37, %55 ], [ %36, %34 ]
  %67 = add nuw nsw i64 %35, 1
  %68 = icmp ult i64 %67, %33
  br i1 %68, label %34, label %69, !llvm.loop !542

69:                                               ; preds = %65, %25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #27
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %70(ptr noundef nonnull %11) #25
  br label %97

71:                                               ; preds = %3
  %72 = and i32 %2, -2
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = icmp eq i32 %2, 3
  %76 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %77 = load i16, ptr %76, align 8, !tbaa !67
  %78 = sext i16 %77 to i64
  %79 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %80 = load i16, ptr %79, align 2, !tbaa !66
  %81 = sext i16 %80 to i64
  %82 = sub nsw i64 %78, %81
  %83 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %84 = add nsw i64 %82, 1
  %85 = tail call ptr %83(i64 noundef %84, ptr noundef nonnull @.str.83) #25
  %86 = load i16, ptr %79, align 2, !tbaa !66
  %87 = sext i16 %86 to i64
  %88 = getelementptr inbounds i8, ptr %7, i64 %87
  %89 = tail call ptr @BLI_strncpy(ptr noundef %85, ptr noundef %88, i64 noundef %84) #25
  tail call void @WM_clipboard_text_set(ptr noundef %85, i8 noundef zeroext 0) #25
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %90(ptr noundef %85) #25
  br i1 %75, label %91, label %97

91:                                               ; preds = %74
  %92 = load i16, ptr %76, align 8, !tbaa !67
  %93 = load i16, ptr %79, align 2, !tbaa !66
  %94 = icmp sgt i16 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = tail call fastcc zeroext i8 @ui_textedit_delete_selection(ptr noundef nonnull %0, ptr noundef nonnull %1) #26, !range !168
  br label %97

97:                                               ; preds = %10, %74, %95, %91, %71, %69
  %98 = phi i8 [ 1, %69 ], [ 0, %71 ], [ %96, %95 ], [ 0, %91 ], [ 0, %74 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret i8 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_textedit_delete(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !543 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #28
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %14 = load i16, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %16 = load i16, ptr %15, align 2, !tbaa !66
  %17 = icmp sgt i16 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call fastcc zeroext i8 @ui_textedit_delete_selection(ptr noundef nonnull %0, ptr noundef nonnull %1) #26, !range !168
  br label %70

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %22 = load i16, ptr %21, align 4, !tbaa !65
  %23 = icmp sgt i16 %22, -1
  %24 = sext i16 %22 to i32
  %25 = icmp slt i32 %24, %10
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %70

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 %24, ptr %5, align 4, !tbaa !43
  %28 = and i64 %9, 4294967295
  call void @BLI_str_cursor_step_utf8(ptr noundef %8, i64 noundef %28, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %3, i8 noundef zeroext 1) #25
  %29 = load i32, ptr %5, align 4, !tbaa !43
  %30 = load i16, ptr %21, align 4, !tbaa !65
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i8, ptr %8, i64 %31
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  %35 = add nuw nsw i32 %10, 1
  %36 = sub i32 %35, %29
  %37 = sext i32 %36 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %32, ptr align 1 %34, i64 %37, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %70

38:                                               ; preds = %4
  %39 = icmp eq i32 %10, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %42 = load i16, ptr %41, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %44 = load i16, ptr %43, align 2, !tbaa !66
  %45 = icmp sgt i16 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call fastcc zeroext i8 @ui_textedit_delete_selection(ptr noundef nonnull %0, ptr noundef nonnull %1) #26, !range !168
  br label %70

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %50 = load i16, ptr %49, align 4, !tbaa !65
  %51 = icmp sgt i16 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %53 = zext nneg i16 %50 to i32
  store i32 %53, ptr %6, align 4, !tbaa !43
  %54 = shl i64 %9, 32
  %55 = ashr exact i64 %54, 32
  call void @BLI_str_cursor_step_utf8(ptr noundef %8, i64 noundef %55, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 1) #25
  %56 = load i16, ptr %49, align 4, !tbaa !65
  %57 = sext i16 %56 to i64
  %58 = load i32, ptr %6, align 4, !tbaa !43
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %8, i64 %59
  %61 = getelementptr inbounds i8, ptr %8, i64 %57
  %62 = add i64 %9, 1
  %63 = sub i64 %62, %57
  %64 = shl i64 %63, 32
  %65 = ashr exact i64 %64, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %60, ptr align 1 %61, i64 %65, i1 false)
  %66 = load i16, ptr %49, align 4, !tbaa !65
  %67 = trunc i32 %58 to i16
  %68 = sub i16 %67, %56
  %69 = add i16 %68, %66
  store i16 %69, ptr %49, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %70

70:                                               ; preds = %20, %27, %18, %46, %52, %48, %38
  %71 = phi i8 [ %19, %18 ], [ 1, %27 ], [ 0, %20 ], [ %47, %46 ], [ 1, %52 ], [ 0, %48 ], [ 0, %38 ]
  ret i8 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_textedit_autocomplete(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !544 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @ui_searchbox_autocomplete(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %5) #25
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !518
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 34
  %15 = load ptr, ptr %14, align 8, !tbaa !545
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %5, ptr noundef %15) #25
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %10, %9 ], [ %16, %11 ]
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #28
  %20 = trunc i64 %19 to i16
  %21 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 12
  store i16 %20, ptr %21, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 14
  store i16 %20, ptr %22, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 13
  store i16 %20, ptr %23, align 2, !tbaa !66
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_textedit_prev_but(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #21 !PGOFuncName !546 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  switch i32 %5, label %6 [
    i32 5120, label %44
    i32 10752, label %44
    i32 27648, label %44
    i32 14336, label %44
    i32 17920, label %44
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !379
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6, %19
  %11 = phi ptr [ %21, %19 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !51
  switch i32 %13, label %19 [
    i32 3072, label %14
    i32 2560, label %14
    i32 7168, label %14
    i32 20992, label %14
    i32 26624, label %14
  ]

14:                                               ; preds = %10, %10, %10, %10, %10
  %15 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !57
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %10, %14
  %20 = getelementptr inbounds %struct.uiBut, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !379
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !547

23:                                               ; preds = %19, %6
  %24 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %44, label %27

27:                                               ; preds = %23, %36
  %28 = phi ptr [ %38, %36 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !51
  switch i32 %30, label %36 [
    i32 3072, label %31
    i32 2560, label %31
    i32 7168, label %31
    i32 20992, label %31
    i32 26624, label %31
  ]

31:                                               ; preds = %27, %27, %27, %27, %27
  %32 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !57
  %34 = and i32 %33, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27, %31
  %37 = getelementptr inbounds %struct.uiBut, ptr %28, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %44, label %27, !llvm.loop !548

40:                                               ; preds = %14, %31
  %41 = phi ptr [ %28, %31 ], [ %11, %14 ]
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 45
  store ptr %41, ptr %42, align 8, !tbaa !269
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 44
  store i32 3, ptr %43, align 8, !tbaa !270
  br label %44

44:                                               ; preds = %36, %40, %23, %3, %3, %3, %3, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_textedit_next_but(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #21 !PGOFuncName !549 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  switch i32 %5, label %6 [
    i32 5120, label %41
    i32 10752, label %41
    i32 27648, label %41
    i32 14336, label %41
    i32 17920, label %41
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !376
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6, %18
  %10 = phi ptr [ %19, %18 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !51
  switch i32 %12, label %18 [
    i32 3072, label %13
    i32 2560, label %13
    i32 7168, label %13
    i32 20992, label %13
    i32 26624, label %13
  ]

13:                                               ; preds = %9, %9, %9, %9, %9
  %14 = getelementptr inbounds %struct.uiBut, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %9, %13
  %19 = load ptr, ptr %10, align 8, !tbaa !376
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !550

21:                                               ; preds = %18, %6
  %22 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %41, label %25

25:                                               ; preds = %21, %34
  %26 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !51
  switch i32 %28, label %34 [
    i32 3072, label %29
    i32 2560, label %29
    i32 7168, label %29
    i32 20992, label %29
    i32 26624, label %29
  ]

29:                                               ; preds = %25, %25, %25, %25, %25
  %30 = getelementptr inbounds %struct.uiBut, ptr %26, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !57
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25, %29
  %35 = load ptr, ptr %26, align 8, !tbaa !61
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %41, label %25, !llvm.loop !551

37:                                               ; preds = %13, %29
  %38 = phi ptr [ %26, %29 ], [ %10, %13 ]
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 45
  store ptr %38, ptr %39, align 8, !tbaa !269
  %40 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 44
  store i32 3, ptr %40, align 8, !tbaa !270
  br label %41

41:                                               ; preds = %34, %37, %21, %3, %3, %3, %3, %3
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ui_textedit_type_buf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #22 !PGOFuncName !552 {
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %10 = load i16, ptr %9, align 8, !tbaa !67
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %13 = load i16, ptr %12, align 2, !tbaa !66
  %14 = sext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = sub nsw i32 %8, %15
  %17 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 23
  %18 = load i32, ptr %17, align 8, !tbaa !233
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = icmp sgt i32 %15, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = tail call fastcc zeroext i8 @ui_textedit_delete_selection(ptr noundef nonnull %0, ptr noundef nonnull %1) #26, !range !168
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #28
  %25 = trunc i64 %24 to i32
  %26 = load i32, ptr %17, align 8, !tbaa !233
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ %18, %20 ]
  %29 = phi i8 [ %23, %22 ], [ 0, %20 ]
  %30 = phi i32 [ %25, %22 ], [ %8, %20 ]
  %31 = add nsw i32 %30, %3
  %32 = icmp slt i32 %31, %28
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %35 = load i16, ptr %34, align 4, !tbaa !65
  %36 = sext i16 %35 to i32
  %37 = add nsw i32 %36, %3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %6, i64 %38
  %40 = sext i16 %35 to i64
  %41 = getelementptr inbounds i8, ptr %6, i64 %40
  %42 = add nsw i32 %30, 1
  %43 = sub i32 %42, %36
  %44 = sext i32 %43 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %39, ptr align 1 %41, i64 %44, i1 false)
  %45 = load i16, ptr %34, align 4, !tbaa !65
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds i8, ptr %6, i64 %46
  %48 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %2, i64 %48, i1 false)
  %49 = load i16, ptr %34, align 4, !tbaa !65
  %50 = trunc i32 %3 to i16
  %51 = add i16 %49, %50
  store i16 %51, ptr %34, align 4, !tbaa !65
  br label %52

52:                                               ; preds = %27, %33, %4
  %53 = phi i8 [ 0, %4 ], [ 1, %33 ], [ %29, %27 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_textedit_type_ascii(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #3 !PGOFuncName !553 {
  %4 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #27
  store i8 %2, ptr %4, align 1, !tbaa !68
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 0, ptr %5, align 1, !tbaa !68
  %6 = tail call zeroext i8 @ui_is_but_utf8(ptr noundef %0) #26, !range !168
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %4) #25
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = zext i8 %2 to i32
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @__func__.ui_textedit_type_ascii, i32 noundef %12) #26
  br label %16

14:                                               ; preds = %8, %3
  %15 = call fastcc zeroext i8 @ui_textedit_type_buf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #26, !range !168
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i8 [ 0, %11 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #27
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_fontscale(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_str_cursor_step_prev_utf8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLF_disable(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ui_textedit_delete_selection(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #22 !PGOFuncName !554 {
  %3 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #28
  %6 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !66
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  %9 = load i16, ptr %8, align 8, !tbaa !67
  %10 = icmp ne i16 %7, %9
  %11 = and i64 %5, 4294967295
  %12 = icmp ne i64 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = sext i16 %9 to i64
  %16 = sext i16 %7 to i64
  %17 = getelementptr inbounds i8, ptr %4, i64 %16
  %18 = getelementptr inbounds i8, ptr %4, i64 %15
  %19 = sub i64 %5, %15
  %20 = shl i64 %19, 32
  %21 = add i64 %20, 4294967296
  %22 = ashr exact i64 %21, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %22, i1 false)
  %23 = load i16, ptr %6, align 2, !tbaa !66
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i16 [ %23, %14 ], [ %7, %2 ]
  %26 = phi i8 [ 1, %14 ], [ 0, %2 ]
  store i16 %25, ptr %8, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  store i16 %25, ptr %27, align 4, !tbaa !65
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare i32 @ui_searchbox_autocomplete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_textedit_set_cursor_select(ptr noundef %0, ptr nocapture noundef %1, float noundef %2) unnamed_addr #3 !PGOFuncName !555 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 25
  %5 = load float, ptr %4, align 8, !tbaa !235
  %6 = fcmp olt float %5, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = fcmp ogt float %5, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 2, %3 ], [ 1, %7 ]
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 24
  store i32 %10, ptr %11, align 4, !tbaa !234
  br label %12

12:                                               ; preds = %9, %7
  tail call fastcc void @ui_textedit_set_cursor_pos(ptr noundef %0, ptr noundef nonnull %1, float noundef %2) #26
  %13 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 24
  %14 = load i32, ptr %13, align 4, !tbaa !234
  switch i32 %14, label %23 [
    i32 2, label %15
    i32 1, label %19
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %17 = load i16, ptr %16, align 4, !tbaa !65
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 14
  store i16 %17, ptr %18, align 8, !tbaa !67
  br label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 12
  %21 = load i16, ptr %20, align 4, !tbaa !65
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 13
  store i16 %21, ptr %22, align 2, !tbaa !66
  br label %23

23:                                               ; preds = %12, %19, %15
  tail call void @ui_check_but(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_but_mouse_inside_icon(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !556 {
  %4 = alloca %struct.rcti, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !178
  store i32 %8, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !42
  store i32 %10, ptr %6, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  call void @ui_window_to_block(ptr noundef %1, ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %13 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %4, ptr noundef nonnull %13) #25
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 65
  %15 = load ptr, ptr %14, align 8, !tbaa !438
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = icmp eq i32 %19, 7680
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !557
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %4) #26
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4, !tbaa !448
  %29 = add nsw i32 %26, %28
  %30 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !447
  br label %40

31:                                               ; preds = %21
  %32 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %4) #26
  %33 = sub nsw i32 %32, %26
  %34 = sdiv i32 %33, 2
  %35 = load i32, ptr %4, align 4, !tbaa !448
  %36 = add nsw i32 %34, %35
  store i32 %36, ptr %4, align 4, !tbaa !448
  %37 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !447
  %39 = sub nsw i32 %38, %34
  store i32 %39, ptr %37, align 4, !tbaa !447
  br label %40

40:                                               ; preds = %27, %31, %3, %17
  %41 = load i32, ptr %5, align 4, !tbaa !43
  %42 = load i32, ptr %6, align 4, !tbaa !43
  %43 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %4, i32 noundef %41, i32 noundef %42) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_but_start_drag(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #3 !PGOFuncName !558 {
  tail call void @WM_gestures_remove(ptr noundef %0) #25
  %5 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %6 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %7 = load <2 x i32>, ptr %5, align 4, !tbaa !43
  %8 = load <2 x i32>, ptr %6, align 4, !tbaa !43
  %9 = sub nsw <2 x i32> %7, %8
  %10 = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %9, i1 true)
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %12 = add nuw nsw <2 x i32> %11, %10
  %13 = extractelement <2 x i32> %12, i64 0
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 62), align 2, !tbaa !559
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %105

17:                                               ; preds = %4
  tail call fastcc void @button_activate_state(ptr noundef %0, ptr noundef %1, i32 noundef 10) #26
  %18 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %18, align 4, !tbaa !92
  %19 = tail call zeroext i8 @ui_is_but_bool(ptr noundef %1) #25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %23 = tail call ptr %22(i64 noundef 36, ptr noundef nonnull @__func__.ui_but_start_drag) #25
  tail call fastcc void @ui_apply_autokey(ptr noundef %0, ptr noundef %1) #26
  %24 = tail call i32 @ui_is_but_push(ptr noundef %1) #25
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 1
  store i8 %25, ptr %26, align 1, !tbaa !560
  %27 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18
  %28 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %27) #26
  %29 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 2
  store float %28, ptr %29, align 4, !tbaa !85
  %30 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %27) #26
  %31 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 2, i64 1
  store float %30, ptr %31, align 4, !tbaa !85
  %32 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 3
  store i32 %33, ptr %34, align 4, !tbaa !562
  %35 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 5
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %35, ptr noundef nonnull %6) #26
  %36 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %23, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %36, ptr noundef nonnull %6) #26
  %37 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %38 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !104
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %39) #25
  %40 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 29
  %43 = tail call ptr @WM_event_add_ui_handler(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull @ui_handler_region_drag_toggle, ptr noundef nonnull @ui_handler_region_drag_toggle_remove, ptr noundef %23, i8 noundef zeroext 0) #25
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %37) #25
  br label %105

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !51
  %47 = icmp eq i32 %46, 7680
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %50 = tail call ptr %49(i64 noundef 16, ptr noundef nonnull @__func__.ui_but_start_drag) #25
  %51 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %52) #25
  %56 = icmp eq i32 %55, 30
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %59 = load ptr, ptr %51, align 8, !tbaa !56
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %58, ptr noundef %59, ptr noundef %50) #25
  %60 = getelementptr inbounds %struct.uiDragColorHandle, ptr %50, i64 0, i32 1
  store i8 1, ptr %60, align 4, !tbaa !563
  br label %80

61:                                               ; preds = %54
  %62 = load ptr, ptr %51, align 8, !tbaa !56
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @RNA_property_subtype(ptr noundef nonnull %62) #25
  %66 = icmp eq i32 %65, 20
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %69 = load ptr, ptr %51, align 8, !tbaa !56
  tail call void @RNA_property_float_get_array(ptr noundef nonnull %68, ptr noundef %69, ptr noundef %50) #25
  %70 = getelementptr inbounds %struct.uiDragColorHandle, ptr %50, i64 0, i32 1
  store i8 0, ptr %70, align 4, !tbaa !563
  br label %80

71:                                               ; preds = %48, %64, %61
  %72 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !171
  switch i32 %73, label %82 [
    i32 128, label %74
    i32 32, label %77
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !172
  tail call fastcc void @copy_v3_v3(ptr noundef %50, ptr noundef %76) #26
  br label %80

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  tail call void @rgb_uchar_to_float(ptr noundef %50, ptr noundef %79) #25
  br label %80

80:                                               ; preds = %77, %74, %67, %57
  %81 = tail call ptr @WM_event_start_drag(ptr noundef %0, i32 noundef 54, i32 noundef 5, ptr noundef %50, double noundef 0.000000e+00, i32 noundef 1) #25
  br label %105

82:                                               ; preds = %71
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %83(ptr noundef %50) #25
  br label %105

84:                                               ; preds = %44
  %85 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 44
  %86 = load i32, ptr %85, align 8, !tbaa !520
  %87 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 63
  %88 = load i8, ptr %87, align 1, !tbaa !565
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 64
  %91 = load ptr, ptr %90, align 8, !tbaa !301
  %92 = tail call double @ui_get_but_val(ptr noundef nonnull %1) #25
  %93 = tail call ptr @WM_event_start_drag(ptr noundef %0, i32 noundef %86, i32 noundef %89, ptr noundef %91, double noundef %92, i32 noundef 0) #25
  %94 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 65
  %95 = load ptr, ptr %94, align 8, !tbaa !438
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 66
  %99 = load float, ptr %98, align 8, !tbaa !566
  %100 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18
  %101 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %100) #26
  %102 = fptosi float %101 to i32
  %103 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %100) #26
  %104 = fptosi float %103 to i32
  tail call void @WM_event_drag_image(ptr noundef %93, ptr noundef nonnull %95, float noundef %99, i32 noundef %102, i32 noundef %104) #25
  br label %105

105:                                              ; preds = %21, %97, %84, %80, %82, %4
  %106 = phi i8 [ 0, %82 ], [ 0, %4 ], [ 1, %80 ], [ 1, %84 ], [ 1, %97 ], [ 1, %21 ]
  ret i8 %106
}

; Function Attrs: optsize
declare void @BLI_rcti_rctf_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !567 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !568
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !569
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !570 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !447
  %4 = load i32, ptr %0, align 4, !tbaa !448
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: optsize
declare void @WM_gestures_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ui_is_but_push(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ui_handler_region_drag_toggle(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 !PGOFuncName !571 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !150
  switch i16 %5, label %24 [
    i16 1, label %6
    i16 4, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !151
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %24, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  tail call fastcc void @ui_drag_toggle_set(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %11) #26
  br label %24

12:                                               ; preds = %6
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #25
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %15 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %2, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %2, i64 0, i32 5, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = tail call fastcc ptr @ui_but_find_mouse_over_ex(ptr noundef %14, i32 noundef %16, i32 noundef %18, i8 noundef zeroext 1) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call fastcc void @ui_apply_undo(ptr noundef nonnull %19) #26
  br label %22

22:                                               ; preds = %21, %12
  %23 = getelementptr inbounds %struct.wmWindow, ptr %13, i64 0, i32 29
  tail call void @WM_event_remove_ui_handler(ptr noundef nonnull %23, ptr noundef nonnull @ui_handler_region_drag_toggle, ptr noundef nonnull @ui_handler_region_drag_toggle_remove, ptr noundef nonnull %2, i8 noundef zeroext 0) #25
  tail call void @ui_handler_region_drag_toggle_remove(ptr poison, ptr noundef nonnull %2) #26
  tail call void @WM_event_add_mousemove(ptr noundef %0) #25
  br label %24

24:                                               ; preds = %6, %10, %3, %22
  %25 = phi i32 [ 1, %22 ], [ 0, %3 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ui_handler_region_drag_toggle_remove(ptr nocapture readnone %0, ptr noundef %1) #3 !PGOFuncName !572 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %3(ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_event_start_drag(ptr noundef, i32 noundef, i32 noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_drag_image(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_drag_toggle_set(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !573 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %7 = load i8, ptr %1, align 4, !tbaa !574
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4, !tbaa !43
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = tail call fastcc ptr @ui_but_find_mouse_over_ex(ptr noundef %6, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 1) #26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %21 = getelementptr inbounds %struct.uiBut, ptr %13, i64 0, i32 18
  %22 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %21) #26
  store float %22, ptr %5, align 4, !tbaa !85
  %23 = getelementptr inbounds float, ptr %5, i64 1
  %24 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %21) #26
  store float %24, ptr %23, align 4, !tbaa !85
  %25 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 2
  %26 = call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %25, ptr noundef nonnull %5) #26
  %27 = fcmp ogt float %26, 1.000000e+00
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load <2 x float>, ptr %25, align 4, !tbaa !85
  %30 = insertelement <2 x float> poison, float %22, i64 0
  %31 = insertelement <2 x float> %30, float %24, i64 1
  %32 = fsub <2 x float> %29, %31
  %33 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %32)
  %34 = extractelement <2 x float> %33, i64 0
  %35 = extractelement <2 x float> %33, i64 1
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 4
  store i8 1, ptr %38, align 4, !tbaa !68
  br label %41

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 4, i64 1
  store i8 1, ptr %40, align 1, !tbaa !68
  br label %41

41:                                               ; preds = %39, %37
  store i8 1, ptr %1, align 4, !tbaa !574
  br label %42

42:                                               ; preds = %41, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %44

43:                                               ; preds = %15
  store i8 1, ptr %1, align 4, !tbaa !574
  br label %44

44:                                               ; preds = %9, %43, %42, %3
  %45 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 4
  %46 = load i8, ptr %45, align 4, !tbaa !68
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 6
  %49 = select i1 %47, ptr %2, ptr %48
  %50 = load i32, ptr %49, align 4, !tbaa !43
  store i32 %50, ptr %4, align 4, !tbaa !43
  %51 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 4, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !68
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds i32, ptr %2, i64 1
  %55 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 6, i64 1
  %56 = select i1 %53, ptr %54, ptr %55
  %57 = load i32, ptr %56, align 4, !tbaa !43
  %58 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %57, ptr %58, align 4, !tbaa !43
  %59 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 1
  %60 = load i8, ptr %59, align 1, !tbaa !560
  %61 = getelementptr inbounds %struct.uiDragToggleHandle, ptr %1, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !562
  %63 = call fastcc zeroext i8 @ui_drag_toggle_set_xy_xy(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %60, i32 noundef %62, ptr noundef nonnull %48, ptr noundef nonnull %4) #26, !range !168
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %44
  tail call void @ED_region_tag_redraw(ptr noundef %6) #25
  br label %66

66:                                               ; preds = %65, %44
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %48, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !575 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #26
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ui_drag_toggle_set_xy_xy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #3 !PGOFuncName !576 {
  %7 = alloca [2 x float], align 8
  %8 = alloca [2 x float], align 8
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !420
  %11 = icmp eq i16 %10, 3
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds float, ptr %7, i64 1
  %17 = getelementptr inbounds float, ptr %8, i64 1
  br label %18

18:                                               ; preds = %15, %54
  %19 = phi ptr [ %13, %15 ], [ %56, %54 ]
  %20 = phi i8 [ 0, %15 ], [ %55, %54 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %21 = load <2 x i32>, ptr %4, align 4, !tbaa !43
  %22 = sitofp <2 x i32> %21 to <2 x float>
  store <2 x float> %22, ptr %7, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  %23 = load <2 x i32>, ptr %5, align 4, !tbaa !43
  %24 = sitofp <2 x i32> %23 to <2 x float>
  store <2 x float> %24, ptr %8, align 8, !tbaa !85
  call void @ui_window_to_block_fl(ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %7, ptr noundef nonnull %16) #25
  call void @ui_window_to_block_fl(ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %8, ptr noundef nonnull %17) #25
  %25 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %18, %50
  %29 = phi ptr [ %52, %50 ], [ %26, %18 ]
  %30 = phi i8 [ %51, %50 ], [ %20, %18 ]
  %31 = call fastcc zeroext i8 @ui_is_but_interactive(ptr noundef nonnull %29, i8 noundef zeroext 1) #26, !range !168
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 18
  %35 = call zeroext i8 @BLI_rctf_isect_segment(ptr noundef nonnull %34, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = call zeroext i8 @ui_is_but_bool(ptr noundef nonnull %29) #25
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !51
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @ui_is_but_push(ptr noundef nonnull %29) #25
  %46 = trunc i32 %45 to i8
  %47 = icmp eq i8 %46, %2
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  call void @uiButExecute(ptr noundef %0, ptr noundef nonnull %29) #25
  br i1 %11, label %49, label %50

49:                                               ; preds = %48
  call void @ui_check_but(ptr noundef nonnull %29) #25
  br label %50

50:                                               ; preds = %44, %49, %48, %28, %37, %40, %33
  %51 = phi i8 [ %30, %40 ], [ %30, %37 ], [ %30, %33 ], [ %30, %28 ], [ %30, %44 ], [ 1, %49 ], [ 1, %48 ]
  %52 = load ptr, ptr %29, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %28, !llvm.loop !577

54:                                               ; preds = %50, %18
  %55 = phi i8 [ %20, %18 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  %56 = load ptr, ptr %19, align 8, !tbaa !61
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %18, !llvm.loop !578

58:                                               ; preds = %54, %6
  %59 = phi i8 [ 0, %6 ], [ %55, %54 ]
  ret i8 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !579 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_segment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiButExecute(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_numedit_but_HISTOGRAM(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !580 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !434
  %9 = sub nsw i32 %3, %8
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.Histogram, ptr %6, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !440
  %13 = fmul float %12, %12
  %14 = tail call fastcc float @min_ff(float noundef %13, float noundef 1.000000e+00) #26
  %15 = fmul float %14, 5.000000e-01
  %16 = fmul float %10, 0x3FB99999A0000000
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %15, float %12)
  store float %17, ptr %11, align 4, !tbaa !440
  %18 = fcmp olt float %17, 0x3FB99999A0000000
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = fcmp ogt float %17, 1.000000e+02
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %4
  %22 = phi float [ 0x3FB99999A0000000, %4 ], [ 1.000000e+02, %19 ]
  store float %22, ptr %11, align 4, !tbaa !440
  br label %23

23:                                               ; preds = %21, %19
  %24 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store i32 %2, ptr %24, align 4, !tbaa !252
  store i32 %3, ptr %7, align 8, !tbaa !434
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ui_numedit_but_WAVEFORM(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !581 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !434
  %9 = sub nsw i32 %3, %8
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %10, 2.000000e+02
  %12 = getelementptr inbounds %struct.Scopes, ptr %6, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !443
  %14 = fadd float %13, %11
  store float %14, ptr %12, align 8, !tbaa !443
  %15 = fcmp olt float %14, 5.000000e-01
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = fcmp ogt float %14, 2.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %4
  %19 = phi float [ 5.000000e-01, %4 ], [ 2.000000e+00, %16 ]
  store float %19, ptr %12, align 8, !tbaa !443
  br label %20

20:                                               ; preds = %18, %16
  %21 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store i32 %2, ptr %21, align 4, !tbaa !252
  store i32 %3, ptr %7, align 8, !tbaa !434
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_TEX(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !582 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @ui_set_but_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #25
  tail call void @ui_check_but(ptr noundef %1) #25
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 39
  store ptr %10, ptr %11, align 8, !tbaa !583
  store ptr null, ptr %9, align 8, !tbaa !109
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %12 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %13 = load i16, ptr %12, align 4, !tbaa !122
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %14, ptr %15, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %16, align 2, !tbaa !182
  br label %17

17:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !584 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !585
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !586
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 37
  %18 = load ptr, ptr %17, align 8, !tbaa !587
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !51
  %23 = icmp eq i32 %22, 10240
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !588
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %30 = load ptr, ptr %29, align 8, !tbaa !403
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %115, label %36

36:                                               ; preds = %32, %28, %24, %16, %12, %8, %2
  %37 = tail call fastcc ptr @ui_afterfunc_new() #26
  %38 = load ptr, ptr %5, align 8, !tbaa !585
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 28
  %42 = load ptr, ptr %41, align 8, !tbaa !589
  %43 = icmp eq ptr %42, %1
  %44 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 29
  %45 = load ptr, ptr %44, align 8, !tbaa !590
  br i1 %43, label %48, label %46

46:                                               ; preds = %40
  %47 = icmp eq ptr %45, %1
  br i1 %47, label %48, label %50

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %1, %46 ], [ %45, %40 ]
  tail call void %38(ptr noundef %0, ptr noundef %42, ptr noundef %49) #25
  br label %52

50:                                               ; preds = %46, %36
  %51 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 2
  store ptr %38, ptr %51, align 8, !tbaa !277
  br label %52

52:                                               ; preds = %50, %48
  %53 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 28
  %54 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 3
  %55 = load <2 x ptr>, ptr %53, align 8, !tbaa !61
  store <2 x ptr> %55, ptr %54, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 30
  %57 = load ptr, ptr %56, align 8, !tbaa !586
  %58 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 5
  store ptr %57, ptr %58, align 8, !tbaa !280
  %59 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 31
  %60 = load ptr, ptr %59, align 8, !tbaa !258
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !61
  %64 = tail call ptr %63(ptr noundef nonnull %60) #25
  br label %65

65:                                               ; preds = %52, %62
  %66 = phi ptr [ %64, %62 ], [ null, %52 ]
  %67 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 6
  store ptr %66, ptr %67, align 8, !tbaa !281
  %68 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 37
  %69 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 7
  %70 = load <2 x ptr>, ptr %68, align 8, !tbaa !61
  store <2 x ptr> %70, ptr %69, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 39
  %72 = load ptr, ptr %71, align 8, !tbaa !583
  %73 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 9
  store ptr %72, ptr %73, align 8, !tbaa !290
  %74 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 21
  %75 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 10
  %76 = load <2 x ptr>, ptr %74, align 8, !tbaa !61
  store <2 x ptr> %76, ptr %75, align 8, !tbaa !61
  %77 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %78 = load i16, ptr %77, align 4, !tbaa !122
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 12
  store i32 %79, ptr %80, align 8, !tbaa !284
  %81 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !51
  %83 = icmp eq i32 %82, 10240
  br i1 %83, label %84, label %92

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.uiBlock, ptr %4, i64 0, i32 19
  %86 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 13
  %87 = load <2 x ptr>, ptr %85, align 8, !tbaa !61
  store <2 x ptr> %87, ptr %86, align 8, !tbaa !61
  %88 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 25
  %89 = load float, ptr %88, align 4, !tbaa !591
  %90 = fptosi float %89 to i32
  %91 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 15
  store i32 %90, ptr %91, align 8, !tbaa !287
  br label %92

92:                                               ; preds = %84, %65
  %93 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 59
  %94 = load ptr, ptr %93, align 8, !tbaa !403
  %95 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 16
  store ptr %94, ptr %95, align 8, !tbaa !58
  %96 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 61
  %97 = load i16, ptr %96, align 8, !tbaa !417
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 17
  store i32 %98, ptr %99, align 8, !tbaa !60
  %100 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 60
  %101 = load ptr, ptr %100, align 8, !tbaa !412
  %102 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 18
  store ptr %101, ptr %102, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 19
  %104 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %103, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !tbaa.struct !117
  %105 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %106 = load ptr, ptr %105, align 8, !tbaa !56
  %107 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 20
  store ptr %106, ptr %107, align 8, !tbaa !276
  %108 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 32
  %109 = load ptr, ptr %108, align 8, !tbaa !592
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %92
  %112 = tail call ptr @CTX_store_copy(ptr noundef nonnull %109) #25
  %113 = getelementptr inbounds %struct.uiAfterFunc, ptr %37, i64 0, i32 21
  store ptr %112, ptr %113, align 8, !tbaa !274
  br label %114

114:                                              ; preds = %111, %92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %93, i8 0, i64 18, i1 false)
  br label %115

115:                                              ; preds = %114, %32
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_store_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ui_step_name_menu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_palette_set_active(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !593 {
  %2 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %3 = load float, ptr %2, align 8, !tbaa !175
  %4 = fptosi float %3 to i32
  %5 = icmp eq i32 %4, 20
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54
  %8 = load ptr, ptr %7, align 8, !tbaa !451
  %9 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 54, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.Palette, ptr %8, i64 0, i32 1
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #25
  %13 = getelementptr inbounds %struct.Palette, ptr %8, i64 0, i32 3
  store i32 %12, ptr %13, align 8, !tbaa !594
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @ui_block_hsv_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_to_hsv_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @hsv_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_palette_color_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_block_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_brush_color_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_block_to_display_space_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @ui_numedit_but_NORMAL(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #23 !PGOFuncName !596 {
  %6 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 17
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #26
  %9 = fmul float %8, %8
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 17, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load <2 x float>, ptr %6, align 4, !tbaa !85
  %15 = insertelement <2 x float> poison, float %8, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %16, %14
  %18 = fptosi <2 x float> %17 to <2 x i32>
  br label %38

19:                                               ; preds = %5
  %20 = fcmp ogt float %11, -1.000000e+00
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = fneg float %8
  %23 = load <2 x float>, ptr %6, align 4, !tbaa !85
  %24 = fmul <2 x float> %23, %23
  %25 = extractelement <2 x float> %24, i64 1
  %26 = extractelement <2 x float> %23, i64 0
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %25)
  %28 = tail call float @llvm.sqrt.f32(float %27)
  %29 = fdiv float %8, %28
  %30 = fmul float %29, 2.000000e+00
  %31 = insertelement <2 x float> poison, float %22, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %23, %32
  %34 = insertelement <2 x float> poison, float %30, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %23, <2 x float> %33)
  %37 = fptosi <2 x float> %36 to <2 x i32>
  br label %38

38:                                               ; preds = %19, %21, %13
  %39 = phi <2 x i32> [ %18, %13 ], [ %37, %21 ], [ zeroinitializer, %19 ]
  %40 = insertelement <2 x i32> poison, i32 %2, i64 0
  %41 = insertelement <2 x i32> %40, i32 %3, i64 1
  %42 = add nsw <2 x i32> %39, %41
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %44 = load <2 x i32>, ptr %43, align 4, !tbaa !43
  %45 = sub <2 x i32> %42, %44
  %46 = sitofp <2 x i32> %45 to <2 x float>
  %47 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16
  %48 = extractelement <2 x float> %46, i64 1
  %49 = fmul float %48, %48
  %50 = extractelement <2 x float> %46, i64 0
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %49)
  %52 = fcmp olt float %51, %9
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  store <2 x float> %46, ptr %47, align 4, !tbaa !85
  %54 = fneg float %50
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %50, float %9)
  %56 = fneg float %48
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %48, float %55)
  %58 = tail call float @sqrtf(float noundef %57) #25
  br label %78

59:                                               ; preds = %38
  %60 = tail call float @llvm.sqrt.f32(float %51)
  %61 = fdiv float %8, %60
  %62 = tail call float @llvm.fmuladd.f32(float %61, float 2.000000e+00, float -1.000000e+00)
  %63 = insertelement <2 x float> poison, float %62, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %64, %46
  %66 = extractelement <2 x float> %65, i64 1
  %67 = fmul float %66, %66
  %68 = extractelement <2 x float> %65, i64 0
  %69 = tail call float @llvm.fmuladd.f32(float %68, float %68, float %67)
  %70 = fcmp olt float %69, %9
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  store <2 x float> %65, ptr %47, align 4, !tbaa !85
  %72 = fneg float %68
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %68, float %9)
  %74 = fneg float %66
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %66, float %73)
  %76 = tail call float @sqrtf(float noundef %75) #25
  %77 = fneg float %76
  br label %78

78:                                               ; preds = %53, %71
  %79 = phi float [ %77, %71 ], [ %58, %53 ]
  %80 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16, i64 2
  store float %79, ptr %80, align 4, !tbaa !85
  br label %81

81:                                               ; preds = %78, %59
  %82 = tail call fastcc float @normalize_v3(ptr noundef nonnull %47) #26
  %83 = icmp eq i32 %4, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = icmp eq i32 %4, 1
  %86 = select i1 %85, i32 4, i32 12
  %87 = sitofp i32 %86 to double
  %88 = fdiv double 0x400921FB54442D18, %87
  %89 = fptrunc double %88 to float
  br label %90

90:                                               ; preds = %84, %90
  %91 = phi i64 [ 0, %84 ], [ %100, %90 ]
  %92 = getelementptr inbounds float, ptr %47, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !85
  %94 = tail call float @asinf(float noundef %93) #25
  %95 = fdiv float %94, %89
  %96 = fadd float %95, 5.000000e-01
  %97 = tail call float @llvm.floor.f32(float %96)
  %98 = fmul float %97, %89
  %99 = tail call float @sinf(float noundef %98) #25
  store float %99, ptr %92, align 4, !tbaa !85
  %100 = add nuw nsw i64 %91, 1
  %101 = icmp eq i64 %100, 3
  br i1 %101, label %102, label %90, !llvm.loop !597

102:                                              ; preds = %90
  %103 = tail call fastcc float @normalize_v3(ptr noundef nonnull %47) #26
  %104 = tail call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %47, ptr noundef nonnull %6) #26
  %105 = xor i8 %104, 1
  br label %106

106:                                              ; preds = %102, %81
  %107 = phi i8 [ %105, %102 ], [ 1, %81 ]
  %108 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store i32 %2, ptr %108, align 4, !tbaa !252
  %109 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 27
  store i32 %3, ptr %109, align 8, !tbaa !434
  ret i8 %107
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !598 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3E80000000000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3E80000000000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !85
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !85
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3E80000000000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: optsize
declare ptr @colorband_element_add(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_numedit_but_COLORBAND(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !599 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  %5 = load i32, ptr %4, align 4, !tbaa !252
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !239
  %10 = load i16, ptr %9, align 4, !tbaa !402
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  %13 = sub nsw i32 %2, %5
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %16 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %15) #26
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 37
  %19 = load ptr, ptr %18, align 8, !tbaa !253
  %20 = getelementptr inbounds %struct.CBData, ptr %19, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !460
  %22 = fadd float %17, %21
  store float %22, ptr %20, align 4, !tbaa !460
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = fcmp ogt float %22, 1.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %12
  %27 = phi float [ 0.000000e+00, %12 ], [ 1.000000e+00, %24 ]
  store float %27, ptr %20, align 4, !tbaa !460
  br label %28

28:                                               ; preds = %26, %24
  tail call void @colorband_update_sort(ptr noundef nonnull %9) #25
  %29 = load ptr, ptr %8, align 8, !tbaa !239
  %30 = getelementptr inbounds %struct.ColorBand, ptr %29, i64 0, i32 6
  %31 = getelementptr inbounds %struct.ColorBand, ptr %29, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !457
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds %struct.CBData, ptr %30, i64 %33
  store ptr %34, ptr %18, align 8, !tbaa !253
  store i32 %2, ptr %4, align 4, !tbaa !252
  br label %35

35:                                               ; preds = %7, %3, %28
  %36 = phi i8 [ 1, %28 ], [ 0, %3 ], [ 0, %7 ]
  ret i8 %36
}

; Function Attrs: optsize
declare void @colorband_update_sort(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @curvemap_insert(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ui_numedit_but_CURVE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #3 !PGOFuncName !600 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x float], align 8
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 6
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !464
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.CurveMap, ptr %15, i64 %18
  %20 = getelementptr inbounds %struct.CurveMap, ptr %15, i64 %18, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !468
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  store i32 %3, ptr %8, align 4, !tbaa !43
  store i32 %4, ptr %9, align 4, !tbaa !43
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %23, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %24 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 26
  %25 = load i32, ptr %24, align 4, !tbaa !252
  store i32 %25, ptr %10, align 4, !tbaa !43
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !434
  store i32 %27, ptr %11, align 4, !tbaa !43
  %28 = load ptr, ptr %22, align 8, !tbaa !104
  call void @ui_window_to_block(ptr noundef %28, ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  %29 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18
  %30 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %29) #26
  %31 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4
  %32 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %31) #26
  %33 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %29) #26
  %34 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %31) #26
  %35 = insertelement <2 x float> poison, float %30, i64 0
  %36 = insertelement <2 x float> %35, float %33, i64 1
  %37 = insertelement <2 x float> poison, float %32, i64 0
  %38 = insertelement <2 x float> %37, float %34, i64 1
  %39 = fdiv <2 x float> %36, %38
  %40 = icmp eq i8 %5, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  %42 = load i32, ptr %8, align 4, !tbaa !43
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 28
  %44 = load i32, ptr %9, align 4, !tbaa !43
  %45 = load <2 x i32>, ptr %43, align 4, !tbaa !43
  %46 = insertelement <2 x i32> poison, i32 %42, i64 0
  %47 = insertelement <2 x i32> %46, i32 %44, i64 1
  %48 = sub nsw <2 x i32> %47, %45
  %49 = sitofp <2 x i32> %48 to <2 x float>
  store <2 x float> %49, ptr %12, align 8, !tbaa !85
  %50 = call fastcc float @len_squared_v2(ptr noundef nonnull %12) #26
  %51 = fcmp olt float %50, 9.000000e+00
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  br label %52

52:                                               ; preds = %41, %7
  %53 = phi i1 [ %51, %41 ], [ true, %7 ]
  %54 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 34
  %55 = load i32, ptr %54, align 8, !tbaa !254
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %135, label %57

57:                                               ; preds = %52
  %58 = call fastcc float @ui_mouse_scale_warp_factor(i8 noundef zeroext %6) #26
  %59 = load i32, ptr %8, align 4, !tbaa !43
  %60 = load i32, ptr %10, align 4, !tbaa !43
  %61 = load i32, ptr %9, align 4, !tbaa !43
  %62 = load i32, ptr %11, align 4, !tbaa !43
  %63 = insertelement <2 x i32> poison, i32 %59, i64 0
  %64 = insertelement <2 x i32> %63, i32 %61, i64 1
  %65 = insertelement <2 x i32> poison, i32 %60, i64 0
  %66 = insertelement <2 x i32> %65, i32 %62, i64 1
  %67 = sub nsw <2 x i32> %64, %66
  %68 = sitofp <2 x i32> %67 to <2 x float>
  %69 = fdiv <2 x float> %68, %39
  %70 = insertelement <2 x float> poison, float %58, i64 0
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer
  %72 = fmul <2 x float> %71, %69
  %73 = load i16, ptr %19, align 8, !tbaa !470
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  call void @curvemapping_changed(ptr noundef nonnull %14, i8 noundef zeroext 0) #25
  br label %132

76:                                               ; preds = %57
  %77 = zext nneg i16 %73 to i64
  br label %78

78:                                               ; preds = %76, %103
  %79 = phi i64 [ 0, %76 ], [ %106, %103 ]
  %80 = phi i8 [ 0, %76 ], [ %105, %103 ]
  %81 = phi ptr [ null, %76 ], [ %104, %103 ]
  %82 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 %79
  %83 = getelementptr inbounds %struct.CurveMapPoint, ptr %21, i64 %79, i32 2
  %84 = load i16, ptr %83, align 4, !tbaa !478
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %78
  %88 = load <2 x float>, ptr %82, align 4, !tbaa !85
  %89 = fadd <2 x float> %72, %88
  br i1 %53, label %94, label %90

90:                                               ; preds = %87
  %91 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %89, <2 x float> <float 8.000000e+00, float 8.000000e+00>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %92 = call <2 x float> @llvm.floor.v2f32(<2 x float> %91)
  %93 = fmul <2 x float> %92, <float 1.250000e-01, float 1.250000e-01>
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi <2 x float> [ %93, %90 ], [ %89, %87 ]
  store <2 x float> %95, ptr %82, align 4, !tbaa !85
  %96 = extractelement <2 x float> %95, i64 0
  %97 = extractelement <2 x float> %88, i64 0
  %98 = fcmp une float %96, %97
  %99 = fcmp une <2 x float> %95, %88
  %100 = extractelement <2 x i1> %99, i64 1
  %101 = select i1 %98, i1 true, i1 %100
  %102 = select i1 %101, i8 1, i8 %80
  br label %103

103:                                              ; preds = %94, %78
  %104 = phi ptr [ %81, %78 ], [ %82, %94 ]
  %105 = phi i8 [ %80, %78 ], [ %102, %94 ]
  %106 = add nuw nsw i64 %79, 1
  %107 = icmp eq i64 %106, %77
  br i1 %107, label %108, label %78, !llvm.loop !601

108:                                              ; preds = %103
  %109 = icmp eq i8 %105, 0
  call void @curvemapping_changed(ptr noundef nonnull %14, i8 noundef zeroext 0) #25
  br i1 %109, label %132, label %110

110:                                              ; preds = %108
  store i32 %3, ptr %24, align 4, !tbaa !252
  store i32 %4, ptr %26, align 8, !tbaa !434
  %111 = call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %1) #26, !range !168
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %110
  %114 = load float, ptr %29, align 8, !tbaa !432
  %115 = load float, ptr %104, align 4, !tbaa !471
  %116 = load float, ptr %31, align 8, !tbaa !466
  %117 = fsub float %115, %116
  %118 = extractelement <2 x float> %39, i64 0
  %119 = call float @llvm.fmuladd.f32(float %117, float %118, float %114)
  %120 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 38
  store float %119, ptr %120, align 8, !tbaa !85
  %121 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 18, i32 2
  %122 = load float, ptr %121, align 8, !tbaa !361
  %123 = getelementptr inbounds %struct.CurveMapPoint, ptr %104, i64 0, i32 1
  %124 = load float, ptr %123, align 4, !tbaa !473
  %125 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 2
  %126 = load float, ptr %125, align 8, !tbaa !467
  %127 = fsub float %124, %126
  %128 = extractelement <2 x float> %39, i64 1
  %129 = call float @llvm.fmuladd.f32(float %127, float %128, float %122)
  %130 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 38, i64 1
  store float %129, ptr %130, align 4, !tbaa !85
  %131 = call zeroext i8 @BLI_rctf_clamp_pt_v(ptr noundef nonnull %29, ptr noundef nonnull %120) #25
  br label %132

132:                                              ; preds = %75, %110, %113, %108
  %133 = phi i8 [ 1, %113 ], [ 1, %110 ], [ 0, %108 ], [ 0, %75 ]
  %134 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 32
  store i8 1, ptr %134, align 4, !tbaa !248
  br label %208

135:                                              ; preds = %52
  %136 = load i32, ptr %8, align 4, !tbaa !43
  %137 = load i32, ptr %10, align 4, !tbaa !43
  %138 = load i32, ptr %9, align 4, !tbaa !43
  %139 = load i32, ptr %11, align 4, !tbaa !43
  %140 = insertelement <2 x i32> poison, i32 %136, i64 0
  %141 = insertelement <2 x i32> %140, i32 %138, i64 1
  %142 = insertelement <2 x i32> poison, i32 %137, i64 0
  %143 = insertelement <2 x i32> %142, i32 %139, i64 1
  %144 = sub nsw <2 x i32> %141, %143
  %145 = sitofp <2 x i32> %144 to <2 x float>
  %146 = fdiv <2 x float> %145, %39
  %147 = load i32, ptr %14, align 8, !tbaa !602
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  %150 = load float, ptr %31, align 8, !tbaa !466
  br i1 %149, label %151, label %154

151:                                              ; preds = %135
  %152 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 2
  %153 = load float, ptr %152, align 8, !tbaa !467
  br label %195

154:                                              ; preds = %135
  %155 = extractelement <2 x float> %146, i64 0
  %156 = fsub float %150, %155
  %157 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 5
  %158 = load float, ptr %157, align 8, !tbaa !603
  %159 = fcmp olt float %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = fsub float %150, %158
  br label %171

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 1
  %164 = load float, ptr %163, align 4, !tbaa !604
  %165 = fsub float %164, %155
  %166 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 5, i32 1
  %167 = load float, ptr %166, align 4, !tbaa !605
  %168 = fcmp ogt float %165, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = fsub float %164, %167
  br label %171

171:                                              ; preds = %162, %169, %160
  %172 = phi float [ %161, %160 ], [ %170, %169 ], [ %155, %162 ]
  %173 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 2
  %174 = load float, ptr %173, align 8, !tbaa !467
  %175 = extractelement <2 x float> %146, i64 1
  %176 = fsub float %174, %175
  %177 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 5, i32 2
  %178 = load float, ptr %177, align 8, !tbaa !606
  %179 = fcmp olt float %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = fsub float %174, %178
  %182 = insertelement <2 x float> poison, float %172, i64 0
  %183 = insertelement <2 x float> %182, float %181, i64 1
  br label %195

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 3
  %186 = load float, ptr %185, align 4, !tbaa !607
  %187 = fsub float %186, %175
  %188 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 5, i32 3
  %189 = load float, ptr %188, align 4, !tbaa !608
  %190 = fcmp ogt float %187, %189
  %191 = insertelement <2 x float> %146, float %172, i64 0
  br i1 %190, label %192, label %195

192:                                              ; preds = %184
  %193 = fsub float %186, %189
  %194 = insertelement <2 x float> %191, float %193, i64 1
  br label %195

195:                                              ; preds = %151, %180, %192, %184
  %196 = phi float [ %174, %180 ], [ %174, %192 ], [ %174, %184 ], [ %153, %151 ]
  %197 = phi <2 x float> [ %183, %180 ], [ %194, %192 ], [ %191, %184 ], [ %146, %151 ]
  %198 = shufflevector <2 x float> %197, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %199 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 1
  %200 = load float, ptr %199, align 4, !tbaa !604
  %201 = getelementptr inbounds %struct.CurveMapping, ptr %14, i64 0, i32 4, i32 3
  %202 = load float, ptr %201, align 4, !tbaa !607
  %203 = insertelement <4 x float> poison, float %150, i64 0
  %204 = insertelement <4 x float> %203, float %200, i64 1
  %205 = insertelement <4 x float> %204, float %196, i64 2
  %206 = insertelement <4 x float> %205, float %202, i64 3
  %207 = fsub <4 x float> %206, %198
  store <4 x float> %207, ptr %31, align 8, !tbaa !85
  store i32 %3, ptr %24, align 4, !tbaa !252
  store i32 %4, ptr %26, align 8, !tbaa !434
  br label %208

208:                                              ; preds = %195, %132
  %209 = phi i8 [ %133, %132 ], [ 1, %195 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  ret i8 %209
}

; Function Attrs: optsize
declare void @BKE_paint_invalidate_cursor_overlay(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_numedit_but_HSVCUBE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #3 !PGOFuncName !609 {
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.rcti, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  %14 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = tail call ptr @ui_block_hsv_get(ptr noundef %15) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %17 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #25
  %18 = sitofp i32 %2 to float
  %19 = sitofp i32 %3 to float
  call fastcc void @ui_mouse_scale_warp(ptr noundef %1, float noundef %18, float noundef %19, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext %5) #26
  %20 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %0) #26, !range !168
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load float, ptr %8, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38
  store float %23, ptr %24, align 8, !tbaa !85
  %25 = load float, ptr %9, align 4, !tbaa !85
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38, i64 1
  store float %25, ptr %26, align 4, !tbaa !85
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %28 = tail call zeroext i8 @BLI_rctf_clamp_pt_v(ptr noundef nonnull %27, ptr noundef nonnull %24) #25
  br label %29

29:                                               ; preds = %22, %6
  call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %7) #25
  %30 = icmp eq i8 %17, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %14, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %32, ptr noundef nonnull %7) #25
  br label %33

33:                                               ; preds = %31, %29
  call fastcc void @ui_rgb_to_color_picker_HSVCUBE_compat_v(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %16) #26
  %34 = icmp eq i8 %5, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load float, ptr %8, align 4, !tbaa !85
  %37 = load float, ptr %9, align 4, !tbaa !85
  %38 = insertelement <2 x float> poison, float %36, i64 0
  %39 = insertelement <2 x float> %38, float %37, i64 1
  br label %61

40:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #27
  %41 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %10, ptr noundef nonnull %41) #25
  %42 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %42) #26
  br i1 %30, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %14, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %44, ptr noundef nonnull %7) #25
  br label %45

45:                                               ; preds = %43, %40
  %46 = load ptr, ptr %14, align 8, !tbaa !94
  %47 = call ptr @ui_block_hsv_get(ptr noundef %46) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %47) #26
  call fastcc void @ui_rgb_to_color_picker_HSVCUBE_compat_v(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %13) #26
  call void @ui_hsvcube_pos_from_vals(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  %48 = load float, ptr %11, align 4, !tbaa !85
  %49 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %50 = load float, ptr %8, align 4, !tbaa !85
  %51 = load float, ptr %12, align 4, !tbaa !85
  %52 = load float, ptr %9, align 4, !tbaa !85
  %53 = load <2 x i32>, ptr %49, align 4, !tbaa !43
  %54 = sitofp <2 x i32> %53 to <2 x float>
  %55 = insertelement <2 x float> poison, float %50, i64 0
  %56 = insertelement <2 x float> %55, float %52, i64 1
  %57 = fsub <2 x float> %54, %56
  %58 = insertelement <2 x float> poison, float %48, i64 0
  %59 = insertelement <2 x float> %58, float %51, i64 1
  %60 = fsub <2 x float> %59, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  br label %61

61:                                               ; preds = %35, %45
  %62 = phi <2 x float> [ %39, %35 ], [ %60, %45 ]
  %63 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %64 = load float, ptr %63, align 8, !tbaa !432
  %65 = extractelement <2 x float> %62, i64 0
  %66 = fsub float %65, %64
  %67 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %63) #26
  %68 = fdiv float %66, %67
  %69 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !361
  %71 = extractelement <2 x float> %62, i64 1
  %72 = fsub float %71, %70
  %73 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %63) #26
  %74 = fdiv float %72, %73
  %75 = fcmp olt float %68, 0.000000e+00
  br i1 %75, label %79, label %76

76:                                               ; preds = %61
  %77 = fcmp ogt float %68, 1.000000e+00
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %61, %76, %78
  %80 = phi float [ 1.000000e+00, %78 ], [ %68, %76 ], [ 0.000000e+00, %61 ]
  %81 = fcmp olt float %74, 0.000000e+00
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = fcmp ogt float %74, 1.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %79, %82, %84
  %86 = phi float [ 1.000000e+00, %84 ], [ %74, %82 ], [ 0.000000e+00, %79 ]
  %87 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %88 = load float, ptr %87, align 8, !tbaa !175
  %89 = fptosi float %88 to i32
  switch i32 %89, label %112 [
    i32 0, label %90
    i32 1, label %93
    i32 2, label %95
    i32 3, label %97
    i32 4, label %98
    i32 5, label %100
    i32 10, label %102
    i32 9, label %104
  ]

90:                                               ; preds = %85
  %91 = getelementptr inbounds float, ptr %16, i64 2
  store float %80, ptr %91, align 4, !tbaa !85
  %92 = getelementptr inbounds float, ptr %16, i64 1
  store float %86, ptr %92, align 4, !tbaa !85
  br label %112

93:                                               ; preds = %85
  store float %80, ptr %16, align 4, !tbaa !85
  %94 = getelementptr inbounds float, ptr %16, i64 2
  store float %86, ptr %94, align 4, !tbaa !85
  br label %112

95:                                               ; preds = %85
  store float %80, ptr %16, align 4, !tbaa !85
  %96 = getelementptr inbounds float, ptr %16, i64 1
  store float %86, ptr %96, align 4, !tbaa !85
  br label %112

97:                                               ; preds = %85
  store float %80, ptr %16, align 4, !tbaa !85
  br label %112

98:                                               ; preds = %85
  %99 = getelementptr inbounds float, ptr %16, i64 1
  store float %80, ptr %99, align 4, !tbaa !85
  br label %112

100:                                              ; preds = %85
  %101 = getelementptr inbounds float, ptr %16, i64 2
  store float %80, ptr %101, align 4, !tbaa !85
  br label %112

102:                                              ; preds = %85
  %103 = getelementptr inbounds float, ptr %16, i64 2
  store float %86, ptr %103, align 4, !tbaa !85
  br label %112

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %106 = load float, ptr %105, align 4, !tbaa !245
  %107 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %108 = load float, ptr %107, align 8, !tbaa !244
  %109 = fsub float %106, %108
  %110 = call float @llvm.fmuladd.f32(float %86, float %109, float %108)
  %111 = getelementptr inbounds float, ptr %16, i64 2
  store float %110, ptr %111, align 4, !tbaa !85
  br label %112

112:                                              ; preds = %85, %104, %102, %100, %98, %97, %95, %93, %90
  %113 = icmp eq i32 %4, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %112
  %115 = load float, ptr %87, align 8, !tbaa !175
  %116 = fptosi float %115 to i32
  %117 = add i32 %116, -1
  %118 = icmp ult i32 %117, 3
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call fastcc void @ui_color_snap_hue(i32 noundef %4, ptr noundef %16) #26
  br label %120

120:                                              ; preds = %114, %119, %112
  call fastcc void @ui_color_picker_to_rgb_HSVCUBE_v(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %7) #26
  br i1 %30, label %123, label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %14, align 8, !tbaa !94
  call void @ui_block_to_scene_linear_v3(ptr noundef %122, ptr noundef nonnull %7) #25
  br label %123

123:                                              ; preds = %121, %120
  %124 = load float, ptr %87, align 8, !tbaa !175
  %125 = fcmp oeq float %124, 9.000000e+00
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %128 = load float, ptr %127, align 4, !tbaa !245
  call fastcc void @clamp_axis_max_v3(ptr noundef nonnull %7, float noundef %128) #26
  br label %129

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %130, ptr noundef nonnull %7) #26
  %131 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store i32 %2, ptr %131, align 4, !tbaa !252
  %132 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 27
  store i32 %3, ptr %132, align 8, !tbaa !434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_ndofedit_but_HSVCUBE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !PGOFuncName !610 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = tail call ptr @ui_block_hsv_get(ptr noundef %8) #25
  %10 = getelementptr inbounds float, ptr %9, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 23
  %13 = load float, ptr %12, align 4, !tbaa !245
  %14 = tail call fastcc float @max_ff(float noundef %11, float noundef %13) #26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  %15 = icmp eq i8 %4, 0
  %16 = select i1 %15, float 0x3FD3333340000000, float 0x3FC3333340000000
  %17 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !611
  %19 = fmul float %16, %18
  %20 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #25
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %6) #25
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load ptr, ptr %7, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %23, ptr noundef nonnull %6) #25
  br label %24

24:                                               ; preds = %22, %5
  call fastcc void @ui_rgb_to_color_picker_HSVCUBE_compat_v(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %9) #26
  %25 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %26 = load float, ptr %25, align 8, !tbaa !175
  %27 = fptosi float %26 to i32
  switch i32 %27, label %86 [
    i32 0, label %28
    i32 1, label %38
    i32 2, label %47
    i32 3, label %57
    i32 4, label %62
    i32 5, label %68
    i32 9, label %73
    i32 10, label %73
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1
  %30 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !85
  %32 = load float, ptr %10, align 4, !tbaa !85
  %33 = call float @llvm.fmuladd.f32(float %31, float %19, float %32)
  store float %33, ptr %10, align 4, !tbaa !85
  %34 = load float, ptr %29, align 4, !tbaa !85
  %35 = getelementptr inbounds float, ptr %9, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !85
  %37 = call float @llvm.fmuladd.f32(float %34, float %19, float %36)
  store float %37, ptr %35, align 4, !tbaa !85
  br label %86

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1
  %40 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !85
  %42 = load float, ptr %9, align 4, !tbaa !85
  %43 = call float @llvm.fmuladd.f32(float %41, float %19, float %42)
  store float %43, ptr %9, align 4, !tbaa !85
  %44 = load float, ptr %39, align 4, !tbaa !85
  %45 = load float, ptr %10, align 4, !tbaa !85
  %46 = call float @llvm.fmuladd.f32(float %44, float %19, float %45)
  store float %46, ptr %10, align 4, !tbaa !85
  br label %86

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1
  %49 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = load float, ptr %9, align 4, !tbaa !85
  %52 = call float @llvm.fmuladd.f32(float %50, float %19, float %51)
  store float %52, ptr %9, align 4, !tbaa !85
  %53 = load float, ptr %48, align 4, !tbaa !85
  %54 = getelementptr inbounds float, ptr %9, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !85
  %56 = call float @llvm.fmuladd.f32(float %53, float %19, float %55)
  store float %56, ptr %54, align 4, !tbaa !85
  br label %86

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !85
  %60 = load float, ptr %9, align 4, !tbaa !85
  %61 = call float @llvm.fmuladd.f32(float %59, float %19, float %60)
  store float %61, ptr %9, align 4, !tbaa !85
  br label %86

62:                                               ; preds = %24
  %63 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !85
  %65 = getelementptr inbounds float, ptr %9, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !85
  %67 = call float @llvm.fmuladd.f32(float %64, float %19, float %66)
  store float %67, ptr %65, align 4, !tbaa !85
  br label %86

68:                                               ; preds = %24
  %69 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !85
  %71 = load float, ptr %10, align 4, !tbaa !85
  %72 = call float @llvm.fmuladd.f32(float %70, float %19, float %71)
  store float %72, ptr %10, align 4, !tbaa !85
  br label %86

73:                                               ; preds = %24, %24
  %74 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !85
  %76 = load float, ptr %10, align 4, !tbaa !85
  %77 = call float @llvm.fmuladd.f32(float %75, float %19, float %76)
  store float %77, ptr %10, align 4, !tbaa !85
  %78 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 22
  %79 = load float, ptr %78, align 8, !tbaa !244
  %80 = fcmp olt float %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store float %79, ptr %10, align 4, !tbaa !85
  br label %86

82:                                               ; preds = %73
  %83 = load float, ptr %12, align 4, !tbaa !245
  %84 = fcmp ogt float %77, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store float %83, ptr %10, align 4, !tbaa !85
  br label %86

86:                                               ; preds = %24, %81, %85, %82, %68, %62, %57, %47, %38, %28
  %87 = icmp eq i32 %3, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = load float, ptr %25, align 8, !tbaa !175
  %90 = fptosi float %89 to i32
  %91 = add i32 %90, -1
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  call fastcc void @ui_color_snap_hue(i32 noundef %3, ptr noundef nonnull %9) #26
  br label %94

94:                                               ; preds = %88, %93, %86
  call void @hsv_clamp_v(ptr noundef nonnull %9, float noundef %14) #25
  call fastcc void @ui_color_picker_to_rgb_HSVCUBE_v(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %6) #26
  br i1 %21, label %97, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %7, align 8, !tbaa !94
  call void @ui_block_to_scene_linear_v3(ptr noundef %96, ptr noundef nonnull %6) #25
  br label %97

97:                                               ; preds = %95, %94
  %98 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %98, ptr noundef nonnull %6) #26
  call void @ui_set_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %98) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_get_default_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_rgb_to_color_picker_HSVCUBE_v(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !613 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !175
  %6 = fcmp oeq float %5, 1.000000e+01
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @rgb_to_hsl_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

8:                                                ; preds = %3
  tail call void @rgb_to_hsv_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_rgb_to_color_picker_HSVCUBE_compat_v(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !614 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !175
  %6 = fcmp oeq float %5, 1.000000e+01
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @rgb_to_hsl_compat_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

8:                                                ; preds = %3
  tail call void @rgb_to_hsv_compat_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_color_picker_to_rgb_HSVCUBE_v(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !615 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 24
  %5 = load float, ptr %4, align 8, !tbaa !175
  %6 = fcmp oeq float %5, 1.000000e+01
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @hsl_to_rgb_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

8:                                                ; preds = %3
  tail call void @hsv_to_rgb_v(ptr noundef %1, ptr noundef %2) #25
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_hsvcube_pos_from_vals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ui_color_snap_hue(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !PGOFuncName !616 {
  %3 = icmp eq i32 %0, 2
  %4 = select i1 %3, i32 24, i32 12
  %5 = sitofp i32 %4 to float
  %6 = load float, ptr %1, align 4, !tbaa !85
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %5, float 5.000000e-01)
  %8 = tail call float @llvm.floor.f32(float %7)
  %9 = fdiv float %8, %5
  store float %9, ptr %1, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clamp_axis_max_v3(ptr nocapture noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !617 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = tail call fastcc float @max_fff(float noundef %3, float noundef %5, float noundef %7) #26
  %9 = fcmp ogt float %8, %1
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = fdiv float %1, %8
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %0, float noundef %11) #26
  %12 = load float, ptr %0, align 4, !tbaa !85
  %13 = fcmp ogt float %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store float %1, ptr %0, align 4, !tbaa !85
  br label %15

15:                                               ; preds = %14, %10
  %16 = load float, ptr %4, align 4, !tbaa !85
  %17 = fcmp ogt float %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store float %1, ptr %4, align 4, !tbaa !85
  br label %19

19:                                               ; preds = %18, %15
  %20 = load float, ptr %6, align 4, !tbaa !85
  %21 = fcmp ogt float %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store float %1, ptr %6, align 4, !tbaa !85
  br label %23

23:                                               ; preds = %19, %22, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #17 !PGOFuncName !618 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #26
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #26
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !619 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @hsv_clamp_v(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_to_hsl_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_to_hsv_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @rgb_to_hsl_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @hsl_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_numedit_but_HSVCIRCLE(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #3 !PGOFuncName !620 {
  %7 = alloca %struct.rcti, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #27
  %16 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = tail call ptr @ui_block_hsv_get(ptr noundef %17) #25
  %19 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #25
  call fastcc void @ui_mouse_scale_warp(ptr noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext %5) #26
  %20 = tail call fastcc zeroext i8 @ui_is_a_warp_but(ptr noundef %0) #26, !range !168
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %6
  %23 = load float, ptr %8, align 4, !tbaa !85
  %24 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38
  store float %23, ptr %24, align 8, !tbaa !85
  %25 = load float, ptr %9, align 4, !tbaa !85
  %26 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 38, i64 1
  store float %25, ptr %26, align 4, !tbaa !85
  %27 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  %28 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %27) #26
  %29 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %27) #26
  %30 = tail call fastcc float @min_ff(float noundef %28, float noundef %29) #26
  %31 = fmul float %30, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  %32 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %27) #26
  store float %32, ptr %11, align 4, !tbaa !85
  %33 = getelementptr inbounds float, ptr %11, i64 1
  %34 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %27) #26
  store float %34, ptr %33, align 4, !tbaa !85
  %35 = call fastcc float @len_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %24) #26
  %36 = fcmp ogt float %35, %31
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  call void @dist_ensure_v2_v2fl(ptr noundef nonnull %24, ptr noundef nonnull %11, float noundef %31) #25
  br label %38

38:                                               ; preds = %37, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  br label %39

39:                                               ; preds = %38, %6
  %40 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 18
  call void @BLI_rcti_rctf_copy(ptr noundef nonnull %7, ptr noundef nonnull %40) #25
  call void @ui_get_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %10) #25
  %41 = icmp eq i8 %19, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %16, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %43, ptr noundef nonnull %10) #25
  br label %44

44:                                               ; preds = %42, %39
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %10, ptr noundef %18) #25
  %45 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !57
  %47 = and i32 %46, 4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !621
  %51 = icmp eq i16 %50, 0
  %52 = getelementptr inbounds float, ptr %18, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !85
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %51, label %55, label %56

55:                                               ; preds = %49
  br i1 %54, label %59, label %61

56:                                               ; preds = %49
  br i1 %54, label %59, label %57

57:                                               ; preds = %56
  %58 = fcmp oeq float %53, 1.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57, %56, %55
  %60 = phi float [ 0x3F1A36E2E0000000, %55 ], [ 0x3F1A36E2E0000000, %56 ], [ 0x3FEFFF2E40000000, %57 ]
  store float %60, ptr %52, align 4, !tbaa !85
  br label %61

61:                                               ; preds = %59, %55, %57, %44
  %62 = icmp eq i8 %5, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = load float, ptr %8, align 4, !tbaa !85
  %65 = load float, ptr %9, align 4, !tbaa !85
  %66 = insertelement <2 x float> poison, float %64, i64 0
  %67 = insertelement <2 x float> %66, float %65, i64 1
  br label %88

68:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #27
  %69 = load ptr, ptr %16, align 8, !tbaa !94
  %70 = call ptr @ui_block_hsv_get(ptr noundef %69) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %70) #26
  %71 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %71) #26
  br i1 %41, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %16, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %73, ptr noundef nonnull %15) #25
  br label %74

74:                                               ; preds = %72, %68
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %15, ptr noundef nonnull %14) #25
  call void @ui_hsvcircle_pos_from_vals(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  %75 = load float, ptr %12, align 4, !tbaa !85
  %76 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 28
  %77 = load float, ptr %8, align 4, !tbaa !85
  %78 = load float, ptr %13, align 4, !tbaa !85
  %79 = load float, ptr %9, align 4, !tbaa !85
  %80 = load <2 x i32>, ptr %76, align 4, !tbaa !43
  %81 = sitofp <2 x i32> %80 to <2 x float>
  %82 = insertelement <2 x float> poison, float %77, i64 0
  %83 = insertelement <2 x float> %82, float %79, i64 1
  %84 = fsub <2 x float> %81, %83
  %85 = insertelement <2 x float> poison, float %75, i64 0
  %86 = insertelement <2 x float> %85, float %78, i64 1
  %87 = fsub <2 x float> %86, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  br label %88

88:                                               ; preds = %63, %74
  %89 = phi <2 x float> [ %67, %63 ], [ %87, %74 ]
  %90 = getelementptr inbounds float, ptr %18, i64 1
  %91 = extractelement <2 x float> %89, i64 0
  %92 = extractelement <2 x float> %89, i64 1
  call void @ui_hsvcircle_vals_from_pos(ptr noundef %18, ptr noundef nonnull %90, ptr noundef nonnull %7, float noundef %91, float noundef %92) #25
  %93 = load i32, ptr %45, align 8, !tbaa !57
  %94 = and i32 %93, 8388608
  %95 = icmp ne i32 %94, 0
  %96 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2
  %97 = icmp eq i16 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load float, ptr %90, align 4, !tbaa !85
  %101 = fsub float 1.000000e+00, %100
  %102 = call fastcc float @sqrt3f(float noundef %101) #26
  %103 = fsub float 1.000000e+00, %102
  store float %103, ptr %90, align 4, !tbaa !85
  br label %104

104:                                              ; preds = %99, %88
  %105 = icmp eq i32 %4, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %104
  call fastcc void @ui_color_snap_hue(i32 noundef %4, ptr noundef %18) #26
  br label %107

107:                                              ; preds = %106, %104
  call void @ui_color_picker_to_rgb_v(ptr noundef %18, ptr noundef nonnull %10) #25
  %108 = load i32, ptr %45, align 8, !tbaa !57
  %109 = and i32 %108, 4194304
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %107
  %112 = load float, ptr %10, align 4, !tbaa !85
  %113 = fcmp une float %112, 0.000000e+00
  %114 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %115 = load float, ptr %114, align 4
  %116 = fcmp une float %115, 0.000000e+00
  %117 = select i1 %113, i1 true, i1 %116
  %118 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %119 = load float, ptr %118, align 4
  %120 = fcmp une float %119, 0.000000e+00
  %121 = select i1 %117, i1 true, i1 %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #26
  %124 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %125 = load float, ptr %124, align 4, !tbaa !591
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %125) #26
  br label %126

126:                                              ; preds = %111, %122, %107
  br i1 %41, label %129, label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %16, align 8, !tbaa !94
  call void @ui_block_to_scene_linear_v3(ptr noundef %128, ptr noundef nonnull %10) #25
  br label %129

129:                                              ; preds = %127, %126
  call void @ui_set_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %10) #25
  %130 = insertelement <2 x float> poison, float %2, i64 0
  %131 = insertelement <2 x float> %130, float %3, i64 1
  %132 = fptosi <2 x float> %131 to <2 x i32>
  %133 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 26
  store <2 x i32> %132, ptr %133, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_ndofedit_but_HSVCIRCLE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !PGOFuncName !622 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 8
  %8 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 74
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = tail call ptr @ui_block_hsv_get(ptr noundef %9) #25
  %11 = tail call zeroext i8 @ui_color_picker_use_display_colorspace(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %12 = icmp eq i8 %4, 0
  %13 = select i1 %12, float 0x3FD3333340000000, float 0x3FAEB851E0000000
  %14 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !611
  %16 = fmul float %13, %15
  call void @ui_get_but_vectorf(ptr noundef %0, ptr noundef nonnull %6) #25
  %17 = icmp eq i8 %11, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %8, align 8, !tbaa !94
  call void @ui_block_to_display_space_v3(ptr noundef %19, ptr noundef nonnull %6) #25
  br label %20

20:                                               ; preds = %18, %5
  call void @ui_rgb_to_color_picker_compat_v(ptr noundef nonnull %6, ptr noundef %10) #25
  %21 = load float, ptr %10, align 4, !tbaa !85
  %22 = fadd float %21, 2.500000e-01
  %23 = call float @fmodf(float noundef %22, float noundef 1.000000e+00) #25
  %24 = fmul float %23, -2.000000e+00
  %25 = fmul float %24, 0x400921FB60000000
  %26 = getelementptr inbounds float, ptr %10, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !85
  %28 = call float @cosf(float noundef %25) #25
  %29 = call float @sinf(float noundef %25) #25
  %30 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1
  %31 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !85
  %33 = load float, ptr %30, align 4, !tbaa !85
  %34 = insertelement <2 x float> poison, float %27, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = insertelement <2 x float> poison, float %28, i64 0
  %37 = insertelement <2 x float> %36, float %29, i64 1
  %38 = fmul <2 x float> %35, %37
  %39 = insertelement <2 x float> poison, float %32, i64 0
  %40 = insertelement <2 x float> %39, float %33, i64 1
  %41 = insertelement <2 x float> poison, float %16, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %42, <2 x float> %38)
  store <2 x float> %43, ptr %7, align 8, !tbaa !85
  %44 = extractelement <2 x float> %43, i64 0
  %45 = extractelement <2 x float> %43, i64 1
  %46 = call float @atan2f(float noundef %44, float noundef %45) #25
  %47 = fdiv float %46, 0x401921FB60000000
  %48 = fadd float %47, 5.000000e-01
  %49 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %2, i64 0, i32 1, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !85
  %51 = fmul float %16, %50
  %52 = call float @llvm.fmuladd.f32(float %51, float 5.000000e-01, float %48)
  %53 = call fastcc float @len_v2(ptr noundef nonnull %7) #26
  store float %52, ptr %10, align 4, !tbaa !85
  store float %53, ptr %26, align 4, !tbaa !85
  %54 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !57
  %56 = and i32 %55, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %20
  %59 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !621
  %60 = icmp eq i16 %59, 0
  %61 = getelementptr inbounds float, ptr %10, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !85
  %63 = fcmp oeq float %62, 0.000000e+00
  br i1 %60, label %64, label %65

64:                                               ; preds = %58
  br i1 %63, label %68, label %70

65:                                               ; preds = %58
  br i1 %63, label %68, label %66

66:                                               ; preds = %65
  %67 = fcmp oeq float %62, 1.000000e+00
  br i1 %67, label %68, label %70

68:                                               ; preds = %66, %65, %64
  %69 = phi float [ 0x3F1A36E2E0000000, %64 ], [ 0x3F1A36E2E0000000, %65 ], [ 0x3FEFFF2E40000000, %66 ]
  store float %69, ptr %61, align 4, !tbaa !85
  br label %70

70:                                               ; preds = %68, %64, %66, %20
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  call fastcc void @ui_color_snap_hue(i32 noundef %3, ptr noundef nonnull %10) #26
  br label %73

73:                                               ; preds = %72, %70
  call void @hsv_clamp_v(ptr noundef nonnull %10, float noundef 0x47EFFFFFE0000000) #25
  %74 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16
  call void @ui_color_picker_to_rgb_v(ptr noundef nonnull %10, ptr noundef nonnull %74) #25
  %75 = load i32, ptr %54, align 8, !tbaa !57
  %76 = and i32 %75, 4194304
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %73
  %79 = load float, ptr %74, align 8, !tbaa !85
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !85
  %84 = fcmp une float %83, 0.000000e+00
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.uiHandleButtonData, ptr %1, i64 0, i32 16, i64 2
  %87 = load float, ptr %86, align 8, !tbaa !85
  %88 = fcmp une float %87, 0.000000e+00
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %81, %78
  %90 = call fastcc float @normalize_v3(ptr noundef nonnull %74) #26
  %91 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 25
  %92 = load float, ptr %91, align 4, !tbaa !591
  call fastcc void @mul_v3_fl(ptr noundef nonnull %74, float noundef %92) #26
  br label %93

93:                                               ; preds = %89, %85, %73
  br i1 %17, label %96, label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %8, align 8, !tbaa !94
  call void @ui_block_to_scene_linear_v3(ptr noundef %95, ptr noundef nonnull %74) #25
  br label %96

96:                                               ; preds = %94, %93
  call void @ui_set_but_vectorf(ptr noundef nonnull %0, ptr noundef nonnull %74) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  ret void
}

; Function Attrs: optsize
declare void @ui_color_picker_to_rgb_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_rgb_to_color_picker_compat_v(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_set_but_hsv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !623 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: optsize
declare void @dist_ensure_v2_v2fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_hsvcircle_pos_from_vals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_hsvcircle_vals_from_pos(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @sqrt3f(float noundef %0) unnamed_addr #7 !PGOFuncName !624 {
  %2 = fcmp oeq float %0, 0.000000e+00
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = fneg float %0
  %7 = fpext float %6 to double
  %8 = tail call double @log(double noundef %7) #25
  %9 = fdiv double %8, 3.000000e+00
  %10 = tail call double @exp(double noundef %9) #25
  %11 = fptrunc double %10 to float
  %12 = fneg float %11
  br label %19

13:                                               ; preds = %3
  %14 = fpext float %0 to double
  %15 = tail call double @log(double noundef %14) #25
  %16 = fdiv double %15, 3.000000e+00
  %17 = tail call double @exp(double noundef %16) #25
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %13, %5
  %20 = phi float [ %12, %5 ], [ %18, %13 ], [ 0.000000e+00, %1 ]
  ret float %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !625 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_numedit_but_TRACKPREVIEW(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #3 !PGOFuncName !626 {
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !172
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 26
  %10 = load i32, ptr %9, align 4, !tbaa !252
  %11 = sub nsw i32 %3, %10
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !434
  %15 = sub nsw i32 %4, %14
  %16 = sitofp i32 %15 to float
  %17 = icmp eq i8 %5, 0
  %18 = fdiv float %12, 5.000000e+00
  %19 = fdiv float %16, 5.000000e+00
  %20 = select i1 %17, float %12, float %18
  %21 = select i1 %17, float %16, float %19
  %22 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 10
  %23 = load i16, ptr %22, align 2, !tbaa !627
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !630
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !631
  %30 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !632
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !633
  %36 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef %35, i32 noundef %31) #25
  store ptr %36, ptr %26, align 8, !tbaa !630
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi ptr [ %36, %33 ], [ %27, %25 ]
  %39 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !634
  %41 = and i32 %40, -4
  store i32 %41, ptr %39, align 4, !tbaa !634
  %42 = fneg float %20
  %43 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 14
  %44 = load float, ptr %43, align 8, !tbaa !85
  %45 = fmul float %44, %42
  %46 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = getelementptr inbounds %struct.uiBlock, ptr %47, i64 0, i32 11
  %49 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %48) #26
  %50 = fdiv float %45, %49
  %51 = load float, ptr %38, align 4, !tbaa !85
  %52 = fadd float %51, %50
  store float %52, ptr %38, align 4, !tbaa !85
  %53 = fneg float %21
  %54 = getelementptr inbounds %struct.MovieClipScopes, ptr %8, i64 0, i32 14, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !85
  %56 = fmul float %55, %53
  %57 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %48) #26
  %58 = fdiv float %56, %57
  %59 = getelementptr inbounds [2 x float], ptr %38, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !85
  %61 = fadd float %60, %58
  store float %61, ptr %59, align 4, !tbaa !85
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #25
  br label %62

62:                                               ; preds = %37, %6
  store i16 0, ptr %8, align 8, !tbaa !635
  store i32 %3, ptr %9, align 4, !tbaa !252
  store i32 %4, ptr %13, align 8, !tbaa !434
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @UI_butstore_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_multibut_add(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !PGOFuncName !636 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @__func__.ui_multibut_add) #25
  %5 = getelementptr inbounds %struct.uiButMultiState, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !530
  %6 = tail call double @ui_get_but_val(ptr noundef %1) #25
  store double %6, ptr %4, align 8, !tbaa !514
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 43, i32 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef nonnull %4) #25
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %0, i64 0, i32 43, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  tail call void @UI_butstore_register(ptr noundef %9, ptr noundef nonnull %5) #25
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @UI_butstore_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @ui_is_but_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_BUT(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !637 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_TOG(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !638 {
  %4 = tail call double @ui_get_but_val(ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 6
  %6 = load i16, ptr %5, align 8, !tbaa !639
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = fptosi double %4 to i32
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 7
  %11 = load i16, ptr %10, align 2, !tbaa !640
  %12 = zext nneg i16 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %9
  %15 = icmp eq i32 %14, 0
  %16 = xor i32 %13, -1
  %17 = and i32 %16, %9
  %18 = or i32 %13, %9
  %19 = select i1 %15, i32 %18, i32 %17
  %20 = sitofp i32 %19 to double
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef %20) #25
  %21 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !51
  switch i32 %22, label %34 [
    i32 6656, label %33
    i32 17408, label %33
  ]

23:                                               ; preds = %3
  %24 = fcmp une double %4, 0.000000e+00
  %25 = xor i1 %24, true
  %26 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !51
  switch i32 %27, label %29 [
    i32 4608, label %28
    i32 17408, label %28
    i32 19968, label %28
  ]

28:                                               ; preds = %23, %23, %23
  br label %29

29:                                               ; preds = %23, %28
  %30 = phi i1 [ %24, %28 ], [ %25, %23 ]
  %31 = uitofp i1 %30 to double
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef %31) #25
  %32 = load i32, ptr %26, align 8, !tbaa !51
  switch i32 %32, label %34 [
    i32 6656, label %33
    i32 17408, label %33
  ]

33:                                               ; preds = %29, %29, %8, %8
  tail call void @ui_check_but(ptr noundef nonnull %1) #25
  br label %34

34:                                               ; preds = %33, %29, %8
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef nonnull %1) #26
  %35 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !122
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %37, ptr %38, align 8, !tbaa !101
  %39 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %39, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_ROW(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !PGOFuncName !641 {
  %5 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 21
  %6 = load float, ptr %5, align 4, !tbaa !642
  %7 = fpext float %6 to double
  tail call void @ui_set_but_val(ptr noundef %2, double noundef %7) #25
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %2) #26
  %8 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %9, %11 ], [ %26, %25 ]
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !172
  %19 = load ptr, ptr %12, align 8, !tbaa !172
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !51
  switch i32 %23, label %25 [
    i32 1024, label %24
    i32 18432, label %24
  ]

24:                                               ; preds = %21, %21
  tail call void @ui_check_but(ptr noundef nonnull %14) #25
  br label %25

25:                                               ; preds = %21, %13, %16, %24
  %26 = load ptr, ptr %14, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !643

28:                                               ; preds = %25, %4
  %29 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !122
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 5
  store i32 %31, ptr %32, align 8, !tbaa !101
  %33 = getelementptr inbounds %struct.uiHandleButtonData, ptr %3, i64 0, i32 8
  store i8 1, ptr %33, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_NUM(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !644 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @ui_set_but_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call double @ui_get_but_val(ptr noundef %1) #25
  %12 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 13
  store double %11, ptr %12, align 8, !tbaa !184
  br label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 6
  store i8 1, ptr %14, align 4, !tbaa !92
  br label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 13
  %17 = load double, ptr %16, align 8, !tbaa !184
  tail call void @ui_set_but_val(ptr noundef %1, double noundef %17) #25
  br label %18

18:                                               ; preds = %15, %10
  tail call void @ui_check_but(ptr noundef %1) #25
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %19 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %20 = load i16, ptr %19, align 4, !tbaa !122
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %21, ptr %22, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %23, align 2, !tbaa !182
  br label %24

24:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_BLOCK(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #3 !PGOFuncName !645 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = icmp eq i32 %5, 5632
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 13
  %9 = load double, ptr %8, align 8, !tbaa !184
  tail call void @ui_set_but_val(ptr noundef nonnull %1, double noundef %9) #25
  br label %10

10:                                               ; preds = %7, %3
  tail call void @ui_check_but(ptr noundef nonnull %1) #25
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef nonnull %1) #26
  %11 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !122
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %13, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %15, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_VEC(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !646 {
  %4 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 16
  tail call void @ui_set_but_vectorf(ptr noundef %1, ptr noundef nonnull %4) #25
  tail call void @ui_check_but(ptr noundef %1) #25
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !122
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !101
  %9 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %9, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_BUTM(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !647 {
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 20
  %5 = load float, ptr %4, align 8, !tbaa !648
  %6 = fpext float %5 to double
  tail call void @ui_set_but_val(ptr noundef %1, double noundef %6) #25
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %7 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !122
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %9, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %11, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_COLORBAND(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !649 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_CURVE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !650 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_LINK(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !651 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #25
  %5 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.uiBlock, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 41
  %9 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 41, i64 1
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 3, i32 2
  br label %12

12:                                               ; preds = %16, %3
  %13 = phi ptr [ %7, %3 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = load i16, ptr %8, align 8, !tbaa !84
  %18 = sext i16 %17 to i32
  %19 = load i32, ptr %9, align 8, !tbaa !652
  %20 = add nsw i32 %19, %18
  %21 = load i16, ptr %10, align 2, !tbaa !84
  %22 = sext i16 %21 to i32
  %23 = load i32, ptr %11, align 8, !tbaa !653
  %24 = add nsw i32 %23, %22
  %25 = tail call fastcc zeroext i8 @ui_mouse_inside_button(ptr noundef %4, ptr noundef nonnull %14, i32 noundef %20, i32 noundef %24) #26, !range !168
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %12, label %27, !llvm.loop !654

27:                                               ; preds = %16
  %28 = icmp eq ptr %14, %1
  br i1 %28, label %42, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.uiBut, ptr %14, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !51
  switch i32 %31, label %44 [
    i32 11264, label %32
    i32 11776, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !51
  switch i32 %34, label %44 [
    i32 11264, label %35
    i32 11776, label %36
  ]

35:                                               ; preds = %32
  tail call fastcc void @ui_add_link(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %14) #26
  br label %37

36:                                               ; preds = %32
  tail call fastcc void @ui_add_link(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %1) #26
  br label %37

37:                                               ; preds = %36, %35
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef nonnull %1) #26
  %38 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %39 = load i16, ptr %38, align 4, !tbaa !122
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %40, ptr %41, align 8, !tbaa !101
  br label %42

42:                                               ; preds = %12, %37, %27
  %43 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %43, align 2, !tbaa !182
  br label %44

44:                                               ; preds = %32, %29, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_IMAGE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !655 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_HISTOGRAM(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !656 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_WAVEFORM(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !657 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_apply_but_TRACKPREVIEW(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !PGOFuncName !658 {
  tail call fastcc void @ui_apply_but_func(ptr noundef %0, ptr noundef %1) #26
  %4 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.uiHandleButtonData, ptr %2, i64 0, i32 8
  store i8 1, ptr %8, align 2, !tbaa !182
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_multibut_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !659 {
  %3 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.uiBut, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !57
  %10 = and i32 %9, 33554432
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @ui_multibut_lookup(ptr noundef %0, ptr noundef nonnull %7) #26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load double, ptr %13, align 8, !tbaa !514
  tail call void @ui_set_but_val(ptr noundef nonnull %7, double noundef %16) #25
  br label %17

17:                                               ; preds = %12, %15, %6
  %18 = load ptr, ptr %7, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !660

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_add_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !661 {
  %4 = tail call fastcc ptr @ui_is_a_link(ptr noundef %1, ptr noundef %2) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.uiLinkLine, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !662
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !662
  %10 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  tail call fastcc void @ui_delete_active_linkline(ptr noundef %11) #26
  br label %95

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !51
  switch i32 %14, label %43 [
    i32 11776, label %15
    i32 11264, label %18
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !51
  switch i32 %17, label %43 [
    i32 11776, label %95
    i32 11264, label %33
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = icmp eq i32 %20, 11776
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %24 = load ptr, ptr %23, align 8, !tbaa !664
  %25 = getelementptr inbounds %struct.uiLink, ptr %24, i64 0, i32 6
  %26 = load i16, ptr %25, align 2, !tbaa !665
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 20
  %29 = load float, ptr %28, align 8, !tbaa !648
  %30 = fptosi float %29 to i32
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %22
  tail call fastcc void @ui_add_smart_controller(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #26
  br label %95

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 40
  %35 = load ptr, ptr %34, align 8, !tbaa !664
  %36 = getelementptr inbounds %struct.uiLink, ptr %35, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !665
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 20
  %40 = load float, ptr %39, align 8, !tbaa !648
  %41 = fptosi float %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %95, label %43

43:                                               ; preds = %15, %12, %18, %22, %33
  %44 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %45 = load ptr, ptr %44, align 8, !tbaa !664
  %46 = getelementptr inbounds %struct.uiLink, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !667
  %48 = icmp eq ptr %47, null
  br i1 %48, label %91, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %47, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.uiLink, ptr %45, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !668
  %53 = load i16, ptr %52, align 2, !tbaa !84
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 2, !tbaa !84
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %56 = sext i16 %54 to i64
  %57 = shl nsw i64 %56, 3
  %58 = tail call ptr %55(i64 noundef %57, ptr noundef nonnull @.str.87) #25
  %59 = load ptr, ptr %46, align 8, !tbaa !667
  store ptr %58, ptr %59, align 8, !tbaa !61
  %60 = load ptr, ptr %51, align 8, !tbaa !668
  %61 = load i16, ptr %60, align 2, !tbaa !84
  %62 = icmp sgt i16 %61, 1
  br i1 %62, label %63, label %83

63:                                               ; preds = %49, %63
  %64 = phi i64 [ %70, %63 ], [ 0, %49 ]
  %65 = getelementptr inbounds ptr, ptr %50, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !61
  %67 = load ptr, ptr %46, align 8, !tbaa !667
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds ptr, ptr %68, i64 %64
  store ptr %66, ptr %69, align 8, !tbaa !61
  %70 = add nuw nsw i64 %64, 1
  %71 = load ptr, ptr %51, align 8, !tbaa !668
  %72 = load i16, ptr %71, align 2, !tbaa !84
  %73 = sext i16 %72 to i64
  %74 = add nsw i64 %73, -1
  %75 = icmp slt i64 %70, %74
  br i1 %75, label %63, label %76, !llvm.loop !669

76:                                               ; preds = %63
  %77 = and i64 %70, 4294967295
  %78 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  %80 = load ptr, ptr %46, align 8, !tbaa !667
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = getelementptr inbounds ptr, ptr %81, i64 %77
  store ptr %79, ptr %82, align 8, !tbaa !61
  br label %89

83:                                               ; preds = %49
  %84 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !172
  %86 = load ptr, ptr %46, align 8, !tbaa !667
  %87 = load ptr, ptr %86, align 8, !tbaa !61
  store ptr %85, ptr %87, align 8, !tbaa !61
  %88 = icmp eq ptr %50, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %76, %83
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %90(ptr noundef nonnull %50) #25
  br label %95

91:                                               ; preds = %43
  %92 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %93 = load ptr, ptr %92, align 8, !tbaa !172
  %94 = load ptr, ptr %45, align 8, !tbaa !670
  store ptr %93, ptr %94, align 8, !tbaa !61
  br label %95

95:                                               ; preds = %15, %91, %89, %83, %33, %32, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ui_is_a_link(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 !PGOFuncName !671 {
  %3 = getelementptr inbounds %struct.uiBut, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !664
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uiLink, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.uiLinkLine, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !672
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uiLinkLine, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !673
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !674

22:                                               ; preds = %15, %19, %6, %2
  %23 = phi ptr [ null, %2 ], [ null, %6 ], [ %11, %15 ], [ null, %19 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_delete_active_linkline(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !675 {
  %2 = getelementptr inbounds %struct.uiBlock, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1, %84
  %6 = phi ptr [ %85, %84 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 11264
  br i1 %9, label %10, label %84

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !664
  %13 = icmp eq ptr %12, null
  br i1 %13, label %84, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uiLink, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !676
  %17 = icmp eq ptr %16, null
  br i1 %17, label %84, label %18

18:                                               ; preds = %14, %82
  %19 = phi ptr [ %20, %82 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !677
  %21 = getelementptr inbounds %struct.uiLinkLine, ptr %19, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !662
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %11, align 8, !tbaa !664
  %27 = getelementptr inbounds %struct.uiLink, ptr %26, i64 0, i32 7
  tail call void @BLI_remlink(ptr noundef nonnull %27, ptr noundef nonnull %19) #25
  %28 = getelementptr inbounds %struct.uiLinkLine, ptr %19, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !672
  %30 = getelementptr inbounds %struct.uiBut, ptr %29, i64 0, i32 40
  %31 = load ptr, ptr %30, align 8, !tbaa !664
  %32 = getelementptr inbounds %struct.uiLink, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !667
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.uiLink, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !668
  %38 = load i16, ptr %37, align 2, !tbaa !84
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i16 %38, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.uiLinkLine, ptr %19, i64 0, i32 3
  br label %48

44:                                               ; preds = %35
  store i16 0, ptr %37, align 2, !tbaa !84
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %46 = load ptr, ptr %33, align 8, !tbaa !61
  tail call void %45(ptr noundef %46) #25
  %47 = load ptr, ptr %32, align 8, !tbaa !667
  store ptr null, ptr %47, align 8, !tbaa !61
  br label %80

48:                                               ; preds = %42, %67
  %49 = phi i16 [ %38, %42 ], [ %68, %67 ]
  %50 = phi ptr [ %37, %42 ], [ %69, %67 ]
  %51 = phi i64 [ 0, %42 ], [ %71, %67 ]
  %52 = phi i32 [ 0, %42 ], [ %70, %67 ]
  %53 = load ptr, ptr %32, align 8, !tbaa !667
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = getelementptr inbounds ptr, ptr %54, i64 %51
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  %57 = load ptr, ptr %43, align 8, !tbaa !673
  %58 = getelementptr inbounds %struct.uiBut, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !172
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %48
  %62 = sext i32 %52 to i64
  %63 = getelementptr inbounds ptr, ptr %54, i64 %62
  store ptr %56, ptr %63, align 8, !tbaa !61
  %64 = add nsw i32 %52, 1
  %65 = load ptr, ptr %36, align 8, !tbaa !668
  %66 = load i16, ptr %65, align 2, !tbaa !84
  br label %67

67:                                               ; preds = %48, %61
  %68 = phi i16 [ %66, %61 ], [ %49, %48 ]
  %69 = phi ptr [ %65, %61 ], [ %50, %48 ]
  %70 = phi i32 [ %64, %61 ], [ %52, %48 ]
  %71 = add nuw nsw i64 %51, 1
  %72 = sext i16 %68 to i64
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %48, label %74, !llvm.loop !678

74:                                               ; preds = %67, %40
  %75 = phi ptr [ %37, %40 ], [ %69, %67 ]
  %76 = phi i16 [ %38, %40 ], [ %68, %67 ]
  %77 = add i16 %76, -1
  store i16 %77, ptr %75, align 2, !tbaa !84
  br label %80

78:                                               ; preds = %25
  %79 = load ptr, ptr %31, align 8, !tbaa !670
  store ptr null, ptr %79, align 8, !tbaa !61
  br label %80

80:                                               ; preds = %44, %74, %78
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %81(ptr noundef nonnull %19) #25
  br label %82

82:                                               ; preds = %18, %80
  %83 = icmp eq ptr %20, null
  br i1 %83, label %84, label %18, !llvm.loop !679

84:                                               ; preds = %82, %14, %5, %10
  %85 = load ptr, ptr %6, align 8, !tbaa !61
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %5, !llvm.loop !680

87:                                               ; preds = %84, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_add_smart_controller(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !681 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %8 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !664
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  %10 = getelementptr inbounds %struct.uiLink, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !667
  %12 = icmp eq ptr %11, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  %16 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %7) #25
  br label %17

17:                                               ; preds = %33, %13
  %18 = phi ptr [ %7, %13 ], [ %19, %33 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @BLI_freelistN(ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  br label %78

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !682
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 92
  br label %26

26:                                               ; preds = %30, %22
  %27 = phi ptr [ %25, %22 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bSensor, ptr %28, i64 0, i32 12
  %32 = icmp eq ptr %31, %11
  br i1 %32, label %33, label %26, !llvm.loop !684

33:                                               ; preds = %30, %26
  %34 = phi ptr [ null, %26 ], [ %24, %30 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %17, label %36

36:                                               ; preds = %33
  call void @BLI_freelistN(ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  %37 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 94
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %38 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = icmp eq ptr %40, null
  %42 = icmp eq ptr %40, %15
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %38, !llvm.loop !685

44:                                               ; preds = %38
  br i1 %41, label %78, label %45

45:                                               ; preds = %44
  call void @RNA_pointer_create(ptr noundef nonnull %34, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %34, ptr noundef nonnull %6) #25
  call void @WM_operator_properties_create(ptr noundef nonnull %5, ptr noundef nonnull @.str.88) #25
  %46 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.89, ptr noundef nonnull %46) #25
  %47 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.88, i16 noundef signext 6, ptr noundef nonnull %5) #25
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 93, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !686
  store ptr %52, ptr %4, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.bController, ptr %52, i64 0, i32 3
  store i16 0, ptr %53, align 8, !tbaa !689
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %55 = call ptr %54(i64 noundef 1000, ptr noundef nonnull @.str.90) #25
  %56 = getelementptr inbounds %struct.bController, ptr %52, i64 0, i32 13
  %57 = getelementptr inbounds %struct.bController, ptr %52, i64 0, i32 6
  %58 = load ptr, ptr %8, align 8, !tbaa !664
  %59 = getelementptr inbounds %struct.uiLink, ptr %58, i64 0, i32 6
  %60 = load i16, ptr %59, align 2, !tbaa !665
  %61 = sext i16 %60 to i32
  %62 = getelementptr inbounds %struct.uiBut, ptr %2, i64 0, i32 20
  %63 = load float, ptr %62, align 8, !tbaa !648
  %64 = fptosi float %63 to i32
  call void @uiSetButLink(ptr noundef %55, ptr noundef nonnull %4, ptr noundef nonnull %56, ptr noundef nonnull %57, i32 noundef %61, i32 noundef %64) #25
  %65 = load ptr, ptr %8, align 8, !tbaa !664
  %66 = getelementptr inbounds %struct.uiLink, ptr %65, i64 0, i32 6
  %67 = load i16, ptr %66, align 2, !tbaa !665
  %68 = sitofp i16 %67 to float
  %69 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 20
  store float %68, ptr %69, align 8, !tbaa !648
  %70 = load ptr, ptr %4, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 19
  store ptr %70, ptr %71, align 8, !tbaa !172
  %72 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 4
  store i32 11776, ptr %72, align 8, !tbaa !51
  call fastcc void @ui_add_link(ptr noundef %0, ptr noundef %1, ptr noundef %55) #26
  store i32 11264, ptr %72, align 8, !tbaa !51
  call fastcc void @ui_add_link(ptr noundef %0, ptr noundef %55, ptr noundef %2) #26
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.uiBut, ptr %55, i64 0, i32 40
  %75 = load ptr, ptr %74, align 8, !tbaa !664
  call void %73(ptr noundef %75) #25
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %76(ptr noundef %55) #25
  br label %77

77:                                               ; preds = %50, %45
  call void @WM_operator_properties_free(ptr noundef nonnull %5) #25
  br label %78

78:                                               ; preds = %21, %44, %3, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiSetButLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ui_but_anim_autokey(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @WM_prop_pystring_assign(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 !PGOFuncName !691 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !692 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !693 {
  %2 = load ptr, ptr %0, align 8, !tbaa !694
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @ui_handler_panel_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ui_handle_list_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !PGOFuncName !695 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !150
  %12 = sext i16 %11 to i32
  store i32 %12, ptr %4, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !151
  %15 = sext i16 %14 to i32
  store i32 %15, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !178
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = tail call fastcc ptr @ui_list_find_mouse_over(ptr noundef %2, i32 noundef %17, i32 noundef %19) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %222, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 68
  %24 = load ptr, ptr %23, align 8, !tbaa !696
  %25 = icmp eq ptr %24, null
  br i1 %25, label %222, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !697
  %29 = icmp eq ptr %28, null
  br i1 %29, label %222, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %16, align 4, !tbaa !178
  store i32 %31, ptr %6, align 4, !tbaa !43
  %32 = load i32, ptr %18, align 8, !tbaa !42
  store i32 %32, ptr %7, align 4, !tbaa !43
  %33 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 74
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  call void @ui_window_to_block(ptr noundef %2, ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %35 = icmp eq i16 %11, 14
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  call void @ui_pan_to_scroll(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %37 = load i32, ptr %4, align 4
  %38 = icmp eq i32 %37, 14
  %39 = zext i1 %38 to i32
  %40 = load i32, ptr %5, align 4, !tbaa !43
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32 [ %12, %30 ], [ %37, %36 ]
  %43 = phi i32 [ %15, %30 ], [ %40, %36 ]
  %44 = phi i32 [ 0, %30 ], [ %39, %36 ]
  %45 = icmp eq i32 %43, 1
  br i1 %45, label %46, label %222

46:                                               ; preds = %41
  switch i32 %42, label %47 [
    i32 140, label %54
    i32 138, label %54
  ]

47:                                               ; preds = %46
  %48 = and i32 %42, -2
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %222

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %52 = load i16, ptr %51, align 4, !tbaa !166
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %189, label %54

54:                                               ; preds = %46, %46, %50
  %55 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 54
  %56 = getelementptr inbounds %struct.uiBut, ptr %20, i64 0, i32 55
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = call i32 @RNA_property_int_get(ptr noundef nonnull %55, ptr noundef %57) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %59 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 12
  %60 = load i32, ptr %59, align 4, !tbaa !699
  %61 = icmp eq i32 %42, 140
  %62 = icmp eq i32 %42, 10
  %63 = or i1 %61, %62
  %64 = select i1 %63, i32 1, i32 -1
  %65 = select i1 %63, i32 -1, i32 1
  %66 = icmp slt i32 %60, 0
  %67 = select i1 %66, i32 %64, i32 %65
  %68 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !700
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !702
  %74 = icmp eq ptr %73, null
  br i1 %74, label %162, label %75

75:                                               ; preds = %71, %54
  %76 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !61
  %77 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !703
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 2
  %81 = call ptr %76(i64 noundef %80, ptr noundef nonnull @__func__.ui_handle_list_event) #25
  %82 = load ptr, ptr %68, align 8, !tbaa !700
  %83 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !704
  %85 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !705
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !702
  %91 = icmp eq ptr %90, null
  %92 = icmp eq ptr %82, null
  %93 = zext i32 %58 to i64
  %94 = zext nneg i32 %84 to i64
  br label %95

95:                                               ; preds = %88, %133
  %96 = phi i64 [ 0, %88 ], [ %136, %133 ]
  %97 = phi i32 [ -1, %88 ], [ %135, %133 ]
  %98 = phi i32 [ -1, %88 ], [ %134, %133 ]
  br i1 %91, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i32, ptr %90, i64 %96
  %101 = load i32, ptr %100, align 4, !tbaa !43
  %102 = xor i32 %101, %86
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %121, label %104

104:                                              ; preds = %99, %95
  %105 = add nsw i32 %98, 1
  %106 = sext i32 %105 to i64
  br i1 %92, label %107, label %112

107:                                              ; preds = %104
  %108 = getelementptr inbounds i32, ptr %81, i64 %106
  %109 = trunc i64 %96 to i32
  store i32 %109, ptr %108, align 4, !tbaa !43
  %110 = icmp eq i64 %96, %93
  %111 = select i1 %110, i32 %105, i32 %97
  br label %133

112:                                              ; preds = %104
  %113 = getelementptr inbounds i32, ptr %82, i64 %106
  %114 = load i32, ptr %113, align 4, !tbaa !43
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %81, i64 %115
  %117 = trunc i64 %96 to i32
  store i32 %117, ptr %116, align 4, !tbaa !43
  %118 = icmp eq i64 %96, %93
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load i32, ptr %113, align 4, !tbaa !43
  br label %133

121:                                              ; preds = %99
  %122 = icmp eq i64 %96, %93
  %123 = icmp sgt i32 %98, -1
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  br i1 %92, label %130, label %126

126:                                              ; preds = %125
  %127 = zext nneg i32 %98 to i64
  %128 = getelementptr inbounds i32, ptr %82, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !43
  br label %130

130:                                              ; preds = %125, %126
  %131 = phi i32 [ %129, %126 ], [ %98, %125 ]
  %132 = xor i32 %131, -1
  br label %133

133:                                              ; preds = %107, %112, %119, %130, %121
  %134 = phi i32 [ %105, %112 ], [ %98, %130 ], [ %98, %121 ], [ %105, %119 ], [ %105, %107 ]
  %135 = phi i32 [ %97, %112 ], [ %132, %130 ], [ %97, %121 ], [ %120, %119 ], [ %111, %107 ]
  %136 = add nuw nsw i64 %96, 1
  %137 = icmp eq i64 %136, %94
  br i1 %137, label %138, label %95, !llvm.loop !706

138:                                              ; preds = %133
  %139 = icmp slt i32 %135, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %75, %138
  %141 = phi i32 [ %135, %138 ], [ -1, %75 ]
  %142 = icmp sgt i32 %67, -1
  %143 = sext i1 %142 to i32
  %144 = add nsw i32 %67, %143
  %145 = sub i32 %144, %141
  br label %148

146:                                              ; preds = %138
  %147 = add nsw i32 %135, %67
  br label %148

148:                                              ; preds = %146, %140
  %149 = phi i32 [ %145, %140 ], [ %147, %146 ]
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %77, align 8, !tbaa !703
  %153 = icmp slt i32 %149, %152
  %154 = add nsw i32 %152, -1
  %155 = select i1 %153, i32 %149, i32 %154
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %151, %148
  %158 = phi i64 [ 0, %148 ], [ %156, %151 ]
  %159 = getelementptr inbounds i32, ptr %81, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !43
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %161(ptr noundef %81) #25
  br label %164

162:                                              ; preds = %71
  %163 = add nsw i32 %67, %58
  br label %164

164:                                              ; preds = %162, %157
  %165 = phi i32 [ %160, %157 ], [ %163, %162 ]
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !704
  %170 = icmp slt i32 %165, %169
  %171 = add nsw i32 %169, -1
  %172 = select i1 %170, i32 %165, i32 %171
  br label %173

173:                                              ; preds = %167, %164
  %174 = phi i32 [ 0, %164 ], [ %172, %167 ]
  %175 = load ptr, ptr %56, align 8, !tbaa !56
  call void @RNA_property_int_range(ptr noundef nonnull %55, ptr noundef %175, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %176 = load i32, ptr %8, align 4, !tbaa !43
  %177 = icmp slt i32 %174, %176
  %178 = load i32, ptr %9, align 4
  %179 = call i32 @llvm.smin.i32(i32 %174, i32 %178)
  %180 = select i1 %177, i32 %176, i32 %179
  %181 = icmp eq i32 %180, %58
  br i1 %181, label %188, label %182

182:                                              ; preds = %173
  %183 = load ptr, ptr %56, align 8, !tbaa !56
  call void @RNA_property_int_set(ptr noundef nonnull %55, ptr noundef %183, i32 noundef %180) #25
  %184 = load ptr, ptr %56, align 8, !tbaa !56
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %55, ptr noundef %184) #25
  call fastcc void @ui_apply_undo(ptr noundef nonnull %20) #26
  %185 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 5
  %186 = load i32, ptr %185, align 4, !tbaa !707
  %187 = or i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !707
  call void @ED_region_tag_redraw(ptr noundef %2) #25
  br label %188

188:                                              ; preds = %182, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  br label %222

189:                                              ; preds = %50
  %190 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %191 = load i16, ptr %190, align 8, !tbaa !167
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %211, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 7
  %195 = load i32, ptr %194, align 4, !tbaa !708
  %196 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !709
  %198 = add nsw i32 %197, -1
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !710
  br label %203

203:                                              ; preds = %200, %193
  %204 = phi i32 [ %202, %200 ], [ %195, %193 ]
  %205 = icmp eq i32 %42, 10
  %206 = select i1 %205, i32 -1, i32 1
  %207 = add nsw i32 %204, %206
  store i32 %207, ptr %194, align 4, !tbaa !708
  %208 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 5
  %209 = load i32, ptr %208, align 4, !tbaa !707
  %210 = or i32 %209, 1
  store i32 %210, ptr %208, align 4, !tbaa !707
  call void @ED_region_tag_redraw(ptr noundef %2) #25
  br label %222

211:                                              ; preds = %189
  %212 = load i32, ptr %28, align 8, !tbaa !711
  %213 = getelementptr inbounds %struct.uiListDyn, ptr %28, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !710
  %215 = icmp sgt i32 %212, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = icmp eq i32 %42, 10
  %218 = select i1 %217, i32 -1, i32 1
  %219 = getelementptr inbounds %struct.uiList, ptr %24, i64 0, i32 6
  %220 = load i32, ptr %219, align 8, !tbaa !712
  %221 = add nsw i32 %220, %218
  store i32 %221, ptr %219, align 8, !tbaa !712
  call void @ED_region_tag_redraw(ptr noundef %2) #25
  br label %222

222:                                              ; preds = %47, %41, %203, %211, %216, %188, %22, %26, %3
  %223 = phi i32 [ 0, %3 ], [ 0, %26 ], [ 0, %22 ], [ 1, %188 ], [ 1, %203 ], [ 1, %216 ], [ %44, %211 ], [ %44, %41 ], [ %44, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret i32 %223
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ui_list_find_mouse_over(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !713 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %6 = tail call fastcc zeroext i8 @ui_mouse_inside_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26, !range !168
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = sitofp i32 %1 to float
  %14 = sitofp i32 %2 to float
  br label %18

15:                                               ; preds = %33, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18, !llvm.loop !714

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %10, %12 ], [ %16, %15 ]
  store float %13, ptr %4, align 4, !tbaa !85
  store float %14, ptr %5, align 4, !tbaa !85
  call void @ui_window_to_block_fl(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %20 = getelementptr inbounds %struct.uiBlock, ptr %19, i64 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %33
  %24 = phi ptr [ %35, %33 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 17920
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load float, ptr %4, align 4, !tbaa !85
  %30 = load float, ptr %5, align 4, !tbaa !85
  %31 = call fastcc zeroext i8 @ui_but_contains_pt(ptr noundef nonnull %24, float noundef %29, float noundef %30) #26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23, %28
  %34 = getelementptr inbounds %struct.uiBut, ptr %24, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %15, label %23, !llvm.loop !715

37:                                               ; preds = %15, %28, %8, %3
  %38 = phi ptr [ null, %3 ], [ null, %8 ], [ %24, %28 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_property_int_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @uiFreeBlocks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #24

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { nounwind }
attributes #28 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !40, i64 52}
!35 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !40, i64 48, !40, i64 52, !41, i64 56, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"double", !37, i64 0}
!42 = !{!35, !40, i64 24}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !39, i64 8948}
!45 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !39, i64 8496, !39, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !40, i64 8912, !40, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !47, i64 8956, !47, i64 8960, !40, i64 8964, !39, i64 8968, !39, i64 8970, !47, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !48, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !47, i64 10904, !47, i64 10908, !40, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !49, i64 10928}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!"float", !37, i64 0}
!48 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!49 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !37, i64 26}
!50 = !{!45, !40, i64 8488}
!51 = !{!52, !40, i64 24}
!52 = !{!"uiBut", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !39, i64 48, !36, i64 56, !37, i64 64, !37, i64 192, !53, i64 592, !36, i64 608, !47, i64 616, !47, i64 620, !47, i64 624, !47, i64 628, !47, i64 632, !47, i64 636, !37, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !36, i64 720, !36, i64 728, !36, i64 736, !36, i64 744, !36, i64 752, !37, i64 760, !36, i64 768, !36, i64 776, !40, i64 784, !37, i64 788, !37, i64 789, !37, i64 790, !37, i64 791, !37, i64 792, !39, i64 794, !39, i64 796, !36, i64 800, !36, i64 808, !54, i64 816, !36, i64 840, !40, i64 848, !54, i64 856, !36, i64 880, !36, i64 888, !36, i64 896, !39, i64 904, !37, i64 906, !37, i64 907, !36, i64 912, !36, i64 920, !47, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992}
!53 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!54 = !{!"PointerRNA", !55, i64 0, !36, i64 8, !36, i64 16}
!55 = !{!"", !36, i64 0}
!56 = !{!52, !36, i64 840}
!57 = !{!52, !40, i64 16}
!58 = !{!59, !36, i64 128}
!59 = !{!"uiAfterFunc", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !40, i64 96, !36, i64 104, !36, i64 112, !40, i64 120, !36, i64 128, !40, i64 136, !36, i64 144, !54, i64 152, !36, i64 176, !36, i64 184, !37, i64 192}
!60 = !{!59, !40, i64 136}
!61 = !{!36, !36, i64 0}
!62 = !{!59, !36, i64 144}
!63 = !{!"interface_handlers.c:ui_afterfunc_new"}
!64 = !{!52, !36, i64 952}
!65 = !{!52, !39, i64 44}
!66 = !{!52, !39, i64 46}
!67 = !{!52, !39, i64 48}
!68 = !{!37, !37, i64 0}
!69 = !{!"interface_handlers.c:ui_text_position_from_hidden"}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"interface_handlers.c:ui_text_position_to_hidden"}
!73 = !{!52, !36, i64 936}
!74 = !{!75, !36, i64 224}
!75 = !{!"uiHandleButtonData", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 28, !40, i64 32, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !37, i64 100, !36, i64 112, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !47, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !37, i64 188, !37, i64 189, !40, i64 192, !47, i64 196, !47, i64 200, !36, i64 208, !37, i64 216, !36, i64 224, !40, i64 232, !36, i64 240, !76, i64 248, !77, i64 264, !40, i64 312, !36, i64 320}
!76 = !{!"uiKeyNavLock", !37, i64 0, !37, i64 4}
!77 = !{!"uiHandleButtonMulti", !40, i64 0, !37, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !40, i64 44}
!78 = !{!79, !40, i64 176}
!79 = !{!"uiPopupBlockHandle", !36, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 25, !36, i64 32, !36, i64 40, !36, i64 48, !80, i64 56, !36, i64 96, !76, i64 104, !36, i64 120, !36, i64 128, !36, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !37, i64 160, !40, i64 176, !37, i64 180, !37, i64 184}
!80 = !{!"uiPopupBlockCreate", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !36, i64 32}
!81 = !{!82, !36, i64 24}
!82 = !{!"uiBlock", !36, i64 0, !36, i64 8, !46, i64 16, !36, i64 32, !36, i64 40, !46, i64 48, !46, i64 64, !36, i64 80, !46, i64 88, !37, i64 104, !37, i64 232, !53, i64 296, !47, i64 312, !40, i64 316, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !40, i64 424, !39, i64 428, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 440, !36, i64 448, !37, i64 456, !37, i64 457, !37, i64 458, !37, i64 459, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !53, i64 480, !46, i64 496, !36, i64 512, !36, i64 520, !36, i64 528, !36, i64 536, !37, i64 544, !37, i64 556, !37, i64 557, !83, i64 624}
!83 = !{!"PieMenuData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !40, i64 40, !40, i64 44, !47, i64 48}
!84 = !{!39, !39, i64 0}
!85 = !{!47, !47, i64 0}
!86 = distinct !{!86, !71}
!87 = distinct !{!87, !71}
!88 = distinct !{!88, !71}
!89 = !{!75, !36, i64 240}
!90 = !{!75, !40, i64 28}
!91 = distinct !{!91, !71}
!92 = !{!75, !37, i64 36}
!93 = !{!"interface_handlers.c:button_activate_exit"}
!94 = !{!52, !36, i64 992}
!95 = !{!75, !36, i64 8}
!96 = !{!75, !37, i64 268}
!97 = distinct !{!97, !71}
!98 = !{!82, !36, i64 512}
!99 = !{!82, !40, i64 424}
!100 = !{!75, !37, i64 37}
!101 = !{!75, !40, i64 32}
!102 = !{!79, !40, i64 148}
!103 = !{!79, !40, i64 152}
!104 = !{!75, !36, i64 16}
!105 = distinct !{!105, !71}
!106 = !{!82, !37, i64 458}
!107 = distinct !{!107, !71}
!108 = !{!75, !36, i64 48}
!109 = !{!75, !36, i64 56}
!110 = !{!"interface_handlers.c:ui_context_button_active"}
!111 = distinct !{!111, !71}
!112 = distinct !{!112, !71}
!113 = distinct !{!113, !71}
!114 = !{ptr @ui_context_rna_button_active_test}
!115 = !{!79, !36, i64 0}
!116 = !{!52, !36, i64 832}
!117 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61}
!118 = !{!52, !40, i64 848}
!119 = !{!"interface_handlers.c:ui_context_rna_button_active"}
!120 = !{!82, !36, i64 376}
!121 = !{!82, !36, i64 384}
!122 = !{!52, !39, i64 36}
!123 = !{!82, !36, i64 520}
!124 = distinct !{!124, !71}
!125 = distinct !{!125, !71}
!126 = distinct !{!126, !71}
!127 = distinct !{!127, !71}
!128 = !{!129, !40, i64 680}
!129 = !{!"Scene", !130, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !131, i64 280, !139, i64 4264, !46, i64 4296, !46, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !46, i64 4384, !140, i64 4400, !141, i64 4416, !144, i64 4600, !36, i64 4608, !145, i64 4616, !36, i64 4640, !146, i64 4648, !146, i64 4656, !133, i64 4664, !134, i64 4824, !147, i64 4888, !36, i64 4952}
!130 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!131 = !{!"RenderData", !132, i64 0, !36, i64 248, !36, i64 256, !135, i64 264, !136, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !47, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !53, i64 544, !53, i64 560, !137, i64 576, !46, i64 592, !39, i64 608, !39, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !40, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !47, i64 660, !47, i64 664, !39, i64 668, !39, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !47, i64 2528, !47, i64 2532, !39, i64 2536, !39, i64 2538, !47, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !40, i64 2576, !47, i64 2580, !37, i64 2584, !138, i64 2616, !40, i64 3976, !40, i64 3980}
!132 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !133, i64 24, !134, i64 184}
!133 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!134 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!135 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!136 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !47, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!137 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!138 = !{!"BakeData", !132, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!139 = !{!"AudioData", !40, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !47, i64 24, !47, i64 28}
!140 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!141 = !{!"GameData", !140, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !142, i64 40, !39, i64 64, !39, i64 66, !47, i64 68, !143, i64 72, !47, i64 128, !47, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!142 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!143 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !40, i64 40, !47, i64 44, !47, i64 48, !39, i64 52, !39, i64 54}
!144 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!145 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!146 = !{!"long", !37, i64 0}
!147 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!148 = distinct !{!148, !71}
!149 = distinct !{!149, !71}
!150 = !{!35, !39, i64 16}
!151 = !{!35, !39, i64 18}
!152 = !{!35, !36, i64 112}
!153 = !{!35, !39, i64 106}
!154 = !{!"interface_handlers.c:button_activate_init"}
!155 = !{!75, !36, i64 0}
!156 = !{!75, !37, i64 24}
!157 = !{!82, !37, i64 432}
!158 = !{!82, !41, i64 440}
!159 = !{!75, !37, i64 136}
!160 = !{!161, !36, i64 248}
!161 = !{!"ARegion", !36, i64 0, !36, i64 8, !162, i64 16, !137, i64 176, !137, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !47, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!162 = !{!"View2D", !53, i64 0, !53, i64 16, !137, i64 32, !137, i64 48, !137, i64 64, !37, i64 80, !37, i64 88, !47, i64 96, !47, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!163 = !{!"interface_handlers.c:ui_do_button"}
!164 = !{!35, !39, i64 74}
!165 = !{!35, !39, i64 78}
!166 = !{!35, !39, i64 76}
!167 = !{!35, !39, i64 72}
!168 = !{i8 0, i8 2}
!169 = !{!52, !37, i64 788}
!170 = !{!52, !36, i64 776}
!171 = !{!52, !40, i64 28}
!172 = !{!52, !36, i64 608}
!173 = !{!52, !36, i64 56}
!174 = !{i32 0, i32 2}
!175 = !{!52, !47, i64 632}
!176 = !{!75, !40, i64 264}
!177 = !{!82, !47, i64 312}
!178 = !{!35, !40, i64 20}
!179 = !{!75, !40, i64 308}
!180 = !{!35, !40, i64 48}
!181 = !{!"interface_handlers.c:ui_apply_button"}
!182 = !{!75, !37, i64 38}
!183 = !{!75, !41, i64 72}
!184 = !{!75, !41, i64 64}
!185 = !{!75, !37, i64 39}
!186 = !{!52, !36, i64 984}
!187 = !{!"interface_handlers.c:ui_apply_autokey"}
!188 = !{!82, !40, i64 664}
!189 = !{!45, !39, i64 10926}
!190 = !{!45, !47, i64 10908}
!191 = !{!"interface_handlers.c:copy_v2_v2"}
!192 = !{!"interface_handlers.c:sub_v2_v2v2"}
!193 = !{!"interface_handlers.c:normalize_v2_v2"}
!194 = !{!"interface_handlers.c:ui_handler_region"}
!195 = !{!"interface_handlers.c:ui_handler_remove_region"}
!196 = !{!"interface_handlers.c:ui_handler_popup"}
!197 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !68, i64 56, i64 8, !61, i64 64, i64 8, !61, i64 72, i64 1, !68, i64 76, i64 8, !68, i64 88, i64 8, !61, i64 96, i64 8, !61, i64 104, i64 8, !61, i64 112, i64 4, !43, i64 116, i64 4, !43, i64 120, i64 4, !43, i64 124, i64 4, !43, i64 128, i64 16, !68, i64 144, i64 4, !43, i64 148, i64 1, !68, i64 152, i64 8, !68}
!198 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !68, i64 48, i64 8, !61, i64 56, i64 8, !61, i64 64, i64 1, !68, i64 68, i64 8, !68, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 8, !61, i64 104, i64 4, !43, i64 108, i64 4, !43, i64 112, i64 4, !43, i64 116, i64 4, !43, i64 120, i64 16, !68, i64 136, i64 4, !43, i64 140, i64 1, !68, i64 144, i64 8, !68}
!199 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !68, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 1, !68, i64 60, i64 8, !68, i64 72, i64 8, !61, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 4, !43, i64 100, i64 4, !43, i64 104, i64 4, !43, i64 108, i64 4, !43, i64 112, i64 16, !68, i64 128, i64 4, !43, i64 132, i64 1, !68, i64 136, i64 8, !68}
!200 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 16, !68, i64 56, i64 4, !43, i64 60, i64 1, !68, i64 64, i64 8, !68}
!201 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 16, !68, i64 32, i64 4, !43, i64 36, i64 1, !68, i64 40, i64 8, !68}
!202 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 16, !68, i64 24, i64 4, !43, i64 28, i64 1, !68, i64 32, i64 8, !68}
!203 = !{i64 0, i64 4, !43, i64 4, i64 16, !68, i64 20, i64 4, !43, i64 24, i64 1, !68, i64 28, i64 8, !68}
!204 = !{!82, !40, i64 668}
!205 = !{!206, !39, i64 134}
!206 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !46, i64 176, !46, i64 192, !46, i64 208, !46, i64 224, !46, i64 240}
!207 = !{!"interface_handlers.c:ui_handler_remove_popup"}
!208 = distinct !{!208, !71}
!209 = distinct !{!209, !71}
!210 = distinct !{!210, !71}
!211 = distinct !{!211, !71}
!212 = !{!"interface_handlers.c:button_activate_state"}
!213 = !{!75, !36, i64 144}
!214 = !{!45, !40, i64 8484}
!215 = !{!75, !36, i64 40}
!216 = !{!79, !37, i64 25}
!217 = !{!"interface_handlers.c:ui_multibut_free"}
!218 = !{!75, !36, i64 272}
!219 = !{!75, !36, i64 280}
!220 = !{!"interface_handlers.c:ui_apply_undo"}
!221 = !{!52, !36, i64 768}
!222 = !{!"interface_handlers.c:ui_blocks_set_tooltips"}
!223 = distinct !{!223, !71}
!224 = !{!"interface_handlers.c:button_tooltip_timer_reset"}
!225 = !{!75, !36, i64 128}
!226 = !{!45, !40, i64 8}
!227 = !{!228, !36, i64 264}
!228 = !{!"wmWindowManager", !130, i64 0, !36, i64 120, !36, i64 128, !46, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 176, !229, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !46, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!229 = !{!"ReportList", !46, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!230 = !{!"interface_handlers.c:button_timers_tooltip_remove"}
!231 = !{!75, !36, i64 120}
!232 = !{!"interface_handlers.c:ui_textedit_begin"}
!233 = !{!75, !40, i64 152}
!234 = !{!75, !40, i64 156}
!235 = !{!75, !47, i64 160}
!236 = !{!"interface_handlers.c:ui_textedit_end"}
!237 = !{!"interface_handlers.c:ui_is_a_warp_but"}
!238 = !{!"interface_handlers.c:ui_numedit_begin"}
!239 = !{!75, !36, i64 112}
!240 = !{!52, !36, i64 976}
!241 = !{!52, !36, i64 968}
!242 = !{!75, !41, i64 80}
!243 = !{!52, !36, i64 960}
!244 = !{!52, !47, i64 624}
!245 = !{!52, !47, i64 628}
!246 = !{!75, !47, i64 200}
!247 = !{!75, !47, i64 196}
!248 = !{!75, !37, i64 188}
!249 = !{!75, !37, i64 189}
!250 = !{!"interface_handlers.c:ui_numedit_end"}
!251 = !{!75, !40, i64 172}
!252 = !{!75, !40, i64 164}
!253 = !{!75, !36, i64 208}
!254 = !{!75, !40, i64 192}
!255 = !{!"interface_handlers.c:ui_blockopen_begin"}
!256 = !{!52, !36, i64 808}
!257 = !{!52, !36, i64 800}
!258 = !{!52, !36, i64 680}
!259 = !{!"interface_handlers.c:ui_blockopen_end"}
!260 = !{!"interface_handlers.c:button_modal_state"}
!261 = !{!"interface_handlers.c:ui_handler_region_menu"}
!262 = !{!"interface_handlers.c:copy_v3_v3"}
!263 = !{!"interface_handlers.c:ui_but_find_mouse_over"}
!264 = !{!"interface_handlers.c:ui_handle_button_activate"}
!265 = !{!"interface_handlers.c:ui_handle_menus_recursive"}
!266 = !{!"interface_handlers.c:ui_handle_button_return_submenu"}
!267 = !{!79, !40, i64 156}
!268 = !{!"interface_handlers.c:ui_handle_button_event"}
!269 = !{!75, !36, i64 320}
!270 = !{!75, !40, i64 312}
!271 = !{!"interface_handlers.c:ui_apply_but_funcs_after"}
!272 = !{i64 0, i64 8, !61, i64 8, i64 8, !61}
!273 = !{i64 0, i64 8, !61, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 8, !61, i64 56, i64 8, !61, i64 64, i64 8, !61, i64 72, i64 8, !61, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 4, !43, i64 104, i64 8, !61, i64 112, i64 8, !61, i64 120, i64 4, !43, i64 128, i64 8, !61, i64 136, i64 4, !43, i64 144, i64 8, !61, i64 152, i64 8, !61, i64 160, i64 8, !61, i64 168, i64 8, !61, i64 176, i64 8, !61, i64 184, i64 8, !61, i64 192, i64 64, !68}
!274 = !{!59, !36, i64 184}
!275 = !{!59, !36, i64 168}
!276 = !{!59, !36, i64 176}
!277 = !{!59, !36, i64 16}
!278 = !{!59, !36, i64 24}
!279 = !{!59, !36, i64 32}
!280 = !{!59, !36, i64 40}
!281 = !{!59, !36, i64 48}
!282 = !{!59, !36, i64 80}
!283 = !{!59, !36, i64 88}
!284 = !{!59, !40, i64 96}
!285 = !{!59, !36, i64 104}
!286 = !{!59, !36, i64 112}
!287 = !{!59, !40, i64 120}
!288 = !{!59, !36, i64 56}
!289 = !{!59, !36, i64 64}
!290 = !{!59, !36, i64 72}
!291 = distinct !{!291, !71}
!292 = !{!"interface_handlers.c:ui_but_find_mouse_over_ex"}
!293 = !{!52, !37, i64 790}
!294 = distinct !{!294, !71}
!295 = distinct !{!295, !71}
!296 = !{!"interface_handlers.c:ui_mouse_inside_region"}
!297 = distinct !{!297, !71}
!298 = !{!161, !40, i64 80}
!299 = !{!161, !40, i64 84}
!300 = !{!"interface_handlers.c:ui_is_but_interactive"}
!301 = !{!52, !36, i64 912}
!302 = !{!52, !37, i64 789}
!303 = !{!"interface_handlers.c:ui_but_isect_pie_seg"}
!304 = !{!"interface_handlers.c:ui_but_contains_pt"}
!305 = !{!"interface_handlers.c:saacos"}
!306 = !{!"interface_handlers.c:dot_v2v2"}
!307 = !{!"interface_handlers.c:ui_handle_menu_return_submenu"}
!308 = !{!"interface_handlers.c:ui_handle_menu_button"}
!309 = !{!79, !36, i64 128}
!310 = !{!79, !36, i64 136}
!311 = !{!"interface_handlers.c:ui_handler_pie"}
!312 = !{!79, !36, i64 96}
!313 = !{!314, !41, i64 48}
!314 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !40, i64 32, !36, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !40, i64 88}
!315 = !{!45, !39, i64 10918}
!316 = !{!45, !39, i64 10920}
!317 = !{!45, !39, i64 10924}
!318 = !{!45, !40, i64 8524}
!319 = distinct !{!319, !71}
!320 = !{!82, !47, i64 672}
!321 = !{!82, !41, i64 656}
!322 = !{!45, !39, i64 10922}
!323 = !{!52, !37, i64 906}
!324 = distinct !{!324, !71}
!325 = !{!"interface_handlers.c:ui_handle_menu_event"}
!326 = !{!82, !47, i64 308}
!327 = !{!79, !37, i64 180}
!328 = !{i8 0, i8 117}
!329 = !{!82, !36, i64 392}
!330 = !{!82, !36, i64 496}
!331 = !{!82, !37, i64 430}
!332 = distinct !{!332, !71}
!333 = distinct !{!333, !71}
!334 = distinct !{!334, !71}
!335 = !{!79, !37, i64 24}
!336 = !{!"interface_handlers.c:ui_mouse_motion_towards_reinit"}
!337 = !{!"interface_handlers.c:ui_mouse_inside_button"}
!338 = !{!"interface_handlers.c:ui_handle_button_over"}
!339 = !{!"interface_handlers.c:uit_but_find_open_event"}
!340 = distinct !{!340, !71}
!341 = distinct !{!341, !71}
!342 = !{!"interface_handlers.c:BLI_rctf_size_x"}
!343 = !{!53, !47, i64 4}
!344 = !{!53, !47, i64 0}
!345 = !{!"interface_handlers.c:BLI_rctf_size_y"}
!346 = !{!53, !47, i64 12}
!347 = !{!53, !47, i64 8}
!348 = !{!"interface_handlers.c:mul_v2_fl"}
!349 = !{!"interface_handlers.c:add_v2_v2"}
!350 = !{!"interface_handlers.c:len_squared_v2v2"}
!351 = !{!"interface_handlers.c:ui_but_pie_menu_apply"}
!352 = !{!"interface_handlers.c:ui_but_pie_button_activate"}
!353 = !{!"interface_handlers.c:ui_block_pie_dir_activate"}
!354 = distinct !{!354, !71}
!355 = !{!"interface_handlers.c:ui_but_pie_menu_supported_apply"}
!356 = !{!"interface_handlers.c:sub_v2_v2v2_int"}
!357 = !{!"interface_handlers.c:copy_v2_v2_int"}
!358 = !{!"interface_handlers.c:add_v2_v2v2_int"}
!359 = !{!"interface_handlers.c:ui_menu_scroll"}
!360 = !{!52, !47, i64 604}
!361 = !{!52, !47, i64 600}
!362 = !{!82, !47, i64 304}
!363 = distinct !{!363, !71}
!364 = distinct !{!364, !71}
!365 = distinct !{!365, !71}
!366 = !{!"interface_handlers.c:ui_mouse_motion_towards_init"}
!367 = !{!"interface_handlers.c:ui_menu_scroll_test"}
!368 = !{!"interface_handlers.c:ui_menu_pass_event_to_parent_if_nonactive"}
!369 = !{!"interface_handlers.c:ui_but_last"}
!370 = distinct !{!370, !71}
!371 = !{!"interface_handlers.c:ui_but_first"}
!372 = distinct !{!372, !71}
!373 = !{!"interface_handlers.c:ui_mouse_motion_keynav_init"}
!374 = !{!76, !37, i64 0}
!375 = !{!"interface_handlers.c:ui_but_next"}
!376 = !{!52, !36, i64 0}
!377 = distinct !{!377, !71}
!378 = !{!"interface_handlers.c:ui_but_prev"}
!379 = !{!52, !36, i64 8}
!380 = distinct !{!380, !71}
!381 = !{!"interface_handlers.c:ui_mouse_motion_keynav_test"}
!382 = !{i32 0, i32 -1}
!383 = !{!"interface_handlers.c:ui_mouse_motion_towards_check"}
!384 = !{!161, !36, i64 0}
!385 = distinct !{!385, !71}
!386 = !{!79, !41, i64 16}
!387 = !{!"interface_handlers.c:max_ff"}
!388 = !{!"interface_handlers.c:min_ff"}
!389 = !{!"interface_handlers.c:ui_mouse_motion_towards_init_ex"}
!390 = !{!"interface_handlers.c:len_manhattan_v2v2_int"}
!391 = !{!"interface_handlers.c:len_manhattan_v2_int"}
!392 = !{!"interface_handlers.c:BLI_rctf_cent_x"}
!393 = !{!"interface_handlers.c:BLI_rctf_cent_y"}
!394 = !{!"interface_handlers.c:normalize_v2"}
!395 = !{!"interface_handlers.c:BLI_listbase_clear"}
!396 = !{!"interface_handlers.c:ui_context_rna_button_active_test"}
!397 = !{!"interface_handlers.c:copy_v2_fl"}
!398 = !{!"interface_handlers.c:ui_but_list_row_text_activate"}
!399 = !{!"interface_handlers.c:ui_but_copy_paste"}
!400 = !{!41, !41, i64 0}
!401 = !{!52, !37, i64 791}
!402 = !{!48, !39, i64 0}
!403 = !{!52, !36, i64 888}
!404 = !{!"interface_handlers.c:ui_but_drop"}
!405 = !{!406, !40, i64 20}
!406 = !{!"wmDrag", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !37, i64 32, !41, i64 1056, !36, i64 1064, !47, i64 1072, !40, i64 1076, !40, i64 1080, !37, i64 1084, !40, i64 1284}
!407 = !{!406, !36, i64 24}
!408 = distinct !{!408, !71}
!409 = !{!"interface_handlers.c:ui_but_menu"}
!410 = !{!411, !36, i64 8}
!411 = !{!"uiStringInfo", !40, i64 0, !36, i64 8}
!412 = !{!52, !36, i64 896}
!413 = !{!54, !36, i64 16}
!414 = !{!415, !36, i64 8}
!415 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !46, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !416, i64 152, !39, i64 184}
!416 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!417 = !{!52, !39, i64 904}
!418 = !{!419, !39, i64 154}
!419 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176}
!420 = !{!161, !39, i64 214}
!421 = !{!52, !36, i64 824}
!422 = !{!"interface_handlers.c:ui_do_but_BUT"}
!423 = !{!"interface_handlers.c:ui_do_but_KEYEVT"}
!424 = !{!"interface_handlers.c:ui_do_but_HOTKEYEVT"}
!425 = !{!52, !39, i64 794}
!426 = !{!"interface_handlers.c:ui_do_but_TOG"}
!427 = !{!"interface_handlers.c:ui_do_but_SCROLL"}
!428 = !{!"interface_handlers.c:ui_do_but_GRIP"}
!429 = !{!75, !40, i64 176}
!430 = !{!"interface_handlers.c:ui_do_but_NUM"}
!431 = !{i32 0, i32 3}
!432 = !{!52, !47, i64 592}
!433 = !{!52, !47, i64 596}
!434 = !{!75, !40, i64 168}
!435 = !{!"interface_handlers.c:ui_do_but_SLI"}
!436 = !{!"interface_handlers.c:ui_do_but_LISTROW"}
!437 = !{!"interface_handlers.c:ui_do_but_EXIT"}
!438 = !{!52, !36, i64 920}
!439 = !{!"interface_handlers.c:ui_do_but_HISTOGRAM"}
!440 = !{!441, !47, i64 5132}
!441 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !47, i64 5128, !47, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!442 = !{!"interface_handlers.c:ui_do_but_WAVEFORM"}
!443 = !{!444, !47, i64 24}
!444 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !47, i64 12, !40, i64 16, !47, i64 20, !47, i64 24, !40, i64 28, !47, i64 32, !40, i64 36, !37, i64 40, !441, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!445 = !{!"interface_handlers.c:ui_do_but_TEX"}
!446 = !{!"interface_handlers.c:ui_do_but_SEARCH_UNLINK"}
!447 = !{!137, !40, i64 4}
!448 = !{!137, !40, i64 0}
!449 = !{!"interface_handlers.c:ui_do_but_BLOCK"}
!450 = !{!"interface_handlers.c:ui_do_but_COLOR"}
!451 = !{!52, !36, i64 816}
!452 = !{!453, !40, i64 1856}
!453 = !{!"Brush", !130, i64 0, !454, i64 120, !36, i64 144, !455, i64 152, !455, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !47, i64 1840, !39, i64 1844, !39, i64 1846, !47, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !47, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !47, i64 1884, !47, i64 1888, !37, i64 1892, !47, i64 1904, !37, i64 1908, !40, i64 1920, !47, i64 1924, !47, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !47, i64 1948, !47, i64 1952, !47, i64 1956, !47, i64 1960, !47, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !47, i64 1980, !47, i64 1984, !40, i64 1988, !40, i64 1992, !47, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!454 = !{!"BrushClone", !36, i64 0, !37, i64 8, !47, i64 16, !47, i64 20}
!455 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !47, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308}
!456 = !{!453, !36, i64 800}
!457 = !{!48, !39, i64 2}
!458 = !{!"interface_handlers.c:ui_do_but_NORMAL"}
!459 = !{!"interface_handlers.c:ui_do_but_COLORBAND"}
!460 = !{!461, !47, i64 16}
!461 = !{!"CBData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !40, i64 20}
!462 = distinct !{!462, !71}
!463 = !{!"interface_handlers.c:ui_do_but_CURVE"}
!464 = !{!465, !40, i64 4}
!465 = !{!"CurveMapping", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !53, i64 16, !53, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!466 = !{!465, !47, i64 16}
!467 = !{!465, !47, i64 24}
!468 = !{!469, !36, i64 32}
!469 = !{!"CurveMap", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!470 = !{!469, !39, i64 0}
!471 = !{!472, !47, i64 0}
!472 = !{!"CurveMapPoint", !47, i64 0, !47, i64 4, !39, i64 8, !39, i64 10}
!473 = !{!472, !47, i64 4}
!474 = distinct !{!474, !71}
!475 = !{!469, !36, i64 40}
!476 = distinct !{!476, !71}
!477 = distinct !{!477, !71}
!478 = !{!472, !39, i64 8}
!479 = distinct !{!479, !71}
!480 = distinct !{!480, !71}
!481 = !{!"interface_handlers.c:ui_do_but_HSVCUBE"}
!482 = !{!"interface_handlers.c:ui_do_but_HSVCIRCLE"}
!483 = !{!"interface_handlers.c:ui_do_but_LINK"}
!484 = !{!"interface_handlers.c:ui_do_but_TRACKPREVIEW"}
!485 = !{!"interface_handlers.c:len_squared_v2"}
!486 = !{!"interface_handlers.c:ui_multibut_states_create"}
!487 = distinct !{!487, !71}
!488 = !{!75, !37, i64 288}
!489 = !{!"interface_handlers.c:ui_multibut_states_tag"}
!490 = distinct !{!490, !71}
!491 = !{!"interface_handlers.c:normalize_v3"}
!492 = !{!"interface_handlers.c:srgb_to_linearrgb_v3_v3"}
!493 = !{!"interface_handlers.c:linearrgb_to_srgb_v3_v3"}
!494 = !{!"interface_handlers.c:normalize_v3_v3"}
!495 = !{!"interface_handlers.c:dot_v3v3"}
!496 = !{!"interface_handlers.c:mul_v3_v3fl"}
!497 = !{!"interface_handlers.c:zero_v3"}
!498 = !{!"interface_handlers.c:popup_change_shortcut_func"}
!499 = !{!"interface_handlers.c:remove_shortcut_func"}
!500 = !{!"interface_handlers.c:popup_add_shortcut_func"}
!501 = !{!"interface_handlers.c:menu_change_shortcut"}
!502 = !{!"interface_handlers.c:but_shortcut_name_func"}
!503 = !{!"interface_handlers.c:menu_add_shortcut"}
!504 = !{!419, !39, i64 172}
!505 = !{!"interface_handlers.c:menu_add_shortcut_cancel"}
!506 = !{!"interface_handlers.c:ui_is_but_drag_toggle"}
!507 = !{!"interface_handlers.c:ui_numedit_but_SLI"}
!508 = !{!"interface_handlers.c:ui_numedit_apply"}
!509 = !{!"interface_handlers.c:ui_mouse_scale_warp"}
!510 = !{!"interface_handlers.c:ui_mouse_scale_warp_factor"}
!511 = !{!"interface_handlers.c:ui_event_to_snap"}
!512 = !{!"interface_handlers.c:ui_numedit_but_NUM"}
!513 = !{!"interface_handlers.c:ui_multibut_states_apply"}
!514 = !{!515, !41, i64 0}
!515 = !{!"uiButMultiState", !41, i64 0, !36, i64 8}
!516 = distinct !{!516, !71}
!517 = !{!"interface_handlers.c:ui_do_but_textedit"}
!518 = !{!52, !36, i64 696}
!519 = !{!35, !37, i64 42}
!520 = !{!52, !40, i64 784}
!521 = !{!"interface_handlers.c:ui_do_but_textedit_select"}
!522 = !{!"interface_handlers.c:ui_numedit_apply_snapf"}
!523 = !{!82, !36, i64 536}
!524 = !{!144, !37, i64 4}
!525 = !{!144, !47, i64 0}
!526 = !{!"interface_handlers.c:ui_numedit_apply_snap"}
!527 = !{!"interface_handlers.c:ui_multibut_lookup"}
!528 = !{!529, !36, i64 8}
!529 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!530 = !{!515, !36, i64 8}
!531 = distinct !{!531, !71}
!532 = !{!"interface_handlers.c:ui_textedit_set_cursor_pos"}
!533 = !{!534, !39, i64 2}
!534 = !{!"uiFontStyle", !39, i64 0, !39, i64 2, !39, i64 4, !37, i64 6, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !47, i64 24, !47, i64 28}
!535 = !{!534, !39, i64 4}
!536 = !{!534, !39, i64 0}
!537 = !{!52, !39, i64 42}
!538 = distinct !{!538, !71}
!539 = !{!"interface_handlers.c:ui_textedit_move"}
!540 = !{!"interface_handlers.c:ui_textedit_copypaste"}
!541 = distinct !{!541, !71}
!542 = distinct !{!542, !71}
!543 = !{!"interface_handlers.c:ui_textedit_delete"}
!544 = !{!"interface_handlers.c:ui_textedit_autocomplete"}
!545 = !{!52, !36, i64 704}
!546 = !{!"interface_handlers.c:ui_textedit_prev_but"}
!547 = distinct !{!547, !71}
!548 = distinct !{!548, !71}
!549 = !{!"interface_handlers.c:ui_textedit_next_but"}
!550 = distinct !{!550, !71}
!551 = distinct !{!551, !71}
!552 = !{!"interface_handlers.c:ui_textedit_type_buf"}
!553 = !{!"interface_handlers.c:ui_textedit_type_ascii"}
!554 = !{!"interface_handlers.c:ui_textedit_delete_selection"}
!555 = !{!"interface_handlers.c:ui_textedit_set_cursor_select"}
!556 = !{!"interface_handlers.c:ui_but_mouse_inside_icon"}
!557 = !{!52, !40, i64 20}
!558 = !{!"interface_handlers.c:ui_but_start_drag"}
!559 = !{!45, !39, i64 8910}
!560 = !{!561, !37, i64 1}
!561 = !{!"uiDragToggleHandle", !37, i64 0, !37, i64 1, !37, i64 4, !40, i64 12, !37, i64 16, !37, i64 20, !37, i64 28}
!562 = !{!561, !40, i64 12}
!563 = !{!564, !37, i64 12}
!564 = !{!"uiDragColorHandle", !37, i64 0, !37, i64 12}
!565 = !{!52, !37, i64 907}
!566 = !{!52, !47, i64 928}
!567 = !{!"interface_handlers.c:BLI_rcti_size_y"}
!568 = !{!137, !40, i64 12}
!569 = !{!137, !40, i64 8}
!570 = !{!"interface_handlers.c:BLI_rcti_size_x"}
!571 = !{!"interface_handlers.c:ui_handler_region_drag_toggle"}
!572 = !{!"interface_handlers.c:ui_handler_region_drag_toggle_remove"}
!573 = !{!"interface_handlers.c:ui_drag_toggle_set"}
!574 = !{!561, !37, i64 0}
!575 = !{!"interface_handlers.c:len_manhattan_v2v2"}
!576 = !{!"interface_handlers.c:ui_drag_toggle_set_xy_xy"}
!577 = distinct !{!577, !71}
!578 = distinct !{!578, !71}
!579 = !{!"interface_handlers.c:len_manhattan_v2"}
!580 = !{!"interface_handlers.c:ui_numedit_but_HISTOGRAM"}
!581 = !{!"interface_handlers.c:ui_numedit_but_WAVEFORM"}
!582 = !{!"interface_handlers.c:ui_apply_but_TEX"}
!583 = !{!52, !36, i64 744}
!584 = !{!"interface_handlers.c:ui_apply_but_func"}
!585 = !{!52, !36, i64 648}
!586 = !{!52, !36, i64 672}
!587 = !{!52, !36, i64 728}
!588 = !{!82, !36, i64 360}
!589 = !{!52, !36, i64 656}
!590 = !{!52, !36, i64 664}
!591 = !{!52, !47, i64 636}
!592 = !{!52, !36, i64 688}
!593 = !{!"interface_handlers.c:ui_palette_set_active"}
!594 = !{!595, !40, i64 152}
!595 = !{!"Palette", !130, i64 0, !46, i64 120, !46, i64 136, !40, i64 152, !40, i64 156}
!596 = !{!"interface_handlers.c:ui_numedit_but_NORMAL"}
!597 = distinct !{!597, !71}
!598 = !{!"interface_handlers.c:compare_v3v3"}
!599 = !{!"interface_handlers.c:ui_numedit_but_COLORBAND"}
!600 = !{!"interface_handlers.c:ui_numedit_but_CURVE"}
!601 = distinct !{!601, !71}
!602 = !{!465, !40, i64 0}
!603 = !{!465, !47, i64 32}
!604 = !{!465, !47, i64 20}
!605 = !{!465, !47, i64 36}
!606 = !{!465, !47, i64 40}
!607 = !{!465, !47, i64 28}
!608 = !{!465, !47, i64 44}
!609 = !{!"interface_handlers.c:ui_numedit_but_HSVCUBE"}
!610 = !{!"interface_handlers.c:ui_ndofedit_but_HSVCUBE"}
!611 = !{!612, !47, i64 24}
!612 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !47, i64 24, !40, i64 28}
!613 = !{!"interface_handlers.c:ui_rgb_to_color_picker_HSVCUBE_v"}
!614 = !{!"interface_handlers.c:ui_rgb_to_color_picker_HSVCUBE_compat_v"}
!615 = !{!"interface_handlers.c:ui_color_picker_to_rgb_HSVCUBE_v"}
!616 = !{!"interface_handlers.c:ui_color_snap_hue"}
!617 = !{!"interface_handlers.c:clamp_axis_max_v3"}
!618 = !{!"interface_handlers.c:max_fff"}
!619 = !{!"interface_handlers.c:mul_v3_fl"}
!620 = !{!"interface_handlers.c:ui_numedit_but_HSVCIRCLE"}
!621 = !{!45, !39, i64 8938}
!622 = !{!"interface_handlers.c:ui_ndofedit_but_HSVCIRCLE"}
!623 = !{!"interface_handlers.c:len_v2v2"}
!624 = !{!"interface_handlers.c:sqrt3f"}
!625 = !{!"interface_handlers.c:len_v2"}
!626 = !{!"interface_handlers.c:ui_numedit_but_TRACKPREVIEW"}
!627 = !{!628, !39, i64 106}
!628 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !629, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!629 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!630 = !{!628, !36, i64 120}
!631 = !{!629, !40, i64 56}
!632 = !{!628, !40, i64 108}
!633 = !{!628, !36, i64 112}
!634 = !{!629, !40, i64 60}
!635 = !{!628, !39, i64 0}
!636 = !{!"interface_handlers.c:ui_multibut_add"}
!637 = !{!"interface_handlers.c:ui_apply_but_BUT"}
!638 = !{!"interface_handlers.c:ui_apply_but_TOG"}
!639 = !{!52, !39, i64 32}
!640 = !{!52, !39, i64 34}
!641 = !{!"interface_handlers.c:ui_apply_but_ROW"}
!642 = !{!52, !47, i64 620}
!643 = distinct !{!643, !71}
!644 = !{!"interface_handlers.c:ui_apply_but_NUM"}
!645 = !{!"interface_handlers.c:ui_apply_but_BLOCK"}
!646 = !{!"interface_handlers.c:ui_apply_but_VEC"}
!647 = !{!"interface_handlers.c:ui_apply_but_BUTM"}
!648 = !{!52, !47, i64 616}
!649 = !{!"interface_handlers.c:ui_apply_but_COLORBAND"}
!650 = !{!"interface_handlers.c:ui_apply_but_CURVE"}
!651 = !{!"interface_handlers.c:ui_apply_but_LINK"}
!652 = !{!161, !40, i64 176}
!653 = !{!161, !40, i64 184}
!654 = distinct !{!654, !71}
!655 = !{!"interface_handlers.c:ui_apply_but_IMAGE"}
!656 = !{!"interface_handlers.c:ui_apply_but_HISTOGRAM"}
!657 = !{!"interface_handlers.c:ui_apply_but_WAVEFORM"}
!658 = !{!"interface_handlers.c:ui_apply_but_TRACKPREVIEW"}
!659 = !{!"interface_handlers.c:ui_multibut_restore"}
!660 = distinct !{!660, !71}
!661 = !{!"interface_handlers.c:ui_add_link"}
!662 = !{!663, !39, i64 32}
!663 = !{!"uiLinkLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 34}
!664 = !{!52, !36, i64 752}
!665 = !{!666, !39, i64 30}
!666 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32}
!667 = !{!666, !36, i64 8}
!668 = !{!666, !36, i64 16}
!669 = distinct !{!669, !71}
!670 = !{!666, !36, i64 0}
!671 = !{!"interface_handlers.c:ui_is_a_link"}
!672 = !{!663, !36, i64 16}
!673 = !{!663, !36, i64 24}
!674 = distinct !{!674, !71}
!675 = !{!"interface_handlers.c:ui_delete_active_linkline"}
!676 = !{!666, !36, i64 32}
!677 = !{!663, !36, i64 0}
!678 = distinct !{!678, !71}
!679 = distinct !{!679, !71}
!680 = distinct !{!680, !71}
!681 = !{!"interface_handlers.c:ui_add_smart_controller"}
!682 = !{!683, !36, i64 32}
!683 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !54, i64 16}
!684 = distinct !{!684, !71}
!685 = distinct !{!685, !71}
!686 = !{!687, !36, i64 1096}
!687 = !{!"Object", !130, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !688, i64 312, !36, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !47, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !146, i64 1304, !146, i64 1312, !40, i64 1320, !40, i64 1324, !46, i64 1328, !46, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !46, i64 1400, !36, i64 1416}
!688 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!689 = !{!690, !39, i64 24}
!690 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !39, i64 130, !40, i64 132}
!691 = !{!"interface_handlers.c:mul_v2_v2fl"}
!692 = !{!"interface_handlers.c:zero_v2"}
!693 = !{!"interface_handlers.c:BLI_listbase_is_empty"}
!694 = !{!46, !36, i64 0}
!695 = !{!"interface_handlers.c:ui_handle_list_event"}
!696 = !{!52, !36, i64 944}
!697 = !{!698, !36, i64 192}
!698 = !{!"uiList", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!699 = !{!698, !40, i64 180}
!700 = !{!701, !36, i64 40}
!701 = !{!"uiListDyn", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 32, !36, i64 40}
!702 = !{!701, !36, i64 32}
!703 = !{!701, !40, i64 16}
!704 = !{!701, !40, i64 12}
!705 = !{!698, !40, i64 176}
!706 = distinct !{!706, !71}
!707 = !{!698, !40, i64 92}
!708 = !{!698, !40, i64 100}
!709 = !{!701, !40, i64 8}
!710 = !{!701, !40, i64 4}
!711 = !{!701, !40, i64 0}
!712 = !{!698, !40, i64 96}
!713 = !{!"interface_handlers.c:ui_list_find_mouse_over"}
!714 = distinct !{!714, !71}
!715 = distinct !{!715, !71}
