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
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.FlyInfo = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, [2 x i32], [2 x i32], float, float, ptr, float, i16, i8, i32, i32, float, float, float, double, double, ptr, [3 x float], ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fly_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @fly_modal_keymap.modal_items) #12
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #12
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #12
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #12
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #12
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #12
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #12
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 164, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #12
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 162, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 4) #12
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #12
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 4) #12
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 19) #12
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 5) #12
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #12
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #12
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #12
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #12
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #12
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 11) #12
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 12) #12
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 11) #12
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 12) #12
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #12
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #12
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #12
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 10) #12
  %35 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 13) #12
  %36 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 122, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 14) #12
  %37 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #12
  %38 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #12
  %39 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #12
  %40 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #12
  %41 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 17) #12
  %42 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 18) #12
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.39) #12
  br label %43

43:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fly_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !51 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 1, !tbaa !52
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %11 = tail call ptr %10(i64 noundef 160, ptr noundef nonnull @.str.42) #12
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !56
  %13 = tail call fastcc zeroext i8 @initFlyInfo(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2) #13, !range !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %17 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void %16(ptr noundef %17) #12
  br label %20

18:                                               ; preds = %9
  tail call fastcc void @flyEvent(ptr noundef %0, ptr noundef %11, ptr noundef %2) #13
  %19 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %20

20:                                               ; preds = %3, %18, %15
  %21 = phi i32 [ 2, %15 ], [ 1, %18 ], [ 2, %3 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fly_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %4, i64 0, i32 5
  store i16 1, ptr %5, align 8, !tbaa !60
  %6 = tail call fastcc i32 @flyEnd(ptr noundef %0, ptr noundef %4) #13, !range !64
  store ptr null, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @fly_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !65 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.FlyInfo, ptr %5, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.FlyInfo, ptr %5, i64 0, i32 6
  store i8 0, ptr %10, align 2, !tbaa !68
  tail call fastcc void @flyEvent(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #13
  %11 = getelementptr inbounds %struct.FlyInfo, ptr %5, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !70
  br i1 %13, label %19, label %16

16:                                               ; preds = %3
  %17 = icmp eq i16 %15, 400
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  tail call fastcc void @flyApply_ndof(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %28

19:                                               ; preds = %3
  %20 = icmp eq i16 %15, 272
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.FlyInfo, ptr %5, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @flyApply(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %28

28:                                               ; preds = %19, %21, %27, %16, %18
  %29 = load i8, ptr %10, align 2, !tbaa !68
  %30 = tail call fastcc i32 @flyEnd(ptr noundef %0, ptr noundef nonnull %5) #13, !range !64
  %31 = icmp eq i32 %30, 1
  %32 = icmp eq i8 %29, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 25
  %36 = load i8, ptr %35, align 1, !tbaa !74
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %9) #12
  br label %39

39:                                               ; preds = %34, %38
  %40 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %40) #12
  switch i32 %30, label %43 [
    i32 4, label %41
    i32 2, label %41
  ]

41:                                               ; preds = %39, %39
  %42 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  tail call void @ED_area_headerprint(ptr noundef %42, ptr noundef null) #12
  br label %43

43:                                               ; preds = %28, %39, %41
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @initFlyInfo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !75 {
  %5 = alloca %struct.rctf, align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #14
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  store ptr %9, ptr %1, align 8, !tbaa !66
  %10 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !76
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !77
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !78
  %16 = load ptr, ptr %1, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 25
  %18 = load i8, ptr %17, align 1, !tbaa !74
  %19 = icmp eq i8 %18, 2
  %20 = load ptr, ptr %11, align 8, !tbaa !76
  br i1 %19, label %21, label %33

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 1, ptr %17, align 1, !tbaa !74
  br label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !82
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  tail call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.43) #12
  br label %139

33:                                               ; preds = %4, %25, %26
  %34 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %20, ptr noundef nonnull %16) #12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  tail call void @BKE_report(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.44) #12
  br label %139

39:                                               ; preds = %33
  %40 = load ptr, ptr %1, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %40, i64 0, i32 25
  %42 = load i8, ptr %41, align 1, !tbaa !74
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load ptr, ptr %11, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.View3D, ptr %45, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !79
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 106
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !87
  tail call void @BKE_report(ptr noundef %53, i32 noundef 32, ptr noundef nonnull @.str.45) #12
  br label %139

54:                                               ; preds = %44, %39
  %55 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  store i16 0, ptr %55, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  store float 0.000000e+00, ptr %56, align 8, !tbaa !89
  %57 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  store i16 2, ptr %57, align 4, !tbaa !90
  %58 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  store i8 0, ptr %58, align 2, !tbaa !91
  %59 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %60 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %60, align 8, !tbaa !92
  %61 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  store i8 0, ptr %61, align 1, !tbaa !93
  %62 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  store i8 0, ptr %62, align 4, !tbaa !94
  %63 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 25
  tail call fastcc void @zero_v3(ptr noundef nonnull %63) #13
  %64 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %65 = tail call ptr @WM_event_add_timer(ptr noundef %64, ptr noundef %8, i32 noundef 272, double noundef 0x3F847AE140000000) #12
  %66 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 4
  store ptr %65, ptr %66, align 8, !tbaa !73
  %67 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9
  %68 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %67, ptr noundef nonnull %68) #13
  %69 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  store ptr null, ptr %69, align 8, !tbaa !69
  %70 = tail call double @PIL_check_seconds_timer() #12
  %71 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 22
  store double %70, ptr %71, align 8, !tbaa !95
  %72 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 23
  store double %70, ptr %72, align 8, !tbaa !96
  %73 = load ptr, ptr %13, align 8, !tbaa !77
  %74 = getelementptr inbounds %struct.ARegion, ptr %73, i64 0, i32 20
  %75 = load ptr, ptr %74, align 8, !tbaa !97
  %76 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %75, ptr noundef nonnull @drawFlyPixel, ptr noundef nonnull %1, i32 noundef 1) #12
  %77 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 24
  store ptr %76, ptr %77, align 8, !tbaa !101
  %78 = load ptr, ptr %1, align 8, !tbaa !66
  %79 = getelementptr inbounds %struct.RegionView3D, ptr %78, i64 0, i32 32
  %80 = load i16, ptr %79, align 2, !tbaa !102
  %81 = or i16 %80, 8
  store i16 %81, ptr %79, align 2, !tbaa !102
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %6, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #13
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %78, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %82) #12
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %83 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !103
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp olt float %85, 0x3FB99999A0000000
  br i1 %86, label %87, label %89

87:                                               ; preds = %54
  %88 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  store i32 1, ptr %88, align 4, !tbaa !104
  br label %89

89:                                               ; preds = %87, %54
  %90 = load ptr, ptr %15, align 8, !tbaa !78
  %91 = load ptr, ptr %11, align 8, !tbaa !76
  %92 = load ptr, ptr %1, align 8, !tbaa !66
  %93 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !105
  %94 = and i32 %93, 524288
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i8
  %97 = call ptr @ED_view3d_cameracontrol_acquire(ptr noundef %90, ptr noundef %91, ptr noundef %92, i8 noundef zeroext %96) #12
  %98 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  store ptr %97, ptr %98, align 8, !tbaa !67
  %99 = load ptr, ptr %15, align 8, !tbaa !78
  %100 = getelementptr inbounds %struct.Scene, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !109
  %102 = icmp eq ptr %101, null
  %103 = load ptr, ptr %13, align 8, !tbaa !77
  br i1 %102, label %119, label %104

104:                                              ; preds = %89
  %105 = load ptr, ptr %11, align 8, !tbaa !76
  %106 = load ptr, ptr %1, align 8, !tbaa !66
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %99, ptr noundef %103, ptr noundef %105, ptr noundef %106, ptr noundef nonnull %5, i8 noundef zeroext 0) #12
  %107 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #13
  %108 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #13
  %109 = load <4 x float>, ptr %5, align 16
  %110 = shufflevector <4 x float> %109, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %111 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %112 = load float, ptr %111, align 8, !tbaa !126
  %113 = insertelement <2 x float> poison, float %107, i64 0
  %114 = insertelement <2 x float> %113, float %108, i64 1
  %115 = fmul <2 x float> %114, <float 5.000000e-01, float 5.000000e-01>
  %116 = insertelement <2 x float> %110, float %112, i64 1
  %117 = fadd <2 x float> %115, %116
  %118 = load ptr, ptr %13, align 8, !tbaa !77
  br label %124

119:                                              ; preds = %89
  %120 = getelementptr inbounds %struct.ARegion, ptr %103, i64 0, i32 5
  %121 = load <2 x i16>, ptr %120, align 8, !tbaa !127
  %122 = sitofp <2 x i16> %121 to <2 x float>
  %123 = fmul <2 x float> %122, <float 5.000000e-01, float 5.000000e-01>
  br label %124

124:                                              ; preds = %119, %104
  %125 = phi ptr [ %103, %119 ], [ %118, %104 ]
  %126 = phi <2 x float> [ %122, %119 ], [ %114, %104 ]
  %127 = phi <2 x float> [ %123, %119 ], [ %117, %104 ]
  %128 = fptosi <2 x float> %127 to <2 x i32>
  %129 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 11
  store <2 x float> %126, ptr %129, align 8
  %130 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 10
  store <2 x i32> %128, ptr %130, align 8
  %131 = getelementptr inbounds %struct.ARegion, ptr %125, i64 0, i32 3
  %132 = load i32, ptr %131, align 8, !tbaa !128
  %133 = extractelement <2 x i32> %128, i64 0
  %134 = add nsw i32 %132, %133
  %135 = getelementptr inbounds %struct.ARegion, ptr %125, i64 0, i32 3, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !129
  %137 = extractelement <2 x i32> %128, i64 1
  %138 = add nsw i32 %136, %137
  call void @WM_cursor_warp(ptr noundef %8, i32 noundef %134, i32 noundef %138) #12
  call fastcc void @fly_update_header(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %139

139:                                              ; preds = %124, %51, %36, %30
  %140 = phi i8 [ 0, %30 ], [ 0, %36 ], [ 0, %51 ], [ 1, %124 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i8 %140
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flyEvent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !130 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !70
  switch i16 %5, label %278 [
    i16 272, label %6
    i16 4, label %14
    i16 400, label %17
    i16 20514, label %39
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %278

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %13, align 2, !tbaa !68
  br label %278

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  br label %278

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !131
  switch i32 %21, label %278 [
    i32 1, label %22
    i32 2, label %22
    i32 3, label %30
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !55
  %28 = tail call ptr %27(ptr noundef nonnull %19) #12
  store ptr %28, ptr %23, align 8, !tbaa !69
  br label %278

29:                                               ; preds = %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(32) %19, i64 32, i1 false)
  br label %278

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %35(ptr noundef nonnull %32) #12
  store ptr null, ptr %31, align 8, !tbaa !69
  br label %36

36:                                               ; preds = %34, %30
  %37 = tail call double @PIL_check_seconds_timer() #12
  %38 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 23
  store double %37, ptr %38, align 8, !tbaa !96
  br label %278

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !133
  switch i16 %41, label %278 [
    i16 1, label %42
    i16 2, label %44
    i16 19, label %46
    i16 3, label %72
    i16 4, label %103
    i16 5, label %136
    i16 6, label %138
    i16 7, label %140
    i16 8, label %159
    i16 9, label %178
    i16 10, label %197
    i16 12, label %216
    i16 11, label %235
    i16 13, label %254
    i16 14, label %262
    i16 15, label %270
    i16 16, label %272
    i16 17, label %274
    i16 18, label %276
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  store i16 1, ptr %43, align 8, !tbaa !60
  br label %278

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  store i16 2, ptr %45, align 8, !tbaa !60
  br label %278

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %48 = load i32, ptr %47, align 4, !tbaa !134
  %49 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !135
  %51 = sub nsw i32 %48, %50
  %52 = sitofp i32 %51 to float
  %53 = fmul float %52, 0x3F947AE140000000
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %57 = load float, ptr %56, align 8, !tbaa !89
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store float 0.000000e+00, ptr %56, align 8, !tbaa !89
  br label %278

60:                                               ; preds = %55, %46
  %61 = fcmp olt float %53, 0.000000e+00
  %62 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %63 = load float, ptr %62, align 8, !tbaa !89
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = select i1 %61, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store float 0.000000e+00, ptr %62, align 8, !tbaa !89
  br label %278

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %69 = load float, ptr %68, align 8, !tbaa !92
  %70 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %71 = tail call float @llvm.fmuladd.f32(float %69, float %53, float %63)
  store float %71, ptr %70, align 8, !tbaa !89
  br label %278

72:                                               ; preds = %39
  %73 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %74 = load i16, ptr %73, align 4, !tbaa !90
  %75 = icmp eq i16 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  store i16 2, ptr %73, align 4, !tbaa !90
  %77 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %78 = load float, ptr %77, align 8, !tbaa !89
  %79 = tail call float @llvm.fabs.f32(float %78)
  store float %79, ptr %77, align 8, !tbaa !89
  br label %80

80:                                               ; preds = %76, %72
  %81 = tail call double @PIL_check_seconds_timer() #12
  %82 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 22
  %83 = load double, ptr %82, align 8, !tbaa !95
  store double %81, ptr %82, align 8, !tbaa !95
  %84 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %85 = load float, ptr %84, align 8, !tbaa !89
  %86 = fcmp olt float %85, 0.000000e+00
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = fsub double %81, %83
  %89 = fptrunc double %88 to float
  %90 = tail call fastcc float @min_ff(float noundef %89, float noundef 5.000000e-01) #13
  %91 = tail call float @llvm.fmuladd.f32(float %90, float -2.000000e+01, float 1.000000e+01)
  %92 = fadd float %91, 1.000000e+00
  %93 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %94 = load float, ptr %93, align 8, !tbaa !92
  %95 = fmul float %94, %92
  %96 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %97 = load i8, ptr %96, align 1, !tbaa !93
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, float 1.000000e+00, float 0x3FB99999A0000000
  %100 = tail call float @llvm.fmuladd.f32(float %95, float %99, float %85)
  br label %101

101:                                              ; preds = %80, %87
  %102 = phi float [ %100, %87 ], [ 0.000000e+00, %80 ]
  store float %102, ptr %84, align 8, !tbaa !89
  br label %278

103:                                              ; preds = %39
  %104 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %105 = load i16, ptr %104, align 4, !tbaa !90
  %106 = icmp eq i16 %105, -1
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  store i16 2, ptr %104, align 4, !tbaa !90
  %108 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %109 = load float, ptr %108, align 8, !tbaa !89
  %110 = tail call float @llvm.fabs.f32(float %109)
  %111 = fneg float %110
  store float %111, ptr %108, align 8, !tbaa !89
  br label %112

112:                                              ; preds = %107, %103
  %113 = tail call double @PIL_check_seconds_timer() #12
  %114 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 22
  %115 = load double, ptr %114, align 8, !tbaa !95
  store double %113, ptr %114, align 8, !tbaa !95
  %116 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %117 = load float, ptr %116, align 8, !tbaa !89
  %118 = fcmp ogt float %117, 0.000000e+00
  br i1 %118, label %134, label %119

119:                                              ; preds = %112
  %120 = fsub double %113, %115
  %121 = fptrunc double %120 to float
  %122 = tail call fastcc float @min_ff(float noundef %121, float noundef 5.000000e-01) #13
  %123 = tail call float @llvm.fmuladd.f32(float %122, float -2.000000e+01, float 1.000000e+01)
  %124 = fadd float %123, 1.000000e+00
  %125 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %126 = load float, ptr %125, align 8, !tbaa !92
  %127 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %128 = load i8, ptr %127, align 1, !tbaa !93
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, float 1.000000e+00, float 0x3FB99999A0000000
  %131 = fneg float %126
  %132 = fmul float %124, %131
  %133 = tail call float @llvm.fmuladd.f32(float %132, float %130, float %117)
  br label %134

134:                                              ; preds = %112, %119
  %135 = phi float [ %133, %119 ], [ 0.000000e+00, %112 ]
  store float %135, ptr %116, align 8, !tbaa !89
  br label %278

136:                                              ; preds = %39
  %137 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  store i8 1, ptr %137, align 2, !tbaa !91
  br label %278

138:                                              ; preds = %39
  %139 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  store i8 0, ptr %139, align 2, !tbaa !91
  br label %278

140:                                              ; preds = %39
  %141 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %142 = load i16, ptr %141, align 4, !tbaa !90
  %143 = icmp eq i16 %142, 2
  %144 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %145 = load float, ptr %144, align 8, !tbaa !89
  %146 = fcmp olt float %145, 0.000000e+00
  br i1 %143, label %147, label %149

147:                                              ; preds = %140
  br i1 %146, label %148, label %152

148:                                              ; preds = %147
  store i16 -1, ptr %141, align 4, !tbaa !90
  br label %278

149:                                              ; preds = %140
  br i1 %146, label %150, label %158

150:                                              ; preds = %149
  %151 = fneg float %145
  br label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %154 = load float, ptr %153, align 8, !tbaa !92
  %155 = fadd float %145, %154
  br label %156

156:                                              ; preds = %150, %152
  %157 = phi float [ %155, %152 ], [ %151, %150 ]
  store float %157, ptr %144, align 8, !tbaa !89
  br label %158

158:                                              ; preds = %156, %149
  store i16 2, ptr %141, align 4, !tbaa !90
  br label %278

159:                                              ; preds = %39
  %160 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %161 = load i16, ptr %160, align 4, !tbaa !90
  %162 = icmp eq i16 %161, 2
  %163 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %164 = load float, ptr %163, align 8, !tbaa !89
  %165 = fcmp ogt float %164, 0.000000e+00
  br i1 %162, label %166, label %168

166:                                              ; preds = %159
  br i1 %165, label %167, label %171

167:                                              ; preds = %166
  store i16 -1, ptr %160, align 4, !tbaa !90
  br label %278

168:                                              ; preds = %159
  br i1 %165, label %169, label %177

169:                                              ; preds = %168
  %170 = fneg float %164
  br label %175

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %173 = load float, ptr %172, align 8, !tbaa !92
  %174 = fsub float %164, %173
  br label %175

175:                                              ; preds = %169, %171
  %176 = phi float [ %174, %171 ], [ %170, %169 ]
  store float %176, ptr %163, align 8, !tbaa !89
  br label %177

177:                                              ; preds = %175, %168
  store i16 2, ptr %160, align 4, !tbaa !90
  br label %278

178:                                              ; preds = %39
  %179 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %180 = load i16, ptr %179, align 4, !tbaa !90
  %181 = icmp eq i16 %180, 0
  %182 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %183 = load float, ptr %182, align 8, !tbaa !89
  %184 = fcmp olt float %183, 0.000000e+00
  br i1 %181, label %185, label %187

185:                                              ; preds = %178
  br i1 %184, label %186, label %190

186:                                              ; preds = %185
  store i16 -1, ptr %179, align 4, !tbaa !90
  br label %278

187:                                              ; preds = %178
  br i1 %184, label %188, label %196

188:                                              ; preds = %187
  %189 = fneg float %183
  br label %194

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %192 = load float, ptr %191, align 8, !tbaa !92
  %193 = fadd float %183, %192
  br label %194

194:                                              ; preds = %188, %190
  %195 = phi float [ %193, %190 ], [ %189, %188 ]
  store float %195, ptr %182, align 8, !tbaa !89
  br label %196

196:                                              ; preds = %194, %187
  store i16 0, ptr %179, align 4, !tbaa !90
  br label %278

197:                                              ; preds = %39
  %198 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %199 = load i16, ptr %198, align 4, !tbaa !90
  %200 = icmp eq i16 %199, 0
  %201 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %202 = load float, ptr %201, align 8, !tbaa !89
  %203 = fcmp ogt float %202, 0.000000e+00
  br i1 %200, label %204, label %206

204:                                              ; preds = %197
  br i1 %203, label %205, label %209

205:                                              ; preds = %204
  store i16 -1, ptr %198, align 4, !tbaa !90
  br label %278

206:                                              ; preds = %197
  br i1 %203, label %207, label %215

207:                                              ; preds = %206
  %208 = fneg float %202
  br label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %211 = load float, ptr %210, align 8, !tbaa !92
  %212 = fsub float %202, %211
  br label %213

213:                                              ; preds = %207, %209
  %214 = phi float [ %212, %209 ], [ %208, %207 ]
  store float %214, ptr %201, align 8, !tbaa !89
  br label %215

215:                                              ; preds = %213, %206
  store i16 0, ptr %198, align 4, !tbaa !90
  br label %278

216:                                              ; preds = %39
  %217 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %218 = load i16, ptr %217, align 4, !tbaa !90
  %219 = icmp eq i16 %218, 1
  %220 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %221 = load float, ptr %220, align 8, !tbaa !89
  %222 = fcmp olt float %221, 0.000000e+00
  br i1 %219, label %223, label %225

223:                                              ; preds = %216
  br i1 %222, label %224, label %228

224:                                              ; preds = %223
  store i16 -1, ptr %217, align 4, !tbaa !90
  br label %278

225:                                              ; preds = %216
  br i1 %222, label %226, label %234

226:                                              ; preds = %225
  %227 = fneg float %221
  br label %232

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %230 = load float, ptr %229, align 8, !tbaa !92
  %231 = fadd float %221, %230
  br label %232

232:                                              ; preds = %226, %228
  %233 = phi float [ %231, %228 ], [ %227, %226 ]
  store float %233, ptr %220, align 8, !tbaa !89
  br label %234

234:                                              ; preds = %232, %225
  store i16 1, ptr %217, align 4, !tbaa !90
  br label %278

235:                                              ; preds = %39
  %236 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %237 = load i16, ptr %236, align 4, !tbaa !90
  %238 = icmp eq i16 %237, 1
  %239 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %240 = load float, ptr %239, align 8, !tbaa !89
  %241 = fcmp ogt float %240, 0.000000e+00
  br i1 %238, label %242, label %244

242:                                              ; preds = %235
  br i1 %241, label %243, label %247

243:                                              ; preds = %242
  store i16 -1, ptr %236, align 4, !tbaa !90
  br label %278

244:                                              ; preds = %235
  br i1 %241, label %245, label %253

245:                                              ; preds = %244
  %246 = fneg float %240
  br label %251

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %249 = load float, ptr %248, align 8, !tbaa !92
  %250 = fsub float %240, %249
  br label %251

251:                                              ; preds = %245, %247
  %252 = phi float [ %250, %247 ], [ %246, %245 ]
  store float %252, ptr %239, align 8, !tbaa !89
  br label %253

253:                                              ; preds = %251, %244
  store i16 1, ptr %236, align 4, !tbaa !90
  br label %278

254:                                              ; preds = %39
  %255 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %256 = load i32, ptr %255, align 8, !tbaa !136
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 19
  store float 0.000000e+00, ptr %259, align 8, !tbaa !137
  br label %260

260:                                              ; preds = %254, %258
  %261 = phi i32 [ 2, %258 ], [ 0, %254 ]
  store i32 %261, ptr %255, align 8
  tail call fastcc void @fly_update_header(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %278

262:                                              ; preds = %39
  %263 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %264 = load i32, ptr %263, align 4, !tbaa !104
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 20
  store float 0.000000e+00, ptr %267, align 4, !tbaa !138
  br label %268

268:                                              ; preds = %262, %266
  %269 = phi i32 [ 2, %266 ], [ 0, %262 ]
  store i32 %269, ptr %263, align 4
  tail call fastcc void @fly_update_header(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %278

270:                                              ; preds = %39
  %271 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  store i8 1, ptr %271, align 1, !tbaa !93
  br label %278

272:                                              ; preds = %39
  %273 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  store i8 0, ptr %273, align 1, !tbaa !93
  br label %278

274:                                              ; preds = %39
  %275 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  store i8 1, ptr %275, align 4, !tbaa !94
  br label %278

276:                                              ; preds = %39
  %277 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  store i8 0, ptr %277, align 4, !tbaa !94
  br label %278

278:                                              ; preds = %3, %6, %59, %67, %66, %36, %29, %26, %17, %14, %243, %253, %224, %234, %205, %215, %186, %196, %167, %177, %148, %158, %39, %276, %274, %272, %270, %268, %260, %138, %136, %134, %101, %44, %42, %12
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_offset_lock_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !139 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !103
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !140 {
  %3 = load i32, ptr %1, align 4, !tbaa !141
  store i32 %3, ptr %0, align 4, !tbaa !141
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !141
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawFlyPixel(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !142 {
  %4 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = load ptr, ptr %2, align 8, !tbaa !66
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %6, ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext 0) #12
  %16 = load float, ptr %4, align 16, !tbaa !143
  %17 = load <4 x float>, ptr %4, align 16
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %19 = insertelement <2 x float> %18, float %16, i64 1
  %20 = fptosi <2 x float> %19 to <2 x i32>
  %21 = sitofp <2 x i32> %20 to <2 x float>
  br label %22

22:                                               ; preds = %3, %10
  %23 = phi <2 x float> [ %21, %10 ], [ zeroinitializer, %3 ]
  %24 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 11
  %25 = load float, ptr %24, align 8, !tbaa !144
  %26 = extractelement <2 x float> %23, i64 1
  %27 = call float @llvm.fmuladd.f32(float %25, float 0x3FDCCCCCC0000000, float %26)
  %28 = getelementptr inbounds %struct.FlyInfo, ptr %2, i64 0, i32 12
  %29 = load float, ptr %28, align 4, !tbaa !145
  %30 = extractelement <2 x float> %23, i64 0
  %31 = call float @llvm.fmuladd.f32(float %29, float 0x3FDCCCCCC0000000, float %30)
  %32 = call float @llvm.fmuladd.f32(float %25, float 0x3FE19999A0000000, float %26)
  %33 = call float @llvm.fmuladd.f32(float %29, float 0x3FE19999A0000000, float %30)
  call void @UI_ThemeColor(i32 noundef 192) #12
  call void @glBegin(i32 noundef 1) #12
  call void @glVertex2f(float noundef %27, float noundef %31) #12
  %34 = fadd float %31, 5.000000e+00
  call void @glVertex2f(float noundef %27, float noundef %34) #12
  call void @glVertex2f(float noundef %27, float noundef %31) #12
  %35 = fadd float %27, 5.000000e+00
  call void @glVertex2f(float noundef %35, float noundef %31) #12
  call void @glVertex2f(float noundef %32, float noundef %33) #12
  %36 = fadd float %33, -5.000000e+00
  call void @glVertex2f(float noundef %32, float noundef %36) #12
  call void @glVertex2f(float noundef %32, float noundef %33) #12
  %37 = fadd float %32, -5.000000e+00
  call void @glVertex2f(float noundef %37, float noundef %33) #12
  call void @glVertex2f(float noundef %27, float noundef %33) #12
  call void @glVertex2f(float noundef %27, float noundef %36) #12
  call void @glVertex2f(float noundef %27, float noundef %33) #12
  call void @glVertex2f(float noundef %35, float noundef %33) #12
  call void @glVertex2f(float noundef %32, float noundef %31) #12
  call void @glVertex2f(float noundef %32, float noundef %34) #12
  call void @glVertex2f(float noundef %32, float noundef %31) #12
  call void @glVertex2f(float noundef %37, float noundef %31) #12
  call void @glEnd() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 !PGOFuncName !146 {
  store float %1, ptr %0, align 4, !tbaa !103
  %5 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %5, align 4, !tbaa !103
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %6, align 4, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: optsize
declare ptr @ED_view3d_cameracontrol_acquire(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !148
  %4 = load float, ptr %0, align 4, !tbaa !143
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !150
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !126
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fly_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !151 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !136
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i8
  %8 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %7) #12
  %9 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !104
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i8
  %13 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %12) #12
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.46, ptr noundef %8, ptr noundef %13) #12
  %15 = call ptr @CTX_wm_area(ptr noundef %0) #12
  call void @ED_area_headerprint(ptr noundef %15, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !152 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flyEnd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !60
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %7, ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void @ED_region_draw_cb_exit(ptr noundef %15, ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = load i16, ptr %3, align 8, !tbaa !60
  %21 = icmp eq i16 %20, 1
  %22 = zext i1 %21 to i8
  tail call void @ED_view3d_cameracontrol_release(ptr noundef %19, i8 noundef zeroext %22) #12
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %24 = load i16, ptr %23, align 2, !tbaa !102
  %25 = and i16 %24, -9
  store i16 %25, ptr %23, align 2, !tbaa !102
  %26 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %30(ptr noundef nonnull %27) #12
  br label %31

31:                                               ; preds = %29, %6
  %32 = load i16, ptr %3, align 8, !tbaa !60
  %33 = icmp eq i16 %32, 2
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %34(ptr noundef nonnull %1) #12
  %35 = select i1 %33, i32 4, i32 2
  br label %36

36:                                               ; preds = %31, %2
  %37 = phi i32 [ 1, %2 ], [ %35, %31 ]
  ret i32 %37
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_cameracontrol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cameracontrol_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flyApply_ndof(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !154 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %6) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = load ptr, ptr %1, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !93
  %15 = icmp eq ptr %7, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 56
  %18 = load i16, ptr %17, align 2, !tbaa !155
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %2 ]
  call void @view3d_ndof_fly(ptr noundef %9, ptr noundef %11, ptr noundef %12, i8 noundef zeroext %14, i16 noundef signext %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %21 = load i8, ptr %3, align 1, !tbaa !156
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr %4, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %27, align 2, !tbaa !68
  %28 = load ptr, ptr %1, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 25
  %30 = load i8, ptr %29, align 1, !tbaa !74
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call fastcc void @flyMoveCamera(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %23, i8 noundef zeroext %21) #13
  br label %33

33:                                               ; preds = %26, %32, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flyApply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !157 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 8
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %9 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 11
  %10 = load float, ptr %9, align 8, !tbaa !144
  %11 = fdiv float %10, 2.000000e+01
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 12
  %14 = load float, ptr %13, align 4, !tbaa !145
  %15 = fdiv float %14, 2.000000e+01
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !141
  %19 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = sub nsw i32 %18, %20
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 9, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !141
  %25 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 10, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !141
  %27 = sub nsw i32 %24, %26
  %28 = sitofp i32 %27 to float
  %29 = sitofp i32 %12 to float
  %30 = fcmp ogt float %22, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = fsub float %22, %29
  br label %39

33:                                               ; preds = %2
  %34 = sub nsw i32 0, %12
  %35 = sitofp i32 %34 to float
  %36 = fcmp olt float %22, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = fadd float %29, %22
  br label %39

39:                                               ; preds = %33, %37, %31
  %40 = phi float [ %32, %31 ], [ %38, %37 ], [ 0.000000e+00, %33 ]
  %41 = sitofp i32 %16 to float
  %42 = fcmp ogt float %28, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = fsub float %28, %41
  br label %51

45:                                               ; preds = %39
  %46 = sub nsw i32 0, %16
  %47 = sitofp i32 %46 to float
  %48 = fcmp olt float %28, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = fadd float %41, %28
  br label %51

51:                                               ; preds = %45, %49, %43
  %52 = phi float [ %44, %43 ], [ %50, %49 ], [ 0.000000e+00, %45 ]
  %53 = fcmp une float %40, 0.000000e+00
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = shl nsw i32 %12, 1
  %56 = sitofp i32 %55 to float
  %57 = fsub float %10, %56
  %58 = fdiv float %40, %57
  %59 = tail call float @llvm.fabs.f32(float %58)
  %60 = fmul float %58, %59
  br label %61

61:                                               ; preds = %54, %51
  %62 = phi float [ %60, %54 ], [ %40, %51 ]
  %63 = fcmp une float %52, 0.000000e+00
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = shl nsw i32 %16, 1
  %66 = sitofp i32 %65 to float
  %67 = fsub float %14, %66
  %68 = fdiv float %52, %67
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fmul float %68, %69
  br label %71

71:                                               ; preds = %64, %61
  %72 = phi float [ %70, %64 ], [ %52, %61 ]
  %73 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 14
  %74 = load float, ptr %73, align 8, !tbaa !89
  %75 = fcmp une float %74, 0.000000e+00
  %76 = fcmp une float %62, 0.000000e+00
  %77 = select i1 %75, i1 true, i1 %76
  %78 = fcmp une float %72, 0.000000e+00
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %82 = load i32, ptr %81, align 4, !tbaa !104
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %86 = load i32, ptr %85, align 8, !tbaa !136
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %286, label %88

88:                                               ; preds = %84, %80, %71
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %89 = tail call double @PIL_check_seconds_timer() #12
  %90 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 23
  %91 = load double, ptr %90, align 8, !tbaa !96
  %92 = fsub double %89, %91
  %93 = fptrunc double %92 to float
  %94 = tail call fastcc float @min_ff(float noundef 0x3FA99999A0000000, float noundef %93) #13
  store double %89, ptr %90, align 8, !tbaa !96
  %95 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 7
  %96 = load i8, ptr %95, align 1, !tbaa !93
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = load float, ptr %73, align 8, !tbaa !89
  %100 = fsub float 1.000000e+00, %94
  %101 = fmul float %100, %99
  store float %101, ptr %73, align 8, !tbaa !89
  br label %102

102:                                              ; preds = %98, %88
  %103 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %103) #12
  %104 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 16
  %105 = load i8, ptr %104, align 2, !tbaa !91
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = fneg float %62
  %109 = fneg float %72
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %7, float noundef %108, float noundef %109, float noundef 0.000000e+00) #13
  %110 = load i8, ptr %95, align 1, !tbaa !93
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load <2 x float>, ptr %7, align 8, !tbaa !103
  %114 = fmul <2 x float> %113, <float 0x3FB99999A0000000, float 0x3FB99999A0000000>
  store <2 x float> %114, ptr %7, align 8, !tbaa !103
  br label %115

115:                                              ; preds = %112, %107
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #12
  %116 = fmul float %93, 2.000000e+02
  %117 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 21
  %118 = load float, ptr %117, align 8, !tbaa !92
  %119 = fmul float %116, %118
  br label %228

120:                                              ; preds = %102
  br i1 %78, label %121, label %136

121:                                              ; preds = %120
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %122 = fmul float %72, %93
  %123 = fmul float %122, -1.000000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %123) #12
  %124 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %124, ptr noundef nonnull %124, ptr noundef nonnull %6) #12
  %125 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %126 = load i32, ptr %125, align 8, !tbaa !136
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  store i32 2, ptr %125, align 8, !tbaa !136
  br label %129

129:                                              ; preds = %128, %121
  %130 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %131 = load i32, ptr %130, align 4, !tbaa !104
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  store i32 2, ptr %130, align 4, !tbaa !104
  br label %134

134:                                              ; preds = %133, %129
  %135 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 19
  store float 0.000000e+00, ptr %135, align 8, !tbaa !137
  br label %136

136:                                              ; preds = %134, %120
  br i1 %76, label %137, label %160

137:                                              ; preds = %136
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %138 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !103
  %140 = fcmp olt float %139, 0.000000e+00
  %141 = fneg float %62
  %142 = select i1 %140, float %141, float %62
  %143 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %144 = load i32, ptr %143, align 4, !tbaa !104
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  br label %148

147:                                              ; preds = %137
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  br label %148

148:                                              ; preds = %147, %146
  %149 = fmul float %142, %93
  %150 = fmul float %149, 1.000000e+01
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %150) #12
  %151 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %151, ptr noundef nonnull %151, ptr noundef nonnull %6) #12
  %152 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %153 = load i32, ptr %152, align 8, !tbaa !136
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  store i32 2, ptr %152, align 8, !tbaa !136
  br label %156

156:                                              ; preds = %155, %148
  %157 = load i32, ptr %143, align 4, !tbaa !104
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %156
  store i32 2, ptr %143, align 4, !tbaa !104
  br label %164

160:                                              ; preds = %136
  %161 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %162 = load i32, ptr %161, align 4, !tbaa !104
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %183

164:                                              ; preds = %159, %160
  %165 = phi float [ %142, %159 ], [ %62, %160 ]
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %166 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !103
  %168 = call float @llvm.fabs.f32(float %167)
  %169 = fcmp ogt float %168, 0x3EE4F8B580000000
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = fmul float %167, 5.000000e+00
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %172 = fmul float %94, %171
  %173 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 20
  %174 = load float, ptr %173, align 4, !tbaa !138
  %175 = fmul float %172, %174
  %176 = fmul float %175, 0x3FB99999A0000000
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %176) #12
  %177 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %177, ptr noundef nonnull %177, ptr noundef nonnull %6) #12
  %178 = load float, ptr %173, align 4, !tbaa !138
  %179 = fadd float %178, 0x3FA99999A0000000
  store float %179, ptr %173, align 4, !tbaa !138
  br label %183

180:                                              ; preds = %164
  %181 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  store i32 1, ptr %181, align 4, !tbaa !104
  %182 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 20
  store float 0.000000e+00, ptr %182, align 4, !tbaa !138
  br label %183

183:                                              ; preds = %156, %170, %180, %160
  %184 = phi float [ %165, %170 ], [ %165, %180 ], [ %62, %160 ], [ %142, %156 ]
  %185 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %186 = load i32, ptr %185, align 8, !tbaa !136
  %187 = icmp eq i32 %186, 2
  %188 = fcmp oeq float %72, 0.000000e+00
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %207

190:                                              ; preds = %183
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %191 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !103
  %193 = call float @llvm.fabs.f32(float %192)
  %194 = fcmp ogt float %193, 0x3EE4F8B580000000
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = fmul float %192, -5.000000e+00
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #13
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  %197 = fmul float %94, %196
  %198 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 19
  %199 = load float, ptr %198, align 8, !tbaa !137
  %200 = fmul float %197, %199
  %201 = fmul float %200, 0x3FB99999A0000000
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %201) #12
  %202 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %202, ptr noundef nonnull %202, ptr noundef nonnull %6) #12
  %203 = load float, ptr %198, align 8, !tbaa !137
  %204 = fadd float %203, 0x3FA99999A0000000
  store float %204, ptr %198, align 8, !tbaa !137
  br label %207

205:                                              ; preds = %190
  store i32 1, ptr %185, align 8, !tbaa !136
  %206 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 19
  store float 0.000000e+00, ptr %206, align 8, !tbaa !137
  br label %207

207:                                              ; preds = %195, %205, %183
  %208 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 15
  %209 = load i16, ptr %208, align 4, !tbaa !90
  %210 = icmp eq i16 %209, -1
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  call fastcc void @zero_v3(ptr noundef nonnull %7) #13
  br label %224

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 8
  %214 = load i8, ptr %213, align 4, !tbaa !94
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  call fastcc void @zero_v3(ptr noundef nonnull %7) #13
  %217 = sext i16 %209 to i64
  %218 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %217
  store float 1.000000e+00, ptr %218, align 4, !tbaa !103
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #12
  br label %224

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 25
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %220) #13
  %221 = load float, ptr %73, align 8, !tbaa !89
  %222 = fcmp olt float %221, 0.000000e+00
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  call fastcc void @negate_v3(ptr noundef nonnull %7) #13
  br label %224

224:                                              ; preds = %216, %223, %219, %211
  %225 = load float, ptr %73, align 8, !tbaa !89
  %226 = fmul float %225, %93
  %227 = fmul float %226, 2.500000e-01
  br label %228

228:                                              ; preds = %224, %115
  %229 = phi float [ %227, %224 ], [ %119, %115 ]
  %230 = phi float [ %184, %224 ], [ %62, %115 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %229) #13
  %231 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 25
  %232 = call float @llvm.fmuladd.f32(float %93, float 2.000000e+01, float 1.000000e+00)
  %233 = fdiv float 1.000000e+00, %232
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %231, float noundef %233) #12
  %234 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 25
  %235 = load i8, ptr %234, align 1, !tbaa !74
  %236 = icmp eq i8 %235, 2
  br i1 %236, label %237, label %256

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  %239 = load ptr, ptr %238, align 8, !tbaa !67
  %240 = call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %239) #12
  %241 = getelementptr inbounds %struct.Object, ptr %240, i64 0, i32 56
  %242 = load i16, ptr %241, align 2, !tbaa !155
  %243 = and i16 %242, 1
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %237
  store float 0.000000e+00, ptr %4, align 4, !tbaa !103
  br label %246

246:                                              ; preds = %245, %237
  %247 = and i16 %242, 2
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %250, align 4, !tbaa !103
  br label %251

251:                                              ; preds = %249, %246
  %252 = and i16 %242, 4
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %255, align 4, !tbaa !103
  br label %256

256:                                              ; preds = %251, %254, %228
  %257 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 22
  call fastcc void @add_v3_v3(ptr noundef nonnull %257, ptr noundef nonnull %4) #13
  %258 = load i8, ptr %234, align 1, !tbaa !74
  %259 = icmp eq i8 %258, 2
  br i1 %259, label %260, label %285

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 17
  %262 = load i32, ptr %261, align 8, !tbaa !136
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 18
  %266 = load i32, ptr %265, align 4, !tbaa !104
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = fcmp une float %230, 0.000000e+00
  %270 = select i1 %269, i1 true, i1 %78
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i8, ptr %104, align 2, !tbaa !91
  %273 = icmp eq i8 %272, 0
  %274 = zext i1 %273 to i8
  br label %275

275:                                              ; preds = %271, %268, %264, %260
  %276 = phi i8 [ 1, %264 ], [ 1, %260 ], [ %274, %271 ], [ 0, %268 ]
  %277 = load float, ptr %73, align 8, !tbaa !89
  %278 = fcmp une float %277, 0.000000e+00
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load i8, ptr %104, align 2, !tbaa !91
  %281 = icmp ne i8 %280, 0
  %282 = zext i1 %281 to i8
  br label %283

283:                                              ; preds = %279, %275
  %284 = phi i8 [ 1, %275 ], [ %282, %279 ]
  call fastcc void @flyMoveCamera(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %276, i8 noundef zeroext %284) #13
  br label %285

285:                                              ; preds = %283, %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %289

286:                                              ; preds = %84
  %287 = tail call double @PIL_check_seconds_timer() #12
  %288 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 23
  store double %287, ptr %288, align 8, !tbaa !96
  br label %289

289:                                              ; preds = %286, %285
  %290 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %290, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_ndof_fly(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flyMoveCamera(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !158 {
  %5 = getelementptr inbounds %struct.FlyInfo, ptr %1, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  tail call void @ED_view3d_cameracontrol_update(ptr noundef %6, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3) #12
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_cameracontrol_update(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 !PGOFuncName !159 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !103
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !103
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !103
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !160 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !161 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !103
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !103
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !103
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !162 {
  %3 = load float, ptr %1, align 4, !tbaa !103
  %4 = load float, ptr %0, align 4, !tbaa !103
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !103
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !103
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !103
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !103
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !103
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !103
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !163 {
  %3 = load float, ptr %1, align 4, !tbaa !103
  store float %3, ptr %0, align 4, !tbaa !103
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !103
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !103
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !103
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !164 {
  %3 = load float, ptr %0, align 4, !tbaa !103
  %4 = load float, ptr %1, align 4, !tbaa !103
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !103
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !103
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !103
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !103
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !165 {
  %4 = load float, ptr %1, align 4, !tbaa !103
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !103
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !103
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !103
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !103
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !103
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!51 = !{!"view3d_fly.c:fly_invoke"}
!52 = !{!53, !37, i64 811}
!53 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !54, i64 776, !54, i64 780, !54, i64 784, !54, i64 788, !37, i64 792, !54, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !40, i64 824, !40, i64 826, !37, i64 828, !40, i64 844, !40, i64 846, !54, i64 848, !37, i64 852, !54, i64 864, !37, i64 868}
!54 = !{!"float", !37, i64 0}
!55 = !{!36, !36, i64 0}
!56 = !{!57, !36, i64 96}
!57 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!58 = !{i8 0, i8 2}
!59 = !{!"view3d_fly.c:fly_cancel"}
!60 = !{!61, !40, i64 40}
!61 = !{!"FlyInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !37, i64 42, !37, i64 43, !37, i64 44, !37, i64 48, !37, i64 56, !54, i64 64, !54, i64 68, !36, i64 72, !54, i64 80, !40, i64 84, !37, i64 86, !62, i64 88, !62, i64 92, !54, i64 96, !54, i64 100, !54, i64 104, !63, i64 112, !63, i64 120, !36, i64 128, !37, i64 136, !36, i64 152}
!62 = !{!"int", !37, i64 0}
!63 = !{!"double", !37, i64 0}
!64 = !{i32 1, i32 5}
!65 = !{!"view3d_fly.c:fly_modal"}
!66 = !{!61, !36, i64 0}
!67 = !{!61, !36, i64 152}
!68 = !{!61, !37, i64 42}
!69 = !{!61, !36, i64 72}
!70 = !{!71, !40, i64 16}
!71 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !62, i64 20, !62, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !62, i64 48, !62, i64 52, !63, i64 56, !62, i64 64, !62, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !62, i64 108, !36, i64 112}
!72 = !{!71, !36, i64 112}
!73 = !{!61, !36, i64 32}
!74 = !{!53, !37, i64 809}
!75 = !{!"view3d_fly.c:initFlyInfo"}
!76 = !{!61, !36, i64 8}
!77 = !{!61, !36, i64 16}
!78 = !{!61, !36, i64 24}
!79 = !{!80, !36, i64 96}
!80 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !62, i64 32, !54, i64 36, !37, i64 40, !37, i64 56, !54, i64 72, !54, i64 76, !37, i64 80, !37, i64 81, !62, i64 84, !62, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !81, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !62, i64 224, !62, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!81 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!82 = !{!83, !36, i64 24}
!83 = !{!"Object", !84, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !62, i64 140, !62, i64 144, !62, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !85, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !62, i64 432, !62, i64 436, !36, i64 440, !36, i64 448, !62, i64 456, !62, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !62, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !62, i64 968, !62, i64 972, !62, i64 976, !62, i64 980, !62, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !62, i64 1144, !62, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !86, i64 1304, !86, i64 1312, !62, i64 1320, !62, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!84 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !62, i64 100, !62, i64 104, !62, i64 108, !36, i64 112}
!85 = !{!"bAnimVizSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44}
!86 = !{!"long", !37, i64 0}
!87 = !{!57, !36, i64 120}
!88 = !{!83, !36, i64 1176}
!89 = !{!61, !54, i64 80}
!90 = !{!61, !40, i64 84}
!91 = !{!61, !37, i64 86}
!92 = !{!61, !54, i64 104}
!93 = !{!61, !37, i64 43}
!94 = !{!61, !37, i64 44}
!95 = !{!61, !63, i64 112}
!96 = !{!61, !63, i64 120}
!97 = !{!98, !36, i64 240}
!98 = !{!"ARegion", !36, i64 0, !36, i64 8, !99, i64 16, !100, i64 176, !100, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !54, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!99 = !{!"View2D", !81, i64 0, !81, i64 16, !100, i64 32, !100, i64 48, !100, i64 64, !37, i64 80, !37, i64 88, !54, i64 96, !54, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !62, i64 136, !62, i64 140, !36, i64 144, !36, i64 152}
!100 = !{!"rcti", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!101 = !{!61, !36, i64 128}
!102 = !{!53, !40, i64 826}
!103 = !{!54, !54, i64 0}
!104 = !{!61, !62, i64 92}
!105 = !{!106, !62, i64 8484}
!106 = !{!"UserDef", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !62, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !62, i64 8484, !62, i64 8488, !62, i64 8492, !40, i64 8496, !40, i64 8498, !62, i64 8500, !62, i64 8504, !62, i64 8508, !62, i64 8512, !62, i64 8516, !62, i64 8520, !62, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !62, i64 8912, !62, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !54, i64 8956, !54, i64 8960, !62, i64 8964, !40, i64 8968, !40, i64 8970, !54, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !107, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !62, i64 10896, !62, i64 10900, !54, i64 10904, !54, i64 10908, !62, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !108, i64 10928}
!107 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!108 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !40, i64 24, !37, i64 26}
!109 = !{!110, !36, i64 128}
!110 = !{!"Scene", !84, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !62, i64 232, !62, i64 236, !62, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !111, i64 280, !118, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !62, i64 4380, !39, i64 4384, !119, i64 4400, !120, i64 4416, !123, i64 4600, !36, i64 4608, !124, i64 4616, !36, i64 4640, !86, i64 4648, !86, i64 4656, !113, i64 4664, !114, i64 4824, !125, i64 4888, !36, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !36, i64 248, !36, i64 256, !115, i64 264, !116, i64 328, !62, i64 400, !62, i64 404, !62, i64 408, !54, i64 412, !62, i64 416, !62, i64 420, !62, i64 424, !62, i64 428, !40, i64 432, !40, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !62, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !62, i64 484, !62, i64 488, !40, i64 492, !40, i64 494, !62, i64 496, !62, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !62, i64 516, !62, i64 520, !62, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !81, i64 544, !81, i64 560, !100, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !62, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !54, i64 660, !54, i64 664, !40, i64 668, !40, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !62, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !62, i64 2520, !40, i64 2524, !40, i64 2526, !54, i64 2528, !54, i64 2532, !40, i64 2536, !40, i64 2538, !54, i64 2540, !40, i64 2544, !40, i64 2546, !62, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !62, i64 2576, !54, i64 2580, !37, i64 2584, !117, i64 2616, !62, i64 3976, !62, i64 3980}
!112 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !62, i64 0, !62, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!115 = !{!"QuicktimeCodecSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !40, i64 48, !40, i64 50, !62, i64 52, !62, i64 56, !62, i64 60}
!116 = !{!"FFMpegCodecData", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !54, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !36, i64 64}
!117 = !{!"BakeData", !112, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!118 = !{!"AudioData", !62, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !62, i64 16, !40, i64 20, !40, i64 22, !54, i64 24, !54, i64 28}
!119 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!120 = !{!"GameData", !119, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !121, i64 40, !40, i64 64, !40, i64 66, !54, i64 68, !122, i64 72, !54, i64 128, !54, i64 132, !62, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!121 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!122 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !62, i64 40, !54, i64 44, !54, i64 48, !40, i64 52, !40, i64 54}
!123 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!124 = !{!"PhysicsSettings", !37, i64 0, !62, i64 12, !62, i64 16, !62, i64 20}
!125 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!126 = !{!81, !54, i64 8}
!127 = !{!40, !40, i64 0}
!128 = !{!98, !62, i64 176}
!129 = !{!98, !62, i64 184}
!130 = !{!"view3d_fly.c:flyEvent"}
!131 = !{!132, !62, i64 28}
!132 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !54, i64 24, !62, i64 28}
!133 = !{!71, !40, i64 18}
!134 = !{!71, !62, i64 52}
!135 = !{!71, !62, i64 24}
!136 = !{!61, !62, i64 88}
!137 = !{!61, !54, i64 96}
!138 = !{!61, !54, i64 100}
!139 = !{!"view3d_fly.c:zero_v3"}
!140 = !{!"view3d_fly.c:copy_v2_v2_int"}
!141 = !{!62, !62, i64 0}
!142 = !{!"view3d_fly.c:drawFlyPixel"}
!143 = !{!81, !54, i64 0}
!144 = !{!61, !54, i64 64}
!145 = !{!61, !54, i64 68}
!146 = !{!"view3d_fly.c:copy_v3_fl3"}
!147 = !{!"view3d_fly.c:BLI_rctf_size_x"}
!148 = !{!81, !54, i64 4}
!149 = !{!"view3d_fly.c:BLI_rctf_size_y"}
!150 = !{!81, !54, i64 12}
!151 = !{!"view3d_fly.c:fly_update_header"}
!152 = !{!"view3d_fly.c:min_ff"}
!153 = !{!"view3d_fly.c:flyEnd"}
!154 = !{!"view3d_fly.c:flyApply_ndof"}
!155 = !{!83, !40, i64 954}
!156 = !{!37, !37, i64 0}
!157 = !{!"view3d_fly.c:flyApply"}
!158 = !{!"view3d_fly.c:flyMoveCamera"}
!159 = !{!"view3d_fly.c:mul_v3_fl"}
!160 = !{!"view3d_fly.c:normalize_v3_v3"}
!161 = !{!"view3d_fly.c:negate_v3"}
!162 = !{!"view3d_fly.c:add_v3_v3"}
!163 = !{!"view3d_fly.c:copy_v3_v3"}
!164 = !{!"view3d_fly.c:dot_v3v3"}
!165 = !{!"view3d_fly.c:mul_v3_v3fl"}
