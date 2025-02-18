; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_fly.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_fly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.FlyInfo = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, [2 x i32], [2 x i32], float, float, ptr, float, i16, i8, i32, i32, float, float, float, double, double, ptr, [3 x float], ptr }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
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
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }

@fly_modal_keymap.modal_items = internal global [19 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.27 }, %struct.EnumPropertyItem { i32 14, ptr @.str.28, i32 0, ptr @.str.26, ptr @.str.29 }, %struct.EnumPropertyItem { i32 15, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ACCELERATE\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Accelerate\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DECELERATE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Decelerate\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PAN_ENABLE\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Pan Enable\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"PAN_DISABLE\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Pan Disable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"FORWARD\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Fly Forward\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"BACKWARD\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Fly Backward\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Fly Left\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Fly Right\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Fly Up\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Fly Down\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"AXIS_LOCK_X\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"X Axis Correction\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"X axis correction (toggle)\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"AXIS_LOCK_Z\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Z axis correction (toggle)\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"PRECISION_ENABLE\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Precision Enable\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"PRECISION_DISABLE\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Precision Disable\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"FREELOOK_ENABLE\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Rotation Enable\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"FREELOOK_DISABLE\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Rotation Disable\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"View3D Fly Modal\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"VIEW3D_OT_fly\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Fly Navigation\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Interactively fly around the scene\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [13 x i8] c"FlyOperation\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [45 x i8] c"Cannot fly a camera from an external library\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"Cannot fly when the view offset is locked\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"Cannot fly an object with constraints\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.46 = private unnamed_addr constant [164 x i8] c"LMB/Return: confirm, RMB/Esc: cancel, MMB: pan, WASDQE: direction, Alt: slow, Ctrl: free look, X: Upright x axis (%s), Z: Upright z axis (%s), (+/- | Wheel): speed\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fly_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.38) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @fly_modal_keymap.modal_items) #8
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #8
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #8
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 164, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #8
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 162, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 4) #8
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #8
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 4) #8
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 19) #8
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 5) #8
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #8
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #8
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #8
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #8
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #8
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 11) #8
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 12) #8
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 11) #8
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 12) #8
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #8
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #8
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #8
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #8
  %35 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 13) #8
  %36 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 122, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 14) #8
  %37 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #8
  %38 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #8
  %39 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #8
  %40 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #8
  %41 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 17) #8
  %42 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 18) #8
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.39) #8
  br label %43

43:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_fly(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.39, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @fly_invoke, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @fly_cancel, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @fly_modal, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fly_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.rctf, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 27
  %10 = load i8, ptr %9, align 1, !tbaa !51
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %183

13:                                               ; preds = %3
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %15 = tail call ptr %14(i64 noundef 160, ptr noundef nonnull @.str.42) #8
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !55
  %17 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #8
  %18 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  store ptr %18, ptr %15, align 8, !tbaa !57
  %19 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %20 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !61
  %21 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %22 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !62
  %23 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %24 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !63
  %25 = load ptr, ptr %15, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %25, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !64
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %13
  %30 = load ptr, ptr %20, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 15
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8 1, ptr %26, align 1, !tbaa !64
  br label %35

35:                                               ; preds = %34, %29, %13
  %36 = load i8, ptr %26, align 1, !tbaa !64
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load ptr, ptr %20, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.View3D, ptr %39, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %177

45:                                               ; preds = %38, %35
  %46 = load ptr, ptr %20, align 8, !tbaa !61
  %47 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %46, ptr noundef %25) #8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %177

49:                                               ; preds = %45
  %50 = load ptr, ptr %15, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %50, i64 0, i32 25
  %52 = load i8, ptr %51, align 1, !tbaa !64
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load ptr, ptr %20, align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.View3D, ptr %55, i64 0, i32 15
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 106
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %177

61:                                               ; preds = %54, %49
  %62 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 5
  store i16 0, ptr %62, align 8, !tbaa !74
  %63 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 14
  store float 0.000000e+00, ptr %63, align 8, !tbaa !75
  %64 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 15
  store i16 2, ptr %64, align 4, !tbaa !76
  %65 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 16
  store i8 0, ptr %65, align 2, !tbaa !77
  %66 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 17
  %67 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 18
  %68 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %68, align 8, !tbaa !78
  %69 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 7
  store i8 0, ptr %69, align 1, !tbaa !79
  %70 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 8
  store i8 0, ptr %70, align 4, !tbaa !80
  %71 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 25
  store float 0.000000e+00, ptr %71, align 4, !tbaa !81
  %72 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 25, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !81
  %73 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 25, i64 2
  store float 0.000000e+00, ptr %73, align 4, !tbaa !81
  %74 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %75 = tail call ptr @WM_event_add_timer(ptr noundef %74, ptr noundef %17, i32 noundef 272, double noundef 0x3F847AE140000000) #8
  %76 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 4
  store ptr %75, ptr %76, align 8, !tbaa !82
  %77 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 9
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !83
  store i32 %79, ptr %77, align 4, !tbaa !83
  %80 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !83
  %82 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 9, i64 1
  store i32 %81, ptr %82, align 4, !tbaa !83
  %83 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 13
  store ptr null, ptr %83, align 8, !tbaa !84
  %84 = tail call double @PIL_check_seconds_timer() #8
  %85 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 22
  store double %84, ptr %85, align 8, !tbaa !85
  %86 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 23
  store double %84, ptr %86, align 8, !tbaa !86
  %87 = load ptr, ptr %22, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.ARegion, ptr %87, i64 0, i32 20
  %89 = load ptr, ptr %88, align 8, !tbaa !87
  %90 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %89, ptr noundef nonnull @drawFlyPixel, ptr noundef nonnull %15, i32 noundef 1) #8
  %91 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 24
  store ptr %90, ptr %91, align 8, !tbaa !91
  %92 = load ptr, ptr %15, align 8, !tbaa !57
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %92, i64 0, i32 32
  %94 = load i16, ptr %93, align 2, !tbaa !92
  %95 = or i16 %94, 8
  store i16 %95, ptr %93, align 2, !tbaa !92
  store float 1.000000e+00, ptr %6, align 4, !tbaa !81
  %96 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %96, align 4, !tbaa !81
  %97 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %97, align 4, !tbaa !81
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %92, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %98) #8
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  %99 = load float, ptr %97, align 4, !tbaa !81
  %100 = call float @llvm.fabs.f32(float %99)
  %101 = fcmp olt float %100, 0x3FB99999A0000000
  br i1 %101, label %102, label %103

102:                                              ; preds = %61
  store i32 1, ptr %67, align 4, !tbaa !93
  br label %103

103:                                              ; preds = %102, %61
  %104 = load ptr, ptr %24, align 8, !tbaa !63
  %105 = load ptr, ptr %20, align 8, !tbaa !61
  %106 = load ptr, ptr %15, align 8, !tbaa !57
  %107 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !94
  %108 = and i32 %107, 524288
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i8
  %111 = call ptr @ED_view3d_cameracontrol_acquire(ptr noundef %104, ptr noundef %105, ptr noundef %106, i8 noundef zeroext %110) #8
  %112 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 26
  store ptr %111, ptr %112, align 8, !tbaa !98
  %113 = load ptr, ptr %24, align 8, !tbaa !63
  %114 = getelementptr inbounds %struct.Scene, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !99
  %116 = icmp eq ptr %115, null
  %117 = load ptr, ptr %22, align 8, !tbaa !62
  br i1 %116, label %138, label %118

118:                                              ; preds = %103
  %119 = load ptr, ptr %20, align 8, !tbaa !61
  %120 = load ptr, ptr %15, align 8, !tbaa !57
  call void @ED_view3d_calc_camera_border(ptr noundef %113, ptr noundef %117, ptr noundef %119, ptr noundef %120, ptr noundef nonnull %5, i8 noundef zeroext 0) #8
  %121 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %122 = load float, ptr %121, align 4, !tbaa !116
  %123 = load float, ptr %5, align 4, !tbaa !117
  %124 = fsub float %122, %123
  %125 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 11
  store float %124, ptr %125, align 8, !tbaa !118
  %126 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %127 = load float, ptr %126, align 4, !tbaa !119
  %128 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %129 = load float, ptr %128, align 4, !tbaa !120
  %130 = fsub float %127, %129
  %131 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 12
  store float %130, ptr %131, align 4, !tbaa !121
  %132 = fmul float %124, 5.000000e-01
  %133 = fadd float %123, %132
  %134 = fptosi float %133 to i32
  %135 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 10
  store i32 %134, ptr %135, align 8, !tbaa !83
  %136 = fmul float %130, 5.000000e-01
  %137 = fadd float %129, %136
  br label %151

138:                                              ; preds = %103
  %139 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 5
  %140 = load i16, ptr %139, align 8, !tbaa !122
  %141 = sitofp i16 %140 to float
  %142 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 11
  store float %141, ptr %142, align 8, !tbaa !118
  %143 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 6
  %144 = load i16, ptr %143, align 2, !tbaa !123
  %145 = sitofp i16 %144 to float
  %146 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 12
  store float %145, ptr %146, align 4, !tbaa !121
  %147 = fmul float %141, 5.000000e-01
  %148 = fptosi float %147 to i32
  %149 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 10
  store i32 %148, ptr %149, align 8, !tbaa !83
  %150 = fmul float %145, 5.000000e-01
  br label %151

151:                                              ; preds = %138, %118
  %152 = phi float [ %150, %138 ], [ %137, %118 ]
  %153 = fptosi float %152 to i32
  %154 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 10, i64 1
  store i32 %153, ptr %154, align 4, !tbaa !83
  %155 = load ptr, ptr %22, align 8, !tbaa !62
  %156 = getelementptr inbounds %struct.ARegion, ptr %155, i64 0, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !124
  %158 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 10
  %159 = load i32, ptr %158, align 8, !tbaa !83
  %160 = add nsw i32 %159, %157
  %161 = getelementptr inbounds %struct.ARegion, ptr %155, i64 0, i32 3, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !125
  %163 = getelementptr inbounds %struct.FlyInfo, ptr %15, i64 0, i32 10, i64 1
  %164 = load i32, ptr %163, align 4, !tbaa !83
  %165 = add nsw i32 %164, %162
  call void @WM_cursor_warp(ptr noundef %17, i32 noundef %160, i32 noundef %165) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %166 = load i32, ptr %66, align 8, !tbaa !126
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i8
  %169 = call ptr @WM_bool_as_string(i8 noundef zeroext %168) #8
  %170 = load i32, ptr %67, align 4, !tbaa !93
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i8
  %173 = call ptr @WM_bool_as_string(i8 noundef zeroext %172) #8
  %174 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.46, ptr noundef %169, ptr noundef %173) #8
  %175 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %175, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call fastcc void @flyEvent(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2)
  %176 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %183

177:                                              ; preds = %54, %45, %38
  %178 = phi ptr [ @.str.43, %38 ], [ @.str.44, %45 ], [ @.str.45, %54 ]
  %179 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %180 = load ptr, ptr %179, align 8, !tbaa !127
  tail call void @BKE_report(ptr noundef %180, i32 noundef 32, ptr noundef nonnull %178) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %182 = load ptr, ptr %16, align 8, !tbaa !55
  tail call void %181(ptr noundef %182) #8
  br label %183

183:                                              ; preds = %3, %151, %177
  %184 = phi i32 [ 2, %177 ], [ 1, %151 ], [ 2, %3 ]
  ret i32 %184
}

; Function Attrs: nounwind uwtable
define internal void @fly_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %4, i64 0, i32 5
  store i16 1, ptr %5, align 8, !tbaa !74
  %6 = tail call fastcc i32 @flyEnd(ptr noundef %0, ptr noundef %4), !range !128
  store ptr null, ptr %3, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @fly_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 6
  store i8 0, ptr %17, align 2, !tbaa !129
  tail call fastcc void @flyEvent(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2)
  %18 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !130
  br i1 %20, label %53, label %23

23:                                               ; preds = %3
  %24 = icmp eq i16 %22, 400
  br i1 %24, label %25, label %431

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !98
  %27 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %26) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  %28 = load ptr, ptr %18, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = load ptr, ptr %12, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !79
  %34 = icmp eq ptr %27, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 56
  %37 = load i16, ptr %36, align 2, !tbaa !132
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i16 [ %37, %35 ], [ 0, %25 ]
  call void @view3d_ndof_fly(ptr noundef %28, ptr noundef %30, ptr noundef %31, i8 noundef zeroext %33, i16 noundef signext %39, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %40 = load i8, ptr %9, align 1, !tbaa !133
  %41 = icmp ne i8 %40, 0
  %42 = load i8, ptr %10, align 1
  %43 = icmp ne i8 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  store i8 1, ptr %17, align 2, !tbaa !129
  %46 = load ptr, ptr %12, align 8, !tbaa !57
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %46, i64 0, i32 25
  %48 = load i8, ptr %47, align 1, !tbaa !64
  %49 = icmp eq i8 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %14, align 8, !tbaa !98
  call void @ED_view3d_cameracontrol_update(ptr noundef %51, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %42, i8 noundef zeroext %40) #8
  br label %52

52:                                               ; preds = %38, %45, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  br label %431

53:                                               ; preds = %3
  %54 = icmp eq i16 %22, 272
  br i1 %54, label %55, label %431

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  %58 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !82
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %61, label %431

61:                                               ; preds = %55
  %62 = load ptr, ptr %12, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %63 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 11
  %64 = load float, ptr %63, align 8, !tbaa !118
  %65 = fdiv float %64, 2.000000e+01
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 12
  %68 = load float, ptr %67, align 4, !tbaa !121
  %69 = fdiv float %68, 2.000000e+01
  %70 = fptosi float %69 to i32
  %71 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !83
  %73 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 10
  %74 = load i32, ptr %73, align 8, !tbaa !83
  %75 = sub nsw i32 %72, %74
  %76 = sitofp i32 %75 to float
  %77 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 9, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !83
  %79 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 10, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !83
  %81 = sub nsw i32 %78, %80
  %82 = sitofp i32 %81 to float
  %83 = sitofp i32 %66 to float
  %84 = fcmp ogt float %76, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %61
  %86 = fsub float %76, %83
  br label %93

87:                                               ; preds = %61
  %88 = sub nsw i32 0, %66
  %89 = sitofp i32 %88 to float
  %90 = fcmp olt float %76, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = fadd float %83, %76
  br label %93

93:                                               ; preds = %91, %87, %85
  %94 = phi float [ %86, %85 ], [ %92, %91 ], [ 0.000000e+00, %87 ]
  %95 = sitofp i32 %70 to float
  %96 = fcmp ogt float %82, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = fsub float %82, %95
  br label %105

99:                                               ; preds = %93
  %100 = sub nsw i32 0, %70
  %101 = sitofp i32 %100 to float
  %102 = fcmp olt float %82, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = fadd float %95, %82
  br label %105

105:                                              ; preds = %103, %99, %97
  %106 = phi float [ %98, %97 ], [ %104, %103 ], [ 0.000000e+00, %99 ]
  %107 = fcmp une float %94, 0.000000e+00
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = shl nsw i32 %66, 1
  %110 = sitofp i32 %109 to float
  %111 = fsub float %64, %110
  %112 = fdiv float %94, %111
  %113 = tail call float @llvm.fabs.f32(float %112)
  %114 = fmul float %112, %113
  br label %115

115:                                              ; preds = %108, %105
  %116 = phi float [ %114, %108 ], [ %94, %105 ]
  %117 = fcmp une float %106, 0.000000e+00
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = shl nsw i32 %70, 1
  %120 = sitofp i32 %119 to float
  %121 = fsub float %68, %120
  %122 = fdiv float %106, %121
  %123 = tail call float @llvm.fabs.f32(float %122)
  %124 = fmul float %122, %123
  br label %125

125:                                              ; preds = %118, %115
  %126 = phi float [ %124, %118 ], [ %106, %115 ]
  %127 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 14
  %128 = load float, ptr %127, align 8, !tbaa !75
  %129 = fcmp une float %128, 0.000000e+00
  %130 = fcmp une float %116, 0.000000e+00
  %131 = select i1 %129, i1 true, i1 %130
  %132 = fcmp une float %126, 0.000000e+00
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %153, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 18
  %136 = load i32, ptr %135, align 4, !tbaa !93
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 17
  %140 = load i32, ptr %139, align 8, !tbaa !126
  %141 = icmp ne i32 %140, 0
  %142 = load float, ptr %5, align 4
  %143 = fcmp une float %142, 0.000000e+00
  %144 = select i1 %141, i1 true, i1 %143
  %145 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %146 = load float, ptr %145, align 4
  %147 = fcmp une float %146, 0.000000e+00
  %148 = select i1 %144, i1 true, i1 %147
  %149 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %150 = load float, ptr %149, align 4
  %151 = fcmp une float %150, 0.000000e+00
  %152 = select i1 %148, i1 true, i1 %151
  br i1 %152, label %153, label %419

153:                                              ; preds = %138, %134, %125
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %154 = tail call double @PIL_check_seconds_timer() #8
  %155 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 23
  %156 = load double, ptr %155, align 8, !tbaa !86
  %157 = fsub double %154, %156
  %158 = fptrunc double %157 to float
  %159 = fcmp ogt float %158, 0x3FA99999A0000000
  %160 = select i1 %159, float 0x3FA99999A0000000, float %158
  store double %154, ptr %155, align 8, !tbaa !86
  %161 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 7
  %162 = load i8, ptr %161, align 1, !tbaa !79
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %153
  %165 = load float, ptr %127, align 8, !tbaa !75
  %166 = fsub float 1.000000e+00, %160
  %167 = fmul float %166, %165
  store float %167, ptr %127, align 8, !tbaa !75
  br label %168

168:                                              ; preds = %164, %153
  %169 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %169) #8
  %170 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 16
  %171 = load i8, ptr %170, align 2, !tbaa !77
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %173, label %192

173:                                              ; preds = %168
  %174 = fneg float %116
  %175 = fneg float %126
  store float %174, ptr %8, align 4, !tbaa !81
  %176 = getelementptr inbounds float, ptr %8, i64 1
  store float %175, ptr %176, align 4, !tbaa !81
  %177 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %177, align 4, !tbaa !81
  %178 = load i8, ptr %161, align 1, !tbaa !79
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = fmul float %116, 0xBFB99999A0000000
  store float %181, ptr %8, align 4, !tbaa !81
  %182 = fmul float %126, 0xBFB99999A0000000
  store float %182, ptr %176, align 4, !tbaa !81
  br label %183

183:                                              ; preds = %180, %173
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  %184 = fmul float %158, 2.000000e+02
  %185 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 21
  %186 = load float, ptr %185, align 8, !tbaa !78
  %187 = fmul float %184, %186
  %188 = load float, ptr %8, align 4, !tbaa !81
  %189 = fmul float %188, %187
  store float %189, ptr %8, align 4, !tbaa !81
  %190 = load float, ptr %176, align 4, !tbaa !81
  %191 = fmul float %187, %190
  store float %191, ptr %176, align 4, !tbaa !81
  br label %345

192:                                              ; preds = %168
  br i1 %132, label %193, label %210

193:                                              ; preds = %192
  store float 1.000000e+00, ptr %6, align 4, !tbaa !81
  %194 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %194, align 4, !tbaa !81
  %195 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %195, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %196 = fmul float %126, %158
  %197 = fmul float %196, -1.000000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %197) #8
  %198 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %198, ptr noundef nonnull %198, ptr noundef nonnull %7) #8
  %199 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 17
  %200 = load i32, ptr %199, align 8, !tbaa !126
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  store i32 2, ptr %199, align 8, !tbaa !126
  br label %203

203:                                              ; preds = %202, %193
  %204 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 18
  %205 = load i32, ptr %204, align 4, !tbaa !93
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  store i32 2, ptr %204, align 4, !tbaa !93
  br label %208

208:                                              ; preds = %207, %203
  %209 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 19
  store float 0.000000e+00, ptr %209, align 8, !tbaa !135
  br label %210

210:                                              ; preds = %208, %192
  br i1 %130, label %211, label %235

211:                                              ; preds = %210
  store float 0.000000e+00, ptr %6, align 4, !tbaa !81
  %212 = getelementptr inbounds float, ptr %6, i64 1
  store float 1.000000e+00, ptr %212, align 4, !tbaa !81
  %213 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %213, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %214 = load float, ptr %213, align 4, !tbaa !81
  %215 = fcmp olt float %214, 0.000000e+00
  %216 = fneg float %116
  %217 = select i1 %215, float %216, float %116
  %218 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 18
  %219 = load i32, ptr %218, align 4, !tbaa !93
  %220 = icmp eq i32 %219, 0
  store float 0.000000e+00, ptr %6, align 4, !tbaa !81
  br i1 %220, label %222, label %221

221:                                              ; preds = %211
  store float 0.000000e+00, ptr %212, align 4, !tbaa !81
  store float 1.000000e+00, ptr %213, align 4, !tbaa !81
  br label %223

222:                                              ; preds = %211
  store float 1.000000e+00, ptr %212, align 4, !tbaa !81
  store float 0.000000e+00, ptr %213, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  br label %223

223:                                              ; preds = %222, %221
  %224 = fmul float %217, %158
  %225 = fmul float %224, 1.000000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %225) #8
  %226 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %226, ptr noundef nonnull %226, ptr noundef nonnull %7) #8
  %227 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 17
  %228 = load i32, ptr %227, align 8, !tbaa !126
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  store i32 2, ptr %227, align 8, !tbaa !126
  br label %231

231:                                              ; preds = %230, %223
  %232 = load i32, ptr %218, align 4, !tbaa !93
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  store i32 2, ptr %218, align 4, !tbaa !93
  br label %235

235:                                              ; preds = %234, %231, %210
  %236 = phi float [ %217, %234 ], [ %217, %231 ], [ %116, %210 ]
  %237 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 18
  %238 = load i32, ptr %237, align 4, !tbaa !93
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %258

240:                                              ; preds = %235
  store float 1.000000e+00, ptr %6, align 4, !tbaa !81
  %241 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %241, align 4, !tbaa !81
  %242 = getelementptr inbounds float, ptr %6, i64 2
  store float 0.000000e+00, ptr %242, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %243 = load float, ptr %242, align 4, !tbaa !81
  %244 = call float @llvm.fabs.f32(float %243)
  %245 = fcmp ogt float %244, 0x3EE4F8B580000000
  br i1 %245, label %246, label %256

246:                                              ; preds = %240
  %247 = fmul float %243, 5.000000e+00
  store float 0.000000e+00, ptr %6, align 4, !tbaa !81
  store float 0.000000e+00, ptr %241, align 4, !tbaa !81
  store float 1.000000e+00, ptr %242, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %248 = fmul float %160, %247
  %249 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 20
  %250 = load float, ptr %249, align 4, !tbaa !136
  %251 = fmul float %248, %250
  %252 = fmul float %251, 0x3FB99999A0000000
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %252) #8
  %253 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %253, ptr noundef nonnull %253, ptr noundef nonnull %7) #8
  %254 = load float, ptr %249, align 4, !tbaa !136
  %255 = fadd float %254, 0x3FA99999A0000000
  store float %255, ptr %249, align 4, !tbaa !136
  br label %258

256:                                              ; preds = %240
  store i32 1, ptr %237, align 4, !tbaa !93
  %257 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 20
  store float 0.000000e+00, ptr %257, align 4, !tbaa !136
  br label %258

258:                                              ; preds = %256, %246, %235
  %259 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 17
  %260 = load i32, ptr %259, align 8, !tbaa !126
  %261 = icmp eq i32 %260, 2
  %262 = fcmp oeq float %126, 0.000000e+00
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %282

264:                                              ; preds = %258
  store float 0.000000e+00, ptr %6, align 4, !tbaa !81
  %265 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %265, align 4, !tbaa !81
  %266 = getelementptr inbounds float, ptr %6, i64 2
  store float 1.000000e+00, ptr %266, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %267 = load float, ptr %266, align 4, !tbaa !81
  %268 = call float @llvm.fabs.f32(float %267)
  %269 = fcmp ogt float %268, 0x3EE4F8B580000000
  br i1 %269, label %270, label %280

270:                                              ; preds = %264
  %271 = fmul float %267, -5.000000e+00
  store float 1.000000e+00, ptr %6, align 4, !tbaa !81
  store float 0.000000e+00, ptr %265, align 4, !tbaa !81
  store float 0.000000e+00, ptr %266, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %272 = fmul float %160, %271
  %273 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 19
  %274 = load float, ptr %273, align 8, !tbaa !135
  %275 = fmul float %272, %274
  %276 = fmul float %275, 0x3FB99999A0000000
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %6, float noundef %276) #8
  %277 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %277, ptr noundef nonnull %277, ptr noundef nonnull %7) #8
  %278 = load float, ptr %273, align 8, !tbaa !135
  %279 = fadd float %278, 0x3FA99999A0000000
  store float %279, ptr %273, align 8, !tbaa !135
  br label %282

280:                                              ; preds = %264
  store i32 1, ptr %259, align 8, !tbaa !126
  %281 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 19
  store float 0.000000e+00, ptr %281, align 8, !tbaa !135
  br label %282

282:                                              ; preds = %280, %270, %258
  %283 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 15
  %284 = load i16, ptr %283, align 4, !tbaa !76
  %285 = icmp eq i16 %284, -1
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  store float 0.000000e+00, ptr %8, align 4, !tbaa !81
  %287 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %287, align 4, !tbaa !81
  %288 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %288, align 4, !tbaa !81
  br label %335

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 8
  %291 = load i8, ptr %290, align 4, !tbaa !80
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  store float 0.000000e+00, ptr %8, align 4, !tbaa !81
  %294 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %294, align 4, !tbaa !81
  %295 = getelementptr inbounds float, ptr %8, i64 2
  store float 0.000000e+00, ptr %295, align 4, !tbaa !81
  %296 = sext i16 %284 to i64
  %297 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %296
  store float 1.000000e+00, ptr %297, align 4, !tbaa !81
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  br label %335

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25
  %300 = load float, ptr %299, align 4, !tbaa !81
  %301 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !81
  %303 = fmul float %302, %302
  %304 = call float @llvm.fmuladd.f32(float %300, float %300, float %303)
  %305 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !81
  %307 = call float @llvm.fmuladd.f32(float %306, float %306, float %304)
  %308 = fcmp ogt float %307, 0x38AA95A5C0000000
  br i1 %308, label %309, label %319

309:                                              ; preds = %298
  %310 = call float @sqrtf(float noundef %307) #8
  %311 = fdiv float 1.000000e+00, %310
  %312 = load float, ptr %299, align 4, !tbaa !81
  %313 = fmul float %312, %311
  store float %313, ptr %8, align 4, !tbaa !81
  %314 = load float, ptr %301, align 4, !tbaa !81
  %315 = fmul float %311, %314
  %316 = getelementptr inbounds float, ptr %8, i64 1
  store float %315, ptr %316, align 4, !tbaa !81
  %317 = load float, ptr %305, align 4, !tbaa !81
  %318 = fmul float %311, %317
  br label %321

319:                                              ; preds = %298
  store float 0.000000e+00, ptr %8, align 4, !tbaa !81
  %320 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %320, align 4, !tbaa !81
  br label %321

321:                                              ; preds = %319, %309
  %322 = phi float [ 0.000000e+00, %319 ], [ %318, %309 ]
  %323 = getelementptr inbounds float, ptr %8, i64 2
  store float %322, ptr %323, align 4, !tbaa !81
  %324 = load float, ptr %127, align 8, !tbaa !75
  %325 = fcmp olt float %324, 0.000000e+00
  br i1 %325, label %326, label %335

326:                                              ; preds = %321
  %327 = load float, ptr %8, align 4, !tbaa !81
  %328 = fneg float %327
  store float %328, ptr %8, align 4, !tbaa !81
  %329 = getelementptr inbounds float, ptr %8, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !81
  %331 = fneg float %330
  store float %331, ptr %329, align 4, !tbaa !81
  %332 = getelementptr inbounds float, ptr %8, i64 2
  %333 = load float, ptr %332, align 4, !tbaa !81
  %334 = fneg float %333
  store float %334, ptr %332, align 4, !tbaa !81
  br label %335

335:                                              ; preds = %326, %321, %293, %286
  %336 = load float, ptr %127, align 8, !tbaa !75
  %337 = fmul float %336, %158
  %338 = fmul float %337, 2.500000e-01
  %339 = load float, ptr %8, align 4, !tbaa !81
  %340 = fmul float %339, %338
  store float %340, ptr %8, align 4, !tbaa !81
  %341 = getelementptr inbounds float, ptr %8, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !81
  %343 = fmul float %338, %342
  store float %343, ptr %341, align 4, !tbaa !81
  %344 = getelementptr inbounds float, ptr %8, i64 2
  br label %345

345:                                              ; preds = %335, %183
  %346 = phi ptr [ %344, %335 ], [ %177, %183 ]
  %347 = phi float [ %338, %335 ], [ %187, %183 ]
  %348 = phi float [ %236, %335 ], [ %116, %183 ]
  %349 = load float, ptr %346, align 4, !tbaa !81
  %350 = fmul float %347, %349
  store float %350, ptr %346, align 4, !tbaa !81
  %351 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25
  %352 = call float @llvm.fmuladd.f32(float %158, float 2.000000e+01, float 1.000000e+00)
  %353 = fdiv float 1.000000e+00, %352
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %351, float noundef %353) #8
  %354 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 25
  %355 = load i8, ptr %354, align 1, !tbaa !64
  %356 = icmp eq i8 %355, 2
  br i1 %356, label %357, label %375

357:                                              ; preds = %345
  %358 = load ptr, ptr %14, align 8, !tbaa !98
  %359 = call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %358) #8
  %360 = getelementptr inbounds %struct.Object, ptr %359, i64 0, i32 56
  %361 = load i16, ptr %360, align 2, !tbaa !132
  %362 = and i16 %361, 1
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %357
  store float 0.000000e+00, ptr %5, align 4, !tbaa !81
  br label %365

365:                                              ; preds = %364, %357
  %366 = and i16 %361, 2
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %365
  %369 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %369, align 4, !tbaa !81
  br label %370

370:                                              ; preds = %368, %365
  %371 = and i16 %361, 4
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %374, align 4, !tbaa !81
  br label %375

375:                                              ; preds = %373, %370, %345
  %376 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 22
  %377 = load float, ptr %5, align 4, !tbaa !81
  %378 = load float, ptr %376, align 4, !tbaa !81
  %379 = fadd float %377, %378
  store float %379, ptr %376, align 4, !tbaa !81
  %380 = getelementptr inbounds float, ptr %5, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !81
  %382 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 22, i64 1
  %383 = load float, ptr %382, align 4, !tbaa !81
  %384 = fadd float %381, %383
  store float %384, ptr %382, align 4, !tbaa !81
  %385 = getelementptr inbounds float, ptr %5, i64 2
  %386 = load float, ptr %385, align 4, !tbaa !81
  %387 = getelementptr inbounds %struct.RegionView3D, ptr %62, i64 0, i32 22, i64 2
  %388 = load float, ptr %387, align 4, !tbaa !81
  %389 = fadd float %386, %388
  store float %389, ptr %387, align 4, !tbaa !81
  %390 = load i8, ptr %354, align 1, !tbaa !64
  %391 = icmp eq i8 %390, 2
  br i1 %391, label %392, label %418

392:                                              ; preds = %375
  %393 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 17
  %394 = load i32, ptr %393, align 8, !tbaa !126
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %407

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 18
  %398 = load i32, ptr %397, align 4, !tbaa !93
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %396
  %401 = fcmp une float %348, 0.000000e+00
  %402 = select i1 %401, i1 true, i1 %132
  br i1 %402, label %403, label %407

403:                                              ; preds = %400
  %404 = load i8, ptr %170, align 2, !tbaa !77
  %405 = icmp eq i8 %404, 0
  %406 = zext i1 %405 to i8
  br label %407

407:                                              ; preds = %403, %400, %396, %392
  %408 = phi i8 [ 1, %396 ], [ 1, %392 ], [ %406, %403 ], [ 0, %400 ]
  %409 = load float, ptr %127, align 8, !tbaa !75
  %410 = fcmp une float %409, 0.000000e+00
  br i1 %410, label %415, label %411

411:                                              ; preds = %407
  %412 = load i8, ptr %170, align 2, !tbaa !77
  %413 = icmp ne i8 %412, 0
  %414 = zext i1 %413 to i8
  br label %415

415:                                              ; preds = %411, %407
  %416 = phi i8 [ 1, %407 ], [ %414, %411 ]
  %417 = load ptr, ptr %14, align 8, !tbaa !98
  call void @ED_view3d_cameracontrol_update(ptr noundef %417, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %408, i8 noundef zeroext %416) #8
  br label %418

418:                                              ; preds = %415, %375
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  br label %422

419:                                              ; preds = %138
  %420 = tail call double @PIL_check_seconds_timer() #8
  %421 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 23
  store double %420, ptr %421, align 8, !tbaa !86
  br label %422

422:                                              ; preds = %418, %419
  %423 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25
  %424 = load float, ptr %5, align 4, !tbaa !81
  store float %424, ptr %423, align 4, !tbaa !81
  %425 = getelementptr inbounds float, ptr %5, i64 1
  %426 = load float, ptr %425, align 4, !tbaa !81
  %427 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25, i64 1
  store float %426, ptr %427, align 4, !tbaa !81
  %428 = getelementptr inbounds float, ptr %5, i64 2
  %429 = load float, ptr %428, align 4, !tbaa !81
  %430 = getelementptr inbounds %struct.FlyInfo, ptr %12, i64 0, i32 25, i64 2
  store float %429, ptr %430, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  br label %431

431:                                              ; preds = %53, %55, %422, %23, %52
  %432 = load i8, ptr %17, align 2, !tbaa !129
  %433 = call fastcc i32 @flyEnd(ptr noundef %0, ptr noundef nonnull %12), !range !128
  %434 = icmp eq i32 %433, 1
  %435 = icmp eq i8 %432, 0
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %444, label %437

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %439 = load i8, ptr %438, align 1, !tbaa !64
  %440 = icmp eq i8 %439, 2
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %16) #8
  br label %442

442:                                              ; preds = %441, %437
  %443 = call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @ED_region_tag_redraw(ptr noundef %443) #8
  br label %444

444:                                              ; preds = %442, %431
  switch i32 %433, label %447 [
    i32 4, label %445
    i32 2, label %445
  ]

445:                                              ; preds = %444, %444
  %446 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %446, ptr noundef null) #8
  br label %447

447:                                              ; preds = %444, %445
  ret i32 %433
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @flyEvent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !130
  switch i16 %7, label %334 [
    i16 272, label %8
    i16 4, label %17
    i16 400, label %24
    i16 20514, label %46
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %15, align 2, !tbaa !129
  br label %334

16:                                               ; preds = %8
  switch i16 %7, label %334 [
    i16 4, label %17
    i16 400, label %24
    i16 20514, label %46
  ]

17:                                               ; preds = %3, %16
  %18 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !83
  store i32 %20, ptr %18, align 4, !tbaa !83
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !83
  %23 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9, i64 1
  store i32 %22, ptr %23, align 4, !tbaa !83
  br label %334

24:                                               ; preds = %3, %16
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  %27 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !137
  switch i32 %28, label %334 [
    i32 1, label %29
    i32 2, label %29
    i32 3, label %37
  ]

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %35 = tail call ptr %34(ptr noundef %26) #8
  store ptr %35, ptr %30, align 8, !tbaa !84
  br label %334

36:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %31, ptr noundef nonnull align 4 dereferenceable(32) %26, i64 32, i1 false)
  br label %334

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %42(ptr noundef nonnull %39) #8
  store ptr null, ptr %38, align 8, !tbaa !84
  br label %43

43:                                               ; preds = %41, %37
  %44 = tail call double @PIL_check_seconds_timer() #8
  %45 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 23
  store double %44, ptr %45, align 8, !tbaa !86
  br label %334

46:                                               ; preds = %3, %16
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %48 = load i16, ptr %47, align 2, !tbaa !139
  switch i16 %48, label %334 [
    i16 1, label %49
    i16 2, label %51
    i16 19, label %53
    i16 3, label %80
    i16 4, label %112
    i16 5, label %146
    i16 6, label %148
    i16 7, label %150
    i16 8, label %173
    i16 9, label %196
    i16 10, label %219
    i16 12, label %242
    i16 11, label %265
    i16 13, label %288
    i16 14, label %307
    i16 15, label %326
    i16 16, label %328
    i16 17, label %330
    i16 18, label %332
  ]

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  store i16 1, ptr %50, align 8, !tbaa !74
  br label %334

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  store i16 2, ptr %52, align 8, !tbaa !74
  br label %334

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !140
  %56 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !141
  %58 = sub nsw i32 %55, %57
  %59 = sitofp i32 %58 to float
  %60 = fmul float %59, 0x3F947AE140000000
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %64 = load float, ptr %63, align 8, !tbaa !75
  %65 = fcmp olt float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store float 0.000000e+00, ptr %63, align 8, !tbaa !75
  br label %334

67:                                               ; preds = %62, %53
  %68 = fcmp olt float %60, 0.000000e+00
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %71 = load float, ptr %70, align 8, !tbaa !75
  %72 = fcmp ogt float %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store float 0.000000e+00, ptr %70, align 8, !tbaa !75
  br label %334

74:                                               ; preds = %69, %67
  %75 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %76 = load float, ptr %75, align 8, !tbaa !78
  %77 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %78 = load float, ptr %77, align 8, !tbaa !75
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %60, float %78)
  store float %79, ptr %77, align 8, !tbaa !75
  br label %334

80:                                               ; preds = %46
  %81 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %82 = load i16, ptr %81, align 4, !tbaa !76
  %83 = icmp eq i16 %82, -1
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  store i16 2, ptr %81, align 4, !tbaa !76
  %85 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %86 = load float, ptr %85, align 8, !tbaa !75
  %87 = tail call float @llvm.fabs.f32(float %86)
  store float %87, ptr %85, align 8, !tbaa !75
  br label %88

88:                                               ; preds = %84, %80
  %89 = tail call double @PIL_check_seconds_timer() #8
  %90 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 22
  %91 = load double, ptr %90, align 8, !tbaa !85
  store double %89, ptr %90, align 8, !tbaa !85
  %92 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %93 = load float, ptr %92, align 8, !tbaa !75
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %110, label %95

95:                                               ; preds = %88
  %96 = fsub double %89, %91
  %97 = fptrunc double %96 to float
  %98 = fcmp olt float %97, 5.000000e-01
  %99 = select i1 %98, float %97, float 5.000000e-01
  %100 = tail call float @llvm.fmuladd.f32(float %99, float -2.000000e+01, float 1.000000e+01)
  %101 = fadd float %100, 1.000000e+00
  %102 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %103 = load float, ptr %102, align 8, !tbaa !78
  %104 = fmul float %101, %103
  %105 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %106 = load i8, ptr %105, align 1, !tbaa !79
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, float 1.000000e+00, float 0x3FB99999A0000000
  %109 = tail call float @llvm.fmuladd.f32(float %104, float %108, float %93)
  br label %110

110:                                              ; preds = %88, %95
  %111 = phi float [ %109, %95 ], [ 0.000000e+00, %88 ]
  store float %111, ptr %92, align 8, !tbaa !75
  br label %334

112:                                              ; preds = %46
  %113 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %114 = load i16, ptr %113, align 4, !tbaa !76
  %115 = icmp eq i16 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  store i16 2, ptr %113, align 4, !tbaa !76
  %117 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %118 = load float, ptr %117, align 8, !tbaa !75
  %119 = tail call float @llvm.fabs.f32(float %118)
  %120 = fneg float %119
  store float %120, ptr %117, align 8, !tbaa !75
  br label %121

121:                                              ; preds = %116, %112
  %122 = tail call double @PIL_check_seconds_timer() #8
  %123 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 22
  %124 = load double, ptr %123, align 8, !tbaa !85
  store double %122, ptr %123, align 8, !tbaa !85
  %125 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %126 = load float, ptr %125, align 8, !tbaa !75
  %127 = fcmp ogt float %126, 0.000000e+00
  br i1 %127, label %144, label %128

128:                                              ; preds = %121
  %129 = fsub double %122, %124
  %130 = fptrunc double %129 to float
  %131 = fcmp olt float %130, 5.000000e-01
  %132 = select i1 %131, float %130, float 5.000000e-01
  %133 = tail call float @llvm.fmuladd.f32(float %132, float -2.000000e+01, float 1.000000e+01)
  %134 = fadd float %133, 1.000000e+00
  %135 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %136 = load float, ptr %135, align 8, !tbaa !78
  %137 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %138 = load i8, ptr %137, align 1, !tbaa !79
  %139 = icmp eq i8 %138, 0
  %140 = select i1 %139, float 1.000000e+00, float 0x3FB99999A0000000
  %141 = fneg float %136
  %142 = fmul float %134, %141
  %143 = tail call float @llvm.fmuladd.f32(float %142, float %140, float %126)
  br label %144

144:                                              ; preds = %121, %128
  %145 = phi float [ %143, %128 ], [ 0.000000e+00, %121 ]
  store float %145, ptr %125, align 8, !tbaa !75
  br label %334

146:                                              ; preds = %46
  %147 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  store i8 1, ptr %147, align 2, !tbaa !77
  br label %334

148:                                              ; preds = %46
  %149 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  store i8 0, ptr %149, align 2, !tbaa !77
  br label %334

150:                                              ; preds = %46
  %151 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %152 = load i16, ptr %151, align 4, !tbaa !76
  %153 = icmp eq i16 %152, 2
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %156 = load float, ptr %155, align 8, !tbaa !75
  %157 = fcmp olt float %156, 0.000000e+00
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i16 -1, ptr %151, align 4, !tbaa !76
  br label %334

159:                                              ; preds = %154, %150
  %160 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %161 = load float, ptr %160, align 8, !tbaa !75
  %162 = fcmp olt float %161, 0.000000e+00
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = fneg float %161
  br label %170

165:                                              ; preds = %159
  br i1 %153, label %166, label %172

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %168 = load float, ptr %167, align 8, !tbaa !78
  %169 = fadd float %161, %168
  br label %170

170:                                              ; preds = %163, %166
  %171 = phi float [ %169, %166 ], [ %164, %163 ]
  store float %171, ptr %160, align 8, !tbaa !75
  br label %172

172:                                              ; preds = %170, %165
  store i16 2, ptr %151, align 4, !tbaa !76
  br label %334

173:                                              ; preds = %46
  %174 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %175 = load i16, ptr %174, align 4, !tbaa !76
  %176 = icmp eq i16 %175, 2
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %179 = load float, ptr %178, align 8, !tbaa !75
  %180 = fcmp ogt float %179, 0.000000e+00
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i16 -1, ptr %174, align 4, !tbaa !76
  br label %334

182:                                              ; preds = %177, %173
  %183 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %184 = load float, ptr %183, align 8, !tbaa !75
  %185 = fcmp ogt float %184, 0.000000e+00
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = fneg float %184
  br label %193

188:                                              ; preds = %182
  br i1 %176, label %189, label %195

189:                                              ; preds = %188
  %190 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %191 = load float, ptr %190, align 8, !tbaa !78
  %192 = fsub float %184, %191
  br label %193

193:                                              ; preds = %186, %189
  %194 = phi float [ %192, %189 ], [ %187, %186 ]
  store float %194, ptr %183, align 8, !tbaa !75
  br label %195

195:                                              ; preds = %193, %188
  store i16 2, ptr %174, align 4, !tbaa !76
  br label %334

196:                                              ; preds = %46
  %197 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %198 = load i16, ptr %197, align 4, !tbaa !76
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %202 = load float, ptr %201, align 8, !tbaa !75
  %203 = fcmp olt float %202, 0.000000e+00
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i16 -1, ptr %197, align 4, !tbaa !76
  br label %334

205:                                              ; preds = %200, %196
  %206 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %207 = load float, ptr %206, align 8, !tbaa !75
  %208 = fcmp olt float %207, 0.000000e+00
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = fneg float %207
  br label %216

211:                                              ; preds = %205
  br i1 %199, label %212, label %218

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %214 = load float, ptr %213, align 8, !tbaa !78
  %215 = fadd float %207, %214
  br label %216

216:                                              ; preds = %209, %212
  %217 = phi float [ %215, %212 ], [ %210, %209 ]
  store float %217, ptr %206, align 8, !tbaa !75
  br label %218

218:                                              ; preds = %216, %211
  store i16 0, ptr %197, align 4, !tbaa !76
  br label %334

219:                                              ; preds = %46
  %220 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %221 = load i16, ptr %220, align 4, !tbaa !76
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %225 = load float, ptr %224, align 8, !tbaa !75
  %226 = fcmp ogt float %225, 0.000000e+00
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i16 -1, ptr %220, align 4, !tbaa !76
  br label %334

228:                                              ; preds = %223, %219
  %229 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %230 = load float, ptr %229, align 8, !tbaa !75
  %231 = fcmp ogt float %230, 0.000000e+00
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = fneg float %230
  br label %239

234:                                              ; preds = %228
  br i1 %222, label %235, label %241

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %237 = load float, ptr %236, align 8, !tbaa !78
  %238 = fsub float %230, %237
  br label %239

239:                                              ; preds = %232, %235
  %240 = phi float [ %238, %235 ], [ %233, %232 ]
  store float %240, ptr %229, align 8, !tbaa !75
  br label %241

241:                                              ; preds = %239, %234
  store i16 0, ptr %220, align 4, !tbaa !76
  br label %334

242:                                              ; preds = %46
  %243 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %244 = load i16, ptr %243, align 4, !tbaa !76
  %245 = icmp eq i16 %244, 1
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %248 = load float, ptr %247, align 8, !tbaa !75
  %249 = fcmp olt float %248, 0.000000e+00
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  store i16 -1, ptr %243, align 4, !tbaa !76
  br label %334

251:                                              ; preds = %246, %242
  %252 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %253 = load float, ptr %252, align 8, !tbaa !75
  %254 = fcmp olt float %253, 0.000000e+00
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = fneg float %253
  br label %262

257:                                              ; preds = %251
  br i1 %245, label %258, label %264

258:                                              ; preds = %257
  %259 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %260 = load float, ptr %259, align 8, !tbaa !78
  %261 = fadd float %253, %260
  br label %262

262:                                              ; preds = %255, %258
  %263 = phi float [ %261, %258 ], [ %256, %255 ]
  store float %263, ptr %252, align 8, !tbaa !75
  br label %264

264:                                              ; preds = %262, %257
  store i16 1, ptr %243, align 4, !tbaa !76
  br label %334

265:                                              ; preds = %46
  %266 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %267 = load i16, ptr %266, align 4, !tbaa !76
  %268 = icmp eq i16 %267, 1
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %271 = load float, ptr %270, align 8, !tbaa !75
  %272 = fcmp ogt float %271, 0.000000e+00
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i16 -1, ptr %266, align 4, !tbaa !76
  br label %334

274:                                              ; preds = %269, %265
  %275 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %276 = load float, ptr %275, align 8, !tbaa !75
  %277 = fcmp ogt float %276, 0.000000e+00
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = fneg float %276
  br label %285

280:                                              ; preds = %274
  br i1 %268, label %281, label %287

281:                                              ; preds = %280
  %282 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %283 = load float, ptr %282, align 8, !tbaa !78
  %284 = fsub float %276, %283
  br label %285

285:                                              ; preds = %278, %281
  %286 = phi float [ %284, %281 ], [ %279, %278 ]
  store float %286, ptr %275, align 8, !tbaa !75
  br label %287

287:                                              ; preds = %285, %280
  store i16 1, ptr %266, align 4, !tbaa !76
  br label %334

288:                                              ; preds = %46
  %289 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %290 = load i32, ptr %289, align 8, !tbaa !126
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %288
  store i32 0, ptr %289, align 8, !tbaa !126
  br label %295

293:                                              ; preds = %288
  store i32 2, ptr %289, align 8, !tbaa !126
  %294 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 19
  store float 0.000000e+00, ptr %294, align 8, !tbaa !135
  br label %295

295:                                              ; preds = %293, %292
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  %296 = load i32, ptr %289, align 8, !tbaa !126
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i8
  %299 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %298) #8
  %300 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %301 = load i32, ptr %300, align 4, !tbaa !93
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i8
  %304 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %303) #8
  %305 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.46, ptr noundef %299, ptr noundef %304) #8
  %306 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %306, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  br label %334

307:                                              ; preds = %46
  %308 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %309 = load i32, ptr %308, align 4, !tbaa !93
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %307
  store i32 0, ptr %308, align 4, !tbaa !93
  br label %314

312:                                              ; preds = %307
  store i32 2, ptr %308, align 4, !tbaa !93
  %313 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 20
  store float 0.000000e+00, ptr %313, align 4, !tbaa !136
  br label %314

314:                                              ; preds = %312, %311
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %315 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %316 = load i32, ptr %315, align 8, !tbaa !126
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i8
  %319 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %318) #8
  %320 = load i32, ptr %308, align 4, !tbaa !93
  %321 = icmp ne i32 %320, 0
  %322 = zext i1 %321 to i8
  %323 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %322) #8
  %324 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.46, ptr noundef %319, ptr noundef %323) #8
  %325 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %325, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %334

326:                                              ; preds = %46
  %327 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  store i8 1, ptr %327, align 1, !tbaa !79
  br label %334

328:                                              ; preds = %46
  %329 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  store i8 0, ptr %329, align 1, !tbaa !79
  br label %334

330:                                              ; preds = %46
  %331 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  store i8 1, ptr %331, align 4, !tbaa !80
  br label %334

332:                                              ; preds = %46
  %333 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  store i8 0, ptr %333, align 4, !tbaa !80
  br label %334

334:                                              ; preds = %3, %66, %74, %73, %16, %43, %36, %33, %24, %17, %273, %287, %250, %264, %227, %241, %204, %218, %181, %195, %158, %172, %46, %332, %330, %328, %326, %314, %295, %148, %146, %144, %110, %51, %49, %14
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_offset_lock_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @drawFlyPixel(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = load ptr, ptr %2, align 8, !tbaa !57
  call void @ED_view3d_calc_camera_border(ptr noundef %6, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext 0) #8
  %16 = load float, ptr %4, align 4, !tbaa !117
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !120
  %20 = fptosi float %19 to i32
  %21 = sitofp i32 %17 to float
  %22 = sitofp i32 %20 to float
  br label %23

23:                                               ; preds = %3, %10
  %24 = phi float [ %22, %10 ], [ 0.000000e+00, %3 ]
  %25 = phi float [ %21, %10 ], [ 0.000000e+00, %3 ]
  %26 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 11
  %27 = load float, ptr %26, align 8, !tbaa !118
  %28 = call float @llvm.fmuladd.f32(float %27, float 0x3FDCCCCCC0000000, float %25)
  %29 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 12
  %30 = load float, ptr %29, align 4, !tbaa !121
  %31 = call float @llvm.fmuladd.f32(float %30, float 0x3FDCCCCCC0000000, float %24)
  %32 = call float @llvm.fmuladd.f32(float %27, float 0x3FE19999A0000000, float %25)
  %33 = call float @llvm.fmuladd.f32(float %30, float 0x3FE19999A0000000, float %24)
  call void @UI_ThemeColor(i32 noundef 192) #8
  call void @glBegin(i32 noundef 1) #8
  call void @glVertex2f(float noundef %28, float noundef %31) #8
  %34 = fadd float %31, 5.000000e+00
  call void @glVertex2f(float noundef %28, float noundef %34) #8
  call void @glVertex2f(float noundef %28, float noundef %31) #8
  %35 = fadd float %28, 5.000000e+00
  call void @glVertex2f(float noundef %35, float noundef %31) #8
  call void @glVertex2f(float noundef %32, float noundef %33) #8
  %36 = fadd float %33, -5.000000e+00
  call void @glVertex2f(float noundef %32, float noundef %36) #8
  call void @glVertex2f(float noundef %32, float noundef %33) #8
  %37 = fadd float %32, -5.000000e+00
  call void @glVertex2f(float noundef %37, float noundef %33) #8
  call void @glVertex2f(float noundef %28, float noundef %33) #8
  call void @glVertex2f(float noundef %28, float noundef %36) #8
  call void @glVertex2f(float noundef %28, float noundef %33) #8
  call void @glVertex2f(float noundef %35, float noundef %33) #8
  call void @glVertex2f(float noundef %32, float noundef %31) #8
  call void @glVertex2f(float noundef %32, float noundef %34) #8
  call void @glVertex2f(float noundef %32, float noundef %31) #8
  call void @glVertex2f(float noundef %37, float noundef %31) #8
  call void @glEnd() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare ptr @ED_view3d_cameracontrol_acquire(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @flyEnd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !74
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %8 = load ptr, ptr %1, align 8, !tbaa !57
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %7, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  tail call void @ED_region_draw_cb_exit(ptr noundef %15, ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load i16, ptr %3, align 8, !tbaa !74
  %21 = icmp eq i16 %20, 1
  %22 = zext i1 %21 to i8
  tail call void @ED_view3d_cameracontrol_release(ptr noundef %19, i8 noundef zeroext %22) #8
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = and i16 %24, -9
  store i16 %25, ptr %23, align 2, !tbaa !92
  %26 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %30(ptr noundef nonnull %27) #8
  br label %31

31:                                               ; preds = %29, %6
  %32 = load i16, ptr %3, align 8, !tbaa !74
  %33 = icmp eq i16 %32, 2
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %34(ptr noundef nonnull %1) #8
  %35 = select i1 %33, i32 4, i32 2
  br label %36

36:                                               ; preds = %31, %2
  %37 = phi i32 [ 1, %2 ], [ %35, %31 ]
  ret i32 %37
}

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cameracontrol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @ED_view3d_cameracontrol_object_get(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @view3d_ndof_fly(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cameracontrol_update(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 128}
!35 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !37, i64 48, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !36, i64 120, !36, i64 128}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !43, i64 152, !40, i64 184}
!43 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!44 = !{!42, !36, i64 24}
!45 = !{!42, !36, i64 8}
!46 = !{!42, !36, i64 48}
!47 = !{!42, !36, i64 56}
!48 = !{!42, !36, i64 64}
!49 = !{!42, !36, i64 72}
!50 = !{!42, !40, i64 184}
!51 = !{!52, !37, i64 811}
!52 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !53, i64 776, !53, i64 780, !53, i64 784, !53, i64 788, !37, i64 792, !53, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !40, i64 824, !40, i64 826, !37, i64 828, !40, i64 844, !40, i64 846, !53, i64 848, !37, i64 852, !53, i64 864, !37, i64 868}
!53 = !{!"float", !37, i64 0}
!54 = !{!36, !36, i64 0}
!55 = !{!56, !36, i64 96}
!56 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!57 = !{!58, !36, i64 0}
!58 = !{!"FlyInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !37, i64 42, !37, i64 43, !37, i64 44, !37, i64 48, !37, i64 56, !53, i64 64, !53, i64 68, !36, i64 72, !53, i64 80, !40, i64 84, !37, i64 86, !59, i64 88, !59, i64 92, !53, i64 96, !53, i64 100, !53, i64 104, !60, i64 112, !60, i64 120, !36, i64 128, !37, i64 136, !36, i64 152}
!59 = !{!"int", !37, i64 0}
!60 = !{!"double", !37, i64 0}
!61 = !{!58, !36, i64 8}
!62 = !{!58, !36, i64 16}
!63 = !{!58, !36, i64 24}
!64 = !{!52, !37, i64 809}
!65 = !{!66, !36, i64 96}
!66 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !59, i64 32, !53, i64 36, !37, i64 40, !37, i64 56, !53, i64 72, !53, i64 76, !37, i64 80, !37, i64 81, !59, i64 84, !59, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !67, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !59, i64 224, !59, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!67 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!68 = !{!69, !36, i64 24}
!69 = !{!"Object", !70, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !59, i64 140, !59, i64 144, !59, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !71, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !59, i64 432, !59, i64 436, !36, i64 440, !36, i64 448, !59, i64 456, !59, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !59, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !59, i64 968, !59, i64 972, !59, i64 976, !59, i64 980, !59, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !59, i64 1144, !59, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !72, i64 1304, !72, i64 1312, !59, i64 1320, !59, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!70 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !36, i64 112}
!71 = !{!"bAnimVizSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44}
!72 = !{!"long", !37, i64 0}
!73 = !{!69, !36, i64 1176}
!74 = !{!58, !40, i64 40}
!75 = !{!58, !53, i64 80}
!76 = !{!58, !40, i64 84}
!77 = !{!58, !37, i64 86}
!78 = !{!58, !53, i64 104}
!79 = !{!58, !37, i64 43}
!80 = !{!58, !37, i64 44}
!81 = !{!53, !53, i64 0}
!82 = !{!58, !36, i64 32}
!83 = !{!59, !59, i64 0}
!84 = !{!58, !36, i64 72}
!85 = !{!58, !60, i64 112}
!86 = !{!58, !60, i64 120}
!87 = !{!88, !36, i64 240}
!88 = !{!"ARegion", !36, i64 0, !36, i64 8, !89, i64 16, !90, i64 176, !90, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !53, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!89 = !{!"View2D", !67, i64 0, !67, i64 16, !90, i64 32, !90, i64 48, !90, i64 64, !37, i64 80, !37, i64 88, !53, i64 96, !53, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !59, i64 136, !59, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!91 = !{!58, !36, i64 128}
!92 = !{!52, !40, i64 826}
!93 = !{!58, !59, i64 92}
!94 = !{!95, !59, i64 8484}
!95 = !{!"UserDef", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !59, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !59, i64 8484, !59, i64 8488, !59, i64 8492, !40, i64 8496, !40, i64 8498, !59, i64 8500, !59, i64 8504, !59, i64 8508, !59, i64 8512, !59, i64 8516, !59, i64 8520, !59, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !59, i64 8912, !59, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !53, i64 8956, !53, i64 8960, !59, i64 8964, !40, i64 8968, !40, i64 8970, !53, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !96, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !59, i64 10896, !59, i64 10900, !53, i64 10904, !53, i64 10908, !59, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !97, i64 10928}
!96 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!97 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !40, i64 24, !37, i64 26}
!98 = !{!58, !36, i64 152}
!99 = !{!100, !36, i64 128}
!100 = !{!"Scene", !70, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !101, i64 280, !108, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !59, i64 4380, !39, i64 4384, !109, i64 4400, !110, i64 4416, !113, i64 4600, !36, i64 4608, !114, i64 4616, !36, i64 4640, !72, i64 4648, !72, i64 4656, !103, i64 4664, !104, i64 4824, !115, i64 4888, !36, i64 4952}
!101 = !{!"RenderData", !102, i64 0, !36, i64 248, !36, i64 256, !105, i64 264, !106, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !53, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !40, i64 432, !40, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !59, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !59, i64 484, !59, i64 488, !40, i64 492, !40, i64 494, !59, i64 496, !59, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !67, i64 544, !67, i64 560, !90, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !59, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !53, i64 660, !53, i64 664, !40, i64 668, !40, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !59, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !59, i64 2520, !40, i64 2524, !40, i64 2526, !53, i64 2528, !53, i64 2532, !40, i64 2536, !40, i64 2538, !53, i64 2540, !40, i64 2544, !40, i64 2546, !59, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !59, i64 2576, !53, i64 2580, !37, i64 2584, !107, i64 2616, !59, i64 3976, !59, i64 3980}
!102 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !103, i64 24, !104, i64 184}
!103 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!104 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!105 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !40, i64 48, !40, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!106 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !53, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !36, i64 64}
!107 = !{!"BakeData", !102, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!108 = !{!"AudioData", !59, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !59, i64 16, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28}
!109 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!110 = !{!"GameData", !109, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !111, i64 40, !40, i64 64, !40, i64 66, !53, i64 68, !112, i64 72, !53, i64 128, !53, i64 132, !59, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!111 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!112 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !59, i64 40, !53, i64 44, !53, i64 48, !40, i64 52, !40, i64 54}
!113 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!114 = !{!"PhysicsSettings", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!115 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!116 = !{!67, !53, i64 4}
!117 = !{!67, !53, i64 0}
!118 = !{!58, !53, i64 64}
!119 = !{!67, !53, i64 12}
!120 = !{!67, !53, i64 8}
!121 = !{!58, !53, i64 68}
!122 = !{!88, !40, i64 208}
!123 = !{!88, !40, i64 210}
!124 = !{!88, !59, i64 176}
!125 = !{!88, !59, i64 184}
!126 = !{!58, !59, i64 88}
!127 = !{!56, !36, i64 120}
!128 = !{i32 1, i32 5}
!129 = !{!58, !37, i64 42}
!130 = !{!131, !40, i64 16}
!131 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !59, i64 48, !59, i64 52, !60, i64 56, !59, i64 64, !59, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !59, i64 108, !36, i64 112}
!132 = !{!69, !40, i64 954}
!133 = !{!37, !37, i64 0}
!134 = !{!131, !36, i64 112}
!135 = !{!58, !53, i64 96}
!136 = !{!58, !53, i64 100}
!137 = !{!138, !59, i64 28}
!138 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !53, i64 24, !59, i64 28}
!139 = !{!131, !40, i64 18}
!140 = !{!131, !59, i64 52}
!141 = !{!131, !59, i64 24}
