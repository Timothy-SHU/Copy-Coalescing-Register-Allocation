; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_walk.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_walk.c"
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
%struct.WalkInfo = type { ptr, ptr, ptr, ptr, ptr, i16, i8, [2 x i32], [2 x i32], [2 x i32], ptr, float, float, float, double, ptr, [3 x float], i32, %struct.WalkTeleport, float, i8, i8, i8, i32, float, float, i32, float, float, float, ptr }
%struct.WalkTeleport = type { i32, float, [3 x float], [3 x float], double, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }

@walk_modal_keymap.modal_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 23, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 24, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.13, i32 0, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 11, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 13, ptr @.str.19, i32 0, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 10, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 12, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 14, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 15, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 16, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 17, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 18, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.41 }, %struct.EnumPropertyItem { i32 19, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.49 }, %struct.EnumPropertyItem { i32 20, ptr @.str.50, i32 0, ptr @.str.51, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ACCELERATE\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Accelerate\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DECELERATE\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Decelerate\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"FORWARD\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Move Forward\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"BACKWARD\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Move Backward\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Move Left (Strafe)\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Move Right (Strafe)\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Move Up\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Move Down\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"FORWARD_STOP\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Stop Move Forward\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"BACKWARD_STOP\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Stop Mode Backward\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"LEFT_STOP\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Stop Move Left\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"RIGHT_STOP\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Stop Mode Right\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"UP_STOP\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Stop Move Up\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"DOWN_STOP\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Stop Mode Down\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"TELEPORT\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Teleport\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Move forward a few units at once\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"FAST_ENABLE\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Fast Enable\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Move faster (walk or fly)\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"FAST_DISABLE\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"Fast Disable\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Resume regular speed\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"SLOW_ENABLE\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Slow Enable\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Move slower (walk or fly)\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"SLOW_DISABLE\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Slow Disable\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"JUMP\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"Jump when in walk mode\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"JUMP_STOP\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"Jump Stop\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"Stop pushing jump\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"View3D Walk Modal\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"VIEW3D_OT_walk\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"Walk Navigation\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"Interactively walk around the scene\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [24 x i8] c"NavigationWalkOperation\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [50 x i8] c"Cannot navigate a camera from an external library\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"Cannot navigate when the view offset is locked\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"Cannot navigate an object with constraints\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@userdef_speed = internal unnamed_addr global float -1.000000e+00, align 4
@base_speed = internal unnamed_addr global float -1.000000e+00, align 4
@.str.61 = private unnamed_addr constant [212 x i8] c"LMB/Return: confirm, Esc/RMB: cancel, Tab: gravity (%s), WASD: move around, Shift: fast, Alt: slow, QE: up and down, MMB/Space: teleport, V: jump, Pad +/Wheel Up: increase speed, Pad -/Wheel Down: decrease speed\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@__const.walk_ray_cast.ray_normal = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@__const.walk_floor_distance_get.ray_normal = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00], align 4

; Function Attrs: nounwind uwtable
define dso_local void @walk_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.53) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @walk_modal_keymap.modal_items) #8
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #8
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #8
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #8
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #8
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #8
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 17) #8
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 18) #8
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #8
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 5) #8
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 7) #8
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 9) #8
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 11) #8
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 13) #8
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #8
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #8
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 8) #8
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 10) #8
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 12) #8
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 14) #8
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #8
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #8
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #8
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #8
  %35 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #8
  %36 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #8
  %37 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 8) #8
  %38 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 10) #8
  %39 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 22) #8
  %40 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 22) #8
  %41 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 118, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 19) #8
  %42 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 118, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 20) #8
  %43 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 21) #8
  %44 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 21) #8
  %45 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 164, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 23) #8
  %46 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 162, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 24) #8
  %47 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 23) #8
  %48 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 24) #8
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.54) #8
  br label %49

49:                                               ; preds = %4, %8
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
define dso_local void @VIEW3D_OT_walk(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @walk_invoke, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @walk_cancel, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @walk_modal, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @walk_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 27
  %8 = load i8, ptr %7, align 1, !tbaa !51
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %184

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %13 = tail call ptr %12(i64 noundef 224, ptr noundef nonnull @.str.57) #8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %14, align 8, !tbaa !55
  %15 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %16 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #8
  store ptr %16, ptr %13, align 8, !tbaa !57
  %17 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %18 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !62
  %19 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %20 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !63
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %22 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !64
  %23 = load ptr, ptr %13, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !65
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = load ptr, ptr %18, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8 1, ptr %24, align 1, !tbaa !65
  br label %33

33:                                               ; preds = %32, %27, %11
  %34 = load i8, ptr %24, align 1, !tbaa !65
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load ptr, ptr %18, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.View3D, ptr %37, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %178

43:                                               ; preds = %36, %33
  %44 = load ptr, ptr %18, align 8, !tbaa !62
  %45 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %44, ptr noundef %23) #8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %178

47:                                               ; preds = %43
  %48 = load ptr, ptr %13, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %48, i64 0, i32 25
  %50 = load i8, ptr %49, align 1, !tbaa !65
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load ptr, ptr %18, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.View3D, ptr %53, i64 0, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !66
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 106
  %57 = load ptr, ptr %56, align 8, !tbaa !74
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %178

59:                                               ; preds = %52, %47
  %60 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 5
  store i16 0, ptr %60, align 8, !tbaa !75
  %61 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 1), align 4, !tbaa !76
  %62 = load float, ptr @userdef_speed, align 4, !tbaa !80
  %63 = fsub float %61, %62
  %64 = tail call float @llvm.fabs.f32(float %63)
  %65 = fcmp ogt float %64, 0x3FB99999A0000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store float %61, ptr @base_speed, align 4, !tbaa !80
  store float %61, ptr @userdef_speed, align 4, !tbaa !80
  br label %67

67:                                               ; preds = %66, %59
  %68 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 12
  store float 0.000000e+00, ptr %68, align 4, !tbaa !81
  %69 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 20
  store i8 0, ptr %69, align 4, !tbaa !82
  %70 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 21
  store i8 0, ptr %70, align 1, !tbaa !83
  %71 = load ptr, ptr %22, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.Scene, ptr %71, i64 0, i32 38
  %73 = load float, ptr %72, align 8, !tbaa !84
  %74 = fdiv float 1.000000e+00, %73
  %75 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 13
  store float %74, ptr %75, align 8, !tbaa !102
  %76 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 5), align 4, !tbaa !103
  %77 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 18, i32 1
  store float %76, ptr %77, align 4, !tbaa !104
  %78 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114), align 8, !tbaa !105
  %79 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 19
  store float %78, ptr %79, align 8, !tbaa !106
  %80 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 6), align 8, !tbaa !107
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  %83 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 17
  %84 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 23
  br i1 %82, label %89, label %85

85:                                               ; preds = %67
  store i32 1, ptr %83, align 4, !tbaa !108
  store i32 2, ptr %84, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  %86 = tail call ptr @WM_bool_as_string(i8 noundef zeroext 1) #8
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %86) #8
  %88 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %88, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  br label %103

89:                                               ; preds = %67
  store i32 0, ptr %83, align 4, !tbaa !108
  store i32 0, ptr %84, align 8, !tbaa !109
  %90 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 18
  %91 = load i32, ptr %90, align 8, !tbaa !110
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 18, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !111
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %89, %93
  %99 = phi i8 [ 0, %89 ], [ %97, %93 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %100 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %99) #8
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %100) #8
  %102 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %102, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %103

103:                                              ; preds = %98, %85
  %104 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 3), align 4, !tbaa !112
  %105 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 25
  store float %104, ptr %105, align 8, !tbaa !113
  %106 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 4), align 8, !tbaa !114
  %107 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 28
  store float %106, ptr %107, align 4, !tbaa !115
  %108 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 1), align 4, !tbaa !76
  store float %108, ptr %68, align 4, !tbaa !81
  %109 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 2), align 8, !tbaa !116
  %110 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 29
  store float %109, ptr %110, align 8, !tbaa !117
  %111 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 23
  store i32 0, ptr %111, align 8, !tbaa !109
  %112 = load ptr, ptr %22, align 8, !tbaa !64
  %113 = getelementptr inbounds %struct.Scene, ptr %112, i64 0, i32 40, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !118
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.Scene, ptr %112, i64 0, i32 40, i32 0, i64 2
  %119 = load float, ptr %118, align 8, !tbaa !80
  %120 = call float @llvm.fabs.f32(float %119)
  br label %121

121:                                              ; preds = %103, %117
  %122 = phi float [ %120, %117 ], [ 0x40239D0520000000, %103 ]
  %123 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 24
  store float %122, ptr %123, align 4, !tbaa !119
  %124 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 6), align 8, !tbaa !107
  %125 = trunc i16 %124 to i8
  %126 = lshr i8 %125, 1
  %127 = and i8 %126, 1
  %128 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 22
  store i8 %127, ptr %128, align 2, !tbaa !120
  %129 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 26
  store i32 0, ptr %129, align 4, !tbaa !121
  %130 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 16
  store float 0.000000e+00, ptr %130, align 4, !tbaa !80
  %131 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 16, i64 1
  store float 0.000000e+00, ptr %131, align 4, !tbaa !80
  %132 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 16, i64 2
  store float 0.000000e+00, ptr %132, align 4, !tbaa !80
  %133 = call ptr @CTX_wm_manager(ptr noundef %0) #8
  %134 = call ptr @WM_event_add_timer(ptr noundef %133, ptr noundef %15, i32 noundef 272, double noundef 0x3F847AE140000000) #8
  %135 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 4
  store ptr %134, ptr %135, align 8, !tbaa !122
  %136 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 10
  store ptr null, ptr %136, align 8, !tbaa !123
  %137 = call double @PIL_check_seconds_timer() #8
  %138 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 14
  store double %137, ptr %138, align 8, !tbaa !124
  %139 = load ptr, ptr %20, align 8, !tbaa !63
  %140 = getelementptr inbounds %struct.ARegion, ptr %139, i64 0, i32 20
  %141 = load ptr, ptr %140, align 8, !tbaa !125
  %142 = call ptr @ED_region_draw_cb_activate(ptr noundef %141, ptr noundef nonnull @drawWalkPixel, ptr noundef nonnull %13, i32 noundef 1) #8
  %143 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 15
  store ptr %142, ptr %143, align 8, !tbaa !128
  %144 = load ptr, ptr %13, align 8, !tbaa !57
  %145 = getelementptr inbounds %struct.RegionView3D, ptr %144, i64 0, i32 32
  %146 = load i16, ptr %145, align 2, !tbaa !129
  %147 = or i16 %146, 8
  store i16 %147, ptr %145, align 2, !tbaa !129
  %148 = load ptr, ptr %22, align 8, !tbaa !64
  %149 = load ptr, ptr %18, align 8, !tbaa !62
  %150 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !130
  %151 = and i32 %150, 524288
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i8
  %154 = call ptr @ED_view3d_cameracontrol_acquire(ptr noundef %148, ptr noundef %149, ptr noundef %144, i8 noundef zeroext %153) #8
  %155 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 30
  store ptr %154, ptr %155, align 8, !tbaa !131
  %156 = load ptr, ptr %20, align 8, !tbaa !63
  %157 = getelementptr inbounds %struct.ARegion, ptr %156, i64 0, i32 5
  %158 = load i16, ptr %157, align 8, !tbaa !132
  %159 = sitofp i16 %158 to float
  %160 = fmul float %159, 5.000000e-01
  %161 = fptosi float %160 to i32
  %162 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 8
  store i32 %161, ptr %162, align 4, !tbaa !133
  %163 = getelementptr inbounds %struct.ARegion, ptr %156, i64 0, i32 6
  %164 = load i16, ptr %163, align 2, !tbaa !134
  %165 = sitofp i16 %164 to float
  %166 = fmul float %165, 5.000000e-01
  %167 = fptosi float %166 to i32
  %168 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 8, i64 1
  store i32 %167, ptr %168, align 4, !tbaa !133
  %169 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 7
  store i32 %161, ptr %169, align 4, !tbaa !133
  %170 = getelementptr inbounds %struct.WalkInfo, ptr %13, i64 0, i32 7, i64 1
  store i32 %167, ptr %170, align 4, !tbaa !133
  %171 = getelementptr inbounds %struct.ARegion, ptr %156, i64 0, i32 3
  %172 = load i32, ptr %171, align 8, !tbaa !135
  %173 = add nsw i32 %172, %161
  %174 = getelementptr inbounds %struct.ARegion, ptr %156, i64 0, i32 3, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !136
  %176 = add nsw i32 %175, %167
  call void @WM_cursor_warp(ptr noundef %15, i32 noundef %173, i32 noundef %176) #8
  call void @WM_cursor_modal_set(ptr noundef %15, i32 noundef 1007) #8
  call fastcc void @walkEvent(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2)
  %177 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %184

178:                                              ; preds = %52, %43, %36
  %179 = phi ptr [ @.str.58, %36 ], [ @.str.59, %43 ], [ @.str.60, %52 ]
  %180 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %181 = load ptr, ptr %180, align 8, !tbaa !137
  tail call void @BKE_report(ptr noundef %181, i32 noundef 32, ptr noundef nonnull %179) #8
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  %183 = load ptr, ptr %14, align 8, !tbaa !55
  tail call void %182(ptr noundef %183) #8
  br label %184

184:                                              ; preds = %3, %121, %178
  %185 = phi i32 [ 2, %178 ], [ 1, %121 ], [ 2, %3 ]
  ret i32 %185
}

; Function Attrs: nounwind uwtable
define internal void @walk_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %4, i64 0, i32 5
  store i16 1, ptr %5, align 8, !tbaa !75
  %6 = tail call fastcc i32 @walkEnd(ptr noundef %0, ptr noundef %4), !range !138
  store ptr null, ptr %3, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @walk_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca float, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 30
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %27) #8
  %29 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 6
  store i8 0, ptr %29, align 2, !tbaa !139
  tail call fastcc void @walkEvent(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %2)
  %30 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !123
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !140
  br i1 %32, label %65, label %35

35:                                               ; preds = %3
  %36 = icmp eq i16 %34, 400
  br i1 %36, label %37, label %553

37:                                               ; preds = %35
  %38 = load ptr, ptr %26, align 8, !tbaa !131
  %39 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %38) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #8
  %40 = load ptr, ptr %30, align 8, !tbaa !123
  %41 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = load ptr, ptr %24, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 21
  %45 = load i8, ptr %44, align 1, !tbaa !83
  %46 = icmp eq ptr %39, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 56
  %49 = load i16, ptr %48, align 2, !tbaa !142
  br label %50

50:                                               ; preds = %47, %37
  %51 = phi i16 [ %49, %47 ], [ 0, %37 ]
  call void @view3d_ndof_fly(ptr noundef %40, ptr noundef %42, ptr noundef %43, i8 noundef zeroext %45, i16 noundef signext %51, ptr noundef nonnull %21, ptr noundef nonnull %22) #8
  %52 = load i8, ptr %21, align 1, !tbaa !143
  %53 = icmp ne i8 %52, 0
  %54 = load i8, ptr %22, align 1
  %55 = icmp ne i8 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  store i8 1, ptr %29, align 2, !tbaa !139
  %58 = load ptr, ptr %24, align 8, !tbaa !57
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %58, i64 0, i32 25
  %60 = load i8, ptr %59, align 1, !tbaa !65
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load ptr, ptr %26, align 8, !tbaa !131
  call void @ED_view3d_cameracontrol_update(ptr noundef %63, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %54, i8 noundef zeroext %52) #8
  br label %64

64:                                               ; preds = %50, %57, %62
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #8
  br label %553

65:                                               ; preds = %3
  %66 = icmp eq i16 %34, 272
  br i1 %66, label %67, label %553

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %69 = load ptr, ptr %68, align 8, !tbaa !144
  %70 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !122
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %73, label %553

73:                                               ; preds = %67
  %74 = load ptr, ptr %24, align 8, !tbaa !57
  %75 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  %77 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 9
  %78 = load i32, ptr %77, align 4, !tbaa !133
  %79 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 9, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !133
  store i32 0, ptr %77, align 4, !tbaa !133
  store i32 0, ptr %79, align 4, !tbaa !133
  %81 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 22
  %82 = load i8, ptr %81, align 2, !tbaa !120
  %83 = icmp eq i8 %82, 0
  %84 = sub nsw i32 0, %80
  %85 = select i1 %83, i32 %80, i32 %84
  %86 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 26
  %87 = load i32, ptr %86, align 4, !tbaa !121
  %88 = icmp ne i32 %87, 0
  %89 = icmp ne i32 %78, 0
  %90 = select i1 %88, i1 true, i1 %89
  %91 = icmp ne i32 %80, 0
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18
  %95 = load i32, ptr %94, align 8, !tbaa !110
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 23
  %99 = load i32, ptr %98, align 8, !tbaa !109
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %543, label %101

101:                                              ; preds = %97, %93, %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %102 = tail call double @PIL_check_seconds_timer() #8
  %103 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 14
  %104 = load double, ptr %103, align 8, !tbaa !124
  %105 = fsub double %102, %104
  %106 = fptrunc double %105 to float
  store double %102, ptr %103, align 8, !tbaa !124
  %107 = load float, ptr @base_speed, align 4, !tbaa !80
  %108 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 12
  store float %107, ptr %108, align 4, !tbaa !81
  %109 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 20
  %110 = load i8, ptr %109, align 4, !tbaa !82
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 29
  %114 = load float, ptr %113, align 8, !tbaa !117
  br label %123

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 21
  %117 = load i8, ptr %116, align 1, !tbaa !83
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 29
  %121 = load float, ptr %120, align 8, !tbaa !117
  %122 = fdiv float 1.000000e+00, %121
  br label %123

123:                                              ; preds = %112, %119
  %124 = phi float [ %122, %119 ], [ %114, %112 ]
  %125 = fmul float %107, %124
  store float %125, ptr %108, align 4, !tbaa !81
  br label %126

126:                                              ; preds = %123, %115
  %127 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %15, ptr noundef nonnull %127) #8
  %128 = icmp eq i32 %85, 0
  br i1 %128, label %156, label %129

129:                                              ; preds = %126
  %130 = sitofp i32 %85 to float
  %131 = getelementptr inbounds %struct.ARegion, ptr %76, i64 0, i32 6
  %132 = load i16, ptr %131, align 2, !tbaa !134
  %133 = sitofp i16 %132 to float
  %134 = fdiv float %130, %133
  %135 = fmul float %134, 0x40019999A0000000
  %136 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 19
  %137 = load float, ptr %136, align 8, !tbaa !106
  %138 = fmul float %137, %135
  %139 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 1, i64 2, i64 2
  %140 = load float, ptr %139, align 8, !tbaa !80
  %141 = call float @asinf(float noundef %140) #8
  %142 = fcmp olt float %141, 0xBFF7BC89C0000000
  %143 = fcmp ogt float %138, 0.000000e+00
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %150, label %145

145:                                              ; preds = %129
  %146 = fcmp ogt float %141, 0x3FF6571840000000
  %147 = fcmp olt float %138, 0.000000e+00
  %148 = select i1 %146, i1 %147, i1 false
  %149 = select i1 %148, float 0.000000e+00, float %138
  br label %150

150:                                              ; preds = %145, %129
  %151 = phi float [ %149, %145 ], [ 0.000000e+00, %129 ]
  store float 1.000000e+00, ptr %16, align 4, !tbaa !80
  %152 = getelementptr inbounds float, ptr %16, i64 1
  store float 0.000000e+00, ptr %152, align 4, !tbaa !80
  %153 = getelementptr inbounds float, ptr %16, i64 2
  store float 0.000000e+00, ptr %153, align 4, !tbaa !80
  call void @mul_m3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %154 = fneg float %151
  call void @axis_angle_to_quat(ptr noundef nonnull %17, ptr noundef nonnull %16, float noundef %154) #8
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %155, ptr noundef nonnull %155, ptr noundef nonnull %17) #8
  br label %156

156:                                              ; preds = %150, %126
  br i1 %89, label %157, label %174

157:                                              ; preds = %156
  store float 0.000000e+00, ptr %16, align 4, !tbaa !80
  %158 = getelementptr inbounds float, ptr %16, i64 1
  store float 1.000000e+00, ptr %158, align 4, !tbaa !80
  %159 = getelementptr inbounds float, ptr %16, i64 2
  store float 0.000000e+00, ptr %159, align 4, !tbaa !80
  call void @mul_m3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %160 = load float, ptr %159, align 4, !tbaa !80
  %161 = fcmp olt float %160, 0.000000e+00
  %162 = sub nsw i32 0, %78
  %163 = select i1 %161, i32 %162, i32 %78
  %164 = sitofp i32 %163 to float
  %165 = getelementptr inbounds %struct.ARegion, ptr %76, i64 0, i32 5
  %166 = load i16, ptr %165, align 8, !tbaa !132
  %167 = sitofp i16 %166 to float
  %168 = fdiv float %164, %167
  %169 = fmul float %168, 0x40019999A0000000
  %170 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 19
  %171 = load float, ptr %170, align 8, !tbaa !106
  %172 = fmul float %171, %169
  store float 0.000000e+00, ptr %16, align 4, !tbaa !80
  store float 0.000000e+00, ptr %158, align 4, !tbaa !80
  store float 1.000000e+00, ptr %159, align 4, !tbaa !80
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %17, ptr noundef nonnull %16, float noundef %172) #8
  %173 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %173, ptr noundef nonnull %173, ptr noundef nonnull %17) #8
  br label %174

174:                                              ; preds = %157, %156
  %175 = load i32, ptr %86, align 4, !tbaa !121
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %299, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 23
  %179 = load i32, ptr %178, align 8, !tbaa !109
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %299

181:                                              ; preds = %177
  %182 = and i32 %175, 3
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %223, label %184

184:                                              ; preds = %181
  %185 = trunc i32 %175 to i16
  %186 = and i16 %185, 1
  %187 = shl i32 %175, 30
  %188 = ashr i32 %187, 31
  %189 = trunc i32 %188 to i16
  %190 = add nsw i16 %186, %189
  %191 = sitofp i16 %190 to float
  store float 0.000000e+00, ptr %18, align 4, !tbaa !80
  %192 = getelementptr inbounds float, ptr %18, i64 1
  store float 0.000000e+00, ptr %192, align 4, !tbaa !80
  %193 = getelementptr inbounds float, ptr %18, i64 2
  store float %191, ptr %193, align 4, !tbaa !80
  call void @mul_m3_v3(ptr noundef nonnull %15, ptr noundef nonnull %18) #8
  %194 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 17
  %195 = load i32, ptr %194, align 4, !tbaa !108
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %198

197:                                              ; preds = %184
  store float 0.000000e+00, ptr %193, align 4, !tbaa !80
  br label %198

198:                                              ; preds = %197, %184
  %199 = load float, ptr %18, align 4, !tbaa !80
  %200 = load float, ptr %192, align 4, !tbaa !80
  %201 = fmul float %200, %200
  %202 = call float @llvm.fmuladd.f32(float %199, float %199, float %201)
  %203 = load float, ptr %193, align 4, !tbaa !80
  %204 = call float @llvm.fmuladd.f32(float %203, float %203, float %202)
  %205 = fcmp ogt float %204, 0x38AA95A5C0000000
  br i1 %205, label %206, label %215

206:                                              ; preds = %198
  %207 = call float @sqrtf(float noundef %204) #8
  %208 = fdiv float 1.000000e+00, %207
  %209 = load float, ptr %18, align 4, !tbaa !80
  %210 = fmul float %209, %208
  store float %210, ptr %18, align 4, !tbaa !80
  %211 = load float, ptr %192, align 4, !tbaa !80
  %212 = fmul float %208, %211
  store float %212, ptr %192, align 4, !tbaa !80
  %213 = load float, ptr %193, align 4, !tbaa !80
  %214 = fmul float %208, %213
  br label %216

215:                                              ; preds = %198
  store float 0.000000e+00, ptr %18, align 4, !tbaa !80
  store float 0.000000e+00, ptr %192, align 4, !tbaa !80
  br label %216

216:                                              ; preds = %215, %206
  %217 = phi float [ 0.000000e+00, %215 ], [ %214, %206 ]
  store float %217, ptr %193, align 4, !tbaa !80
  %218 = load float, ptr %18, align 4, !tbaa !80
  %219 = fadd float %218, 0.000000e+00
  %220 = load float, ptr %192, align 4, !tbaa !80
  %221 = fadd float %220, 0.000000e+00
  %222 = fadd float %217, 0.000000e+00
  br label %223

223:                                              ; preds = %216, %181
  %224 = phi float [ 0.000000e+00, %181 ], [ %219, %216 ]
  %225 = phi float [ 0.000000e+00, %181 ], [ %221, %216 ]
  %226 = phi float [ 0.000000e+00, %181 ], [ %222, %216 ]
  %227 = load i32, ptr %86, align 4, !tbaa !121
  %228 = and i32 %227, 12
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %266, label %230

230:                                              ; preds = %223
  %231 = trunc i32 %227 to i16
  %232 = lshr i16 %231, 2
  %233 = and i16 %232, 1
  %234 = shl i32 %227, 28
  %235 = ashr i32 %234, 31
  %236 = trunc i32 %235 to i16
  %237 = add nsw i16 %233, %236
  %238 = sitofp i16 %237 to float
  %239 = load float, ptr %127, align 8, !tbaa !80
  %240 = fmul float %239, %238
  store float %240, ptr %18, align 4, !tbaa !80
  %241 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 0, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !80
  %243 = fmul float %242, %238
  %244 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  store float %243, ptr %244, align 4, !tbaa !80
  %245 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  store float 0.000000e+00, ptr %245, align 4, !tbaa !80
  %246 = fmul float %243, %243
  %247 = call float @llvm.fmuladd.f32(float %240, float %240, float %246)
  %248 = fcmp ogt float %247, 0x38AA95A5C0000000
  br i1 %248, label %249, label %258

249:                                              ; preds = %230
  %250 = call float @sqrtf(float noundef %247) #8
  %251 = fdiv float 1.000000e+00, %250
  %252 = load float, ptr %18, align 4, !tbaa !80
  %253 = fmul float %252, %251
  store float %253, ptr %18, align 4, !tbaa !80
  %254 = load float, ptr %244, align 4, !tbaa !80
  %255 = fmul float %251, %254
  store float %255, ptr %244, align 4, !tbaa !80
  %256 = load float, ptr %245, align 4, !tbaa !80
  %257 = fmul float %251, %256
  br label %259

258:                                              ; preds = %230
  store float 0.000000e+00, ptr %18, align 4, !tbaa !80
  store float 0.000000e+00, ptr %244, align 4, !tbaa !80
  br label %259

259:                                              ; preds = %258, %249
  %260 = phi float [ 0.000000e+00, %258 ], [ %257, %249 ]
  store float %260, ptr %245, align 4, !tbaa !80
  %261 = load float, ptr %18, align 4, !tbaa !80
  %262 = fadd float %224, %261
  %263 = load float, ptr %244, align 4, !tbaa !80
  %264 = fadd float %225, %263
  %265 = fadd float %226, %260
  br label %266

266:                                              ; preds = %259, %223
  %267 = phi float [ %224, %223 ], [ %262, %259 ]
  %268 = phi float [ %225, %223 ], [ %264, %259 ]
  %269 = phi float [ %226, %223 ], [ %265, %259 ]
  %270 = load i32, ptr %86, align 4, !tbaa !121
  %271 = and i32 %270, 32
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %270, 48
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %290, label %275

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 17
  %277 = load i32, ptr %276, align 4, !tbaa !108
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %275
  %280 = shl i32 %270, 27
  %281 = ashr i32 %280, 31
  %282 = trunc i32 %281 to i16
  %283 = sitofp i16 %282 to float
  %284 = select i1 %272, float %283, float 1.000000e+00
  store float 0.000000e+00, ptr %18, align 4, !tbaa !80
  %285 = getelementptr inbounds float, ptr %18, i64 1
  store float 0.000000e+00, ptr %285, align 4, !tbaa !80
  %286 = getelementptr inbounds float, ptr %18, i64 2
  store float %284, ptr %286, align 4, !tbaa !80
  %287 = fadd float %267, 0.000000e+00
  %288 = fadd float %268, 0.000000e+00
  %289 = fadd float %269, %284
  br label %290

290:                                              ; preds = %279, %275, %266
  %291 = phi float [ %267, %266 ], [ %287, %279 ], [ %267, %275 ]
  %292 = phi float [ %268, %266 ], [ %288, %279 ], [ %268, %275 ]
  %293 = phi float [ %269, %266 ], [ %289, %279 ], [ %269, %275 ]
  %294 = load float, ptr %108, align 4, !tbaa !81
  %295 = fmul float %294, %106
  %296 = fmul float %291, %295
  %297 = fmul float %292, %295
  %298 = fmul float %293, %295
  br label %299

299:                                              ; preds = %290, %177, %174
  %300 = phi float [ 0.000000e+00, %174 ], [ %296, %290 ], [ 0.000000e+00, %177 ]
  %301 = phi float [ 0.000000e+00, %174 ], [ %297, %290 ], [ 0.000000e+00, %177 ]
  %302 = phi float [ 0.000000e+00, %174 ], [ %298, %290 ], [ 0.000000e+00, %177 ]
  %303 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 17
  %304 = load i32, ptr %303, align 4, !tbaa !108
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %368

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 23
  %308 = load i32, ptr %307, align 8, !tbaa !109
  switch i32 %308, label %368 [
    i32 0, label %309
    i32 2, label %309
  ]

309:                                              ; preds = %306, %306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store float 0.000000e+00, ptr %10, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.walk_floor_distance_get.ray_normal, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  store float 0x47DFFFFFE0000000, ptr %19, align 4, !tbaa !80
  %310 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3
  %311 = load float, ptr %310, align 4, !tbaa !80
  store float %311, ptr %12, align 4, !tbaa !80
  %312 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3, i64 1
  %313 = load float, ptr %312, align 4, !tbaa !80
  %314 = getelementptr inbounds float, ptr %12, i64 1
  store float %313, ptr %314, align 4, !tbaa !80
  %315 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3, i64 2
  %316 = load float, ptr %315, align 4, !tbaa !80
  %317 = getelementptr inbounds float, ptr %12, i64 2
  store float %316, ptr %317, align 4, !tbaa !80
  %318 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 13
  %319 = load float, ptr %318, align 8, !tbaa !102
  %320 = fmul float %300, %319
  %321 = fmul float %301, %319
  %322 = fmul float %302, %319
  %323 = fadd float %311, %320
  store float %323, ptr %12, align 4, !tbaa !80
  %324 = fadd float %313, %321
  store float %324, ptr %314, align 4, !tbaa !80
  %325 = fadd float %316, %322
  store float %325, ptr %317, align 4, !tbaa !80
  %326 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %327 = call zeroext i8 @snapObjectsRayEx(ptr noundef %326, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 0) #8
  %328 = load float, ptr %318, align 8, !tbaa !102
  %329 = load float, ptr %19, align 4, !tbaa !80
  %330 = fdiv float %329, %328
  store float %330, ptr %19, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  %331 = icmp eq i8 %327, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %309
  %333 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 25
  %334 = load float, ptr %333, align 8, !tbaa !113
  %335 = fsub float %334, %330
  br label %336

336:                                              ; preds = %332, %309
  %337 = phi float [ %335, %332 ], [ -1.000000e+02, %309 ]
  %338 = load float, ptr %108, align 4, !tbaa !81
  %339 = fmul float %338, %106
  %340 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 29
  %341 = load float, ptr %340, align 8, !tbaa !117
  %342 = fmul float %339, %341
  %343 = call float @llvm.fabs.f32(float %337)
  %344 = fcmp olt float %343, %342
  br i1 %344, label %345, label %350

345:                                              ; preds = %336
  %346 = fsub float %302, %337
  %347 = load i32, ptr %307, align 8, !tbaa !109
  %348 = icmp eq i32 %347, 2
  br i1 %348, label %349, label %366

349:                                              ; preds = %345
  store i32 0, ptr %307, align 8, !tbaa !109
  br label %366

350:                                              ; preds = %336
  %351 = call double @PIL_check_seconds_timer() #8
  %352 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 4
  store double %351, ptr %352, align 8, !tbaa !145
  store i32 3, ptr %307, align 8, !tbaa !109
  %353 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 1
  store float 0.000000e+00, ptr %353, align 4, !tbaa !104
  %354 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2
  %355 = load ptr, ptr %24, align 8, !tbaa !57
  %356 = getelementptr inbounds %struct.RegionView3D, ptr %355, i64 0, i32 2, i64 3
  %357 = load float, ptr %356, align 4, !tbaa !80
  store float %357, ptr %354, align 4, !tbaa !80
  %358 = getelementptr inbounds %struct.RegionView3D, ptr %355, i64 0, i32 2, i64 3, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !80
  %360 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2, i64 1
  store float %359, ptr %360, align 4, !tbaa !80
  %361 = getelementptr inbounds %struct.RegionView3D, ptr %355, i64 0, i32 2, i64 3, i64 2
  %362 = load float, ptr %361, align 4, !tbaa !80
  %363 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2, i64 2
  store float %362, ptr %363, align 4, !tbaa !80
  %364 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3
  store float %300, ptr %364, align 4, !tbaa !80
  %365 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3, i64 1
  store float %301, ptr %365, align 4, !tbaa !80
  br label %366

366:                                              ; preds = %350, %349, %345
  %367 = phi float [ %346, %349 ], [ %346, %345 ], [ %302, %350 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  br label %368

368:                                              ; preds = %366, %306, %299
  %369 = phi float [ %302, %306 ], [ %367, %366 ], [ %302, %299 ]
  %370 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 23
  %371 = load i32, ptr %370, align 8, !tbaa !109
  switch i32 %371, label %438 [
    i32 3, label %372
    i32 1, label %372
  ]

372:                                              ; preds = %368, %368
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  %373 = call double @PIL_check_seconds_timer() #8
  %374 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 4
  %375 = load double, ptr %374, align 8, !tbaa !145
  %376 = fsub double %373, %375
  %377 = fptrunc double %376 to float
  %378 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3
  %379 = load float, ptr %378, align 4, !tbaa !80
  %380 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !80
  %382 = load ptr, ptr %24, align 8, !tbaa !57
  %383 = getelementptr inbounds %struct.RegionView3D, ptr %382, i64 0, i32 2, i64 3, i64 2
  %384 = load float, ptr %383, align 8, !tbaa !80
  %385 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2, i64 2
  %386 = load float, ptr %385, align 8, !tbaa !80
  %387 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 24
  %388 = load float, ptr %387, align 4, !tbaa !119
  %389 = fmul float %377, %377
  %390 = fmul float %389, %388
  %391 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 13
  %392 = load float, ptr %391, align 8, !tbaa !102
  %393 = fmul float %390, -5.000000e-01
  %394 = call float @llvm.fmuladd.f32(float %393, float %392, float %386)
  %395 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 27
  %396 = load float, ptr %395, align 8, !tbaa !146
  %397 = fmul float %396, %377
  %398 = call float @llvm.fmuladd.f32(float %397, float %392, float %394)
  %399 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 1
  %400 = load float, ptr %399, align 4, !tbaa !104
  %401 = fcmp olt float %400, %377
  br i1 %401, label %402, label %434

402:                                              ; preds = %372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store float 0.000000e+00, ptr %5, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.walk_floor_distance_get.ray_normal, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  store float 0x47DFFFFFE0000000, ptr %20, align 4, !tbaa !80
  %403 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3
  %404 = load float, ptr %403, align 4, !tbaa !80
  store float %404, ptr %7, align 4, !tbaa !80
  %405 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3, i64 1
  %406 = load float, ptr %405, align 4, !tbaa !80
  %407 = getelementptr inbounds float, ptr %7, i64 1
  store float %406, ptr %407, align 4, !tbaa !80
  %408 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 2, i64 3, i64 2
  %409 = load float, ptr %408, align 4, !tbaa !80
  %410 = getelementptr inbounds float, ptr %7, i64 2
  store float %409, ptr %410, align 4, !tbaa !80
  %411 = fmul float %379, %392
  %412 = fmul float %381, %392
  %413 = fmul float %369, %392
  %414 = fadd float %411, %404
  store float %414, ptr %7, align 4, !tbaa !80
  %415 = fadd float %412, %406
  store float %415, ptr %407, align 4, !tbaa !80
  %416 = fadd float %413, %409
  store float %416, ptr %410, align 4, !tbaa !80
  %417 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %418 = call zeroext i8 @snapObjectsRayEx(ptr noundef %417, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #8
  %419 = load float, ptr %391, align 8, !tbaa !102
  %420 = load float, ptr %20, align 4, !tbaa !80
  %421 = fdiv float %420, %419
  store float %421, ptr %20, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %422 = icmp eq i8 %418, 0
  br i1 %422, label %427, label %423

423:                                              ; preds = %402
  %424 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 25
  %425 = load float, ptr %424, align 8, !tbaa !113
  %426 = fsub float %425, %421
  br label %427

427:                                              ; preds = %423, %402
  %428 = phi float [ %426, %423 ], [ -1.000000e+02, %402 ]
  %429 = fcmp ogt float %428, 0.000000e+00
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = fsub float %369, %428
  store i32 0, ptr %370, align 8, !tbaa !109
  store float 0.000000e+00, ptr %395, align 8, !tbaa !146
  br label %436

432:                                              ; preds = %427
  %433 = fsub float %384, %398
  br label %436

434:                                              ; preds = %372
  %435 = fsub float %384, %398
  br label %436

436:                                              ; preds = %434, %432, %430
  %437 = phi float [ %431, %430 ], [ %433, %432 ], [ %435, %434 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  br label %492

438:                                              ; preds = %368
  %439 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18
  %440 = load i32, ptr %439, align 8, !tbaa !110
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %442, label %492

442:                                              ; preds = %438
  %443 = call double @PIL_check_seconds_timer() #8
  %444 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 4
  %445 = load double, ptr %444, align 8, !tbaa !145
  %446 = fsub double %443, %445
  %447 = fptrunc double %446 to float
  %448 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 1
  %449 = load float, ptr %448, align 4, !tbaa !104
  %450 = fdiv float %447, %449
  %451 = fcmp ult float %450, 1.000000e+00
  br i1 %451, label %462, label %452

452:                                              ; preds = %442
  store i32 0, ptr %439, align 8, !tbaa !110
  %453 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 5
  %454 = load i32, ptr %453, align 8, !tbaa !111
  %455 = icmp ne i32 %454, 0
  %456 = zext i1 %455 to i32
  %457 = select i1 %455, i32 2, i32 0
  store i32 %456, ptr %303, align 4, !tbaa !108
  store i32 %457, ptr %370, align 8, !tbaa !109
  %458 = zext i1 %455 to i8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %459 = call ptr @WM_bool_as_string(i8 noundef zeroext %458) #8
  %460 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %459) #8
  %461 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %461, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %462

462:                                              ; preds = %452, %442
  %463 = phi float [ 1.000000e+00, %452 ], [ %450, %442 ]
  %464 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3
  %465 = load float, ptr %464, align 4, !tbaa !80
  %466 = fmul float %463, %465
  %467 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3, i64 1
  %468 = load float, ptr %467, align 4, !tbaa !80
  %469 = fmul float %463, %468
  %470 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 3, i64 2
  %471 = load float, ptr %470, align 4, !tbaa !80
  %472 = fmul float %463, %471
  %473 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2
  %474 = load float, ptr %473, align 4, !tbaa !80
  %475 = fadd float %466, %474
  %476 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !80
  %478 = fadd float %469, %477
  %479 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 18, i32 2, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !80
  %481 = fadd float %472, %480
  %482 = load ptr, ptr %24, align 8, !tbaa !57
  %483 = getelementptr inbounds %struct.RegionView3D, ptr %482, i64 0, i32 2, i64 3
  %484 = load float, ptr %483, align 4, !tbaa !80
  %485 = getelementptr inbounds %struct.RegionView3D, ptr %482, i64 0, i32 2, i64 3, i64 1
  %486 = load float, ptr %485, align 4, !tbaa !80
  %487 = getelementptr inbounds %struct.RegionView3D, ptr %482, i64 0, i32 2, i64 3, i64 2
  %488 = load float, ptr %487, align 4, !tbaa !80
  %489 = fsub float %484, %475
  %490 = fsub float %486, %478
  %491 = fsub float %488, %481
  br label %492

492:                                              ; preds = %462, %438, %436
  %493 = phi float [ %489, %462 ], [ %300, %438 ], [ %379, %436 ]
  %494 = phi float [ %490, %462 ], [ %301, %438 ], [ %381, %436 ]
  %495 = phi float [ %491, %462 ], [ %369, %438 ], [ %437, %436 ]
  %496 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 25
  %497 = load i8, ptr %496, align 1, !tbaa !65
  %498 = icmp eq i8 %497, 2
  br i1 %498, label %499, label %513

499:                                              ; preds = %492
  %500 = load ptr, ptr %26, align 8, !tbaa !131
  %501 = call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %500) #8
  %502 = getelementptr inbounds %struct.Object, ptr %501, i64 0, i32 56
  %503 = load i16, ptr %502, align 2, !tbaa !142
  %504 = and i16 %503, 1
  %505 = icmp eq i16 %504, 0
  %506 = select i1 %505, float %493, float 0.000000e+00
  %507 = and i16 %503, 2
  %508 = icmp eq i16 %507, 0
  %509 = select i1 %508, float %494, float 0.000000e+00
  %510 = and i16 %503, 4
  %511 = icmp eq i16 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %499
  br label %513

513:                                              ; preds = %512, %499, %492
  %514 = phi float [ %506, %499 ], [ %506, %512 ], [ %493, %492 ]
  %515 = phi float [ %509, %499 ], [ %509, %512 ], [ %494, %492 ]
  %516 = phi float [ %495, %499 ], [ 0.000000e+00, %512 ], [ %495, %492 ]
  %517 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 13
  %518 = load float, ptr %517, align 8, !tbaa !102
  %519 = fmul float %514, %518
  store float %519, ptr %18, align 4, !tbaa !80
  %520 = fmul float %515, %518
  %521 = getelementptr inbounds float, ptr %18, i64 1
  store float %520, ptr %521, align 4, !tbaa !80
  %522 = fmul float %516, %518
  %523 = getelementptr inbounds float, ptr %18, i64 2
  store float %522, ptr %523, align 4, !tbaa !80
  %524 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 22
  %525 = load float, ptr %524, align 4, !tbaa !80
  %526 = fadd float %519, %525
  store float %526, ptr %524, align 4, !tbaa !80
  %527 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 22, i64 1
  %528 = load float, ptr %527, align 4, !tbaa !80
  %529 = fadd float %520, %528
  store float %529, ptr %527, align 4, !tbaa !80
  %530 = getelementptr inbounds %struct.RegionView3D, ptr %74, i64 0, i32 22, i64 2
  %531 = load float, ptr %530, align 4, !tbaa !80
  %532 = fadd float %522, %531
  store float %532, ptr %530, align 4, !tbaa !80
  %533 = load i8, ptr %496, align 1, !tbaa !65
  %534 = icmp eq i8 %533, 2
  br i1 %534, label %535, label %542

535:                                              ; preds = %513
  %536 = select i1 %89, i1 true, i1 %91
  %537 = zext i1 %536 to i8
  %538 = load float, ptr %108, align 4, !tbaa !81
  %539 = fcmp une float %538, 0.000000e+00
  %540 = zext i1 %539 to i8
  %541 = load ptr, ptr %26, align 8, !tbaa !131
  call void @ED_view3d_cameracontrol_update(ptr noundef %541, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %537, i8 noundef zeroext %540) #8
  br label %542

542:                                              ; preds = %535, %513
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  br label %546

543:                                              ; preds = %97
  %544 = tail call double @PIL_check_seconds_timer() #8
  %545 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 14
  store double %544, ptr %545, align 8, !tbaa !124
  br label %546

546:                                              ; preds = %542, %543
  %547 = phi float [ %514, %542 ], [ 0.000000e+00, %543 ]
  %548 = phi float [ %515, %542 ], [ 0.000000e+00, %543 ]
  %549 = phi float [ %516, %542 ], [ 0.000000e+00, %543 ]
  %550 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 16
  store float %547, ptr %550, align 4, !tbaa !80
  %551 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 16, i64 1
  store float %548, ptr %551, align 4, !tbaa !80
  %552 = getelementptr inbounds %struct.WalkInfo, ptr %24, i64 0, i32 16, i64 2
  store float %549, ptr %552, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #8
  br label %553

553:                                              ; preds = %65, %67, %546, %35, %64
  %554 = load i8, ptr %29, align 2, !tbaa !139
  %555 = call fastcc i32 @walkEnd(ptr noundef %0, ptr noundef nonnull %24), !range !138
  %556 = icmp eq i32 %555, 1
  %557 = icmp eq i8 %554, 0
  %558 = select i1 %556, i1 %557, i1 false
  br i1 %558, label %566, label %559

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.RegionView3D, ptr %25, i64 0, i32 25
  %561 = load i8, ptr %560, align 1, !tbaa !65
  %562 = icmp eq i8 %561, 2
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %28) #8
  br label %564

564:                                              ; preds = %563, %559
  %565 = call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @ED_region_tag_redraw(ptr noundef %565) #8
  br label %566

566:                                              ; preds = %564, %553
  switch i32 %555, label %569 [
    i32 4, label %567
    i32 2, label %567
  ]

567:                                              ; preds = %566, %566
  %568 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %568, ptr noundef null) #8
  br label %569

569:                                              ; preds = %566, %567
  ret i32 %555
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @walkEvent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca float, align 4
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !140
  switch i16 %15, label %403 [
    i16 272, label %16
    i16 4, label %25
    i16 17, label %25
    i16 400, label %78
    i16 20514, label %100
  ]

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %18 = load ptr, ptr %17, align 8, !tbaa !144
  %19 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %23, align 2, !tbaa !139
  br label %403

24:                                               ; preds = %16
  switch i16 %15, label %403 [
    i16 4, label %25
    i16 17, label %25
    i16 400, label %78
    i16 20514, label %100
  ]

25:                                               ; preds = %3, %3, %24, %24
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !133
  %28 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !133
  %30 = sub i32 %27, %29
  %31 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !133
  %33 = add nsw i32 %30, %32
  store i32 %33, ptr %31, align 4, !tbaa !133
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !133
  %36 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 7, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !133
  %38 = sub i32 %35, %37
  %39 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !133
  %41 = add nsw i32 %38, %40
  store i32 %41, ptr %39, align 4, !tbaa !133
  %42 = load i32, ptr %26, align 4, !tbaa !133
  store i32 %42, ptr %28, align 4, !tbaa !133
  %43 = load i32, ptr %34, align 4, !tbaa !133
  store i32 %43, ptr %36, align 4, !tbaa !133
  %44 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !133
  %46 = load i32, ptr %26, align 4, !tbaa !133
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !133
  %51 = load i32, ptr %34, align 4, !tbaa !133
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %403, label %53

53:                                               ; preds = %48, %25
  %54 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %54, align 2, !tbaa !139
  br label %55

55:                                               ; preds = %59, %53
  %56 = phi ptr [ %2, %53 ], [ %57, %59 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !147
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.wmEvent, ptr %57, i64 0, i32 2
  %61 = load i16, ptr %60, align 8, !tbaa !140
  switch i16 %61, label %55 [
    i16 4, label %62
    i16 17, label %62
  ]

62:                                               ; preds = %59, %59
  br i1 %58, label %63, label %403

63:                                               ; preds = %55, %62
  %64 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %65 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !135
  %69 = load i32, ptr %44, align 4, !tbaa !133
  %70 = add nsw i32 %69, %68
  %71 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 3, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !136
  %73 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !133
  %75 = add nsw i32 %74, %72
  tail call void @WM_cursor_warp(ptr noundef %64, i32 noundef %70, i32 noundef %75) #8
  %76 = load i32, ptr %44, align 4, !tbaa !133
  store i32 %76, ptr %28, align 4, !tbaa !133
  %77 = load i32, ptr %73, align 4, !tbaa !133
  store i32 %77, ptr %36, align 4, !tbaa !133
  br label %403

78:                                               ; preds = %3, %24
  %79 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %80 = load ptr, ptr %79, align 8, !tbaa !144
  %81 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !148
  switch i32 %82, label %403 [
    i32 1, label %83
    i32 2, label %83
    i32 3, label %91
  ]

83:                                               ; preds = %78, %78
  %84 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !123
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !54
  %89 = tail call ptr %88(ptr noundef %80) #8
  store ptr %89, ptr %84, align 8, !tbaa !123
  br label %403

90:                                               ; preds = %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %85, ptr noundef nonnull align 4 dereferenceable(32) %80, i64 32, i1 false)
  br label %403

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %93 = load ptr, ptr %92, align 8, !tbaa !123
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %96(ptr noundef nonnull %93) #8
  store ptr null, ptr %92, align 8, !tbaa !123
  br label %97

97:                                               ; preds = %95, %91
  %98 = tail call double @PIL_check_seconds_timer() #8
  %99 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 14
  store double %98, ptr %99, align 8, !tbaa !124
  br label %403

100:                                              ; preds = %3, %24
  %101 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !150
  switch i16 %102, label %403 [
    i16 1, label %103
    i16 2, label %105
    i16 23, label %107
    i16 24, label %114
    i16 3, label %121
    i16 5, label %125
    i16 7, label %129
    i16 9, label %133
    i16 11, label %137
    i16 13, label %141
    i16 4, label %145
    i16 6, label %149
    i16 8, label %153
    i16 10, label %157
    i16 12, label %161
    i16 14, label %165
    i16 15, label %169
    i16 16, label %171
    i16 17, label %173
    i16 18, label %175
    i16 20, label %177
    i16 19, label %204
    i16 21, label %247
    i16 22, label %380
  ]

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  store i16 1, ptr %104, align 8, !tbaa !75
  br label %403

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  store i16 2, ptr %106, align 8, !tbaa !75
  br label %403

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %109 = load i8, ptr %108, align 1, !tbaa !83
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, float 0x3FF19999A0000000, float 0x3FF028F5C0000000
  %112 = load float, ptr @base_speed, align 4, !tbaa !80
  %113 = fmul float %112, %111
  store float %113, ptr @base_speed, align 4, !tbaa !80
  br label %403

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %116 = load i8, ptr %115, align 1, !tbaa !83
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, float 0x3FF19999A0000000, float 0x3FF028F5C0000000
  %119 = load float, ptr @base_speed, align 4, !tbaa !80
  %120 = fdiv float %119, %118
  store float %120, ptr @base_speed, align 4, !tbaa !80
  br label %403

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %123 = load i32, ptr %122, align 4, !tbaa !121
  %124 = or i32 %123, 1
  store i32 %124, ptr %122, align 4, !tbaa !121
  br label %403

125:                                              ; preds = %100
  %126 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %127 = load i32, ptr %126, align 4, !tbaa !121
  %128 = or i32 %127, 2
  store i32 %128, ptr %126, align 4, !tbaa !121
  br label %403

129:                                              ; preds = %100
  %130 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %131 = load i32, ptr %130, align 4, !tbaa !121
  %132 = or i32 %131, 4
  store i32 %132, ptr %130, align 4, !tbaa !121
  br label %403

133:                                              ; preds = %100
  %134 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %135 = load i32, ptr %134, align 4, !tbaa !121
  %136 = or i32 %135, 8
  store i32 %136, ptr %134, align 4, !tbaa !121
  br label %403

137:                                              ; preds = %100
  %138 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %139 = load i32, ptr %138, align 4, !tbaa !121
  %140 = or i32 %139, 16
  store i32 %140, ptr %138, align 4, !tbaa !121
  br label %403

141:                                              ; preds = %100
  %142 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %143 = load i32, ptr %142, align 4, !tbaa !121
  %144 = or i32 %143, 32
  store i32 %144, ptr %142, align 4, !tbaa !121
  br label %403

145:                                              ; preds = %100
  %146 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %147 = load i32, ptr %146, align 4, !tbaa !121
  %148 = and i32 %147, -2
  store i32 %148, ptr %146, align 4, !tbaa !121
  br label %403

149:                                              ; preds = %100
  %150 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %151 = load i32, ptr %150, align 4, !tbaa !121
  %152 = and i32 %151, -3
  store i32 %152, ptr %150, align 4, !tbaa !121
  br label %403

153:                                              ; preds = %100
  %154 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %155 = load i32, ptr %154, align 4, !tbaa !121
  %156 = and i32 %155, -5
  store i32 %156, ptr %154, align 4, !tbaa !121
  br label %403

157:                                              ; preds = %100
  %158 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %159 = load i32, ptr %158, align 4, !tbaa !121
  %160 = and i32 %159, -9
  store i32 %160, ptr %158, align 4, !tbaa !121
  br label %403

161:                                              ; preds = %100
  %162 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %163 = load i32, ptr %162, align 4, !tbaa !121
  %164 = and i32 %163, -17
  store i32 %164, ptr %162, align 4, !tbaa !121
  br label %403

165:                                              ; preds = %100
  %166 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %167 = load i32, ptr %166, align 4, !tbaa !121
  %168 = and i32 %167, -33
  store i32 %168, ptr %166, align 4, !tbaa !121
  br label %403

169:                                              ; preds = %100
  %170 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  store i8 1, ptr %170, align 4, !tbaa !82
  br label %403

171:                                              ; preds = %100
  %172 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  store i8 0, ptr %172, align 4, !tbaa !82
  br label %403

173:                                              ; preds = %100
  %174 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  store i8 1, ptr %174, align 1, !tbaa !83
  br label %403

175:                                              ; preds = %100
  %176 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  store i8 0, ptr %176, align 1, !tbaa !83
  br label %403

177:                                              ; preds = %100
  %178 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %179 = load i32, ptr %178, align 8, !tbaa !109
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %403

181:                                              ; preds = %177
  %182 = tail call double @PIL_check_seconds_timer() #8
  %183 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  %184 = load double, ptr %183, align 8, !tbaa !145
  %185 = fsub double %182, %184
  %186 = fptrunc double %185 to float
  %187 = fcmp olt float %186, 0x3FC99999A0000000
  %188 = select i1 %187, float %186, float 0x3FC99999A0000000
  %189 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  %190 = load float, ptr %189, align 4, !tbaa !119
  %191 = fmul float %190, 2.000000e+00
  %192 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 28
  %193 = load float, ptr %192, align 4, !tbaa !115
  %194 = fmul float %191, %193
  %195 = tail call float @sqrtf(float noundef %194) #8
  %196 = fadd float %195, -1.000000e+00
  %197 = fmul float %188, %196
  %198 = fdiv float %197, 0x3FC99999A0000000
  %199 = fadd float %198, 1.000000e+00
  %200 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float %199, ptr %200, align 8, !tbaa !146
  %201 = load float, ptr %189, align 4, !tbaa !119
  %202 = fdiv float %199, %201
  %203 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %202, ptr %203, align 4, !tbaa !104
  store i32 3, ptr %178, align 8, !tbaa !109
  br label %403

204:                                              ; preds = %100
  %205 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %206 = load i32, ptr %205, align 4, !tbaa !108
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %403

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %210 = load i32, ptr %209, align 8, !tbaa !109
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %403

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %214 = load i32, ptr %213, align 8, !tbaa !110
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %403

216:                                              ; preds = %212
  store i32 1, ptr %209, align 8, !tbaa !109
  %217 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  %218 = load float, ptr %217, align 4, !tbaa !119
  %219 = fmul float %218, 2.000000e+00
  %220 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 28
  %221 = load float, ptr %220, align 4, !tbaa !115
  %222 = fmul float %219, %221
  %223 = tail call float @sqrtf(float noundef %222) #8
  %224 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float %223, ptr %224, align 8, !tbaa !146
  %225 = tail call double @PIL_check_seconds_timer() #8
  %226 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  store double %225, ptr %226, align 8, !tbaa !145
  %227 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  %228 = load ptr, ptr %1, align 8, !tbaa !57
  %229 = getelementptr inbounds %struct.RegionView3D, ptr %228, i64 0, i32 2, i64 3
  %230 = load float, ptr %229, align 4, !tbaa !80
  store float %230, ptr %227, align 4, !tbaa !80
  %231 = getelementptr inbounds %struct.RegionView3D, ptr %228, i64 0, i32 2, i64 3, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !80
  %233 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2, i64 1
  store float %232, ptr %233, align 4, !tbaa !80
  %234 = getelementptr inbounds %struct.RegionView3D, ptr %228, i64 0, i32 2, i64 3, i64 2
  %235 = load float, ptr %234, align 4, !tbaa !80
  %236 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2, i64 2
  store float %235, ptr %236, align 4, !tbaa !80
  %237 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  %238 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 16
  %239 = load float, ptr %238, align 4, !tbaa !80
  store float %239, ptr %237, align 4, !tbaa !80
  %240 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 16, i64 1
  %241 = load float, ptr %240, align 4, !tbaa !80
  %242 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3, i64 1
  store float %241, ptr %242, align 4, !tbaa !80
  %243 = load float, ptr %217, align 4, !tbaa !119
  %244 = load float, ptr %224, align 8, !tbaa !146
  %245 = fdiv float %244, %243
  %246 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %245, ptr %246, align 4, !tbaa !104
  br label %403

247:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  %248 = load ptr, ptr %1, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store float 0.000000e+00, ptr %7, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.walk_ray_cast.ray_normal, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #8
  store float 0x47DFFFFFE0000000, ptr %13, align 4, !tbaa !80
  %249 = getelementptr inbounds %struct.RegionView3D, ptr %248, i64 0, i32 2
  %250 = getelementptr inbounds %struct.RegionView3D, ptr %248, i64 0, i32 2, i64 3
  %251 = load float, ptr %250, align 4, !tbaa !80
  store float %251, ptr %9, align 4, !tbaa !80
  %252 = getelementptr inbounds %struct.RegionView3D, ptr %248, i64 0, i32 2, i64 3, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !80
  %254 = getelementptr inbounds float, ptr %9, i64 1
  store float %253, ptr %254, align 4, !tbaa !80
  %255 = getelementptr inbounds %struct.RegionView3D, ptr %248, i64 0, i32 2, i64 3, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !80
  %257 = getelementptr inbounds float, ptr %9, i64 2
  store float %256, ptr %257, align 4, !tbaa !80
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %249) #8
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #8
  %258 = load float, ptr %8, align 4, !tbaa !80
  %259 = fneg float %258
  store float %259, ptr %8, align 4, !tbaa !80
  %260 = getelementptr inbounds float, ptr %8, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !80
  %262 = fneg float %261
  store float %262, ptr %260, align 4, !tbaa !80
  %263 = getelementptr inbounds float, ptr %8, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !80
  %265 = fneg float %264
  store float %265, ptr %263, align 4, !tbaa !80
  %266 = fmul float %261, %261
  %267 = call float @llvm.fmuladd.f32(float %258, float %258, float %266)
  %268 = call float @llvm.fmuladd.f32(float %264, float %264, float %267)
  %269 = fcmp ogt float %268, 0x38AA95A5C0000000
  br i1 %269, label %270, label %279

270:                                              ; preds = %247
  %271 = call float @sqrtf(float noundef %268) #8
  %272 = fdiv float 1.000000e+00, %271
  %273 = load float, ptr %8, align 4, !tbaa !80
  %274 = fmul float %273, %272
  store float %274, ptr %8, align 4, !tbaa !80
  %275 = load float, ptr %260, align 4, !tbaa !80
  %276 = fmul float %272, %275
  store float %276, ptr %260, align 4, !tbaa !80
  %277 = load float, ptr %263, align 4, !tbaa !80
  %278 = fmul float %272, %277
  br label %280

279:                                              ; preds = %247
  store float 0.000000e+00, ptr %8, align 4, !tbaa !80
  store float 0.000000e+00, ptr %260, align 4, !tbaa !80
  br label %280

280:                                              ; preds = %279, %270
  %281 = phi float [ 0.000000e+00, %279 ], [ %278, %270 ]
  store float %281, ptr %263, align 4, !tbaa !80
  %282 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %283 = call zeroext i8 @snapObjectsRayEx(ptr noundef %282, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 0) #8
  %284 = load float, ptr %8, align 4, !tbaa !80
  %285 = load float, ptr %12, align 4, !tbaa !80
  %286 = load float, ptr %260, align 4, !tbaa !80
  %287 = getelementptr inbounds float, ptr %12, i64 1
  %288 = load float, ptr %287, align 4, !tbaa !80
  %289 = fmul float %286, %288
  %290 = call float @llvm.fmuladd.f32(float %284, float %285, float %289)
  %291 = load float, ptr %263, align 4, !tbaa !80
  %292 = getelementptr inbounds float, ptr %12, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !80
  %294 = call float @llvm.fmuladd.f32(float %291, float %293, float %290)
  %295 = fcmp ogt float %294, 0.000000e+00
  br i1 %295, label %296, label %300

296:                                              ; preds = %280
  %297 = fneg float %285
  %298 = fneg float %288
  %299 = fneg float %293
  store float %297, ptr %12, align 4, !tbaa !80
  store float %298, ptr %287, align 4, !tbaa !80
  store float %299, ptr %292, align 4, !tbaa !80
  br label %300

300:                                              ; preds = %280, %296
  %301 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 13
  %302 = load float, ptr %301, align 8, !tbaa !102
  %303 = load float, ptr %13, align 4, !tbaa !80
  %304 = fdiv float %303, %302
  store float %304, ptr %13, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %305 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float 0.000000e+00, ptr %305, align 8, !tbaa !146
  %306 = icmp eq i8 %283, 0
  %307 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  br i1 %306, label %378, label %308

308:                                              ; preds = %300
  store i32 1, ptr %307, align 8, !tbaa !151
  %309 = call double @PIL_check_seconds_timer() #8
  %310 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  store double %309, ptr %310, align 8, !tbaa !152
  %311 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 5), align 4, !tbaa !103
  %312 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %311, ptr %312, align 4, !tbaa !153
  %313 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %314 = load i32, ptr %313, align 4, !tbaa !108
  %315 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 5
  store i32 %314, ptr %315, align 8, !tbaa !154
  store i32 0, ptr %313, align 4, !tbaa !108
  %316 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  store i32 0, ptr %316, align 8, !tbaa !109
  %317 = load i32, ptr %307, align 8, !tbaa !110
  %318 = icmp eq i32 %317, 1
  %319 = icmp eq i32 %314, 1
  %320 = select i1 %318, i1 %319, i1 false
  %321 = zext i1 %320 to i8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #8
  %322 = call ptr @WM_bool_as_string(i8 noundef zeroext %321) #8
  %323 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %322) #8
  %324 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %324, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #8
  %325 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  %326 = load ptr, ptr %1, align 8, !tbaa !57
  %327 = getelementptr inbounds %struct.RegionView3D, ptr %326, i64 0, i32 2, i64 3
  %328 = load float, ptr %327, align 4, !tbaa !80
  store float %328, ptr %325, align 4, !tbaa !80
  %329 = getelementptr inbounds %struct.RegionView3D, ptr %326, i64 0, i32 2, i64 3, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !80
  %331 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2, i64 1
  store float %330, ptr %331, align 4, !tbaa !80
  %332 = getelementptr inbounds %struct.RegionView3D, ptr %326, i64 0, i32 2, i64 3, i64 2
  %333 = load float, ptr %332, align 4, !tbaa !80
  %334 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2, i64 2
  store float %333, ptr %334, align 4, !tbaa !80
  %335 = load float, ptr %12, align 4, !tbaa !80
  %336 = load float, ptr %287, align 4, !tbaa !80
  %337 = fmul float %336, %336
  %338 = call float @llvm.fmuladd.f32(float %335, float %335, float %337)
  %339 = load float, ptr %292, align 4, !tbaa !80
  %340 = call float @llvm.fmuladd.f32(float %339, float %339, float %338)
  %341 = fcmp ogt float %340, 0x38AA95A5C0000000
  br i1 %341, label %342, label %351

342:                                              ; preds = %308
  %343 = call float @sqrtf(float noundef %340) #8
  %344 = fdiv float 1.000000e+00, %343
  %345 = load float, ptr %12, align 4, !tbaa !80
  %346 = fmul float %345, %344
  store float %346, ptr %12, align 4, !tbaa !80
  %347 = load float, ptr %287, align 4, !tbaa !80
  %348 = fmul float %344, %347
  store float %348, ptr %287, align 4, !tbaa !80
  %349 = load float, ptr %292, align 4, !tbaa !80
  %350 = fmul float %344, %349
  br label %352

351:                                              ; preds = %308
  store float 0.000000e+00, ptr %12, align 4, !tbaa !80
  store float 0.000000e+00, ptr %287, align 4, !tbaa !80
  br label %352

352:                                              ; preds = %342, %351
  %353 = phi float [ 0.000000e+00, %351 ], [ %350, %342 ]
  store float %353, ptr %292, align 4, !tbaa !80
  %354 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 25
  %355 = load float, ptr %354, align 8, !tbaa !113
  %356 = load float, ptr %12, align 4, !tbaa !80
  %357 = fmul float %355, %356
  store float %357, ptr %12, align 4, !tbaa !80
  %358 = load float, ptr %287, align 4, !tbaa !80
  %359 = fmul float %355, %358
  store float %359, ptr %287, align 4, !tbaa !80
  %360 = fmul float %353, %355
  store float %360, ptr %292, align 4, !tbaa !80
  %361 = load float, ptr %11, align 4, !tbaa !80
  %362 = fadd float %357, %361
  store float %362, ptr %11, align 4, !tbaa !80
  %363 = getelementptr inbounds float, ptr %11, i64 1
  %364 = load float, ptr %363, align 4, !tbaa !80
  %365 = fadd float %359, %364
  store float %365, ptr %363, align 4, !tbaa !80
  %366 = getelementptr inbounds float, ptr %11, i64 2
  %367 = load float, ptr %366, align 4, !tbaa !80
  %368 = fadd float %360, %367
  store float %368, ptr %366, align 4, !tbaa !80
  %369 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  %370 = load float, ptr %325, align 4, !tbaa !80
  %371 = fsub float %362, %370
  store float %371, ptr %369, align 4, !tbaa !80
  %372 = load float, ptr %331, align 4, !tbaa !80
  %373 = fsub float %365, %372
  %374 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3, i64 1
  store float %373, ptr %374, align 4, !tbaa !80
  %375 = load float, ptr %334, align 4, !tbaa !80
  %376 = fsub float %368, %375
  %377 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3, i64 2
  store float %376, ptr %377, align 4, !tbaa !80
  br label %379

378:                                              ; preds = %300
  store i32 0, ptr %307, align 8, !tbaa !110
  br label %379

379:                                              ; preds = %378, %352
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  br label %403

380:                                              ; preds = %100
  %381 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %382 = load i32, ptr %381, align 4, !tbaa !108
  %383 = icmp eq i32 %382, 1
  %384 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  br i1 %383, label %385, label %399

385:                                              ; preds = %380
  store i32 0, ptr %381, align 4, !tbaa !108
  store i32 0, ptr %384, align 8, !tbaa !109
  %386 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %387 = load i32, ptr %386, align 8, !tbaa !110
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %394

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 5
  %391 = load i32, ptr %390, align 8, !tbaa !111
  %392 = icmp eq i32 %391, 1
  %393 = zext i1 %392 to i8
  br label %394

394:                                              ; preds = %385, %389
  %395 = phi i8 [ 0, %385 ], [ %393, %389 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  %396 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %395) #8
  %397 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %396) #8
  %398 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %398, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  br label %403

399:                                              ; preds = %380
  store i32 1, ptr %381, align 4, !tbaa !108
  store i32 2, ptr %384, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  %400 = tail call ptr @WM_bool_as_string(i8 noundef zeroext 1) #8
  %401 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %400) #8
  %402 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_headerprint(ptr noundef %402, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %403

403:                                              ; preds = %3, %24, %97, %90, %87, %78, %62, %63, %48, %394, %399, %204, %208, %212, %216, %177, %181, %100, %379, %175, %173, %171, %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121, %114, %107, %105, %103, %22
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_offset_lock_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @drawWalkPixel(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load ptr, ptr %2, align 8, !tbaa !57
  call void @ED_view3d_calc_camera_border(ptr noundef %6, ptr noundef %1, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %4, i8 noundef zeroext 0) #8
  %14 = load float, ptr %4, align 4, !tbaa !156
  %15 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !157
  %17 = fsub float %16, %14
  %18 = call float @llvm.fmuladd.f32(float %17, float 5.000000e-01, float %14)
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !158
  %22 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !159
  %24 = fsub float %23, %21
  %25 = call float @llvm.fmuladd.f32(float %24, float 5.000000e-01, float %21)
  %26 = fptosi float %25 to i32
  br label %38

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 5
  %31 = load i16, ptr %30, align 8, !tbaa !132
  %32 = sdiv i16 %31, 2
  %33 = sext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 6
  %35 = load i16, ptr %34, align 2, !tbaa !134
  %36 = sdiv i16 %35, 2
  %37 = sext i16 %36 to i32
  br label %38

38:                                               ; preds = %27, %10
  %39 = phi i32 [ %19, %10 ], [ %33, %27 ]
  %40 = phi i32 [ %26, %10 ], [ %37, %27 ]
  call void @UI_ThemeColor(i32 noundef 192) #8
  call void @glBegin(i32 noundef 1) #8
  %41 = add nsw i32 %40, 14
  call void @glVertex2i(i32 noundef %39, i32 noundef %41) #8
  %42 = add nsw i32 %40, 24
  call void @glVertex2i(i32 noundef %39, i32 noundef %42) #8
  %43 = add nsw i32 %39, 14
  call void @glVertex2i(i32 noundef %43, i32 noundef %40) #8
  %44 = add nsw i32 %39, 24
  call void @glVertex2i(i32 noundef %44, i32 noundef %40) #8
  %45 = add nsw i32 %40, -14
  call void @glVertex2i(i32 noundef %39, i32 noundef %45) #8
  %46 = add nsw i32 %40, -24
  call void @glVertex2i(i32 noundef %39, i32 noundef %46) #8
  %47 = add nsw i32 %39, -14
  call void @glVertex2i(i32 noundef %47, i32 noundef %40) #8
  %48 = add nsw i32 %39, -24
  call void @glVertex2i(i32 noundef %48, i32 noundef %40) #8
  call void @glEnd() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret void
}

declare ptr @ED_view3d_cameracontrol_acquire(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @snapObjectsRayEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @walkEnd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !75
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %8 = load ptr, ptr %1, align 8, !tbaa !57
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %7, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !128
  tail call void @ED_region_draw_cb_exit(ptr noundef %15, ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !131
  %20 = load i16, ptr %3, align 8, !tbaa !75
  %21 = icmp eq i16 %20, 1
  %22 = zext i1 %21 to i8
  tail call void @ED_view3d_cameracontrol_release(ptr noundef %19, i8 noundef zeroext %22) #8
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %24 = load i16, ptr %23, align 2, !tbaa !129
  %25 = and i16 %24, -9
  store i16 %25, ptr %23, align 2, !tbaa !129
  %26 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %30(ptr noundef nonnull %27) #8
  br label %31

31:                                               ; preds = %29, %6
  tail call void @WM_cursor_modal_restore(ptr noundef %7) #8
  %32 = load ptr, ptr %12, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !135
  %35 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !133
  %37 = add nsw i32 %36, %34
  %38 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !136
  %40 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !133
  %42 = add nsw i32 %41, %39
  tail call void @WM_cursor_warp(ptr noundef %7, i32 noundef %37, i32 noundef %42) #8
  %43 = load i16, ptr %3, align 8, !tbaa !75
  %44 = icmp eq i16 %43, 2
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %45(ptr noundef nonnull %1) #8
  %46 = select i1 %44, i32 4, i32 2
  br label %47

47:                                               ; preds = %31, %2
  %48 = phi i32 [ 1, %2 ], [ %46, %31 ]
  ret i32 %48
}

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cameracontrol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cameracontrol_object_get(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @view3d_ndof_fly(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cameracontrol_update(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #6

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_normalized_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!58 = !{!"WalkInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !37, i64 42, !37, i64 44, !37, i64 52, !37, i64 60, !36, i64 72, !53, i64 80, !53, i64 84, !53, i64 88, !59, i64 96, !36, i64 104, !37, i64 112, !60, i64 124, !61, i64 128, !53, i64 176, !37, i64 180, !37, i64 181, !37, i64 182, !60, i64 184, !53, i64 188, !53, i64 192, !60, i64 196, !53, i64 200, !53, i64 204, !53, i64 208, !36, i64 216}
!59 = !{!"double", !37, i64 0}
!60 = !{!"int", !37, i64 0}
!61 = !{!"WalkTeleport", !60, i64 0, !53, i64 4, !37, i64 8, !37, i64 20, !59, i64 32, !60, i64 40}
!62 = !{!58, !36, i64 8}
!63 = !{!58, !36, i64 16}
!64 = !{!58, !36, i64 24}
!65 = !{!52, !37, i64 809}
!66 = !{!67, !36, i64 96}
!67 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !60, i64 32, !53, i64 36, !37, i64 40, !37, i64 56, !53, i64 72, !53, i64 76, !37, i64 80, !37, i64 81, !60, i64 84, !60, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !68, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !60, i64 224, !60, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!68 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!69 = !{!70, !36, i64 24}
!70 = !{!"Object", !71, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !72, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !60, i64 432, !60, i64 436, !36, i64 440, !36, i64 448, !60, i64 456, !60, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !60, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !60, i64 968, !60, i64 972, !60, i64 976, !60, i64 980, !60, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !60, i64 1144, !60, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !73, i64 1304, !73, i64 1312, !60, i64 1320, !60, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!71 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !60, i64 100, !60, i64 104, !60, i64 108, !36, i64 112}
!72 = !{!"bAnimVizSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44}
!73 = !{!"long", !37, i64 0}
!74 = !{!70, !36, i64 1176}
!75 = !{!58, !40, i64 40}
!76 = !{!77, !53, i64 10932}
!77 = !{!"UserDef", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !60, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !60, i64 8484, !60, i64 8488, !60, i64 8492, !40, i64 8496, !40, i64 8498, !60, i64 8500, !60, i64 8504, !60, i64 8508, !60, i64 8512, !60, i64 8516, !60, i64 8520, !60, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !60, i64 8912, !60, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !53, i64 8956, !53, i64 8960, !60, i64 8964, !40, i64 8968, !40, i64 8970, !53, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !78, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !60, i64 10896, !60, i64 10900, !53, i64 10904, !53, i64 10908, !60, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !79, i64 10928}
!78 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!79 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !40, i64 24, !37, i64 26}
!80 = !{!53, !53, i64 0}
!81 = !{!58, !53, i64 84}
!82 = !{!58, !37, i64 180}
!83 = !{!58, !37, i64 181}
!84 = !{!85, !53, i64 4600}
!85 = !{!"Scene", !71, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !60, i64 232, !60, i64 236, !60, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !86, i64 280, !94, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !60, i64 4380, !39, i64 4384, !95, i64 4400, !96, i64 4416, !99, i64 4600, !36, i64 4608, !100, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !88, i64 4664, !89, i64 4824, !101, i64 4888, !36, i64 4952}
!86 = !{!"RenderData", !87, i64 0, !36, i64 248, !36, i64 256, !90, i64 264, !91, i64 328, !60, i64 400, !60, i64 404, !60, i64 408, !53, i64 412, !60, i64 416, !60, i64 420, !60, i64 424, !60, i64 428, !40, i64 432, !40, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !60, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !60, i64 484, !60, i64 488, !40, i64 492, !40, i64 494, !60, i64 496, !60, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !60, i64 516, !60, i64 520, !60, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !68, i64 544, !68, i64 560, !92, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !60, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !53, i64 660, !53, i64 664, !40, i64 668, !40, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !60, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !60, i64 2520, !40, i64 2524, !40, i64 2526, !53, i64 2528, !53, i64 2532, !40, i64 2536, !40, i64 2538, !53, i64 2540, !40, i64 2544, !40, i64 2546, !60, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !60, i64 2576, !53, i64 2580, !37, i64 2584, !93, i64 2616, !60, i64 3976, !60, i64 3980}
!87 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !88, i64 24, !89, i64 184}
!88 = !{!"ColorManagedViewSettings", !60, i64 0, !60, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!89 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!90 = !{!"QuicktimeCodecSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !40, i64 48, !40, i64 50, !60, i64 52, !60, i64 56, !60, i64 60}
!91 = !{!"FFMpegCodecData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !53, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48, !60, i64 52, !60, i64 56, !60, i64 60, !36, i64 64}
!92 = !{!"rcti", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!93 = !{!"BakeData", !87, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!94 = !{!"AudioData", !60, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !60, i64 16, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28}
!95 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!96 = !{!"GameData", !95, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !97, i64 40, !40, i64 64, !40, i64 66, !53, i64 68, !98, i64 72, !53, i64 128, !53, i64 132, !60, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!97 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!98 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !60, i64 40, !53, i64 44, !53, i64 48, !40, i64 52, !40, i64 54}
!99 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!100 = !{!"PhysicsSettings", !37, i64 0, !60, i64 12, !60, i64 16, !60, i64 20}
!101 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!102 = !{!58, !53, i64 88}
!103 = !{!77, !53, i64 10948}
!104 = !{!58, !53, i64 132}
!105 = !{!77, !53, i64 10928}
!106 = !{!58, !53, i64 176}
!107 = !{!77, !40, i64 10952}
!108 = !{!58, !60, i64 124}
!109 = !{!58, !60, i64 184}
!110 = !{!58, !60, i64 128}
!111 = !{!58, !60, i64 168}
!112 = !{!77, !53, i64 10940}
!113 = !{!58, !53, i64 192}
!114 = !{!77, !53, i64 10944}
!115 = !{!58, !53, i64 204}
!116 = !{!77, !53, i64 10936}
!117 = !{!58, !53, i64 208}
!118 = !{!85, !60, i64 4628}
!119 = !{!58, !53, i64 188}
!120 = !{!58, !37, i64 182}
!121 = !{!58, !60, i64 196}
!122 = !{!58, !36, i64 32}
!123 = !{!58, !36, i64 72}
!124 = !{!58, !59, i64 96}
!125 = !{!126, !36, i64 240}
!126 = !{!"ARegion", !36, i64 0, !36, i64 8, !127, i64 16, !92, i64 176, !92, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !53, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!127 = !{!"View2D", !68, i64 0, !68, i64 16, !92, i64 32, !92, i64 48, !92, i64 64, !37, i64 80, !37, i64 88, !53, i64 96, !53, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!128 = !{!58, !36, i64 104}
!129 = !{!52, !40, i64 826}
!130 = !{!77, !60, i64 8484}
!131 = !{!58, !36, i64 216}
!132 = !{!126, !40, i64 208}
!133 = !{!60, !60, i64 0}
!134 = !{!126, !40, i64 210}
!135 = !{!126, !60, i64 176}
!136 = !{!126, !60, i64 184}
!137 = !{!56, !36, i64 120}
!138 = !{i32 1, i32 5}
!139 = !{!58, !37, i64 42}
!140 = !{!141, !40, i64 16}
!141 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !60, i64 20, !60, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !60, i64 48, !60, i64 52, !59, i64 56, !60, i64 64, !60, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !60, i64 108, !36, i64 112}
!142 = !{!70, !40, i64 954}
!143 = !{!37, !37, i64 0}
!144 = !{!141, !36, i64 112}
!145 = !{!58, !59, i64 160}
!146 = !{!58, !53, i64 200}
!147 = !{!141, !36, i64 0}
!148 = !{!149, !60, i64 28}
!149 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !53, i64 24, !60, i64 28}
!150 = !{!141, !40, i64 18}
!151 = !{!61, !60, i64 0}
!152 = !{!61, !59, i64 32}
!153 = !{!61, !53, i64 4}
!154 = !{!61, !60, i64 40}
!155 = !{!85, !36, i64 128}
!156 = !{!68, !53, i64 0}
!157 = !{!68, !53, i64 4}
!158 = !{!68, !53, i64 8}
!159 = !{!68, !53, i64 12}
