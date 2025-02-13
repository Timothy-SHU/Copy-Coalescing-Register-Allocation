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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @walk_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.53) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @walk_modal_keymap.modal_items) #14
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #14
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 3, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #14
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #14
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #14
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #14
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 15) #14
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 217, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 16) #14
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 17) #14
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 213, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 18) #14
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 3) #14
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 5) #14
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 7) #14
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 9) #14
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 11) #14
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 13) #14
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 119, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #14
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #14
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 8) #14
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 100, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 10) #14
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 101, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 12) #14
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 113, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 14) #14
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #14
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #14
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #14
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 9) #14
  %35 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 140, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 4) #14
  %36 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 138, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 6) #14
  %37 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 137, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 8) #14
  %38 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 139, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 10) #14
  %39 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 22) #14
  %40 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 22) #14
  %41 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 118, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 19) #14
  %42 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 118, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 20) #14
  %43 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 221, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 21) #14
  %44 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0, i32 noundef 21) #14
  %45 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 164, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 23) #14
  %46 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 162, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 24) #14
  %47 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 23) #14
  %48 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 24) #14
  tail call void @WM_modalkeymap_assign(ptr noundef %9, ptr noundef nonnull @.str.54) #14
  br label %49

49:                                               ; preds = %4, %8
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
define dso_local void @VIEW3D_OT_walk(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %2, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @walk_invoke, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @walk_cancel, ptr %5, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @walk_modal, ptr %6, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @walk_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 1, !tbaa !22
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !25
  %11 = tail call ptr %10(i64 noundef 224, ptr noundef nonnull @.str.57) #14
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !26
  %13 = tail call fastcc zeroext i8 @initWalkInfo(ptr noundef %0, ptr noundef %11, ptr noundef %1) #15, !range !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !25
  %17 = load ptr, ptr %12, align 8, !tbaa !26
  tail call void %16(ptr noundef %17) #14
  br label %20

18:                                               ; preds = %9
  tail call fastcc void @walkEvent(ptr noundef %0, ptr noundef %11, ptr noundef %2) #15
  %19 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %20

20:                                               ; preds = %3, %18, %15
  %21 = phi i32 [ 2, %15 ], [ 1, %18 ], [ 2, %3 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @walk_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %4, i64 0, i32 5
  store i16 1, ptr %5, align 8, !tbaa !29
  %6 = tail call fastcc i32 @walkEnd(ptr noundef %0, ptr noundef %4) #15, !range !34
  store ptr null, ptr %3, align 8, !tbaa !26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @walk_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.WalkInfo, ptr %5, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.WalkInfo, ptr %5, i64 0, i32 6
  store i8 0, ptr %10, align 2, !tbaa !37
  tail call fastcc void @walkEvent(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #15
  %11 = getelementptr inbounds %struct.WalkInfo, ptr %5, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !39
  br i1 %13, label %19, label %16

16:                                               ; preds = %3
  %17 = icmp eq i16 %15, 400
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  tail call fastcc void @walkApply_ndof(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %28

19:                                               ; preds = %3
  %20 = icmp eq i16 %15, 272
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.WalkInfo, ptr %5, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @walkApply(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %28

28:                                               ; preds = %19, %21, %27, %16, %18
  %29 = load i8, ptr %10, align 2, !tbaa !37
  %30 = tail call fastcc i32 @walkEnd(ptr noundef %0, ptr noundef nonnull %5) #15, !range !34
  %31 = icmp eq i32 %30, 1
  %32 = icmp eq i8 %29, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 25
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %9) #14
  br label %39

39:                                               ; preds = %34, %38
  %40 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %40) #14
  switch i32 %30, label %43 [
    i32 4, label %41
    i32 2, label %41
  ]

41:                                               ; preds = %39, %39
  %42 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_headerprint(ptr noundef %42, ptr noundef null) #14
  br label %43

43:                                               ; preds = %28, %39, %41
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @initWalkInfo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #14
  store ptr %5, ptr %1, align 8, !tbaa !35
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !44
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %9 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !45
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = icmp eq i8 %14, 2
  %16 = load ptr, ptr %7, align 8, !tbaa !44
  br i1 %15, label %17, label %29

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i8 1, ptr %13, align 1, !tbaa !43
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.58) #14
  br label %142

29:                                               ; preds = %3, %21, %22
  %30 = tail call zeroext i8 @ED_view3d_offset_lock_check(ptr noundef %16, ptr noundef nonnull %12) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  tail call void @BKE_report(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.59) #14
  br label %142

35:                                               ; preds = %29
  %36 = load ptr, ptr %1, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %36, i64 0, i32 25
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = icmp eq i8 %38, 2
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load ptr, ptr %7, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.View3D, ptr %41, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 106
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  tail call void @BKE_report(ptr noundef %49, i32 noundef 32, ptr noundef nonnull @.str.60) #14
  br label %142

50:                                               ; preds = %40, %35
  %51 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  store i16 0, ptr %51, align 8, !tbaa !29
  %52 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 1), align 4, !tbaa !57
  %53 = load float, ptr @userdef_speed, align 4, !tbaa !61
  %54 = fsub float %52, %53
  %55 = tail call float @llvm.fabs.f32(float %54)
  %56 = fcmp ogt float %55, 0x3FB99999A0000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store float %52, ptr @base_speed, align 4, !tbaa !61
  store float %52, ptr @userdef_speed, align 4, !tbaa !61
  br label %58

58:                                               ; preds = %57, %50
  %59 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 12
  store float 0.000000e+00, ptr %59, align 4, !tbaa !62
  %60 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  store i8 0, ptr %60, align 4, !tbaa !63
  %61 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  store i8 0, ptr %61, align 1, !tbaa !64
  %62 = load ptr, ptr %11, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 38
  %64 = load float, ptr %63, align 8, !tbaa !65
  %65 = fdiv float 1.000000e+00, %64
  %66 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 13
  store float %65, ptr %66, align 8, !tbaa !83
  %67 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 5), align 4, !tbaa !84
  %68 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %67, ptr %68, align 4, !tbaa !85
  %69 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114), align 8, !tbaa !86
  %70 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 19
  store float %69, ptr %70, align 8, !tbaa !87
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 6), align 8, !tbaa !88
  %72 = and i16 %71, 1
  %73 = zext nneg i16 %72 to i32
  tail call fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %73) #15
  %74 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 3), align 4, !tbaa !89
  %75 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 25
  store float %74, ptr %75, align 8, !tbaa !90
  %76 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 4), align 8, !tbaa !91
  %77 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 28
  store float %76, ptr %77, align 4, !tbaa !92
  %78 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 1), align 4, !tbaa !57
  store float %78, ptr %59, align 4, !tbaa !62
  %79 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 2), align 8, !tbaa !93
  %80 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 29
  store float %79, ptr %80, align 8, !tbaa !94
  %81 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  store i32 0, ptr %81, align 8, !tbaa !95
  %82 = load ptr, ptr %11, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.Scene, ptr %82, i64 0, i32 40, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !96
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %58
  %88 = getelementptr inbounds %struct.Scene, ptr %82, i64 0, i32 40, i32 0, i64 2
  %89 = load float, ptr %88, align 8, !tbaa !61
  %90 = tail call float @llvm.fabs.f32(float %89)
  br label %91

91:                                               ; preds = %58, %87
  %92 = phi float [ %90, %87 ], [ 0x40239D0520000000, %58 ]
  %93 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  store float %92, ptr %93, align 4
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 6), align 8, !tbaa !88
  %95 = trunc i16 %94 to i8
  %96 = lshr i8 %95, 1
  %97 = and i8 %96, 1
  %98 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 22
  store i8 %97, ptr %98, align 2, !tbaa !97
  %99 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  store i32 0, ptr %99, align 4, !tbaa !98
  %100 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 16
  tail call fastcc void @zero_v3(ptr noundef nonnull %100) #15
  %101 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %102 = tail call ptr @WM_event_add_timer(ptr noundef %101, ptr noundef %4, i32 noundef 272, double noundef 0x3F847AE140000000) #14
  %103 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 4
  store ptr %102, ptr %103, align 8, !tbaa !42
  %104 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  store ptr null, ptr %104, align 8, !tbaa !38
  %105 = tail call double @PIL_check_seconds_timer() #14
  %106 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 14
  store double %105, ptr %106, align 8, !tbaa !99
  %107 = load ptr, ptr %9, align 8, !tbaa !45
  %108 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 20
  %109 = load ptr, ptr %108, align 8, !tbaa !100
  %110 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %109, ptr noundef nonnull @drawWalkPixel, ptr noundef nonnull %1, i32 noundef 1) #14
  %111 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 15
  store ptr %110, ptr %111, align 8, !tbaa !103
  %112 = load ptr, ptr %1, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %112, i64 0, i32 32
  %114 = load i16, ptr %113, align 2, !tbaa !104
  %115 = or i16 %114, 8
  store i16 %115, ptr %113, align 2, !tbaa !104
  %116 = load ptr, ptr %11, align 8, !tbaa !46
  %117 = load ptr, ptr %7, align 8, !tbaa !44
  %118 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !105
  %119 = and i32 %118, 524288
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i8
  %122 = tail call ptr @ED_view3d_cameracontrol_acquire(ptr noundef %116, ptr noundef %117, ptr noundef %112, i8 noundef zeroext %121) #14
  %123 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  store ptr %122, ptr %123, align 8, !tbaa !36
  %124 = load ptr, ptr %9, align 8, !tbaa !45
  %125 = getelementptr inbounds %struct.ARegion, ptr %124, i64 0, i32 5
  %126 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8
  %127 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %128 = load <2 x i16>, ptr %125, align 8, !tbaa !106
  %129 = sitofp <2 x i16> %128 to <2 x float>
  %130 = fmul <2 x float> %129, <float 5.000000e-01, float 5.000000e-01>
  %131 = fptosi <2 x float> %130 to <2 x i32>
  store <2 x i32> %131, ptr %126, align 4, !tbaa !107
  %132 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %132, ptr noundef nonnull %126) #15
  %133 = load ptr, ptr %9, align 8, !tbaa !45
  %134 = getelementptr inbounds %struct.ARegion, ptr %133, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !108
  %136 = load i32, ptr %126, align 4, !tbaa !107
  %137 = add nsw i32 %136, %135
  %138 = getelementptr inbounds %struct.ARegion, ptr %133, i64 0, i32 3, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !109
  %140 = load i32, ptr %127, align 4, !tbaa !107
  %141 = add nsw i32 %140, %139
  tail call void @WM_cursor_warp(ptr noundef %4, i32 noundef %137, i32 noundef %141) #14
  tail call void @WM_cursor_modal_set(ptr noundef %4, i32 noundef 1007) #14
  br label %142

142:                                              ; preds = %91, %47, %32, %26
  %143 = phi i8 [ 0, %26 ], [ 0, %32 ], [ 0, %47 ], [ 1, %91 ]
  ret i8 %143
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walkEvent(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !39
  switch i16 %8, label %245 [
    i16 272, label %9
    i16 4, label %17
    i16 17, label %17
    i16 400, label %60
    i16 20514, label %82
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %245

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %16, align 2, !tbaa !37
  br label %245

17:                                               ; preds = %3, %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !107
  %20 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !107
  %22 = sub i32 %19, %21
  %23 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !107
  %25 = add nsw i32 %22, %24
  store i32 %25, ptr %23, align 4, !tbaa !107
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !107
  %28 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 7, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !107
  %30 = sub i32 %27, %29
  %31 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !107
  %33 = add nsw i32 %30, %32
  store i32 %33, ptr %31, align 4, !tbaa !107
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %20, ptr noundef nonnull %18) #15
  %34 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8
  %35 = load i32, ptr %34, align 4, !tbaa !107
  %36 = load i32, ptr %18, align 4, !tbaa !107
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !107
  %41 = load i32, ptr %26, align 4, !tbaa !107
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %245, label %43

43:                                               ; preds = %38, %17
  %44 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %44, align 2, !tbaa !37
  %45 = tail call fastcc zeroext i8 @wm_event_is_last_mousemove(ptr noundef nonnull %2) #15, !range !28
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %245, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %49 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !108
  %53 = load i32, ptr %34, align 4, !tbaa !107
  %54 = add nsw i32 %53, %52
  %55 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 3, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !109
  %57 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %58 = load i32, ptr %57, align 4, !tbaa !107
  %59 = add nsw i32 %58, %56
  tail call void @WM_cursor_warp(ptr noundef %48, i32 noundef %54, i32 noundef %59) #14
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %20, ptr noundef nonnull %34) #15
  br label %245

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !110
  switch i32 %64, label %245 [
    i32 1, label %65
    i32 2, label %65
    i32 3, label %73
  ]

65:                                               ; preds = %60, %60
  %66 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !25
  %71 = tail call ptr %70(ptr noundef nonnull %62) #14
  store ptr %71, ptr %66, align 8, !tbaa !38
  br label %245

72:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %67, ptr noundef nonnull align 4 dereferenceable(32) %62, i64 32, i1 false)
  br label %245

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !25
  tail call void %78(ptr noundef nonnull %75) #14
  store ptr null, ptr %74, align 8, !tbaa !38
  br label %79

79:                                               ; preds = %77, %73
  %80 = tail call double @PIL_check_seconds_timer() #14
  %81 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 14
  store double %80, ptr %81, align 8, !tbaa !99
  br label %245

82:                                               ; preds = %3
  %83 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !112
  switch i16 %84, label %245 [
    i16 1, label %85
    i16 2, label %87
    i16 23, label %89
    i16 24, label %96
    i16 3, label %103
    i16 5, label %107
    i16 7, label %111
    i16 9, label %115
    i16 11, label %119
    i16 13, label %123
    i16 4, label %127
    i16 6, label %131
    i16 8, label %135
    i16 10, label %139
    i16 12, label %143
    i16 14, label %147
    i16 15, label %151
    i16 16, label %153
    i16 17, label %155
    i16 18, label %157
    i16 20, label %159
    i16 19, label %185
    i16 21, label %217
    i16 22, label %239
  ]

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  store i16 1, ptr %86, align 8, !tbaa !29
  br label %245

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  store i16 2, ptr %88, align 8, !tbaa !29
  br label %245

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %91 = load i8, ptr %90, align 1, !tbaa !64
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, float 0x3FF19999A0000000, float 0x3FF028F5C0000000
  %94 = load float, ptr @base_speed, align 4, !tbaa !61
  %95 = fmul float %94, %93
  store float %95, ptr @base_speed, align 4, !tbaa !61
  br label %245

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %98 = load i8, ptr %97, align 1, !tbaa !64
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, float 0x3FF19999A0000000, float 0x3FF028F5C0000000
  %101 = load float, ptr @base_speed, align 4, !tbaa !61
  %102 = fdiv float %101, %100
  store float %102, ptr @base_speed, align 4, !tbaa !61
  br label %245

103:                                              ; preds = %82
  %104 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %105 = load i32, ptr %104, align 4, !tbaa !98
  %106 = or i32 %105, 1
  store i32 %106, ptr %104, align 4, !tbaa !98
  br label %245

107:                                              ; preds = %82
  %108 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %109 = load i32, ptr %108, align 4, !tbaa !98
  %110 = or i32 %109, 2
  store i32 %110, ptr %108, align 4, !tbaa !98
  br label %245

111:                                              ; preds = %82
  %112 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %113 = load i32, ptr %112, align 4, !tbaa !98
  %114 = or i32 %113, 4
  store i32 %114, ptr %112, align 4, !tbaa !98
  br label %245

115:                                              ; preds = %82
  %116 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %117 = load i32, ptr %116, align 4, !tbaa !98
  %118 = or i32 %117, 8
  store i32 %118, ptr %116, align 4, !tbaa !98
  br label %245

119:                                              ; preds = %82
  %120 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %121 = load i32, ptr %120, align 4, !tbaa !98
  %122 = or i32 %121, 16
  store i32 %122, ptr %120, align 4, !tbaa !98
  br label %245

123:                                              ; preds = %82
  %124 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %125 = load i32, ptr %124, align 4, !tbaa !98
  %126 = or i32 %125, 32
  store i32 %126, ptr %124, align 4, !tbaa !98
  br label %245

127:                                              ; preds = %82
  %128 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %129 = load i32, ptr %128, align 4, !tbaa !98
  %130 = and i32 %129, -2
  store i32 %130, ptr %128, align 4, !tbaa !98
  br label %245

131:                                              ; preds = %82
  %132 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %133 = load i32, ptr %132, align 4, !tbaa !98
  %134 = and i32 %133, -3
  store i32 %134, ptr %132, align 4, !tbaa !98
  br label %245

135:                                              ; preds = %82
  %136 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %137 = load i32, ptr %136, align 4, !tbaa !98
  %138 = and i32 %137, -5
  store i32 %138, ptr %136, align 4, !tbaa !98
  br label %245

139:                                              ; preds = %82
  %140 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %141 = load i32, ptr %140, align 4, !tbaa !98
  %142 = and i32 %141, -9
  store i32 %142, ptr %140, align 4, !tbaa !98
  br label %245

143:                                              ; preds = %82
  %144 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %145 = load i32, ptr %144, align 4, !tbaa !98
  %146 = and i32 %145, -17
  store i32 %146, ptr %144, align 4, !tbaa !98
  br label %245

147:                                              ; preds = %82
  %148 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %149 = load i32, ptr %148, align 4, !tbaa !98
  %150 = and i32 %149, -33
  store i32 %150, ptr %148, align 4, !tbaa !98
  br label %245

151:                                              ; preds = %82
  %152 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  store i8 1, ptr %152, align 4, !tbaa !63
  br label %245

153:                                              ; preds = %82
  %154 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  store i8 0, ptr %154, align 4, !tbaa !63
  br label %245

155:                                              ; preds = %82
  %156 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  store i8 1, ptr %156, align 1, !tbaa !64
  br label %245

157:                                              ; preds = %82
  %158 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  store i8 0, ptr %158, align 1, !tbaa !64
  br label %245

159:                                              ; preds = %82
  %160 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %161 = load i32, ptr %160, align 8, !tbaa !95
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %245

163:                                              ; preds = %159
  %164 = tail call double @PIL_check_seconds_timer() #14
  %165 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  %166 = load double, ptr %165, align 8, !tbaa !113
  %167 = fsub double %164, %166
  %168 = fptrunc double %167 to float
  %169 = tail call fastcc float @min_ff(float noundef %168) #15
  %170 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  %171 = load float, ptr %170, align 4, !tbaa !114
  %172 = fmul float %171, 2.000000e+00
  %173 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 28
  %174 = load float, ptr %173, align 4, !tbaa !92
  %175 = fmul float %172, %174
  %176 = tail call float @sqrtf(float noundef %175) #14
  %177 = fadd float %176, -1.000000e+00
  %178 = fmul float %169, %177
  %179 = fdiv float %178, 0x3FC99999A0000000
  %180 = fadd float %179, 1.000000e+00
  %181 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float %180, ptr %181, align 8, !tbaa !115
  %182 = load float, ptr %170, align 4, !tbaa !114
  %183 = tail call fastcc float @getVelocityZeroTime(float noundef %182, float noundef %180) #15
  %184 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %183, ptr %184, align 4, !tbaa !85
  store i32 3, ptr %160, align 8, !tbaa !95
  br label %245

185:                                              ; preds = %82
  %186 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %187 = load i32, ptr %186, align 4, !tbaa !116
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %245

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %191 = load i32, ptr %190, align 8, !tbaa !95
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %245

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %195 = load i32, ptr %194, align 8, !tbaa !117
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %245

197:                                              ; preds = %193
  store i32 1, ptr %190, align 8, !tbaa !95
  %198 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  %199 = load float, ptr %198, align 4, !tbaa !114
  %200 = fmul float %199, 2.000000e+00
  %201 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 28
  %202 = load float, ptr %201, align 4, !tbaa !92
  %203 = fmul float %200, %202
  %204 = tail call float @sqrtf(float noundef %203) #14
  %205 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float %204, ptr %205, align 8, !tbaa !115
  %206 = tail call double @PIL_check_seconds_timer() #14
  %207 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  store double %206, ptr %207, align 8, !tbaa !113
  %208 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  %209 = load ptr, ptr %1, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct.RegionView3D, ptr %209, i64 0, i32 2, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %208, ptr noundef nonnull %210) #15
  %211 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  %212 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 16
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %211, ptr noundef nonnull %212) #15
  %213 = load float, ptr %198, align 4, !tbaa !114
  %214 = load float, ptr %205, align 8, !tbaa !115
  %215 = tail call fastcc float @getVelocityZeroTime(float noundef %213, float noundef %214) #15
  %216 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %215, ptr %216, align 4, !tbaa !85
  br label %245

217:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %218 = load ptr, ptr %1, align 8, !tbaa !35
  %219 = call fastcc zeroext i8 @walk_ray_cast(ptr noundef %0, ptr noundef %218, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %220 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  store float 0.000000e+00, ptr %220, align 8, !tbaa !115
  %221 = icmp eq i8 %219, 0
  %222 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  br i1 %221, label %237, label %223

223:                                              ; preds = %217
  store i32 1, ptr %222, align 8, !tbaa !118
  %224 = call double @PIL_check_seconds_timer() #14
  %225 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  store double %224, ptr %225, align 8, !tbaa !119
  %226 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 114, i32 5), align 4, !tbaa !84
  %227 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float %226, ptr %227, align 4, !tbaa !120
  %228 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %229 = load i32, ptr %228, align 4, !tbaa !116
  %230 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 5
  store i32 %229, ptr %230, align 8, !tbaa !121
  call fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #15
  %231 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  %232 = load ptr, ptr %1, align 8, !tbaa !35
  %233 = getelementptr inbounds %struct.RegionView3D, ptr %232, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %231, ptr noundef nonnull %233) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #15
  %234 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 25
  %235 = load float, ptr %234, align 8, !tbaa !90
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %235) #15
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %236 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %236, ptr noundef nonnull %4, ptr noundef nonnull %231) #15
  br label %238

237:                                              ; preds = %217
  store i32 0, ptr %222, align 8, !tbaa !117
  br label %238

238:                                              ; preds = %237, %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %245

239:                                              ; preds = %82
  %240 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %241 = load i32, ptr %240, align 4, !tbaa !116
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  tail call fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #15
  br label %245

244:                                              ; preds = %239
  tail call fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #15
  br label %245

245:                                              ; preds = %3, %9, %79, %72, %69, %60, %43, %47, %38, %243, %244, %185, %189, %193, %197, %159, %163, %82, %238, %157, %155, %153, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %96, %89, %87, %85, %15
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ne i32 %2, 0
  %5 = zext i1 %4 to i32
  %6 = select i1 %4, i32 2, i32 0
  %7 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  store i32 %5, ptr %7, align 4
  %8 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  store i32 %6, ptr %8, align 8
  tail call fastcc void @walk_update_header(ptr noundef %0, ptr noundef nonnull %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !61
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawWalkPixel(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load ptr, ptr %2, align 8, !tbaa !35
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %14 = load <4 x float>, ptr %4, align 16
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %16 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #15
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !123
  %19 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #15
  %20 = insertelement <2 x float> poison, float %16, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1
  %22 = insertelement <2 x float> %15, float %18, i64 1
  %23 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> %22)
  %24 = fptosi <2 x float> %23 to <2 x i32>
  br label %32

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 5
  %29 = load <2 x i16>, ptr %28, align 8, !tbaa !106
  %30 = sdiv <2 x i16> %29, <i16 2, i16 2>
  %31 = sext <2 x i16> %30 to <2 x i32>
  br label %32

32:                                               ; preds = %25, %10
  %33 = phi <2 x i32> [ %24, %10 ], [ %31, %25 ]
  call void @UI_ThemeColor(i32 noundef 192) #14
  call void @glBegin(i32 noundef 1) #14
  %34 = extractelement <2 x i32> %33, i64 1
  %35 = add nsw i32 %34, 14
  %36 = extractelement <2 x i32> %33, i64 0
  call void @glVertex2i(i32 noundef %36, i32 noundef %35) #14
  %37 = add nsw i32 %34, 24
  call void @glVertex2i(i32 noundef %36, i32 noundef %37) #14
  %38 = add nsw i32 %36, 14
  call void @glVertex2i(i32 noundef %38, i32 noundef %34) #14
  %39 = add nsw i32 %36, 24
  call void @glVertex2i(i32 noundef %39, i32 noundef %34) #14
  %40 = add nsw i32 %34, -14
  call void @glVertex2i(i32 noundef %36, i32 noundef %40) #14
  %41 = add nsw i32 %34, -24
  call void @glVertex2i(i32 noundef %36, i32 noundef %41) #14
  %42 = add nsw i32 %36, -14
  call void @glVertex2i(i32 noundef %42, i32 noundef %34) #14
  %43 = add nsw i32 %36, -24
  call void @glVertex2i(i32 noundef %43, i32 noundef %34) #14
  call void @glEnd() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_cameracontrol_acquire(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %1, align 4, !tbaa !107
  store i32 %3, ptr %0, align 4, !tbaa !107
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !107
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_update_header(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !116
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !124
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %7, %11, %2
  %17 = phi i8 [ 1, %2 ], [ 0, %7 ], [ %15, %11 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %18 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %17) #14
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.61, ptr noundef %18) #14
  %20 = call ptr @CTX_wm_area(ptr noundef %0) #14
  call void @ED_area_headerprint(ptr noundef %20, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_calc_camera_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !125
  %4 = load float, ptr %0, align 4, !tbaa !126
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !127
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !123
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2i(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @wm_event_is_last_mousemove(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !39
  switch i16 %8, label %2 [
    i16 4, label %9
    i16 17, label %9
  ]

9:                                                ; preds = %2, %6, %6
  %10 = phi i8 [ 0, %6 ], [ 0, %6 ], [ 1, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #9 {
  %2 = fcmp olt float %0, 0x3FC99999A0000000
  %3 = select i1 %2, float %0, float 0x3FC99999A0000000
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @getVelocityZeroTime(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fdiv float %1, %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @walk_ray_cast(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store float 0.000000e+00, ptr %7, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.walk_ray_cast.ray_normal, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  store float 0x47DFFFFFE0000000, ptr %5, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %12) #15
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef -1.000000e+00) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #15
  %13 = call ptr @CTX_data_scene(ptr noundef %0) #14
  %14 = call zeroext i8 @snapObjectsRayEx(ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, i32 noundef 0) #14
  %15 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef %4) #15
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load float, ptr %4, align 4, !tbaa !61
  %19 = fneg float %18
  %20 = getelementptr inbounds float, ptr %4, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !61
  %22 = fneg float %21
  %23 = getelementptr inbounds float, ptr %4, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !61
  %25 = fneg float %24
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %4, float noundef %19, float noundef %22, float noundef %25) #15
  br label %26

26:                                               ; preds = %17, %6
  %27 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 13
  %28 = load float, ptr %27, align 8, !tbaa !83
  %29 = load float, ptr %5, align 4, !tbaa !61
  %30 = fdiv float %29, %28
  store float %30, ptr %5, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #11 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !61
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !61
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @snapObjectsRayEx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !61
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #3 {
  store float %1, ptr %0, align 4, !tbaa !61
  %5 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %5, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %6, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @walkEnd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !29
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %7, ptr noundef %11) #14
  %12 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  tail call void @ED_region_draw_cb_exit(ptr noundef %15, ptr noundef %17) #14
  %18 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load i16, ptr %3, align 8, !tbaa !29
  %21 = icmp eq i16 %20, 1
  %22 = zext i1 %21 to i8
  tail call void @ED_view3d_cameracontrol_release(ptr noundef %19, i8 noundef zeroext %22) #14
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %24 = load i16, ptr %23, align 2, !tbaa !104
  %25 = and i16 %24, -9
  store i16 %25, ptr %23, align 2, !tbaa !104
  %26 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !25
  tail call void %30(ptr noundef nonnull %27) #14
  br label %31

31:                                               ; preds = %29, %6
  tail call void @WM_cursor_modal_restore(ptr noundef %7) #14
  %32 = load ptr, ptr %12, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !108
  %35 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !107
  %37 = add nsw i32 %36, %34
  %38 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !109
  %40 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 8, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !107
  %42 = add nsw i32 %41, %39
  tail call void @WM_cursor_warp(ptr noundef %7, i32 noundef %37, i32 noundef %42) #14
  %43 = load i16, ptr %3, align 8, !tbaa !29
  %44 = icmp eq i16 %43, 2
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !25
  tail call void %45(ptr noundef nonnull %1) #14
  %46 = select i1 %44, i32 4, i32 2
  br label %47

47:                                               ; preds = %31, %2
  %48 = phi i32 [ 1, %2 ], [ %46, %31 ]
  ret i32 %48
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_cameracontrol_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cameracontrol_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walkApply_ndof(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %14 = load i8, ptr %13, align 1, !tbaa !64
  %15 = icmp eq ptr %7, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 56
  %18 = load i16, ptr %17, align 2, !tbaa !129
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi i16 [ %18, %16 ], [ 0, %2 ]
  call void @view3d_ndof_fly(ptr noundef %9, ptr noundef %11, ptr noundef %12, i8 noundef zeroext %14, i16 noundef signext %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = load i8, ptr %3, align 1, !tbaa !130
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr %4, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 6
  store i8 1, ptr %27, align 2, !tbaa !37
  %28 = load ptr, ptr %1, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %28, i64 0, i32 25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call fastcc void @walkMoveCamera(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %23, i8 noundef zeroext %21) #15
  br label %33

33:                                               ; preds = %26, %32, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walkApply(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = load ptr, ptr %1, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %16 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %6, ptr noundef nonnull %16) #15
  store i32 0, ptr %16, align 4, !tbaa !107
  %17 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 9, i64 1
  store i32 0, ptr %17, align 4, !tbaa !107
  %18 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 22
  %19 = load i8, ptr %18, align 2, !tbaa !97
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %25, label %23

23:                                               ; preds = %2
  %24 = sub nsw i32 0, %22
  store i32 %24, ptr %21, align 4, !tbaa !107
  br label %25

25:                                               ; preds = %2, %23
  %26 = phi i32 [ %24, %23 ], [ %22, %2 ]
  %27 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 26
  %28 = load i32, ptr %27, align 4, !tbaa !98
  %29 = icmp ne i32 %28, 0
  %30 = load i32, ptr %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  %33 = icmp ne i32 %26, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %37 = load i32, ptr %36, align 8, !tbaa !117
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %41 = load i32, ptr %40, align 8, !tbaa !95
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %325, label %43

43:                                               ; preds = %39, %35, %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %44 = tail call double @PIL_check_seconds_timer() #14
  %45 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 14
  %46 = load double, ptr %45, align 8, !tbaa !99
  %47 = fsub double %44, %46
  %48 = fptrunc double %47 to float
  store double %44, ptr %45, align 8, !tbaa !99
  %49 = load float, ptr @base_speed, align 4, !tbaa !61
  %50 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 12
  store float %49, ptr %50, align 4, !tbaa !62
  %51 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 20
  %52 = load i8, ptr %51, align 4, !tbaa !63
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 29
  %56 = load float, ptr %55, align 8, !tbaa !94
  br label %65

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 21
  %59 = load i8, ptr %58, align 1, !tbaa !64
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 29
  %63 = load float, ptr %62, align 8, !tbaa !94
  %64 = fdiv float 1.000000e+00, %63
  br label %65

65:                                               ; preds = %54, %61
  %66 = phi float [ %64, %61 ], [ %56, %54 ]
  %67 = fmul float %49, %66
  store float %67, ptr %50, align 4, !tbaa !62
  br label %68

68:                                               ; preds = %65, %57
  %69 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %69) #14
  %70 = icmp eq i32 %26, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  %72 = sitofp i32 %26 to float
  %73 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 6
  %74 = load i16, ptr %73, align 2, !tbaa !131
  %75 = sitofp i16 %74 to float
  %76 = fdiv float %72, %75
  %77 = fmul float %76, 0x40019999A0000000
  %78 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 19
  %79 = load float, ptr %78, align 8, !tbaa !87
  %80 = fmul float %79, %77
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1, i64 2, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !61
  %83 = call float @asinf(float noundef %82) #14
  %84 = fcmp olt float %83, 0xBFF7BC89C0000000
  %85 = fcmp ogt float %80, 0.000000e+00
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %92, label %87

87:                                               ; preds = %71
  %88 = fcmp ogt float %83, 0x3FF6571840000000
  %89 = fcmp olt float %80, 0.000000e+00
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %90, float 0.000000e+00, float %80
  br label %92

92:                                               ; preds = %71, %87
  %93 = phi float [ %91, %87 ], [ 0.000000e+00, %71 ]
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %94 = fneg float %93
  call void @axis_angle_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5, float noundef %94) #14
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %95, ptr noundef nonnull %95, ptr noundef nonnull %7) #14
  br label %96

96:                                               ; preds = %92, %68
  %97 = icmp ne i32 %30, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %96
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %99 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !61
  %101 = fcmp olt float %100, 0.000000e+00
  %102 = sub nsw i32 0, %30
  %103 = select i1 %101, i32 %102, i32 %30
  %104 = sitofp i32 %103 to float
  %105 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 5
  %106 = load i16, ptr %105, align 8, !tbaa !132
  %107 = sitofp i16 %106 to float
  %108 = fdiv float %104, %107
  %109 = fmul float %108, 0x40019999A0000000
  %110 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 19
  %111 = load float, ptr %110, align 8, !tbaa !87
  %112 = fmul float %111, %109
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %5, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  call void @axis_angle_normalized_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %5, float noundef %112) #14
  %113 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %113, ptr noundef nonnull %113, ptr noundef nonnull %7) #14
  br label %114

114:                                              ; preds = %98, %96
  %115 = load i32, ptr %27, align 4, !tbaa !98
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %177, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %119 = load i32, ptr %118, align 8, !tbaa !95
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %177

121:                                              ; preds = %117
  call fastcc void @zero_v3(ptr noundef nonnull %4) #15
  %122 = and i32 %115, 3
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121
  %125 = trunc i32 %115 to i16
  %126 = and i16 %125, 1
  %127 = shl i32 %115, 30
  %128 = ashr i32 %127, 31
  %129 = trunc i32 %128 to i16
  %130 = add nsw i16 %126, %129
  %131 = sitofp i16 %130 to float
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %131) #15
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #14
  %132 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %133 = load i32, ptr %132, align 4, !tbaa !116
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %136, align 8, !tbaa !61
  br label %137

137:                                              ; preds = %135, %124
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #15
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  %138 = load i32, ptr %27, align 4, !tbaa !98
  br label %139

139:                                              ; preds = %121, %137
  %140 = phi i32 [ %115, %121 ], [ %138, %137 ]
  %141 = and i32 %140, 12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %139
  %144 = trunc i32 %140 to i16
  %145 = lshr i16 %144, 2
  %146 = and i16 %145, 1
  %147 = shl i32 %140, 28
  %148 = ashr i32 %147, 31
  %149 = trunc i32 %148 to i16
  %150 = add nsw i16 %146, %149
  %151 = sitofp i16 %150 to float
  %152 = load <2 x float>, ptr %69, align 8, !tbaa !61
  %153 = insertelement <2 x float> poison, float %151, i64 0
  %154 = shufflevector <2 x float> %153, <2 x float> poison, <2 x i32> zeroinitializer
  %155 = fmul <2 x float> %152, %154
  store <2 x float> %155, ptr %8, align 8, !tbaa !61
  %156 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %156, align 8, !tbaa !61
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #15
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  %157 = load i32, ptr %27, align 4, !tbaa !98
  br label %158

158:                                              ; preds = %139, %143
  %159 = phi i32 [ %140, %139 ], [ %157, %143 ]
  %160 = and i32 %159, 32
  %161 = icmp eq i32 %160, 0
  %162 = and i32 %159, 48
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %166 = load i32, ptr %165, align 4, !tbaa !116
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = shl i32 %159, 27
  %170 = ashr i32 %169, 31
  %171 = trunc i32 %170 to i16
  %172 = sitofp i16 %171 to float
  %173 = select i1 %161, float %172, float 1.000000e+00
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %173) #15
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #15
  br label %174

174:                                              ; preds = %158, %164, %168
  %175 = load float, ptr %50, align 4, !tbaa !62
  %176 = fmul float %175, %48
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %176) #15
  br label %177

177:                                              ; preds = %174, %117, %114
  %178 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 17
  %179 = load i32, ptr %178, align 4, !tbaa !116
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %217

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %183 = load i32, ptr %182, align 8, !tbaa !95
  switch i32 %183, label %217 [
    i32 0, label %184
    i32 2, label %184
  ]

184:                                              ; preds = %181, %181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %185 = call fastcc zeroext i8 @walk_floor_distance_get(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %9) #15
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 25
  %189 = load float, ptr %188, align 8, !tbaa !90
  %190 = load float, ptr %9, align 4, !tbaa !61
  %191 = fsub float %189, %190
  br label %192

192:                                              ; preds = %187, %184
  %193 = phi float [ %191, %187 ], [ -1.000000e+02, %184 ]
  %194 = load float, ptr %50, align 4, !tbaa !62
  %195 = fmul float %194, %48
  %196 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 29
  %197 = load float, ptr %196, align 8, !tbaa !94
  %198 = fmul float %195, %197
  %199 = call float @llvm.fabs.f32(float %193)
  %200 = fcmp olt float %199, %198
  br i1 %200, label %201, label %208

201:                                              ; preds = %192
  %202 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !61
  %204 = fsub float %203, %193
  store float %204, ptr %202, align 4, !tbaa !61
  %205 = load i32, ptr %182, align 8, !tbaa !95
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  store i32 0, ptr %182, align 8, !tbaa !95
  br label %216

208:                                              ; preds = %192
  %209 = call double @PIL_check_seconds_timer() #14
  %210 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  store double %209, ptr %210, align 8, !tbaa !113
  store i32 3, ptr %182, align 8, !tbaa !95
  %211 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  store float 0.000000e+00, ptr %211, align 4, !tbaa !85
  %212 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  %213 = load ptr, ptr %1, align 8, !tbaa !35
  %214 = getelementptr inbounds %struct.RegionView3D, ptr %213, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %212, ptr noundef nonnull %214) #15
  %215 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %215, ptr noundef nonnull %4) #15
  br label %216

216:                                              ; preds = %201, %207, %208
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %217

217:                                              ; preds = %181, %216, %177
  %218 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 23
  %219 = load i32, ptr %218, align 8, !tbaa !95
  switch i32 %219, label %266 [
    i32 3, label %220
    i32 1, label %220
  ]

220:                                              ; preds = %217, %217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %221 = call double @PIL_check_seconds_timer() #14
  %222 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  %223 = load double, ptr %222, align 8, !tbaa !113
  %224 = fsub double %221, %223
  %225 = fptrunc double %224 to float
  %226 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %226) #15
  %227 = load ptr, ptr %1, align 8, !tbaa !35
  %228 = getelementptr inbounds %struct.RegionView3D, ptr %227, i64 0, i32 2, i64 3, i64 2
  %229 = load float, ptr %228, align 8, !tbaa !61
  %230 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2, i64 2
  %231 = load float, ptr %230, align 8, !tbaa !61
  %232 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 24
  %233 = load float, ptr %232, align 4, !tbaa !114
  %234 = call fastcc float @getFreeFallDistance(float noundef %233, float noundef %225) #15
  %235 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 13
  %236 = load float, ptr %235, align 8, !tbaa !83
  %237 = fneg float %234
  %238 = call float @llvm.fmuladd.f32(float %237, float %236, float %231)
  %239 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 27
  %240 = load float, ptr %239, align 8, !tbaa !115
  %241 = fmul float %240, %225
  %242 = call float @llvm.fmuladd.f32(float %241, float %236, float %238)
  %243 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  %244 = load float, ptr %243, align 4, !tbaa !85
  %245 = fcmp olt float %244, %225
  br i1 %245, label %246, label %262

246:                                              ; preds = %220
  %247 = call fastcc zeroext i8 @walk_floor_distance_get(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %10) #15
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 25
  %251 = load float, ptr %250, align 8, !tbaa !90
  %252 = load float, ptr %10, align 4, !tbaa !61
  %253 = fsub float %251, %252
  %254 = fcmp ogt float %253, 0.000000e+00
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !61
  %258 = fsub float %257, %253
  store float %258, ptr %256, align 4, !tbaa !61
  store i32 0, ptr %218, align 8, !tbaa !95
  store float 0.000000e+00, ptr %239, align 8, !tbaa !115
  br label %265

259:                                              ; preds = %246, %249
  %260 = fsub float %229, %242
  %261 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %260, ptr %261, align 4, !tbaa !61
  br label %265

262:                                              ; preds = %220
  %263 = fsub float %229, %242
  %264 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %263, ptr %264, align 4, !tbaa !61
  br label %265

265:                                              ; preds = %255, %259, %262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %289

266:                                              ; preds = %217
  %267 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18
  %268 = load i32, ptr %267, align 8, !tbaa !117
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %289

270:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  %271 = call double @PIL_check_seconds_timer() #14
  %272 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 4
  %273 = load double, ptr %272, align 8, !tbaa !113
  %274 = fsub double %271, %273
  %275 = fptrunc double %274 to float
  %276 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !85
  %278 = fdiv float %275, %277
  %279 = fcmp ult float %278, 1.000000e+00
  br i1 %279, label %283, label %280

280:                                              ; preds = %270
  store i32 0, ptr %267, align 8, !tbaa !117
  %281 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 5
  %282 = load i32, ptr %281, align 8, !tbaa !124
  call fastcc void @walk_navigation_mode_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %282) #15
  br label %283

283:                                              ; preds = %280, %270
  %284 = phi float [ 1.000000e+00, %280 ], [ %278, %270 ]
  %285 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 3
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %285, float noundef %284) #15
  %286 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 18, i32 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %286) #15
  %287 = load ptr, ptr %1, align 8, !tbaa !35
  %288 = getelementptr inbounds %struct.RegionView3D, ptr %287, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %288) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %289

289:                                              ; preds = %266, %283, %265
  %290 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %291 = load i8, ptr %290, align 1, !tbaa !43
  %292 = icmp eq i8 %291, 2
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  %295 = load ptr, ptr %294, align 8, !tbaa !36
  %296 = call ptr @ED_view3d_cameracontrol_object_get(ptr noundef %295) #14
  %297 = getelementptr inbounds %struct.Object, ptr %296, i64 0, i32 56
  %298 = load i16, ptr %297, align 2, !tbaa !129
  %299 = and i16 %298, 1
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %293
  store float 0.000000e+00, ptr %4, align 4, !tbaa !61
  br label %302

302:                                              ; preds = %301, %293
  %303 = and i16 %298, 2
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %306, align 4, !tbaa !61
  br label %307

307:                                              ; preds = %305, %302
  %308 = and i16 %298, 4
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %311, align 4, !tbaa !61
  br label %312

312:                                              ; preds = %307, %310, %289
  %313 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 13
  %314 = load float, ptr %313, align 8, !tbaa !83
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %4, float noundef %314) #15
  %315 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 22
  call fastcc void @add_v3_v3(ptr noundef nonnull %315, ptr noundef nonnull %8) #15
  %316 = load i8, ptr %290, align 1, !tbaa !43
  %317 = icmp eq i8 %316, 2
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = select i1 %97, i1 true, i1 %33
  %320 = zext i1 %319 to i8
  %321 = load float, ptr %50, align 4, !tbaa !62
  %322 = fcmp une float %321, 0.000000e+00
  %323 = zext i1 %322 to i8
  call fastcc void @walkMoveCamera(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %320, i8 noundef zeroext %323) #15
  br label %324

324:                                              ; preds = %318, %312
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %328

325:                                              ; preds = %39
  %326 = tail call double @PIL_check_seconds_timer() #14
  %327 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 14
  store double %326, ptr %327, align 8, !tbaa !99
  br label %328

328:                                              ; preds = %325, %324
  %329 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %329, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_ndof_fly(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walkMoveCamera(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.WalkInfo, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  tail call void @ED_view3d_cameracontrol_update(ptr noundef %6, i8 noundef zeroext 1, ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_cameracontrol_update(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_normalized_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @walk_floor_distance_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store float 0.000000e+00, ptr %6, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.walk_floor_distance_get.ray_normal, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  store float 0x47DFFFFFE0000000, ptr %4, align 4, !tbaa !61
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %12) #15
  %13 = getelementptr inbounds %struct.WalkInfo, ptr %2, i64 0, i32 13
  %14 = load float, ptr %13, align 8, !tbaa !83
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %11, ptr noundef %3, float noundef %14) #15
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #15
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  %16 = call zeroext i8 @snapObjectsRayEx(ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef signext 3, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef 0) #14
  %17 = load float, ptr %13, align 8, !tbaa !83
  %18 = load float, ptr %4, align 4, !tbaa !61
  %19 = fdiv float %18, %17
  store float %19, ptr %4, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @getFreeFallDistance(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fmul float %1, %1
  %4 = fmul float %3, %0
  %5 = fmul float %4, 5.000000e-01
  ret float %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 128}
!6 = !{!"wmKeyMap", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 32, !8, i64 48, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !7, i64 120, !7, i64 128}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !7, i64 0}
!13 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !14, i64 152, !11, i64 184}
!14 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!15 = !{!13, !7, i64 24}
!16 = !{!13, !7, i64 8}
!17 = !{!13, !7, i64 48}
!18 = !{!13, !7, i64 56}
!19 = !{!13, !7, i64 64}
!20 = !{!13, !7, i64 72}
!21 = !{!13, !11, i64 184}
!22 = !{!23, !8, i64 811}
!23 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !24, i64 776, !24, i64 780, !24, i64 784, !24, i64 788, !8, i64 792, !24, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !11, i64 824, !11, i64 826, !8, i64 828, !11, i64 844, !11, i64 846, !24, i64 848, !8, i64 852, !24, i64 864, !8, i64 868}
!24 = !{!"float", !8, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !7, i64 96}
!27 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!28 = !{i8 0, i8 2}
!29 = !{!30, !11, i64 40}
!30 = !{!"WalkInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !8, i64 42, !8, i64 44, !8, i64 52, !8, i64 60, !7, i64 72, !24, i64 80, !24, i64 84, !24, i64 88, !31, i64 96, !7, i64 104, !8, i64 112, !32, i64 124, !33, i64 128, !24, i64 176, !8, i64 180, !8, i64 181, !8, i64 182, !32, i64 184, !24, i64 188, !24, i64 192, !32, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !7, i64 216}
!31 = !{!"double", !8, i64 0}
!32 = !{!"int", !8, i64 0}
!33 = !{!"WalkTeleport", !32, i64 0, !24, i64 4, !8, i64 8, !8, i64 20, !31, i64 32, !32, i64 40}
!34 = !{i32 1, i32 5}
!35 = !{!30, !7, i64 0}
!36 = !{!30, !7, i64 216}
!37 = !{!30, !8, i64 42}
!38 = !{!30, !7, i64 72}
!39 = !{!40, !11, i64 16}
!40 = !{!"wmEvent", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 18, !32, i64 20, !32, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !11, i64 44, !11, i64 46, !32, i64 48, !32, i64 52, !31, i64 56, !32, i64 64, !32, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 106, !32, i64 108, !7, i64 112}
!41 = !{!40, !7, i64 112}
!42 = !{!30, !7, i64 32}
!43 = !{!23, !8, i64 809}
!44 = !{!30, !7, i64 8}
!45 = !{!30, !7, i64 16}
!46 = !{!30, !7, i64 24}
!47 = !{!48, !7, i64 96}
!48 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !32, i64 32, !24, i64 36, !8, i64 40, !8, i64 56, !24, i64 72, !24, i64 76, !8, i64 80, !8, i64 81, !32, i64 84, !32, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !7, i64 104, !49, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !32, i64 224, !32, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !24, i64 244, !24, i64 248, !24, i64 252, !24, i64 256, !8, i64 260, !8, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!49 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!50 = !{!51, !7, i64 24}
!51 = !{!"Object", !52, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !32, i64 140, !32, i64 144, !32, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !53, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !32, i64 432, !32, i64 436, !7, i64 440, !7, i64 448, !32, i64 456, !32, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !24, i64 616, !24, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !32, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !32, i64 968, !32, i64 972, !32, i64 976, !32, i64 980, !32, i64 984, !24, i64 988, !24, i64 992, !24, i64 996, !24, i64 1000, !24, i64 1004, !24, i64 1008, !24, i64 1012, !24, i64 1016, !24, i64 1020, !24, i64 1024, !24, i64 1028, !24, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !24, i64 1048, !24, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !24, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !32, i64 1144, !32, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !24, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !54, i64 1304, !54, i64 1312, !32, i64 1320, !32, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!52 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !32, i64 100, !32, i64 104, !32, i64 108, !7, i64 112}
!53 = !{!"bAnimVizSettings", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44}
!54 = !{!"long", !8, i64 0}
!55 = !{!27, !7, i64 120}
!56 = !{!51, !7, i64 1176}
!57 = !{!58, !24, i64 10932}
!58 = !{!"UserDef", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !32, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !32, i64 8484, !32, i64 8488, !32, i64 8492, !11, i64 8496, !11, i64 8498, !32, i64 8500, !32, i64 8504, !32, i64 8508, !32, i64 8512, !32, i64 8516, !32, i64 8520, !32, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !32, i64 8912, !32, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !24, i64 8956, !24, i64 8960, !32, i64 8964, !11, i64 8968, !11, i64 8970, !24, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !59, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !32, i64 10896, !32, i64 10900, !24, i64 10904, !24, i64 10908, !32, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !60, i64 10928}
!59 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!60 = !{!"WalkNavigation", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !11, i64 24, !8, i64 26}
!61 = !{!24, !24, i64 0}
!62 = !{!30, !24, i64 84}
!63 = !{!30, !8, i64 180}
!64 = !{!30, !8, i64 181}
!65 = !{!66, !24, i64 4600}
!66 = !{!"Scene", !52, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !32, i64 232, !32, i64 236, !32, i64 240, !11, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !67, i64 280, !75, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !11, i64 4376, !11, i64 4378, !32, i64 4380, !10, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !7, i64 4608, !81, i64 4616, !7, i64 4640, !54, i64 4648, !54, i64 4656, !69, i64 4664, !70, i64 4824, !82, i64 4888, !7, i64 4952}
!67 = !{!"RenderData", !68, i64 0, !7, i64 248, !7, i64 256, !71, i64 264, !72, i64 328, !32, i64 400, !32, i64 404, !32, i64 408, !24, i64 412, !32, i64 416, !32, i64 420, !32, i64 424, !32, i64 428, !11, i64 432, !11, i64 434, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !32, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !32, i64 484, !32, i64 488, !11, i64 492, !11, i64 494, !32, i64 496, !32, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !8, i64 514, !8, i64 515, !32, i64 516, !32, i64 520, !32, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !49, i64 544, !49, i64 560, !73, i64 576, !10, i64 592, !11, i64 608, !11, i64 610, !24, i64 612, !24, i64 616, !24, i64 620, !24, i64 624, !32, i64 628, !24, i64 632, !24, i64 636, !24, i64 640, !24, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !24, i64 660, !24, i64 664, !11, i64 668, !11, i64 670, !24, i64 672, !24, i64 676, !8, i64 680, !32, i64 1704, !11, i64 1708, !11, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !32, i64 2520, !11, i64 2524, !11, i64 2526, !24, i64 2528, !24, i64 2532, !11, i64 2536, !11, i64 2538, !24, i64 2540, !11, i64 2544, !11, i64 2546, !32, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !24, i64 2560, !24, i64 2564, !7, i64 2568, !32, i64 2576, !24, i64 2580, !8, i64 2584, !74, i64 2616, !32, i64 3976, !32, i64 3980}
!68 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !11, i64 8, !11, i64 10, !24, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !32, i64 0, !32, i64 4, !8, i64 8, !8, i64 72, !24, i64 136, !24, i64 140, !7, i64 144, !7, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!71 = !{!"QuicktimeCodecSettings", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !11, i64 48, !11, i64 50, !32, i64 52, !32, i64 56, !32, i64 60}
!72 = !{!"FFMpegCodecData", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !24, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48, !32, i64 52, !32, i64 56, !32, i64 60, !7, i64 64}
!73 = !{!"rcti", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!74 = !{!"BakeData", !68, i64 0, !8, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !24, i64 1280, !24, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!75 = !{!"AudioData", !32, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !32, i64 16, !11, i64 20, !11, i64 22, !24, i64 24, !24, i64 28}
!76 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!77 = !{!"GameData", !76, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !8, i64 34, !78, i64 40, !11, i64 64, !11, i64 66, !24, i64 68, !79, i64 72, !24, i64 128, !24, i64 132, !32, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180}
!78 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !24, i64 8, !24, i64 12, !7, i64 16}
!79 = !{!"RecastData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !32, i64 40, !24, i64 44, !24, i64 48, !11, i64 52, !11, i64 54}
!80 = !{!"UnitSettings", !24, i64 0, !8, i64 4, !8, i64 5, !11, i64 6}
!81 = !{!"PhysicsSettings", !8, i64 0, !32, i64 12, !32, i64 16, !32, i64 20}
!82 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!83 = !{!30, !24, i64 88}
!84 = !{!58, !24, i64 10948}
!85 = !{!30, !24, i64 132}
!86 = !{!58, !24, i64 10928}
!87 = !{!30, !24, i64 176}
!88 = !{!58, !11, i64 10952}
!89 = !{!58, !24, i64 10940}
!90 = !{!30, !24, i64 192}
!91 = !{!58, !24, i64 10944}
!92 = !{!30, !24, i64 204}
!93 = !{!58, !24, i64 10936}
!94 = !{!30, !24, i64 208}
!95 = !{!30, !32, i64 184}
!96 = !{!66, !32, i64 4628}
!97 = !{!30, !8, i64 182}
!98 = !{!30, !32, i64 196}
!99 = !{!30, !31, i64 96}
!100 = !{!101, !7, i64 240}
!101 = !{!"ARegion", !7, i64 0, !7, i64 8, !102, i64 16, !73, i64 176, !73, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !24, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!102 = !{!"View2D", !49, i64 0, !49, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !8, i64 80, !8, i64 88, !24, i64 96, !24, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !32, i64 136, !32, i64 140, !7, i64 144, !7, i64 152}
!103 = !{!30, !7, i64 104}
!104 = !{!23, !11, i64 826}
!105 = !{!58, !32, i64 8484}
!106 = !{!11, !11, i64 0}
!107 = !{!32, !32, i64 0}
!108 = !{!101, !32, i64 176}
!109 = !{!101, !32, i64 184}
!110 = !{!111, !32, i64 28}
!111 = !{!"wmNDOFMotionData", !8, i64 0, !8, i64 12, !24, i64 24, !32, i64 28}
!112 = !{!40, !11, i64 18}
!113 = !{!30, !31, i64 160}
!114 = !{!30, !24, i64 188}
!115 = !{!30, !24, i64 200}
!116 = !{!30, !32, i64 124}
!117 = !{!30, !32, i64 128}
!118 = !{!33, !32, i64 0}
!119 = !{!33, !31, i64 32}
!120 = !{!33, !24, i64 4}
!121 = !{!33, !32, i64 40}
!122 = !{!66, !7, i64 128}
!123 = !{!49, !24, i64 8}
!124 = !{!30, !32, i64 168}
!125 = !{!49, !24, i64 4}
!126 = !{!49, !24, i64 0}
!127 = !{!49, !24, i64 12}
!128 = !{!40, !7, i64 0}
!129 = !{!51, !11, i64 954}
!130 = !{!8, !8, i64 0}
!131 = !{!101, !11, i64 210}
!132 = !{!101, !11, i64 208}
