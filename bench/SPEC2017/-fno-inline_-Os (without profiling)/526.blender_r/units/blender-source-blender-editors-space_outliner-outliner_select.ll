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
  %8 = load i16, ptr %7, align 4, !tbaa !5
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
  %12 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i8 noundef zeroext 0) #6, !range !15
  br label %23

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @tree_element_active_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4) #6, !range !15
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
define internal fastcc noundef i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %8 = load i16, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i16 %8, 16975
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  br label %26

15:                                               ; preds = %6
  %16 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext 16975) #7
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !41
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
  %44 = load i32, ptr %43, align 8, !tbaa !43
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
  %54 = load i16, ptr %53, align 4, !tbaa !44
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
  %62 = load ptr, ptr %61, align 8, !tbaa !47
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
define internal fastcc noundef i32 @tree_element_active_material(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.TreeElement, ptr %22, i64 0, i32 9
  %24 = load i16, ptr %23, align 4, !tbaa !5
  %25 = icmp eq i16 %24, 16975
  %26 = icmp eq i32 %4, 0
  br i1 %25, label %27, label %41

27:                                               ; preds = %20
  br i1 %26, label %28, label %56

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !51
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = sext i16 %32 to i64
  %38 = getelementptr inbounds i8, ptr %18, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !52
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %65

41:                                               ; preds = %20
  br i1 %26, label %42, label %56

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %46 = load i16, ptr %45, align 2, !tbaa !51
  %47 = sext i16 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = sext i16 %46 to i64
  %52 = getelementptr inbounds i8, ptr %18, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !52
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50, %42, %36, %28
  br label %65

56:                                               ; preds = %41, %27
  %57 = phi i8 [ 1, %27 ], [ 0, %41 ]
  %58 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %59 = load i16, ptr %58, align 2, !tbaa !51
  %60 = sext i16 %59 to i32
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  store i32 %61, ptr %62, align 4, !tbaa !50
  %63 = sext i16 %59 to i64
  %64 = getelementptr inbounds i8, ptr %18, i64 %63
  store i8 %57, ptr %64, align 1, !tbaa !52
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef null) #7
  br label %65

65:                                               ; preds = %8, %55, %56, %50, %36, %5, %12, %16
  %66 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %5 ], [ 1, %36 ], [ 1, %50 ], [ 0, %56 ], [ 0, %55 ], [ 0, %8 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_world(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeElement, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = load i16, ptr %10, align 8, !tbaa !53
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !17
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
  %29 = load ptr, ptr %28, align 8, !tbaa !17
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
define internal fastcc noundef i32 @tree_element_active_lamp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @outliner_search_back(ptr noundef %1, ptr noundef %2, i16 noundef signext 16975) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !41
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
define internal fastcc noundef i32 @tree_element_active_texture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 9
  %18 = load i16, ptr %17, align 4, !tbaa !5
  switch i16 %18, label %83 [
    i16 20311, label %19
    i16 16716, label %37
    i16 16717, label %55
  ]

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !51
  %26 = getelementptr inbounds %struct.World, ptr %21, i64 0, i32 4
  store i16 %25, ptr %26, align 4, !tbaa !54
  br label %85

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = icmp eq ptr %21, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.World, ptr %21, i64 0, i32 4
  %33 = load i16, ptr %32, align 4, !tbaa !54
  %34 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !51
  %36 = icmp eq i16 %33, %35
  br i1 %36, label %86, label %82

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !51
  %44 = getelementptr inbounds %struct.Lamp, ptr %39, i64 0, i32 49
  store i16 %43, ptr %44, align 8, !tbaa !57
  br label %85

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = icmp eq ptr %39, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Lamp, ptr %39, i64 0, i32 49
  %51 = load i16, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !51
  %54 = icmp eq i16 %51, %53
  br i1 %54, label %86, label %82

55:                                               ; preds = %12
  %56 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq i32 %3, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %61 = load i16, ptr %60, align 2, !tbaa !51
  %62 = trunc i16 %61 to i8
  %63 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 75
  store i8 %62, ptr %63, align 1, !tbaa !60
  %64 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 8
  %65 = load i16, ptr %64, align 2, !tbaa !51
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 32
  store i32 %67, ptr %68, align 4, !tbaa !50
  br label %85

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 7
  %71 = load i16, ptr %70, align 8, !tbaa !64
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 75
  %76 = load i8, ptr %75, align 1, !tbaa !60
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %79 = load i16, ptr %78, align 2, !tbaa !51
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
define internal fastcc i32 @tree_element_active_camera(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @outliner_search_back(ptr noundef %1, ptr noundef %2, i16 noundef signext 16975) #7
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, %5
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %4, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i16, ptr %4, align 8, !tbaa !53
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
  %10 = tail call fastcc i32 @tree_element_active_defgroup(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !15
  br label %49

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @tree_element_active_bone(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i8 noundef zeroext %6) #6, !range !15
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
  %19 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i8 noundef zeroext 0) #6, !range !15
  br label %48

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !41
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
  %36 = tail call fastcc i32 @tree_element_active_posechannel(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i8 noundef zeroext %6) #6, !range !15
  br label %49

37:                                               ; preds = %7
  tail call fastcc void @tree_element_active_constraint(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5) #6
  br label %49

38:                                               ; preds = %7
  %39 = tail call fastcc i32 @tree_element_active_renderlayer(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !15
  br label %49

40:                                               ; preds = %7
  %41 = tail call fastcc i32 @tree_element_active_posegroup(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #6, !range !15
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
define internal fastcc noundef i32 @tree_element_active_defgroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !51
  %12 = add i16 %11, 1
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  store i16 %12, ptr %13, align 2, !tbaa !66
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %7) #7
  br label %33

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ]
  %23 = icmp eq ptr %7, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  %26 = load i16, ptr %25, align 2, !tbaa !66
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !51
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
define internal fastcc noundef i32 @tree_element_active_bone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !68
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp ne ptr %23, null
  %25 = icmp ne i32 %4, 2
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %39, %32 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %33, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !68
  %38 = and i32 %37, -8
  store i32 %38, ptr %36, align 8, !tbaa !68
  %39 = load ptr, ptr %33, align 8, !tbaa !71
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !74

41:                                               ; preds = %32
  %42 = load i32, ptr %13, align 8, !tbaa !68
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
  store i32 %51, ptr %13, align 8, !tbaa !68
  br label %55

52:                                               ; preds = %43
  %53 = or i32 %44, 1
  store i32 %53, ptr %13, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 5
  store ptr %10, ptr %54, align 8, !tbaa !76
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
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !41
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = icmp eq ptr %72, %8
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Bone, ptr %10, i64 0, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !68
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
define internal fastcc i32 @tree_element_active_ebone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  switch i32 %3, label %31 [
    i32 0, label %39
    i32 1, label %12
    i32 2, label %18
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !78
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  tail call void @ED_armature_deselect_all(ptr noundef nonnull %7, i32 noundef 0) #7
  br label %28

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !78
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
  %36 = load i32, ptr %35, align 4, !tbaa !78
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  tail call fastcc void @do_outliner_ebone_select_recursive(ptr noundef %9, ptr noundef %11, i8 noundef zeroext %38) #6
  br label %43

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.EditBone, ptr %11, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !78
  %42 = and i32 %41, 1
  br label %43

43:                                               ; preds = %39, %31, %34
  %44 = phi i32 [ %32, %34 ], [ %32, %31 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_modifier(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_psys(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_pose(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %6) #7
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #7
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !80
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
  %23 = load i32, ptr %22, align 8, !tbaa !80
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
define internal fastcc noundef i32 @tree_element_active_posechannel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %14
  %22 = icmp eq i32 %4, 2
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %35, %28 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %29, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !68
  %34 = and i32 %33, -8
  store i32 %34, ptr %32, align 8, !tbaa !68
  %35 = load ptr, ptr %29, align 8, !tbaa !71
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %28, !llvm.loop !81

37:                                               ; preds = %21
  %38 = and i32 %18, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = and i32 %18, -66
  store i32 %41, ptr %17, align 8, !tbaa !68
  br label %48

42:                                               ; preds = %28
  %43 = load i32, ptr %17, align 8, !tbaa !68
  br label %44

44:                                               ; preds = %42, %23, %37
  %45 = phi i32 [ %43, %42 ], [ %18, %23 ], [ %18, %37 ]
  %46 = or i32 %45, 1
  store i32 %46, ptr %17, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 5
  store ptr %16, ptr %47, align 8, !tbaa !76
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
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Base, ptr %57, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = icmp eq ptr %8, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !68
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
define internal fastcc void @tree_element_active_constraint(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_element_active_renderlayer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 9
  %6 = load i16, ptr %5, align 4, !tbaa !5
  %7 = icmp eq i16 %6, 17235
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !82
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 61
  store i16 %14, ptr %15, align 8, !tbaa !83
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %10) #7
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 61
  %18 = load i16, ptr %17, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !82
  %21 = icmp eq i16 %18, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %4, %12, %16
  %24 = phi i32 [ 0, %12 ], [ %22, %16 ], [ 0, %4 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_element_active_posegroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !51
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 10
  store i32 %17, ptr %18, align 8, !tbaa !84
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %7) #7
  br label %41

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %25, %23 ], [ null, %19 ]
  %28 = icmp eq ptr %7, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %37 = load i16, ptr %36, align 2, !tbaa !51
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
define internal fastcc noundef i32 @tree_element_active_sequence(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #7
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !86
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
  %17 = load i32, ptr %16, align 8, !tbaa !88
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, -2
  store i32 %21, ptr %16, align 8, !tbaa !88
  br label %29

22:                                               ; preds = %13
  tail call void @ED_sequencer_deselect_all(ptr noundef %1) #7
  %23 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !88
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %24, %22 ], [ %17, %15 ]
  %27 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %28 = or i32 %26, 1
  store i32 %28, ptr %27, align 8, !tbaa !88
  tail call void @BKE_sequencer_active_set(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %29

29:                                               ; preds = %20, %25, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %1) #7
  br label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.Editing, ptr %7, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = icmp eq ptr %32, %6
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !88
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
define internal fastcc i32 @tree_element_active_sequence_dup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %0, i8 noundef zeroext 0) #7
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !88
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ %11, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_element_active_keymap_item(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !91
  br i1 %5, label %8, label %12

8:                                                ; preds = %2
  %9 = and i16 %7, 1
  %10 = xor i16 %9, 1
  %11 = zext nneg i16 %10 to i32
  br label %14

12:                                               ; preds = %2
  %13 = xor i16 %7, 1
  store i16 %13, ptr %6, align 8, !tbaa !91
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
  %17 = load i16, ptr %16, align 2, !tbaa !93
  %18 = add i16 %17, -11
  %19 = icmp ult i16 %18, 2
  br i1 %19, label %34, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 11
  %22 = load i16, ptr %21, align 8, !tbaa !96
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load float, ptr %6, align 4, !tbaa !97
  %27 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !98
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !100
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
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %38, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef nonnull %6) #6
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %43, !llvm.loop !104

43:                                               ; preds = %40
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str) #7
  br label %56

44:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 -1, ptr %7, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !100
  %46 = sitofp i16 %45 to float
  %47 = load float, ptr %6, align 4, !tbaa !97
  %48 = load float, ptr %15, align 4, !tbaa !97
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %12, float noundef 1.000000e+03, float noundef %46, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef %47, float noundef %48, ptr noundef null, ptr noundef nonnull %8) #7
  %49 = call fastcc i32 @outliner_select(ptr noundef %11, ptr noundef nonnull %35, ptr noundef nonnull %8, ptr noundef nonnull %7) #6, !range !15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 13
  %53 = load i16, ptr %52, align 4, !tbaa !106
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 4, !tbaa !106
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
define internal fastcc noundef zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !107
  %12 = sitofp i32 %11 to float
  %13 = fcmp ogt float %9, %12
  br i1 %13, label %14, label %142

14:                                               ; preds = %7
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !100
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = sitofp i32 %17 to float
  %19 = fcmp olt float %9, %18
  br i1 %19, label %20, label %142

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !64
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  %27 = load float, ptr %6, align 4, !tbaa !97
  %28 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !108
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
  %40 = load i16, ptr %39, align 4, !tbaa !109
  br i1 %38, label %47, label %41

41:                                               ; preds = %37
  %42 = and i16 %40, -2
  store i16 %42, ptr %39, align 4, !tbaa !109
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
  store i16 %51, ptr %39, align 4, !tbaa !109
  br label %151

52:                                               ; preds = %47
  %53 = or disjoint i16 %40, 1
  store i16 %53, ptr %39, align 4, !tbaa !109
  br label %151

54:                                               ; preds = %20, %33
  %55 = add nsw i32 %29, %16
  %56 = sitofp i32 %55 to float
  %57 = fcmp ogt float %27, %56
  br i1 %57, label %58, label %142

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 10
  %60 = load i16, ptr %59, align 2, !tbaa !110
  %61 = sitofp i16 %60 to float
  %62 = fcmp olt float %27, %61
  br i1 %62, label %63, label %142

63:                                               ; preds = %58
  %64 = load i16, ptr %22, align 8, !tbaa !53
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
  %75 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %71, i8 noundef zeroext %74) #6, !range !15
  %76 = load i16, ptr %22, align 8, !tbaa !53
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %80 = load i16, ptr %79, align 4, !tbaa !5
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
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %151, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %87 = load ptr, ptr %82, align 8, !tbaa !17
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %86, ptr noundef %87) #7
  br label %151

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !17
  %91 = icmp eq i8 %4, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.Group, ptr %90, i64 0, i32 1
  br label %94

94:                                               ; preds = %98, %92
  %95 = phi ptr [ %93, %92 ], [ %96, %98 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !71
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.GroupObject, ptr %96, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !111
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 53
  %102 = load i16, ptr %101, align 4, !tbaa !44
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %94, label %105, !llvm.loop !113

105:                                              ; preds = %98, %94
  %106 = phi i16 [ 1, %94 ], [ 0, %98 ]
  %107 = load ptr, ptr %93, align 8, !tbaa !71
  %108 = icmp eq ptr %107, null
  br i1 %108, label %133, label %109

109:                                              ; preds = %105, %109
  %110 = phi ptr [ %114, %109 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.GroupObject, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !111
  %113 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %112) #7
  tail call void @ED_base_object_select(ptr noundef %113, i16 noundef signext %106) #7
  %114 = load ptr, ptr %110, align 8, !tbaa !71
  %115 = icmp eq ptr %114, null
  br i1 %115, label %133, label %109, !llvm.loop !114

116:                                              ; preds = %88
  tail call void @BKE_scene_base_deselect_all(ptr noundef %1) #7
  %117 = getelementptr inbounds %struct.Group, ptr %90, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !71
  %119 = icmp eq ptr %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %116, %130
  %121 = phi ptr [ %131, %130 ], [ %118, %116 ]
  %122 = getelementptr inbounds %struct.GroupObject, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !111
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 53
  %125 = load i16, ptr %124, align 4, !tbaa !44
  %126 = and i16 %125, 1
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef nonnull %123) #7
  tail call void @ED_base_object_select(ptr noundef %129, i16 noundef signext 1) #7
  br label %130

130:                                              ; preds = %120, %128
  %131 = load ptr, ptr %121, align 8, !tbaa !71
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %120, !llvm.loop !115

133:                                              ; preds = %109, %130, %105, %116
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #7
  br label %151

134:                                              ; preds = %78, %78, %78, %78, %78
  %135 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.13, i16 noundef signext 1, ptr noundef null) #7
  br label %151

136:                                              ; preds = %78
  %137 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 1, i8 noundef zeroext 0) #6, !range !15
  br label %151

138:                                              ; preds = %63, %67
  %139 = icmp eq i8 %4, 0
  %140 = select i1 %139, i32 1, i32 2
  %141 = tail call i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %22, i32 noundef %140, i8 noundef zeroext %5) #6, !range !15
  br label %151

142:                                              ; preds = %54, %58, %14, %7
  %143 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  br label %144

144:                                              ; preds = %148, %142
  %145 = phi ptr [ %143, %142 ], [ %146, %148 ]
  %146 = load ptr, ptr %145, align 8, !tbaa !71
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %146, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) #6
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %144, label %151, !llvm.loop !116

151:                                              ; preds = %144, %148, %138, %133, %136, %134, %81, %85, %41, %52, %50
  %152 = phi i8 [ 1, %50 ], [ 1, %52 ], [ 1, %41 ], [ 1, %85 ], [ 1, %81 ], [ 1, %134 ], [ 1, %136 ], [ 1, %133 ], [ 1, %138 ], [ 0, %144 ], [ 1, %148 ]
  ret i8 %152
}

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @outliner_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %2, align 4, !tbaa !118
  br label %10

10:                                               ; preds = %7, %62
  %11 = phi i32 [ %9, %7 ], [ %66, %62 ]
  %12 = phi i8 [ 0, %7 ], [ %64, %62 ]
  %13 = phi ptr [ %5, %7 ], [ %65, %62 ]
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 7
  %21 = load i16, ptr %20, align 8, !tbaa !64
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = load i16, ptr %3, align 2, !tbaa !105
  switch i16 %25, label %33 [
    i16 -1, label %26
    i16 0, label %37
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %28 = load i16, ptr %27, align 4, !tbaa !109
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i16 0, ptr %3, align 2, !tbaa !105
  br label %37

32:                                               ; preds = %26
  store i16 1, ptr %3, align 2, !tbaa !105
  br label %33

33:                                               ; preds = %24, %32
  %34 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %35 = load i16, ptr %34, align 4, !tbaa !109
  %36 = or i16 %35, 2
  store i16 %36, ptr %34, align 4, !tbaa !109
  br label %62

37:                                               ; preds = %24, %31
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %39 = load i16, ptr %38, align 4, !tbaa !109
  %40 = and i16 %39, -3
  store i16 %40, ptr %38, align 4, !tbaa !109
  br label %62

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %17, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !109
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %8, align 2, !tbaa !119
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  %51 = and i32 %44, 8
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %52, %50
  br i1 %53, label %62, label %54

54:                                               ; preds = %47, %41
  %55 = add nsw i32 %11, -1
  store i32 %55, ptr %2, align 4, !tbaa !118
  %56 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  %57 = tail call fastcc i32 @outliner_select(ptr noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %2, ptr noundef %3) #6, !range !15
  %58 = trunc i32 %57 to i8
  %59 = or i8 %12, %58
  %60 = load i32, ptr %2, align 4, !tbaa !118
  %61 = add nsw i32 %60, 1
  br label %62

62:                                               ; preds = %33, %37, %19, %54, %47
  %63 = phi i32 [ 0, %19 ], [ %61, %54 ], [ %11, %47 ], [ 0, %37 ], [ 0, %33 ]
  %64 = phi i8 [ %12, %19 ], [ %59, %54 ], [ %12, %47 ], [ 1, %37 ], [ 1, %33 ]
  %65 = load ptr, ptr %13, align 8, !tbaa !120
  %66 = add nsw i32 %63, -1
  store i32 %66, ptr %2, align 4, !tbaa !118
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %10, !llvm.loop !121

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
  store ptr @.str.1, ptr %0, align 8, !tbaa !122
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !125
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !126
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_item_activate, ptr %4, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !128
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_item_activate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.4) #7
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !130
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.7) #7
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !118
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !118
  %15 = tail call i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %12, i32 noundef %14, i8 noundef zeroext %7, i8 noundef zeroext %10) #6, !range !132
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @ED_operator_outliner_active(ptr noundef) #3

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !122
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !125
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !126
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_border_select_exec, ptr %5, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !136
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.14) #7
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #7
  %10 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %2 ]
  call fastcc void @outliner_item_border_select(ptr noundef nonnull %3, ptr noundef nonnull %15, i32 noundef %9) #6
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !137

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
define internal fastcc void @do_outliner_object_select_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = icmp ne i8 %2, 0
  %9 = zext i1 %8 to i16
  br label %10

10:                                               ; preds = %7, %22
  %11 = phi ptr [ %5, %7 ], [ %23, %22 ]
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 102
  %15 = load i8, ptr %14, align 8, !tbaa !138
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
  %23 = load ptr, ptr %11, align 8, !tbaa !71
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !139

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
define internal fastcc void @do_outliner_bone_select_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !71
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
  %14 = load i32, ptr %13, align 8, !tbaa !140
  %15 = load i32, ptr %9, align 8, !tbaa !141
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = or i32 %20, 1
  store i32 %24, ptr %19, align 8, !tbaa !68
  br label %29

25:                                               ; preds = %12, %18, %10
  %26 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !68
  %28 = and i32 %27, -8
  store i32 %28, ptr %26, align 8, !tbaa !68
  br label %29

29:                                               ; preds = %25, %23
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext %2) #6
  %30 = load ptr, ptr %11, align 8, !tbaa !71
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !142

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_deselect_all(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tree_element_active_ebone__sel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = icmp eq i16 %4, 0
  %7 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !78
  br i1 %6, label %22, label %9

9:                                                ; preds = %5
  %10 = or i32 %8, 7
  store i32 %10, ptr %7, align 4, !tbaa !78
  %11 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 6
  store ptr %3, ptr %11, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !144
  %14 = icmp eq ptr %13, null
  %15 = and i32 %8, 16
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 4, !tbaa !78
  br label %34

22:                                               ; preds = %5
  %23 = and i32 %8, -8
  store i32 %23, ptr %7, align 4, !tbaa !78
  %24 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !144
  %26 = icmp eq ptr %25, null
  %27 = and i32 %8, 16
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.EditBone, ptr %25, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !78
  %33 = and i32 %32, -5
  store i32 %33, ptr %31, align 4, !tbaa !78
  br label %34

34:                                               ; preds = %22, %30, %9, %18
  %35 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %36) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_outliner_ebone_select_recursive(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !145
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
  %15 = load i32, ptr %8, align 8, !tbaa !141
  %16 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !146
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = or i32 %22, 7
  store i32 %26, ptr %21, align 4, !tbaa !78
  br label %31

27:                                               ; preds = %14, %20, %13
  %28 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !78
  %30 = and i32 %29, -8
  store i32 %30, ptr %28, align 4, !tbaa !78
  br label %31

31:                                               ; preds = %9, %27, %25
  %32 = load ptr, ptr %10, align 8, !tbaa !145
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %9, !llvm.loop !147

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
define internal fastcc void @outliner_item_border_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !107
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !148
  %11 = fcmp ult float %10, %8
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !100
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %7, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !149
  %19 = fcmp ugt float %18, %16
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %2, 3
  %22 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !109
  %24 = and i16 %23, -3
  %25 = select i1 %21, i16 2, i16 0
  %26 = or disjoint i16 %24, %25
  store i16 %26, ptr %22, align 4, !tbaa !109
  br label %27

27:                                               ; preds = %20, %12, %3
  %28 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !109
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %32 ]
  tail call fastcc void @outliner_item_border_select(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %2) #6
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !150

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 60}
!6 = !{!"TreeElement", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 40, !11, i64 44, !7, i64 48, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !7, i64 64, !7, i64 72, !13, i64 80}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"PointerRNA", !14, i64 0, !7, i64 8, !7, i64 16}
!14 = !{!"", !7, i64 0}
!15 = !{i32 0, i32 2}
!16 = !{!6, !7, i64 48}
!17 = !{!18, !7, i64 8}
!18 = !{!"TreeStoreElem", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !7, i64 8}
!19 = !{!20, !7, i64 168}
!20 = !{!"Scene", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !22, i64 280, !32, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !11, i64 4380, !10, i64 4384, !33, i64 4400, !34, i64 4416, !37, i64 4600, !7, i64 4608, !38, i64 4616, !7, i64 4640, !39, i64 4648, !39, i64 4656, !25, i64 4664, !26, i64 4824, !40, i64 4888, !7, i64 4952}
!21 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!22 = !{!"RenderData", !23, i64 0, !7, i64 248, !7, i64 256, !27, i64 264, !28, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !24, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !12, i64 432, !12, i64 434, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !11, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !11, i64 484, !11, i64 488, !12, i64 492, !12, i64 494, !11, i64 496, !11, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !29, i64 544, !29, i64 560, !30, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !24, i64 612, !24, i64 616, !24, i64 620, !24, i64 624, !11, i64 628, !24, i64 632, !24, i64 636, !24, i64 640, !24, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !24, i64 660, !24, i64 664, !12, i64 668, !12, i64 670, !24, i64 672, !24, i64 676, !8, i64 680, !11, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !12, i64 2524, !12, i64 2526, !24, i64 2528, !24, i64 2532, !12, i64 2536, !12, i64 2538, !24, i64 2540, !12, i64 2544, !12, i64 2546, !11, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !24, i64 2560, !24, i64 2564, !7, i64 2568, !11, i64 2576, !24, i64 2580, !8, i64 2584, !31, i64 2616, !11, i64 3976, !11, i64 3980}
!23 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !24, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !25, i64 24, !26, i64 184}
!24 = !{!"float", !8, i64 0}
!25 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !24, i64 136, !24, i64 140, !7, i64 144, !7, i64 152}
!26 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!27 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !12, i64 48, !12, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!28 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !24, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!29 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!30 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!31 = !{!"BakeData", !23, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !24, i64 1280, !24, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!32 = !{!"AudioData", !11, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !11, i64 16, !12, i64 20, !12, i64 22, !24, i64 24, !24, i64 28}
!33 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!34 = !{!"GameData", !33, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !35, i64 40, !12, i64 64, !12, i64 66, !24, i64 68, !36, i64 72, !24, i64 128, !24, i64 132, !11, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180}
!35 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !24, i64 8, !24, i64 12, !7, i64 16}
!36 = !{!"RecastData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !11, i64 40, !24, i64 44, !24, i64 48, !12, i64 52, !12, i64 54}
!37 = !{!"UnitSettings", !24, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!38 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!39 = !{!"long", !8, i64 0}
!40 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!41 = !{!42, !7, i64 32}
!42 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!43 = !{!42, !11, i64 24}
!44 = !{!45, !12, i64 948}
!45 = !{!"Object", !21, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !46, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !24, i64 616, !24, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !24, i64 988, !24, i64 992, !24, i64 996, !24, i64 1000, !24, i64 1004, !24, i64 1008, !24, i64 1012, !24, i64 1016, !24, i64 1020, !24, i64 1024, !24, i64 1028, !24, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !24, i64 1048, !24, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !24, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !24, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !39, i64 1304, !39, i64 1312, !11, i64 1320, !11, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!46 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!47 = !{!20, !7, i64 176}
!48 = !{!45, !7, i64 448}
!49 = !{!6, !7, i64 16}
!50 = !{!45, !11, i64 460}
!51 = !{!6, !12, i64 58}
!52 = !{!8, !8, i64 0}
!53 = !{!18, !12, i64 0}
!54 = !{!55, !12, i64 132}
!55 = !{!"World", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !12, i64 200, !12, i64 202, !12, i64 204, !12, i64 206, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !24, i64 216, !24, i64 220, !24, i64 224, !24, i64 228, !24, i64 232, !24, i64 236, !24, i64 240, !24, i64 244, !24, i64 248, !24, i64 252, !24, i64 256, !24, i64 260, !12, i64 264, !12, i64 266, !12, i64 268, !12, i64 270, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !24, i64 316, !24, i64 320, !12, i64 324, !12, i64 326, !12, i64 328, !12, i64 330, !12, i64 332, !12, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !12, i64 504, !12, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!56 = !{!20, !7, i64 136}
!57 = !{!58, !12, i64 280}
!58 = !{!"Lamp", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !11, i64 132, !12, i64 136, !12, i64 138, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !7, i64 200, !12, i64 208, !12, i64 210, !24, i64 212, !24, i64 216, !24, i64 220, !24, i64 224, !24, i64 228, !24, i64 232, !24, i64 236, !12, i64 240, !12, i64 242, !12, i64 244, !12, i64 246, !8, i64 248, !8, i64 249, !12, i64 250, !12, i64 252, !12, i64 254, !12, i64 256, !12, i64 258, !24, i64 260, !24, i64 264, !24, i64 268, !24, i64 272, !12, i64 276, !12, i64 278, !12, i64 280, !12, i64 282, !12, i64 284, !12, i64 286, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !24, i64 308, !24, i64 312, !24, i64 316, !24, i64 320, !24, i64 324, !24, i64 328, !24, i64 332, !24, i64 336, !12, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !12, i64 496, !12, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!59 = !{!45, !7, i64 296}
!60 = !{!61, !8, i64 541}
!61 = !{!"Material", !21, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !24, i64 132, !24, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192, !24, i64 196, !24, i64 200, !24, i64 204, !24, i64 208, !24, i64 212, !24, i64 216, !24, i64 220, !62, i64 224, !63, i64 312, !24, i64 328, !24, i64 332, !24, i64 336, !24, i64 340, !24, i64 344, !24, i64 348, !24, i64 352, !12, i64 356, !12, i64 358, !12, i64 360, !8, i64 362, !8, i64 363, !24, i64 364, !24, i64 368, !12, i64 372, !12, i64 374, !24, i64 376, !24, i64 380, !24, i64 384, !24, i64 388, !12, i64 392, !12, i64 394, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !12, i64 414, !12, i64 416, !12, i64 418, !24, i64 420, !24, i64 424, !24, i64 428, !24, i64 432, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !24, i64 456, !8, i64 460, !24, i64 524, !24, i64 528, !24, i64 532, !11, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !12, i64 544, !12, i64 546, !12, i64 548, !8, i64 550, !8, i64 551, !12, i64 552, !12, i64 554, !24, i64 556, !24, i64 560, !8, i64 564, !24, i64 580, !24, i64 584, !12, i64 588, !12, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !12, i64 612, !12, i64 614, !24, i64 616, !24, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !24, i64 800, !24, i64 804, !24, i64 808, !24, i64 812, !24, i64 816, !12, i64 820, !12, i64 822, !8, i64 824, !8, i64 836, !24, i64 848, !24, i64 852, !24, i64 856, !24, i64 860, !24, i64 864, !24, i64 868, !24, i64 872, !12, i64 876, !12, i64 878, !11, i64 880, !12, i64 884, !12, i64 886, !8, i64 888, !12, i64 904, !12, i64 906, !12, i64 908, !12, i64 910, !12, i64 912, !8, i64 914, !7, i64 920, !10, i64 928}
!62 = !{!"VolumeSettings", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !24, i64 52, !24, i64 56, !24, i64 60, !12, i64 64, !12, i64 66, !12, i64 68, !12, i64 70, !24, i64 72, !24, i64 76, !24, i64 80, !24, i64 84}
!63 = !{!"GameSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!64 = !{!6, !12, i64 56}
!65 = !{!20, !7, i64 128}
!66 = !{!45, !12, i64 1126}
!67 = !{!6, !7, i64 72}
!68 = !{!69, !11, i64 176}
!69 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !24, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !11, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !24, i64 268, !24, i64 272, !24, i64 276, !24, i64 280, !24, i64 284, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !24, i64 304, !8, i64 308, !11, i64 320, !12, i64 324, !8, i64 326}
!70 = !{!45, !7, i64 288}
!71 = !{!7, !7, i64 0}
!72 = !{!73, !7, i64 120}
!73 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !24, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !24, i64 524, !24, i64 528, !24, i64 532, !7, i64 536}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!77, !7, i64 168}
!77 = !{!"bArmature", !21, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !12, i64 208, !12, i64 210, !11, i64 212, !11, i64 216, !11, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252}
!78 = !{!79, !11, i64 132}
!79 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !24, i64 104, !8, i64 108, !8, i64 120, !11, i64 132, !11, i64 136, !24, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !24, i64 156, !24, i64 160, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !12, i64 180}
!80 = !{!45, !11, i64 432}
!81 = distinct !{!81, !75}
!82 = !{!18, !12, i64 2}
!83 = !{!20, !12, i64 888}
!84 = !{!85, !11, i64 80}
!85 = !{!"bPose", !10, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !11, i64 28, !11, i64 32, !24, i64 36, !8, i64 40, !8, i64 52, !10, i64 64, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !46, i64 104, !8, i64 152}
!86 = !{!87, !7, i64 0}
!87 = !{!"Editing", !7, i64 0, !10, i64 8, !10, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !11, i64 2096, !11, i64 2100, !11, i64 2104, !11, i64 2108, !29, i64 2112}
!88 = !{!89, !11, i64 96}
!89 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !24, i64 144, !24, i64 148, !24, i64 152, !12, i64 156, !12, i64 158, !11, i64 160, !11, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !24, i64 224, !24, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !10, i64 256, !7, i64 272, !7, i64 280, !24, i64 288, !24, i64 292, !24, i64 296, !24, i64 300, !7, i64 304, !11, i64 312, !11, i64 316, !11, i64 320, !24, i64 324, !11, i64 328, !8, i64 332, !8, i64 333, !10, i64 336}
!90 = !{!87, !7, i64 40}
!91 = !{!92, !12, i64 168}
!92 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !12, i64 164, !12, i64 166, !12, i64 168, !12, i64 170, !12, i64 172, !12, i64 174, !7, i64 176}
!93 = !{!94, !12, i64 290}
!94 = !{!"SpaceOops", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !24, i64 36, !8, i64 40, !95, i64 56, !10, i64 216, !7, i64 232, !8, i64 240, !18, i64 272, !12, i64 288, !12, i64 290, !12, i64 292, !12, i64 294, !7, i64 296}
!95 = !{!"View2D", !29, i64 0, !29, i64 16, !30, i64 32, !30, i64 48, !30, i64 64, !8, i64 80, !8, i64 88, !24, i64 96, !24, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!96 = !{!94, !12, i64 288}
!97 = !{!24, !24, i64 0}
!98 = !{!99, !24, i64 36}
!99 = !{!"ARegion", !7, i64 0, !7, i64 8, !95, i64 16, !30, i64 176, !30, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !24, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!100 = !{!101, !12, i64 8948}
!101 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !12, i64 8496, !12, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !11, i64 8912, !11, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !24, i64 8956, !24, i64 8960, !11, i64 8964, !12, i64 8968, !12, i64 8970, !24, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !102, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !24, i64 10904, !24, i64 10908, !11, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!103 = !{!"WalkNavigation", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !12, i64 24, !8, i64 26}
!104 = distinct !{!104, !75}
!105 = !{!12, !12, i64 0}
!106 = !{!94, !12, i64 292}
!107 = !{!6, !11, i64 44}
!108 = !{!6, !11, i64 40}
!109 = !{!18, !12, i64 4}
!110 = !{!6, !12, i64 62}
!111 = !{!112, !7, i64 16}
!112 = !{!"GroupObject", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !8, i64 34}
!113 = distinct !{!113, !75}
!114 = distinct !{!114, !75}
!115 = distinct !{!115, !75}
!116 = distinct !{!116, !75}
!117 = !{!10, !7, i64 0}
!118 = !{!11, !11, i64 0}
!119 = !{!94, !12, i64 294}
!120 = !{!6, !7, i64 0}
!121 = distinct !{!121, !75}
!122 = !{!123, !7, i64 0}
!123 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !124, i64 152, !12, i64 184}
!124 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!125 = !{!123, !7, i64 8}
!126 = !{!123, !7, i64 24}
!127 = !{!123, !7, i64 48}
!128 = !{!123, !7, i64 72}
!129 = !{!123, !7, i64 88}
!130 = !{!131, !7, i64 112}
!131 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!132 = !{i32 2, i32 5}
!133 = !{!123, !7, i64 32}
!134 = !{!123, !7, i64 64}
!135 = !{!123, !7, i64 56}
!136 = !{!123, !12, i64 184}
!137 = distinct !{!137, !75}
!138 = !{!45, !8, i64 1160}
!139 = distinct !{!139, !75}
!140 = !{!69, !11, i64 320}
!141 = !{!77, !11, i64 216}
!142 = distinct !{!142, !75}
!143 = !{!77, !7, i64 176}
!144 = !{!79, !7, i64 24}
!145 = !{!79, !7, i64 0}
!146 = !{!79, !11, i64 136}
!147 = distinct !{!147, !75}
!148 = !{!29, !24, i64 12}
!149 = !{!29, !24, i64 8}
!150 = distinct !{!150, !75}
