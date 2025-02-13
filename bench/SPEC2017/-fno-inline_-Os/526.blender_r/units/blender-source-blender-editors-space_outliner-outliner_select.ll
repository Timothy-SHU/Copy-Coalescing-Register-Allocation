; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_select.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [21 x i8] c"Outliner click event\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Activate Item\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_item_activate\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Handle mouse clicks to activate/select items\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Extend selection for activation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Recursive\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Select Objects and their children\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"OUTLINER_OT_select_border\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Use box selection to select tree elements\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_editmode_toggle\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_element_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %8 = load i16, ptr %7, align 4, !tbaa !34
  switch i16 %8, label %23 [
    i16 16975, label %9
    i16 16717, label %13
    i16 20311, label %15
    i16 16716, label %17
    i16 17748, label %19
    i16 16707, label %21
  ]

9:                                                ; preds = %6
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i8 noundef zeroext 0) #6, !range !44
  br label %23

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @tree_element_active_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4) #6, !range !44
  br label %23

15:                                               ; preds = %6
  %16 = tail call fastcc i32 @tree_element_active_world(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %4) #6
  br label %23

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @tree_element_active_lamp(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4) #6
  br label %23

19:                                               ; preds = %6
  %20 = tail call fastcc i32 @tree_element_active_texture(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %4) #6
  br label %23

21:                                               ; preds = %6
  %22 = tail call fastcc i32 @tree_element_active_camera(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4) #6
  br label %23

23:                                               ; preds = %6, %9, %21, %19, %17, %15, %13, %11
  %24 = phi i32 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ 0, %9 ], [ 0, %6 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !45 {
  %7 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %8 = load i16, ptr %7, align 4, !tbaa !34
  %9 = icmp eq i16 %8, 16975
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  br label %26

15:                                               ; preds = %6
  %16 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext 16975) #7
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %22, %20 ], [ null, %15 ]
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %65, label %26

26:                                               ; preds = %23, %10
  %27 = phi ptr [ %14, %10 ], [ %16, %23 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %65, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext 17235) #7
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %1
  %33 = or i1 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %30) #7
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %30, %34 ], [ %1, %29 ]
  %38 = tail call ptr @BKE_scene_base_find(ptr noundef %37, ptr noundef nonnull %27) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %4, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !73
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, 1
  %47 = xor i16 %46, 1
  br label %49

48:                                               ; preds = %40
  tail call void @BKE_scene_base_deselect_all(ptr noundef %37) #7
  br label %49

49:                                               ; preds = %42, %48
  %50 = phi i16 [ 1, %48 ], [ %47, %42 ]
  tail call void @ED_base_object_select(ptr noundef nonnull %38, i16 noundef signext %50) #7
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  %54 = load i16, ptr %53, align 4, !tbaa !74
  %55 = trunc i16 %54 to i8
  %56 = and i8 %55, 1
  tail call fastcc void @do_outliner_object_select_recursive(ptr noundef %37, ptr noundef nonnull %27, i8 noundef zeroext %56) #6
  br label %57

57:                                               ; preds = %52, %49
  %58 = icmp eq ptr %0, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @ED_base_object_activate(ptr noundef nonnull %0, ptr noundef nonnull %38) #7
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 67633152, ptr noundef %37) #7
  br label %60

60:                                               ; preds = %57, %59, %36
  %61 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !77
  %63 = icmp eq ptr %27, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #7
  br label %65

65:                                               ; preds = %60, %64, %26, %23
  %66 = phi i32 [ 0, %23 ], [ 0, %26 ], [ 1, %64 ], [ 1, %60 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_material(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !78 {
  %6 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.TreeElement, ptr %22, i64 0, i32 9
  %24 = load i16, ptr %23, align 4, !tbaa !34
  %25 = icmp eq i16 %24, 16975
  %26 = icmp eq i32 %4, 0
  br i1 %25, label %27, label %41

27:                                               ; preds = %20
  br i1 %26, label %28, label %56

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !82
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = sext i16 %32 to i64
  %38 = getelementptr inbounds i8, ptr %18, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !83
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %65

41:                                               ; preds = %20
  br i1 %26, label %42, label %56

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %44 = load i32, ptr %43, align 4, !tbaa !81
  %45 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %46 = load i16, ptr %45, align 2, !tbaa !82
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = sext i16 %46 to i64
  %52 = getelementptr inbounds i8, ptr %18, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !83
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50, %42, %36, %28
  br label %65

56:                                               ; preds = %41, %27
  %57 = phi i8 [ 1, %27 ], [ 0, %41 ]
  %58 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %59 = load i16, ptr %58, align 2, !tbaa !82
  %60 = sext i16 %59 to i32
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  store i32 %61, ptr %62, align 4, !tbaa !81
  %63 = sext i16 %59 to i64
  %64 = getelementptr inbounds i8, ptr %18, i64 %63
  store i8 %57, ptr %64, align 1, !tbaa !83
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef null) #7
  br label %65

65:                                               ; preds = %8, %55, %56, %50, %36, %5, %12, %16
  %66 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %5 ], [ 1, %36 ], [ 1, %50 ], [ 0, %56 ], [ 0, %55 ], [ 0, %8 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_world(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeElement, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load i16, ptr %10, align 8, !tbaa !85
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp ne i32 %3, 0
  %17 = icmp eq ptr %15, null
  %18 = xor i1 %16, true
  %19 = select i1 %18, i1 true, i1 %17
  %20 = icmp eq ptr %15, %1
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %15) #7
  br label %26

24:                                               ; preds = %8
  %25 = icmp ne i32 %3, 0
  br label %26

26:                                               ; preds = %13, %22, %24
  %27 = phi i1 [ %25, %24 ], [ %16, %22 ], [ %16, %13 ]
  %28 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp ne ptr %29, %1
  %31 = or i1 %27, %30
  br i1 %31, label %34, label %35

32:                                               ; preds = %4
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %32, %26, %34
  %36 = phi i32 [ 0, %34 ], [ 1, %26 ], [ 1, %32 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_lamp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !86 {
  %5 = tail call ptr @outliner_search_back(ptr noundef %1, ptr noundef %2, i16 noundef signext 16975) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %5, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = icmp eq i32 %3, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %7, %15, %4, %11
  %19 = phi i32 [ 0, %11 ], [ 0, %4 ], [ %17, %15 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_texture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !87 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 9
  %18 = load i16, ptr %17, align 4, !tbaa !34
  switch i16 %18, label %83 [
    i16 20311, label %19
    i16 16716, label %37
    i16 16717, label %55
  ]

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !82
  %26 = getelementptr inbounds %struct.World, ptr %21, i64 0, i32 4
  store i16 %25, ptr %26, align 4, !tbaa !88
  br label %85

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = icmp eq ptr %21, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.World, ptr %21, i64 0, i32 4
  %33 = load i16, ptr %32, align 4, !tbaa !88
  %34 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !82
  %36 = icmp eq i16 %33, %35
  br i1 %36, label %86, label %82

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !82
  %44 = getelementptr inbounds %struct.Lamp, ptr %39, i64 0, i32 49
  store i16 %43, ptr %44, align 8, !tbaa !91
  br label %85

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  %48 = icmp eq ptr %39, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Lamp, ptr %39, i64 0, i32 49
  %51 = load i16, ptr %50, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !82
  %54 = icmp eq i16 %51, %53
  br i1 %54, label %86, label %82

55:                                               ; preds = %12
  %56 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = icmp eq i32 %3, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !82
  %62 = trunc i16 %61 to i8
  %63 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 75
  store i8 %62, ptr %63, align 1, !tbaa !94
  %64 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 8
  %65 = load i16, ptr %64, align 2, !tbaa !82
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 32
  store i32 %67, ptr %68, align 4, !tbaa !81
  br label %85

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 7
  %71 = load i16, ptr %70, align 8, !tbaa !98
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 75
  %76 = load i8, ptr %75, align 1, !tbaa !94
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %79 = load i16, ptr %78, align 2, !tbaa !82
  %80 = sext i16 %79 to i32
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %74, %69, %49, %45, %31, %27
  br label %86

83:                                               ; preds = %12
  %84 = icmp eq i32 %3, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %23, %41, %59, %83
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef null) #7
  br label %86

86:                                               ; preds = %4, %82, %83, %85, %74, %49, %31, %8
  %87 = phi i32 [ 0, %8 ], [ 1, %31 ], [ 1, %49 ], [ 1, %74 ], [ 0, %85 ], [ 0, %83 ], [ 0, %82 ], [ 0, %4 ]
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_element_active_camera(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !99 {
  %5 = tail call ptr @outliner_search_back(ptr noundef %1, ptr noundef %2, i16 noundef signext 16975) #7
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = icmp eq ptr %9, %5
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %4, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i16, ptr %4, align 8, !tbaa !85
  switch i16 %8, label %48 [
    i16 4, label %9
    i16 5, label %11
    i16 6, label %13
    i16 10, label %15
    i16 11, label %16
    i16 29, label %32
    i16 13, label %33
    i16 14, label %35
    i16 8, label %37
    i16 20, label %38
    i16 25, label %40
    i16 26, label %42
    i16 28, label %44
    i16 35, label %46
  ]

9:                                                ; preds = %7
  %10 = tail call fastcc i32 @tree_element_active_defgroup(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !44
  br label %49

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @tree_element_active_bone(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i8 noundef zeroext %6) #6, !range !44
  br label %49

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @tree_element_active_ebone(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %5, i8 noundef zeroext %6) #6
  br label %49

15:                                               ; preds = %7
  tail call fastcc void @tree_element_active_modifier(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5) #6
  br label %49

16:                                               ; preds = %7
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i8 noundef zeroext 0) #6, !range !44
  br label %48

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  br label %29

29:                                               ; preds = %20, %26
  %30 = phi ptr [ %28, %26 ], [ null, %20 ]
  %31 = icmp eq ptr %22, %30
  br i1 %31, label %49, label %48

32:                                               ; preds = %7
  tail call fastcc void @tree_element_active_psys(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5) #6
  br label %49

33:                                               ; preds = %7
  %34 = tail call fastcc i32 @tree_element_active_pose(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %5) #6
  br label %49

35:                                               ; preds = %7
  %36 = tail call fastcc i32 @tree_element_active_posechannel(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i8 noundef zeroext %6) #6, !range !44
  br label %49

37:                                               ; preds = %7
  tail call fastcc void @tree_element_active_constraint(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5) #6
  br label %49

38:                                               ; preds = %7
  %39 = tail call fastcc i32 @tree_element_active_renderlayer(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !44
  br label %49

40:                                               ; preds = %7
  %41 = tail call fastcc i32 @tree_element_active_posegroup(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !44
  br label %49

42:                                               ; preds = %7
  %43 = tail call fastcc i32 @tree_element_active_sequence(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %5) #6
  br label %49

44:                                               ; preds = %7
  %45 = tail call fastcc i32 @tree_element_active_sequence_dup(ptr noundef %1, ptr noundef %3, i32 noundef %5) #6
  br label %49

46:                                               ; preds = %7
  %47 = tail call fastcc i32 @tree_element_active_keymap_item(ptr noundef %3, i32 noundef %5) #6
  br label %49

48:                                               ; preds = %18, %29, %7
  br label %49

49:                                               ; preds = %29, %48, %46, %44, %42, %40, %38, %37, %35, %33, %32, %15, %13, %11, %9
  %50 = phi i32 [ 0, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ 0, %37 ], [ %36, %35 ], [ %34, %33 ], [ 0, %32 ], [ 0, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ 1, %29 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_defgroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !101 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = add i16 %11, 1
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  store i16 %12, ptr %13, align 2, !tbaa !102
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %7) #7
  br label %33

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ]
  %23 = icmp eq ptr %7, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  %26 = load i16, ptr %25, align 2, !tbaa !102
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !82
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %31, %27
  br i1 %32, label %34, label %33

33:                                               ; preds = %21, %24, %9
  br label %34

34:                                               ; preds = %24, %33
  %35 = phi i32 [ 0, %33 ], [ 1, %24 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_bone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !103 {
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !105
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = icmp ne ptr %23, null
  %25 = icmp ne i32 %4, 2
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %39, %32 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %33, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !105
  %38 = and i32 %37, -8
  store i32 %38, ptr %36, align 8, !tbaa !105
  %39 = load ptr, ptr %33, align 8, !tbaa !108
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !111

41:                                               ; preds = %32
  %42 = load i32, ptr %13, align 8, !tbaa !105
  br label %43

43:                                               ; preds = %41, %27, %17, %21
  %44 = phi i32 [ %14, %21 ], [ %14, %17 ], [ %14, %27 ], [ %42, %41 ]
  %45 = phi ptr [ %23, %21 ], [ null, %17 ], [ %23, %27 ], [ %23, %41 ]
  %46 = icmp ne i32 %4, 2
  %47 = and i32 %44, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = and i32 %44, -2
  store i32 %51, ptr %13, align 8, !tbaa !105
  br label %55

52:                                               ; preds = %43
  %53 = or i32 %44, 1
  store i32 %53, ptr %13, align 8, !tbaa !105
  %54 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 5
  store ptr %10, ptr %54, align 8, !tbaa !113
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %53, %52 ], [ %51, %50 ]
  %57 = icmp eq i8 %5, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = trunc i32 %56 to i8
  %60 = and i8 %59, 1
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %8, ptr noundef nonnull %10, i8 noundef zeroext %60) #6
  br label %61

61:                                               ; preds = %58, %55
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %45) #7
  br label %80

62:                                               ; preds = %6
  %63 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !93
  %73 = icmp eq ptr %72, %8
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !105
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62, %74, %70, %66
  br label %80

80:                                               ; preds = %61, %12, %79, %74
  %81 = phi i32 [ 1, %74 ], [ 0, %79 ], [ 0, %12 ], [ 0, %61 ]
  ret i32 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_element_active_ebone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !115 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  switch i32 %3, label %31 [
    i32 0, label %39
    i32 1, label %12
    i32 2, label %18
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !116
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  tail call void @ED_armature_deselect_all(ptr noundef nonnull %7, i32 noundef 0) #7
  br label %28

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !116
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = and i32 %20, 1
  %25 = trunc i32 %24 to i16
  %26 = xor i16 %25, 1
  %27 = xor i32 %24, 1
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i16 [ 1, %17 ], [ %26, %23 ]
  %30 = phi i32 [ 1, %17 ], [ %27, %23 ]
  tail call fastcc void @tree_element_active_ebone__sel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull %11, i16 noundef signext %29) #6
  br label %31

31:                                               ; preds = %28, %5, %18, %12
  %32 = phi i32 [ 0, %12 ], [ 0, %18 ], [ 0, %5 ], [ %30, %28 ]
  %33 = icmp eq i8 %4, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %36 = load i32, ptr %35, align 4, !tbaa !116
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  tail call fastcc void @do_outliner_ebone_select_recursive(ptr noundef %9, ptr noundef %11, i8 noundef zeroext %38) #6
  br label %43

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !116
  %42 = and i32 %41, 1
  br label %43

43:                                               ; preds = %39, %31, %34
  %44 = phi i32 [ %32, %34 ], [ %32, %31 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_modifier(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !118 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_psys(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !119 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_pose(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %6) #7
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #7
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef %7) #7
  br label %26

20:                                               ; preds = %14
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef %7) #7
  br label %26

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !121
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %19, %20
  br label %27

27:                                               ; preds = %21, %26
  %28 = phi i32 [ 0, %26 ], [ 1, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_posechannel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !122 {
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !105
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %14
  %22 = icmp eq i32 %4, 2
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = load ptr, ptr %25, align 8, !tbaa !108
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !105
  %34 = and i32 %33, -8
  store i32 %34, ptr %32, align 8, !tbaa !105
  %35 = load ptr, ptr %29, align 8, !tbaa !108
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %28, !llvm.loop !123

37:                                               ; preds = %21
  %38 = and i32 %18, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = and i32 %18, -66
  store i32 %41, ptr %17, align 8, !tbaa !105
  br label %48

42:                                               ; preds = %28
  %43 = load i32, ptr %17, align 8, !tbaa !105
  br label %44

44:                                               ; preds = %42, %23, %37
  %45 = phi i32 [ %43, %42 ], [ %18, %23 ], [ %18, %37 ]
  %46 = or i32 %45, 1
  store i32 %46, ptr %17, align 8, !tbaa !105
  %47 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 5
  store ptr %16, ptr %47, align 8, !tbaa !113
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %46, %44 ], [ %41, %40 ]
  %50 = icmp eq i8 %5, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = trunc i32 %49 to i8
  %53 = and i8 %52, 1
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %10, ptr noundef nonnull %16, i8 noundef zeroext %53) #6
  br label %54

54:                                               ; preds = %51, %48
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %8) #7
  br label %74

55:                                               ; preds = %6
  %56 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Base, ptr %57, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = icmp eq ptr %8, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !107
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !109
  %70 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !105
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55, %59, %63, %67, %14, %54
  br label %75

75:                                               ; preds = %67, %74
  %76 = phi i32 [ 0, %74 ], [ 1, %67 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_constraint(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_element_active_renderlayer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 9
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i16 %6, 17235
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !126
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 61
  store i16 %14, ptr %15, align 8, !tbaa !127
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %10) #7
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 61
  %18 = load i16, ptr %17, align 8, !tbaa !127
  %19 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !126
  %21 = icmp eq i16 %18, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %4, %12, %16
  %24 = phi i32 [ 0, %12 ], [ %22, %16 ], [ 0, %4 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_posegroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !128 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !82
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 10
  store i32 %17, ptr %18, align 8, !tbaa !129
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %7) #7
  br label %41

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %25, %23 ], [ null, %19 ]
  %28 = icmp eq ptr %7, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %37 = load i16, ptr %36, align 2, !tbaa !82
  %38 = sext i16 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %26, %29, %33, %9, %13
  br label %42

42:                                               ; preds = %33, %41
  %43 = phi i32 [ 0, %41 ], [ 1, %33 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_sequence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !131 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #7
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !132
  %11 = tail call i32 @BLI_findindex(ptr noundef %10, ptr noundef %6) #7
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %3, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  tail call void @BKE_sequencer_active_set(ptr noundef %1, ptr noundef null) #7
  tail call void @ED_sequencer_deselect_all(ptr noundef %1) #7
  %16 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !134
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, -2
  store i32 %21, ptr %16, align 8, !tbaa !134
  br label %29

22:                                               ; preds = %13
  tail call void @ED_sequencer_deselect_all(ptr noundef %1) #7
  %23 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !134
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %24, %22 ], [ %17, %15 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %28 = or i32 %26, 1
  store i32 %28, ptr %27, align 8, !tbaa !134
  tail call void @BKE_sequencer_active_set(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %29

29:                                               ; preds = %20, %25, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %1) #7
  br label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = icmp eq ptr %32, %6
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !134
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30, %34, %29
  br label %40

40:                                               ; preds = %34, %39
  %41 = phi i32 [ 0, %39 ], [ 1, %34 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_element_active_sequence_dup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !137 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #7
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !134
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_element_active_keymap_item(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !139
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = and i16 %7, 1
  %10 = xor i16 %9, 1
  %11 = zext nneg i16 %10 to i32
  br label %14

12:                                               ; preds = %2
  %13 = xor i16 %7, 1
  store i16 %13, ptr %6, align 8, !tbaa !139
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ 0, %12 ], [ %11, %8 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %11 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %13 = sitofp i32 %1 to float
  %14 = sitofp i32 %2 to float
  %15 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %13, float noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %15) #7
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 12
  %17 = load i16, ptr %16, align 2, !tbaa !141
  %18 = add i16 %17, -11
  %19 = icmp ult i16 %18, 2
  br i1 %19, label %34, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 11
  %22 = load i16, ptr %21, align 8, !tbaa !144
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load float, ptr %6, align 4, !tbaa !145
  %27 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !146
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !148
  %30 = sitofp i16 %29 to float
  %31 = fneg float %30
  %32 = call float @llvm.fmuladd.f32(float %31, float 3.000000e+00, float %28)
  %33 = fcmp ogt float %26, %32
  br i1 %33, label %57, label %34

34:                                               ; preds = %5, %25, %20
  %35 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 7
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %38, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef nonnull %6) #6
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %43, !llvm.loop !152

43:                                               ; preds = %40
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str) #7
  br label %56

44:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 -1, ptr %7, align 2, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !148
  %46 = sitofp i16 %45 to float
  %47 = load float, ptr %6, align 4, !tbaa !145
  %48 = load float, ptr %15, align 4, !tbaa !145
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %12, float noundef 1.000000e+03, float noundef %46, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef %47, float noundef %48, ptr noundef null, ptr noundef nonnull %8) #7
  %49 = call fastcc i32 @outliner_select(ptr noundef %11, ptr noundef nonnull %35, ptr noundef nonnull %8, ptr noundef nonnull %7) #6, !range !44
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 13
  %53 = load i16, ptr %52, align 4, !tbaa !154
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 4, !tbaa !154
  br label %55

55:                                               ; preds = %51, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  br label %56

56:                                               ; preds = %55, %43
  call void @ED_region_tag_redraw(ptr noundef %10) #7
  br label %57

57:                                               ; preds = %25, %56
  %58 = phi i32 [ 4, %56 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !155 {
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !145
  %10 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !156
  %12 = sitofp i32 %11 to float
  %13 = fcmp ogt float %9, %12
  br i1 %13, label %14, label %142

14:                                               ; preds = %7
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !148
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = sitofp i32 %17 to float
  %19 = fcmp olt float %9, %18
  br i1 %19, label %20, label %142

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !98
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  %27 = load float, ptr %6, align 4, !tbaa !145
  %28 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !157
  %30 = sitofp i32 %29 to float
  %31 = fcmp ogt float %27, %30
  %32 = select i1 %26, i1 %31, i1 false
  br i1 %32, label %33, label %54

33:                                               ; preds = %20
  %34 = add nsw i32 %29, %16
  %35 = sitofp i32 %34 to float
  %36 = fcmp olt float %27, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = icmp eq i8 %4, 0
  %39 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 2
  %40 = load i16, ptr %39, align 4, !tbaa !158
  br i1 %38, label %47, label %41

41:                                               ; preds = %37
  %42 = and i16 %40, -2
  store i16 %42, ptr %39, align 4, !tbaa !158
  %43 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  %44 = tail call i32 @outliner_has_one_flag(ptr noundef %2, ptr noundef nonnull %43, i16 noundef signext 1, i32 noundef 1) #7
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i16
  tail call void @outliner_set_flag(ptr noundef %2, ptr noundef nonnull %43, i16 noundef signext 1, i16 noundef signext %46) #7
  br label %151

47:                                               ; preds = %37
  %48 = and i16 %40, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = and i16 %40, -2
  store i16 %51, ptr %39, align 4, !tbaa !158
  br label %151

52:                                               ; preds = %47
  %53 = or disjoint i16 %40, 1
  store i16 %53, ptr %39, align 4, !tbaa !158
  br label %151

54:                                               ; preds = %20, %33
  %55 = add nsw i32 %29, %16
  %56 = sitofp i32 %55 to float
  %57 = fcmp ogt float %27, %56
  br i1 %57, label %58, label %142

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 10
  %60 = load i16, ptr %59, align 2, !tbaa !159
  %61 = sitofp i16 %60 to float
  %62 = fcmp olt float %27, %61
  br i1 %62, label %63, label %142

63:                                               ; preds = %58
  %64 = load i16, ptr %22, align 8, !tbaa !85
  %65 = add i16 %64, -26
  %66 = icmp ult i16 %65, 3
  br i1 %66, label %138, label %67

67:                                               ; preds = %63
  %68 = icmp ne i8 %4, 0
  %69 = icmp eq i16 %64, 0
  %70 = and i1 %68, %69
  %71 = select i1 %70, i32 2, i32 1
  %72 = icmp ne i8 %5, 0
  %73 = and i1 %72, %69
  %74 = zext i1 %73 to i8
  %75 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %71, i8 noundef zeroext %74) #6, !range !44
  %76 = load i16, ptr %22, align 8, !tbaa !85
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %80 = load i16, ptr %79, align 4, !tbaa !34
  switch i16 %80, label %136 [
    i16 17235, label %81
    i16 21063, label %88
    i16 17741, label %134
    i16 21827, label %134
    i16 16973, label %134
    i16 21580, label %134
    i16 21057, label %134
  ]

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !47
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %151, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %87 = load ptr, ptr %82, align 8, !tbaa !47
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %86, ptr noundef %87) #7
  br label %151

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = icmp eq i8 %4, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.Group, ptr %90, i64 0, i32 1
  br label %94

94:                                               ; preds = %98, %92
  %95 = phi ptr [ %93, %92 ], [ %96, %98 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !108
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.GroupObject, ptr %96, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 53
  %102 = load i16, ptr %101, align 4, !tbaa !74
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %94, label %105, !llvm.loop !162

105:                                              ; preds = %98, %94
  %106 = phi i16 [ 1, %94 ], [ 0, %98 ]
  %107 = load ptr, ptr %93, align 8, !tbaa !108
  %108 = icmp eq ptr %107, null
  br i1 %108, label %133, label %109

109:                                              ; preds = %105, %109
  %110 = phi ptr [ %114, %109 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.GroupObject, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !160
  %113 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %112) #7
  tail call void @ED_base_object_select(ptr noundef %113, i16 noundef signext %106) #7
  %114 = load ptr, ptr %110, align 8, !tbaa !108
  %115 = icmp eq ptr %114, null
  br i1 %115, label %133, label %109, !llvm.loop !163

116:                                              ; preds = %88
  tail call void @BKE_scene_base_deselect_all(ptr noundef %1) #7
  %117 = getelementptr inbounds %struct.Group, ptr %90, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !108
  %119 = icmp eq ptr %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %116, %130
  %121 = phi ptr [ %131, %130 ], [ %118, %116 ]
  %122 = getelementptr inbounds %struct.GroupObject, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !160
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 53
  %125 = load i16, ptr %124, align 4, !tbaa !74
  %126 = and i16 %125, 1
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %123) #7
  tail call void @ED_base_object_select(ptr noundef %129, i16 noundef signext 1) #7
  br label %130

130:                                              ; preds = %120, %128
  %131 = load ptr, ptr %121, align 8, !tbaa !108
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %120, !llvm.loop !164

133:                                              ; preds = %109, %130, %105, %116
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #7
  br label %151

134:                                              ; preds = %78, %78, %78, %78, %78
  %135 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.13, i16 noundef signext 1, ptr noundef null) #7
  br label %151

136:                                              ; preds = %78
  %137 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 1, i8 noundef zeroext 0) #6, !range !44
  br label %151

138:                                              ; preds = %63, %67
  %139 = icmp eq i8 %4, 0
  %140 = select i1 %139, i32 1, i32 2
  %141 = tail call i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %22, i32 noundef %140, i8 noundef zeroext %5) #6, !range !44
  br label %151

142:                                              ; preds = %54, %58, %14, %7
  %143 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  br label %144

144:                                              ; preds = %148, %142
  %145 = phi ptr [ %143, %142 ], [ %146, %148 ]
  %146 = load ptr, ptr %145, align 8, !tbaa !108
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %146, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) #6
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %144, label %151, !llvm.loop !165

151:                                              ; preds = %144, %148, %138, %133, %136, %134, %81, %85, %41, %52, %50
  %152 = phi i8 [ 1, %50 ], [ 1, %52 ], [ 1, %41 ], [ 1, %85 ], [ 1, %81 ], [ 1, %134 ], [ 1, %136 ], [ 1, %133 ], [ 1, %138 ], [ 0, %144 ], [ 1, %148 ]
  ret i8 %152
}

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @outliner_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #5 !PGOFuncName !166 {
  %5 = load ptr, ptr %1, align 8, !tbaa !167
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %2, align 4, !tbaa !168
  br label %10

10:                                               ; preds = %7, %62
  %11 = phi i32 [ %9, %7 ], [ %66, %62 ]
  %12 = phi i8 [ 0, %7 ], [ %64, %62 ]
  %13 = phi ptr [ %5, %7 ], [ %65, %62 ]
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 7
  %21 = load i16, ptr %20, align 8, !tbaa !98
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = load i16, ptr %3, align 2, !tbaa !153
  switch i16 %25, label %33 [
    i16 -1, label %26
    i16 0, label %37
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %28 = load i16, ptr %27, align 4, !tbaa !158
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i16 0, ptr %3, align 2, !tbaa !153
  br label %37

32:                                               ; preds = %26
  store i16 1, ptr %3, align 2, !tbaa !153
  br label %33

33:                                               ; preds = %24, %32
  %34 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %35 = load i16, ptr %34, align 4, !tbaa !158
  %36 = or i16 %35, 2
  store i16 %36, ptr %34, align 4, !tbaa !158
  br label %62

37:                                               ; preds = %24, %31
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %39 = load i16, ptr %38, align 4, !tbaa !158
  %40 = and i16 %39, -3
  store i16 %40, ptr %38, align 4, !tbaa !158
  br label %62

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !158
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %8, align 2, !tbaa !169
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  %51 = and i32 %44, 8
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %52, %50
  br i1 %53, label %62, label %54

54:                                               ; preds = %47, %41
  %55 = add nsw i32 %11, -1
  store i32 %55, ptr %2, align 4, !tbaa !168
  %56 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  %57 = tail call fastcc i32 @outliner_select(ptr noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %2, ptr noundef %3) #6, !range !44
  %58 = trunc i32 %57 to i8
  %59 = or i8 %12, %58
  %60 = load i32, ptr %2, align 4, !tbaa !168
  %61 = add nsw i32 %60, 1
  br label %62

62:                                               ; preds = %33, %37, %19, %54, %47
  %63 = phi i32 [ 0, %19 ], [ %61, %54 ], [ %11, %47 ], [ 0, %37 ], [ 0, %33 ]
  %64 = phi i8 [ %12, %19 ], [ %59, %54 ], [ %12, %47 ], [ 1, %37 ], [ 1, %33 ]
  %65 = load ptr, ptr %13, align 8, !tbaa !170
  %66 = add nsw i32 %63, -1
  store i32 %66, ptr %2, align 4, !tbaa !168
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %10, !llvm.loop !171

68:                                               ; preds = %62, %10
  %69 = phi i8 [ %12, %10 ], [ %64, %62 ]
  %70 = zext nneg i8 %69 to i32
  br label %71

71:                                               ; preds = %68, %4
  %72 = phi i32 [ 0, %4 ], [ %70, %68 ]
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_item_activate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !172
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !175
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !176
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_item_activate, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !178
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !179
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_item_activate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !180 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.4) #7
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !181
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.7) #7
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !168
  %15 = tail call i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %12, i32 noundef %14, i8 noundef zeroext %7, i8 noundef zeroext %10) #6, !range !183
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @ED_operator_outliner_active(ptr noundef) #3

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !172
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !175
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !176
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_border_select_exec, ptr %5, align 8, !tbaa !184
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !185
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %8, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !187
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_border_select_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !188 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !181
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.14) #7
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #7
  %10 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %2 ]
  call fastcc void @outliner_item_border_select(ptr noundef nonnull %3, ptr noundef nonnull %15, i32 noundef %9) #6
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !189

18:                                               ; preds = %14, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #7
  call void @ED_region_tag_redraw(ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_outliner_object_select_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !190 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = icmp ne i8 %2, 0
  %9 = zext i1 %8 to i16
  br label %10

10:                                               ; preds = %7, %22
  %11 = phi ptr [ %5, %7 ], [ %23, %22 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 102
  %15 = load i8, ptr %14, align 8, !tbaa !191
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = tail call zeroext i8 @BKE_object_is_child_recursive(ptr noundef %1, ptr noundef nonnull %13) #7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @ED_base_object_select(ptr noundef nonnull %11, i16 noundef signext %9) #7
  br label %22

22:                                               ; preds = %21, %18, %10
  %23 = load ptr, ptr %11, align 8, !tbaa !108
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !192

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_outliner_bone_select_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #5 !PGOFuncName !193 {
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi ptr [ %5, %7 ], [ %30, %29 ]
  br i1 %8, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 25
  %14 = load i32, ptr %13, align 8, !tbaa !194
  %15 = load i32, ptr %9, align 8, !tbaa !195
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !105
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = or i32 %20, 1
  store i32 %24, ptr %19, align 8, !tbaa !105
  br label %29

25:                                               ; preds = %12, %18, %10
  %26 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !105
  %28 = and i32 %27, -8
  store i32 %28, ptr %26, align 8, !tbaa !105
  br label %29

29:                                               ; preds = %25, %23
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext %2) #6
  %30 = load ptr, ptr %11, align 8, !tbaa !108
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !196

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_deselect_all(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_ebone__sel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !197 {
  %6 = icmp eq i16 %4, 0
  %7 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !116
  br i1 %6, label %22, label %9

9:                                                ; preds = %5
  %10 = or i32 %8, 7
  store i32 %10, ptr %7, align 4, !tbaa !116
  %11 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 6
  store ptr %3, ptr %11, align 8, !tbaa !198
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  %14 = icmp eq ptr %13, null
  %15 = and i32 %8, 16
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !116
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 4, !tbaa !116
  br label %34

22:                                               ; preds = %5
  %23 = and i32 %8, -8
  store i32 %23, ptr %7, align 4, !tbaa !116
  %24 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !199
  %26 = icmp eq ptr %25, null
  %27 = and i32 %8, 16
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !116
  %33 = and i32 %32, -5
  store i32 %33, ptr %31, align 4, !tbaa !116
  br label %34

34:                                               ; preds = %22, %30, %9, %18
  %35 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %36) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_outliner_ebone_select_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !200 {
  %4 = load ptr, ptr %1, align 8, !tbaa !201
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  %8 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 15
  br label %9

9:                                                ; preds = %6, %31
  %10 = phi ptr [ %4, %6 ], [ %32, %31 ]
  %11 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef nonnull %1, ptr noundef nonnull %10) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  br i1 %7, label %27, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr %8, align 8, !tbaa !195
  %16 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !202
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !116
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = or i32 %22, 7
  store i32 %26, ptr %21, align 4, !tbaa !116
  br label %31

27:                                               ; preds = %14, %20, %13
  %28 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !116
  %30 = and i32 %29, -8
  store i32 %30, ptr %28, align 4, !tbaa !116
  br label %31

31:                                               ; preds = %9, %27, %25
  %32 = load ptr, ptr %10, align 8, !tbaa !201
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %9, !llvm.loop !203

34:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_armature_exit_posemode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_armature_enter_posemode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @outliner_set_flag(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @outliner_has_one_flag(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_item_border_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !204 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !156
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !205
  %11 = fcmp ult float %10, %8
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !148
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %7, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !206
  %19 = fcmp ugt float %18, %16
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %2, 3
  %22 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !158
  %24 = and i16 %23, -3
  %25 = select i1 %21, i16 2, i16 0
  %26 = or disjoint i16 %24, %25
  store i16 %26, ptr %22, align 4, !tbaa !158
  br label %27

27:                                               ; preds = %20, %12, %3
  %28 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !158
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %32 ]
  tail call fastcc void @outliner_item_border_select(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %2) #6
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !207

40:                                               ; preds = %36, %32, %27
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

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
!34 = !{!35, !41, i64 60}
!35 = !{!"TreeElement", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 40, !40, i64 44, !36, i64 48, !41, i64 56, !41, i64 58, !41, i64 60, !41, i64 62, !36, i64 64, !36, i64 72, !42, i64 80}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"PointerRNA", !43, i64 0, !36, i64 8, !36, i64 16}
!43 = !{!"", !36, i64 0}
!44 = !{i32 0, i32 2}
!45 = !{!"outliner_select.c:tree_element_set_active_object"}
!46 = !{!35, !36, i64 48}
!47 = !{!48, !36, i64 8}
!48 = !{!"TreeStoreElem", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8}
!49 = !{!50, !36, i64 168}
!50 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !62, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !39, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !36, i64 4608, !68, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !55, i64 4664, !56, i64 4824, !70, i64 4888, !36, i64 4952}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !54, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !59, i64 544, !59, i64 560, !60, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !40, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !40, i64 2576, !54, i64 2580, !37, i64 2584, !61, i64 2616, !40, i64 3976, !40, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!54 = !{!"float", !37, i64 0}
!55 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!58 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !54, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!59 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!60 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!61 = !{!"BakeData", !53, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!62 = !{!"AudioData", !40, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!63 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!64 = !{!"GameData", !63, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !65, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !66, i64 72, !54, i64 128, !54, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!65 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!66 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !40, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!67 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!68 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!69 = !{!"long", !37, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!71 = !{!72, !36, i64 32}
!72 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!73 = !{!72, !40, i64 24}
!74 = !{!75, !41, i64 948}
!75 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !76, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !69, i64 1304, !69, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!76 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!77 = !{!50, !36, i64 176}
!78 = !{!"outliner_select.c:tree_element_active_material"}
!79 = !{!75, !36, i64 448}
!80 = !{!35, !36, i64 16}
!81 = !{!75, !40, i64 460}
!82 = !{!35, !41, i64 58}
!83 = !{!37, !37, i64 0}
!84 = !{!"outliner_select.c:tree_element_active_world"}
!85 = !{!48, !41, i64 0}
!86 = !{!"outliner_select.c:tree_element_active_lamp"}
!87 = !{!"outliner_select.c:tree_element_active_texture"}
!88 = !{!89, !41, i64 132}
!89 = !{!"World", !51, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !54, i64 240, !54, i64 244, !54, i64 248, !54, i64 252, !54, i64 256, !54, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!90 = !{!50, !36, i64 136}
!91 = !{!92, !41, i64 280}
!92 = !{!"Lamp", !51, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !40, i64 132, !41, i64 136, !41, i64 138, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !36, i64 200, !41, i64 208, !41, i64 210, !54, i64 212, !54, i64 216, !54, i64 220, !54, i64 224, !54, i64 228, !54, i64 232, !54, i64 236, !41, i64 240, !41, i64 242, !41, i64 244, !41, i64 246, !37, i64 248, !37, i64 249, !41, i64 250, !41, i64 252, !41, i64 254, !41, i64 256, !41, i64 258, !54, i64 260, !54, i64 264, !54, i64 268, !54, i64 272, !41, i64 276, !41, i64 278, !41, i64 280, !41, i64 282, !41, i64 284, !41, i64 286, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !54, i64 324, !54, i64 328, !54, i64 332, !54, i64 336, !41, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !41, i64 496, !41, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!93 = !{!75, !36, i64 296}
!94 = !{!95, !37, i64 541}
!95 = !{!"Material", !51, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !54, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180, !54, i64 184, !54, i64 188, !54, i64 192, !54, i64 196, !54, i64 200, !54, i64 204, !54, i64 208, !54, i64 212, !54, i64 216, !54, i64 220, !96, i64 224, !97, i64 312, !54, i64 328, !54, i64 332, !54, i64 336, !54, i64 340, !54, i64 344, !54, i64 348, !54, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !54, i64 364, !54, i64 368, !41, i64 372, !41, i64 374, !54, i64 376, !54, i64 380, !54, i64 384, !54, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !54, i64 420, !54, i64 424, !54, i64 428, !54, i64 432, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !54, i64 456, !37, i64 460, !54, i64 524, !54, i64 528, !54, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !54, i64 556, !54, i64 560, !37, i64 564, !54, i64 580, !54, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !54, i64 616, !54, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !54, i64 800, !54, i64 804, !54, i64 808, !54, i64 812, !54, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !54, i64 848, !54, i64 852, !54, i64 856, !54, i64 860, !54, i64 864, !54, i64 868, !54, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!96 = !{!"VolumeSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !54, i64 52, !54, i64 56, !54, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !54, i64 72, !54, i64 76, !54, i64 80, !54, i64 84}
!97 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!98 = !{!35, !41, i64 56}
!99 = !{!"outliner_select.c:tree_element_active_camera"}
!100 = !{!50, !36, i64 128}
!101 = !{!"outliner_select.c:tree_element_active_defgroup"}
!102 = !{!75, !41, i64 1126}
!103 = !{!"outliner_select.c:tree_element_active_bone"}
!104 = !{!35, !36, i64 72}
!105 = !{!106, !40, i64 176}
!106 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !54, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !54, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !37, i64 308, !40, i64 320, !41, i64 324, !37, i64 326}
!107 = !{!75, !36, i64 288}
!108 = !{!36, !36, i64 0}
!109 = !{!110, !36, i64 120}
!110 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !54, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !54, i64 524, !54, i64 528, !54, i64 532, !36, i64 536}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!114, !36, i64 168}
!114 = !{!"bArmature", !51, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!115 = !{!"outliner_select.c:tree_element_active_ebone"}
!116 = !{!117, !40, i64 132}
!117 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !54, i64 104, !37, i64 108, !37, i64 120, !40, i64 132, !40, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !54, i64 156, !54, i64 160, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !41, i64 180}
!118 = !{!"outliner_select.c:tree_element_active_modifier"}
!119 = !{!"outliner_select.c:tree_element_active_psys"}
!120 = !{!"outliner_select.c:tree_element_active_pose"}
!121 = !{!75, !40, i64 432}
!122 = !{!"outliner_select.c:tree_element_active_posechannel"}
!123 = distinct !{!123, !112}
!124 = !{!"outliner_select.c:tree_element_active_constraint"}
!125 = !{!"outliner_select.c:tree_element_active_renderlayer"}
!126 = !{!48, !41, i64 2}
!127 = !{!50, !41, i64 888}
!128 = !{!"outliner_select.c:tree_element_active_posegroup"}
!129 = !{!130, !40, i64 80}
!130 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !40, i64 28, !40, i64 32, !54, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !76, i64 104, !37, i64 152}
!131 = !{!"outliner_select.c:tree_element_active_sequence"}
!132 = !{!133, !36, i64 0}
!133 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !40, i64 2096, !40, i64 2100, !40, i64 2104, !40, i64 2108, !59, i64 2112}
!134 = !{!135, !40, i64 96}
!135 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !54, i64 144, !54, i64 148, !54, i64 152, !41, i64 156, !41, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !54, i64 224, !54, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !54, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!136 = !{!133, !36, i64 40}
!137 = !{!"outliner_select.c:tree_element_active_sequence_dup"}
!138 = !{!"outliner_select.c:tree_element_active_keymap_item"}
!139 = !{!140, !41, i64 168}
!140 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!141 = !{!142, !41, i64 290}
!142 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !54, i64 36, !37, i64 40, !143, i64 56, !39, i64 216, !36, i64 232, !37, i64 240, !48, i64 272, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !36, i64 296}
!143 = !{!"View2D", !59, i64 0, !59, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !37, i64 80, !37, i64 88, !54, i64 96, !54, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!144 = !{!142, !41, i64 288}
!145 = !{!54, !54, i64 0}
!146 = !{!147, !54, i64 36}
!147 = !{!"ARegion", !36, i64 0, !36, i64 8, !143, i64 16, !60, i64 176, !60, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !54, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!148 = !{!149, !41, i64 8948}
!149 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !54, i64 8956, !54, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !54, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !150, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !54, i64 10904, !54, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !151, i64 10928}
!150 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!151 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !41, i64 24, !37, i64 26}
!152 = distinct !{!152, !112}
!153 = !{!41, !41, i64 0}
!154 = !{!142, !41, i64 292}
!155 = !{!"outliner_select.c:do_outliner_item_activate"}
!156 = !{!35, !40, i64 44}
!157 = !{!35, !40, i64 40}
!158 = !{!48, !41, i64 4}
!159 = !{!35, !41, i64 62}
!160 = !{!161, !36, i64 16}
!161 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!162 = distinct !{!162, !112}
!163 = distinct !{!163, !112}
!164 = distinct !{!164, !112}
!165 = distinct !{!165, !112}
!166 = !{!"outliner_select.c:outliner_select"}
!167 = !{!39, !36, i64 0}
!168 = !{!40, !40, i64 0}
!169 = !{!142, !41, i64 294}
!170 = !{!35, !36, i64 0}
!171 = distinct !{!171, !112}
!172 = !{!173, !36, i64 0}
!173 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !174, i64 152, !41, i64 184}
!174 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!175 = !{!173, !36, i64 8}
!176 = !{!173, !36, i64 24}
!177 = !{!173, !36, i64 48}
!178 = !{!173, !36, i64 72}
!179 = !{!173, !36, i64 88}
!180 = !{!"outliner_select.c:outliner_item_activate"}
!181 = !{!182, !36, i64 112}
!182 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!183 = !{i32 2, i32 5}
!184 = !{!173, !36, i64 32}
!185 = !{!173, !36, i64 64}
!186 = !{!173, !36, i64 56}
!187 = !{!173, !41, i64 184}
!188 = !{!"outliner_select.c:outliner_border_select_exec"}
!189 = distinct !{!189, !112}
!190 = !{!"outliner_select.c:do_outliner_object_select_recursive"}
!191 = !{!75, !37, i64 1160}
!192 = distinct !{!192, !112}
!193 = !{!"outliner_select.c:do_outliner_bone_select_recursive"}
!194 = !{!106, !40, i64 320}
!195 = !{!114, !40, i64 216}
!196 = distinct !{!196, !112}
!197 = !{!"outliner_select.c:tree_element_active_ebone__sel"}
!198 = !{!114, !36, i64 176}
!199 = !{!117, !36, i64 24}
!200 = !{!"outliner_select.c:do_outliner_ebone_select_recursive"}
!201 = !{!117, !36, i64 0}
!202 = !{!117, !40, i64 136}
!203 = distinct !{!203, !112}
!204 = !{!"outliner_select.c:outliner_item_border_select"}
!205 = !{!59, !54, i64 12}
!206 = !{!59, !54, i64 8}
!207 = distinct !{!207, !112}
