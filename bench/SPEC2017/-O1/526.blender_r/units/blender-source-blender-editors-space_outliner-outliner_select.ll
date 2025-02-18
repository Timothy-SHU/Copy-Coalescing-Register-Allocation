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
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local i32 @tree_element_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %8 = load i16, ptr %7, align 4, !tbaa !34
  switch i16 %8, label %215 [
    i16 16975, label %9
    i16 16717, label %13
    i16 20311, label %77
    i16 16716, label %108
    i16 17748, label %124
    i16 16707, label %207
  ]

9:                                                ; preds = %6
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %215, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext 0), !range !44
  br label %215

13:                                               ; preds = %6
  %14 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %215, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = icmp eq ptr %14, %24
  br i1 %25, label %26, label %215

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 30
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  br i1 %29, label %215, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 9
  %34 = load i16, ptr %33, align 4, !tbaa !34
  %35 = icmp eq i16 %34, 16975
  %36 = icmp eq i32 %4, 0
  br i1 %35, label %37, label %51

37:                                               ; preds = %30
  br i1 %36, label %38, label %65

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 32
  %40 = load i32, ptr %39, align 4, !tbaa !73
  %41 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %42 = load i16, ptr %41, align 2, !tbaa !74
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %38
  %47 = sext i16 %42 to i64
  %48 = getelementptr inbounds i8, ptr %28, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !75
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %74, label %215

51:                                               ; preds = %30
  br i1 %36, label %52, label %65

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 32
  %54 = load i32, ptr %53, align 4, !tbaa !73
  %55 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %56 = load i16, ptr %55, align 2, !tbaa !74
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %57, 1
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = sext i16 %56 to i64
  %62 = getelementptr inbounds i8, ptr %28, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !75
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %215, label %74

65:                                               ; preds = %51, %37
  %66 = phi i8 [ 1, %37 ], [ 0, %51 ]
  %67 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %68 = load i16, ptr %67, align 2, !tbaa !74
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 32
  store i32 %70, ptr %71, align 4, !tbaa !73
  %72 = sext i16 %68 to i64
  %73 = getelementptr inbounds i8, ptr %28, i64 %72
  store i8 %66, ptr %73, align 1, !tbaa !75
  br label %74

74:                                               ; preds = %65, %60, %52, %46, %38
  %75 = icmp eq i32 %4, 0
  br i1 %75, label %215, label %76

76:                                               ; preds = %74
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef null) #5
  br label %215

77:                                               ; preds = %6
  %78 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !72
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TreeElement, ptr %79, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  %84 = load i16, ptr %83, align 8, !tbaa !77
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TreeStoreElem, ptr %83, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !79
  br label %89

89:                                               ; preds = %86, %81, %77
  %90 = phi ptr [ %83, %86 ], [ %83, %81 ], [ null, %77 ]
  %91 = phi ptr [ %88, %86 ], [ null, %81 ], [ null, %77 ]
  %92 = icmp ne i32 %4, 0
  %93 = icmp eq ptr %91, null
  %94 = xor i1 %92, true
  %95 = select i1 %94, i1 true, i1 %93
  %96 = icmp eq ptr %91, %1
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  %99 = tail call ptr @CTX_wm_screen(ptr noundef %0) #5
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %99, ptr noundef nonnull %91) #5
  br label %100

100:                                              ; preds = %98, %89
  br i1 %80, label %106, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.TreeStoreElem, ptr %90, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !79
  %104 = icmp ne ptr %103, %1
  %105 = or i1 %92, %104
  br i1 %105, label %107, label %215

106:                                              ; preds = %100
  br i1 %92, label %107, label %215

107:                                              ; preds = %106, %101
  br label %215

108:                                              ; preds = %6
  %109 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %215, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !45
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.Base, ptr %113, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !67
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi ptr [ %117, %115 ], [ null, %111 ]
  %120 = icmp eq ptr %109, %119
  br i1 %120, label %121, label %215

121:                                              ; preds = %118
  %122 = icmp eq i32 %4, 0
  %123 = zext i1 %122 to i32
  br label %215

124:                                              ; preds = %6
  %125 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !67
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi ptr [ %130, %128 ], [ null, %124 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %215, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !72
  %137 = getelementptr inbounds %struct.TreeElement, ptr %136, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !76
  %139 = getelementptr inbounds %struct.TreeElement, ptr %136, i64 0, i32 9
  %140 = load i16, ptr %139, align 4, !tbaa !34
  switch i16 %140, label %204 [
    i16 20311, label %141
    i16 16716, label %159
    i16 16717, label %177
  ]

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.TreeStoreElem, ptr %138, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !79
  %144 = icmp eq i32 %4, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %147 = load i16, ptr %146, align 2, !tbaa !74
  %148 = getelementptr inbounds %struct.World, ptr %143, i64 0, i32 4
  store i16 %147, ptr %148, align 4, !tbaa !80
  br label %204

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !82
  %152 = icmp eq ptr %143, %151
  br i1 %152, label %153, label %204

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.World, ptr %143, i64 0, i32 4
  %155 = load i16, ptr %154, align 4, !tbaa !80
  %156 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %157 = load i16, ptr %156, align 2, !tbaa !74
  %158 = icmp eq i16 %155, %157
  br i1 %158, label %215, label %204

159:                                              ; preds = %134
  %160 = getelementptr inbounds %struct.TreeStoreElem, ptr %138, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !79
  %162 = icmp eq i32 %4, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %165 = load i16, ptr %164, align 2, !tbaa !74
  %166 = getelementptr inbounds %struct.Lamp, ptr %161, i64 0, i32 49
  store i16 %165, ptr %166, align 8, !tbaa !83
  br label %204

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.Object, ptr %132, i64 0, i32 19
  %169 = load ptr, ptr %168, align 8, !tbaa !85
  %170 = icmp eq ptr %161, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.Lamp, ptr %161, i64 0, i32 49
  %173 = load i16, ptr %172, align 8, !tbaa !83
  %174 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %175 = load i16, ptr %174, align 2, !tbaa !74
  %176 = icmp eq i16 %173, %175
  br i1 %176, label %215, label %204

177:                                              ; preds = %134
  %178 = getelementptr inbounds %struct.TreeStoreElem, ptr %138, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !79
  %180 = icmp eq i32 %4, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %183 = load i16, ptr %182, align 2, !tbaa !74
  %184 = trunc i16 %183 to i8
  %185 = getelementptr inbounds %struct.Material, ptr %179, i64 0, i32 75
  store i8 %184, ptr %185, align 1, !tbaa !86
  %186 = getelementptr inbounds %struct.TreeElement, ptr %136, i64 0, i32 8
  %187 = load i16, ptr %186, align 2, !tbaa !74
  %188 = sext i16 %187 to i32
  %189 = add nsw i32 %188, 1
  %190 = getelementptr inbounds %struct.Object, ptr %132, i64 0, i32 32
  store i32 %189, ptr %190, align 4, !tbaa !73
  br label %204

191:                                              ; preds = %177
  %192 = getelementptr inbounds %struct.TreeElement, ptr %136, i64 0, i32 7
  %193 = load i16, ptr %192, align 8, !tbaa !90
  %194 = and i16 %193, 1
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.Material, ptr %179, i64 0, i32 75
  %198 = load i8, ptr %197, align 1, !tbaa !86
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %201 = load i16, ptr %200, align 2, !tbaa !74
  %202 = sext i16 %201 to i32
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %215, label %204

204:                                              ; preds = %196, %191, %181, %171, %167, %163, %153, %149, %145, %134
  %205 = icmp eq i32 %4, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %204
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 117440512, ptr noundef null) #5
  br label %215

207:                                              ; preds = %6
  %208 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #5
  %209 = icmp eq i32 %4, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !91
  %213 = icmp eq ptr %212, %208
  %214 = zext i1 %213 to i32
  br label %215

215:                                              ; preds = %210, %207, %206, %204, %196, %171, %153, %131, %121, %118, %108, %107, %106, %101, %76, %74, %60, %46, %26, %23, %13, %6, %9, %11
  %216 = phi i32 [ %12, %11 ], [ 0, %9 ], [ 0, %26 ], [ 0, %23 ], [ 0, %13 ], [ 1, %46 ], [ 1, %60 ], [ 0, %76 ], [ 0, %74 ], [ 0, %107 ], [ 1, %101 ], [ 1, %106 ], [ 0, %118 ], [ 0, %108 ], [ %123, %121 ], [ 0, %131 ], [ 1, %153 ], [ 1, %171 ], [ 1, %196 ], [ 0, %206 ], [ 0, %204 ], [ 0, %6 ], [ %214, %210 ], [ 0, %207 ]
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %8 = load i16, ptr %7, align 4, !tbaa !34
  %9 = icmp eq i16 %8, 16975
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  br label %26

15:                                               ; preds = %6
  %16 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 16975) #5
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  br label %23

23:                                               ; preds = %15, %20
  %24 = phi ptr [ %22, %20 ], [ null, %15 ]
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %83, label %26

26:                                               ; preds = %23, %10
  %27 = phi ptr [ %14, %10 ], [ %16, %23 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef %3, i16 noundef signext 17235) #5
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %1
  %33 = or i1 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @CTX_wm_screen(ptr noundef %0) #5
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %30) #5
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %30, %34 ], [ %1, %29 ]
  %38 = tail call ptr @BKE_scene_base_find(ptr noundef %37, ptr noundef nonnull %27) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %78, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %4, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !92
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, 1
  %47 = xor i16 %46, 1
  br label %49

48:                                               ; preds = %40
  tail call void @BKE_scene_base_deselect_all(ptr noundef %37) #5
  br label %49

49:                                               ; preds = %42, %48
  %50 = phi i16 [ 1, %48 ], [ %47, %42 ]
  tail call void @ED_base_object_select(ptr noundef nonnull %38, i16 noundef signext %50) #5
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !93
  %55 = icmp eq ptr %54, null
  br i1 %55, label %75, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  %58 = load i16, ptr %57, align 4, !tbaa !94
  %59 = and i16 %58, 1
  br label %60

60:                                               ; preds = %56, %72
  %61 = phi ptr [ %54, %56 ], [ %73, %72 ]
  %62 = getelementptr inbounds %struct.Base, ptr %61, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 102
  %65 = load i8, ptr %64, align 8, !tbaa !95
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = tail call zeroext i8 @BKE_object_is_child_recursive(ptr noundef nonnull %27, ptr noundef %63) #5
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @ED_base_object_select(ptr noundef nonnull %61, i16 noundef signext %59) #5
  br label %72

72:                                               ; preds = %71, %68, %60
  %73 = load ptr, ptr %61, align 8, !tbaa !93
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %60, !llvm.loop !96

75:                                               ; preds = %72, %52, %49
  %76 = icmp eq ptr %0, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @ED_base_object_activate(ptr noundef nonnull %0, ptr noundef nonnull %38) #5
  tail call void @WM_event_add_notifier(ptr noundef nonnull %0, i32 noundef 67633152, ptr noundef %37) #5
  br label %78

78:                                               ; preds = %75, %77, %36
  %79 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !99
  %81 = icmp eq ptr %27, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #5
  br label %83

83:                                               ; preds = %78, %82, %26, %23
  %84 = phi i32 [ 0, %23 ], [ 0, %26 ], [ 1, %82 ], [ 1, %78 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define dso_local i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = load i16, ptr %4, align 8, !tbaa !77
  switch i16 %8, label %453 [
    i16 4, label %9
    i16 5, label %38
    i16 6, label %114
    i16 10, label %219
    i16 11, label %224
    i16 29, label %240
    i16 13, label %245
    i16 14, label %268
    i16 8, label %337
    i16 20, label %342
    i16 25, label %361
    i16 26, label %398
    i16 28, label %432
    i16 35, label %441
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %15 = load i16, ptr %14, align 2, !tbaa !74
  %16 = add i16 %15, 1
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 97
  store i16 %16, ptr %17, align 2, !tbaa !100
  tail call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %11) #5
  br label %37

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ null, %18 ]
  %27 = icmp eq ptr %11, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 97
  %30 = load i16, ptr %29, align 2, !tbaa !100
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !74
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, 1
  %36 = icmp eq i32 %35, %31
  br i1 %36, label %454, label %37

37:                                               ; preds = %28, %25, %13
  br label %454

38:                                               ; preds = %7
  %39 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !79
  %41 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = icmp eq i32 %5, 0
  br i1 %43, label %94, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.Bone, ptr %42, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !102
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %454

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ null, %49 ]
  %58 = icmp ne ptr %57, null
  %59 = icmp ne i32 %5, 2
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !104
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %61, %66
  %67 = phi ptr [ %73, %66 ], [ %64, %61 ]
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !105
  %70 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !102
  %72 = and i32 %71, -8
  store i32 %72, ptr %70, align 8, !tbaa !102
  %73 = load ptr, ptr %67, align 8, !tbaa !93
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !107

75:                                               ; preds = %66, %61, %56
  %76 = icmp eq i32 %5, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = load i32, ptr %45, align 8, !tbaa !102
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = and i32 %78, -2
  store i32 %82, ptr %45, align 8, !tbaa !102
  br label %87

83:                                               ; preds = %77, %75
  %84 = load i32, ptr %45, align 8, !tbaa !102
  %85 = or i32 %84, 1
  store i32 %85, ptr %45, align 8, !tbaa !102
  %86 = getelementptr inbounds %struct.bArmature, ptr %40, i64 0, i32 5
  store ptr %42, ptr %86, align 8, !tbaa !108
  br label %87

87:                                               ; preds = %83, %81
  %88 = icmp eq i8 %6, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = load i32, ptr %45, align 8, !tbaa !102
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %40, ptr noundef %42, i8 noundef zeroext %92)
  br label %93

93:                                               ; preds = %89, %87
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %57) #5
  br label %454

94:                                               ; preds = %38
  %95 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !45
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Base, ptr %96, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !67
  br label %101

101:                                              ; preds = %98, %94
  %102 = phi ptr [ %100, %98 ], [ null, %94 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.Object, ptr %102, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !85
  %107 = icmp eq ptr %106, %40
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.Bone, ptr %42, i64 0, i32 10
  %110 = load i32, ptr %109, align 8, !tbaa !102
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %454

113:                                              ; preds = %108, %104, %101
  br label %454

114:                                              ; preds = %7
  %115 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !99
  %117 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !85
  %119 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !101
  switch i32 %5, label %178 [
    i32 0, label %215
    i32 1, label %121
    i32 2, label %142
  ]

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %123 = load i32, ptr %122, align 4, !tbaa !110
  %124 = and i32 %123, 1024
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %178

126:                                              ; preds = %121
  tail call void @ED_armature_deselect_all(ptr noundef %116, i32 noundef 0) #5
  %127 = load i32, ptr %122, align 4, !tbaa !110
  %128 = or i32 %127, 7
  store i32 %128, ptr %122, align 4, !tbaa !110
  %129 = getelementptr inbounds %struct.bArmature, ptr %118, i64 0, i32 6
  store ptr %120, ptr %129, align 8, !tbaa !112
  %130 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !113
  %132 = icmp eq ptr %131, null
  %133 = and i32 %127, 16
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.EditBone, ptr %131, i64 0, i32 9
  %138 = load i32, ptr %137, align 4, !tbaa !110
  %139 = or i32 %138, 4
  store i32 %139, ptr %137, align 4, !tbaa !110
  br label %140

140:                                              ; preds = %136, %126
  %141 = load ptr, ptr %115, align 8, !tbaa !99
  br label %175

142:                                              ; preds = %114
  %143 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %144 = load i32, ptr %143, align 4, !tbaa !110
  %145 = and i32 %144, 1024
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %142
  %148 = and i32 %144, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = or i32 %144, 7
  store i32 %151, ptr %143, align 4, !tbaa !110
  %152 = getelementptr inbounds %struct.bArmature, ptr %118, i64 0, i32 6
  store ptr %120, ptr %152, align 8, !tbaa !112
  %153 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !113
  %155 = icmp eq ptr %154, null
  %156 = and i32 %144, 16
  %157 = icmp eq i32 %156, 0
  %158 = or i1 %157, %155
  br i1 %158, label %175, label %159

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.EditBone, ptr %154, i64 0, i32 9
  %161 = load i32, ptr %160, align 4, !tbaa !110
  %162 = or i32 %161, 4
  store i32 %162, ptr %160, align 4, !tbaa !110
  br label %175

163:                                              ; preds = %147
  %164 = and i32 %144, -1032
  store i32 %164, ptr %143, align 4, !tbaa !110
  %165 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !113
  %167 = icmp eq ptr %166, null
  %168 = and i32 %144, 16
  %169 = icmp eq i32 %168, 0
  %170 = or i1 %169, %167
  br i1 %170, label %175, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.EditBone, ptr %166, i64 0, i32 9
  %173 = load i32, ptr %172, align 4, !tbaa !110
  %174 = and i32 %173, -5
  store i32 %174, ptr %172, align 4, !tbaa !110
  br label %175

175:                                              ; preds = %163, %171, %150, %159, %140
  %176 = phi ptr [ %141, %140 ], [ %116, %159 ], [ %116, %150 ], [ %116, %171 ], [ %116, %163 ]
  %177 = phi i32 [ 1, %140 ], [ 1, %159 ], [ 1, %150 ], [ 0, %171 ], [ 0, %163 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %176) #5
  br label %178

178:                                              ; preds = %175, %142, %121, %114
  %179 = phi i32 [ 0, %121 ], [ 0, %142 ], [ 0, %114 ], [ %177, %175 ]
  %180 = icmp eq i8 %6, 0
  br i1 %180, label %454, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %120, align 8, !tbaa !114
  %183 = icmp eq ptr %182, null
  br i1 %183, label %454, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %186 = load i32, ptr %185, align 4, !tbaa !110
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  %189 = getelementptr inbounds %struct.bArmature, ptr %118, i64 0, i32 15
  br label %190

190:                                              ; preds = %184, %212
  %191 = phi ptr [ %182, %184 ], [ %213, %212 ]
  %192 = tail call zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef nonnull %120, ptr noundef nonnull %191) #5
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %212, label %194

194:                                              ; preds = %190
  br i1 %188, label %208, label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %189, align 8, !tbaa !115
  %197 = getelementptr inbounds %struct.EditBone, ptr %191, i64 0, i32 10
  %198 = load i32, ptr %197, align 8, !tbaa !116
  %199 = and i32 %198, %196
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.EditBone, ptr %191, i64 0, i32 9
  %203 = load i32, ptr %202, align 4, !tbaa !110
  %204 = and i32 %203, 2098176
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = or i32 %203, 7
  store i32 %207, ptr %202, align 4, !tbaa !110
  br label %212

208:                                              ; preds = %201, %195, %194
  %209 = getelementptr inbounds %struct.EditBone, ptr %191, i64 0, i32 9
  %210 = load i32, ptr %209, align 4, !tbaa !110
  %211 = and i32 %210, -8
  store i32 %211, ptr %209, align 4, !tbaa !110
  br label %212

212:                                              ; preds = %208, %206, %190
  %213 = load ptr, ptr %191, align 8, !tbaa !114
  %214 = icmp eq ptr %213, null
  br i1 %214, label %454, label %190, !llvm.loop !117

215:                                              ; preds = %114
  %216 = getelementptr inbounds %struct.EditBone, ptr %120, i64 0, i32 9
  %217 = load i32, ptr %216, align 4, !tbaa !110
  %218 = and i32 %217, 1
  br label %454

219:                                              ; preds = %7
  %220 = icmp eq i32 %5, 0
  br i1 %220, label %454, label %221

221:                                              ; preds = %219
  %222 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %223 = load ptr, ptr %222, align 8, !tbaa !79
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %223) #5
  br label %454

224:                                              ; preds = %7
  %225 = icmp eq i32 %5, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %224
  %227 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i8 noundef zeroext 0), !range !44
  br label %453

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !79
  %231 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %232 = load ptr, ptr %231, align 8, !tbaa !45
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.Base, ptr %232, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !67
  br label %237

237:                                              ; preds = %228, %234
  %238 = phi ptr [ %236, %234 ], [ null, %228 ]
  %239 = icmp eq ptr %230, %238
  br i1 %239, label %454, label %453

240:                                              ; preds = %7
  %241 = icmp eq i32 %5, 0
  br i1 %241, label %454, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %244 = load ptr, ptr %243, align 8, !tbaa !79
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655553, ptr noundef %244) #5
  br label %454

245:                                              ; preds = %7
  %246 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !79
  %248 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %247) #5
  %249 = icmp eq i32 %5, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %252 = load ptr, ptr %251, align 8, !tbaa !99
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #5
  br label %255

255:                                              ; preds = %254, %250
  %256 = getelementptr inbounds %struct.Object, ptr %247, i64 0, i32 27
  %257 = load i32, ptr %256, align 8, !tbaa !118
  %258 = and i32 %257, 64
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  tail call void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef %248) #5
  br label %267

261:                                              ; preds = %255
  tail call void @ED_armature_enter_posemode(ptr noundef %0, ptr noundef %248) #5
  br label %267

262:                                              ; preds = %245
  %263 = getelementptr inbounds %struct.Object, ptr %247, i64 0, i32 27
  %264 = load i32, ptr %263, align 8, !tbaa !118
  %265 = and i32 %264, 64
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %454

267:                                              ; preds = %262, %261, %260
  br label %454

268:                                              ; preds = %7
  %269 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !79
  %271 = getelementptr inbounds %struct.Object, ptr %270, i64 0, i32 19
  %272 = load ptr, ptr %271, align 8, !tbaa !85
  %273 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %274 = load ptr, ptr %273, align 8, !tbaa !101
  %275 = icmp eq i32 %5, 0
  br i1 %275, label %315, label %276

276:                                              ; preds = %268
  %277 = getelementptr inbounds %struct.bPoseChannel, ptr %274, i64 0, i32 12
  %278 = load ptr, ptr %277, align 8, !tbaa !105
  %279 = getelementptr inbounds %struct.Bone, ptr %278, i64 0, i32 10
  %280 = load i32, ptr %279, align 8, !tbaa !102
  %281 = and i32 %280, 64
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %336

283:                                              ; preds = %276
  %284 = icmp eq i32 %5, 2
  br i1 %284, label %299, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.Object, ptr %270, i64 0, i32 18
  %287 = load ptr, ptr %286, align 8, !tbaa !104
  %288 = load ptr, ptr %287, align 8, !tbaa !93
  %289 = icmp eq ptr %288, null
  br i1 %289, label %304, label %290

290:                                              ; preds = %285, %290
  %291 = phi ptr [ %297, %290 ], [ %288, %285 ]
  %292 = getelementptr inbounds %struct.bPoseChannel, ptr %291, i64 0, i32 12
  %293 = load ptr, ptr %292, align 8, !tbaa !105
  %294 = getelementptr inbounds %struct.Bone, ptr %293, i64 0, i32 10
  %295 = load i32, ptr %294, align 8, !tbaa !102
  %296 = and i32 %295, -8
  store i32 %296, ptr %294, align 8, !tbaa !102
  %297 = load ptr, ptr %291, align 8, !tbaa !93
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %290, !llvm.loop !119

299:                                              ; preds = %283
  %300 = and i32 %280, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %299
  %303 = and i32 %280, -66
  store i32 %303, ptr %279, align 8, !tbaa !102
  br label %308

304:                                              ; preds = %290, %285, %299
  %305 = load i32, ptr %279, align 8, !tbaa !102
  %306 = or i32 %305, 1
  store i32 %306, ptr %279, align 8, !tbaa !102
  %307 = getelementptr inbounds %struct.bArmature, ptr %272, i64 0, i32 5
  store ptr %278, ptr %307, align 8, !tbaa !108
  br label %308

308:                                              ; preds = %304, %302
  %309 = icmp eq i8 %6, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %308
  %311 = load i32, ptr %279, align 8, !tbaa !102
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %272, ptr noundef %278, i8 noundef zeroext %313)
  br label %314

314:                                              ; preds = %310, %308
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %270) #5
  br label %336

315:                                              ; preds = %268
  %316 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !45
  %318 = icmp eq ptr %317, null
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.Base, ptr %317, i64 0, i32 7
  %321 = load ptr, ptr %320, align 8, !tbaa !67
  br label %322

322:                                              ; preds = %319, %315
  %323 = phi ptr [ %321, %319 ], [ null, %315 ]
  %324 = icmp eq ptr %270, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.Object, ptr %270, i64 0, i32 18
  %327 = load ptr, ptr %326, align 8, !tbaa !104
  %328 = icmp eq ptr %327, null
  br i1 %328, label %336, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.bPoseChannel, ptr %274, i64 0, i32 12
  %331 = load ptr, ptr %330, align 8, !tbaa !105
  %332 = getelementptr inbounds %struct.Bone, ptr %331, i64 0, i32 10
  %333 = load i32, ptr %332, align 8, !tbaa !102
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %454

336:                                              ; preds = %329, %325, %322, %314, %276
  br label %454

337:                                              ; preds = %7
  %338 = icmp eq i32 %5, 0
  br i1 %338, label %454, label %339

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %341 = load ptr, ptr %340, align 8, !tbaa !79
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %341) #5
  br label %454

342:                                              ; preds = %7
  %343 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %344 = load i16, ptr %343, align 4, !tbaa !34
  %345 = icmp eq i16 %344, 17235
  br i1 %345, label %346, label %454

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %348 = load ptr, ptr %347, align 8, !tbaa !79
  %349 = icmp eq i32 %5, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 1
  %352 = load i16, ptr %351, align 2, !tbaa !120
  %353 = getelementptr inbounds %struct.Scene, ptr %348, i64 0, i32 22, i32 61
  store i16 %352, ptr %353, align 8, !tbaa !121
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67371008, ptr noundef %348) #5
  br label %454

354:                                              ; preds = %346
  %355 = getelementptr inbounds %struct.Scene, ptr %348, i64 0, i32 22, i32 61
  %356 = load i16, ptr %355, align 8, !tbaa !121
  %357 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 1
  %358 = load i16, ptr %357, align 2, !tbaa !120
  %359 = icmp eq i16 %356, %358
  %360 = zext i1 %359 to i32
  br label %454

361:                                              ; preds = %7
  %362 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %363 = load ptr, ptr %362, align 8, !tbaa !79
  %364 = icmp eq i32 %5, 0
  br i1 %364, label %375, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.Object, ptr %363, i64 0, i32 18
  %367 = load ptr, ptr %366, align 8, !tbaa !104
  %368 = icmp eq ptr %367, null
  br i1 %368, label %397, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %371 = load i16, ptr %370, align 2, !tbaa !74
  %372 = sext i16 %371 to i32
  %373 = add nsw i32 %372, 1
  %374 = getelementptr inbounds %struct.bPose, ptr %367, i64 0, i32 10
  store i32 %373, ptr %374, align 8, !tbaa !122
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %363) #5
  br label %397

375:                                              ; preds = %361
  %376 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %377 = load ptr, ptr %376, align 8, !tbaa !45
  %378 = icmp eq ptr %377, null
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.Base, ptr %377, i64 0, i32 7
  %381 = load ptr, ptr %380, align 8, !tbaa !67
  br label %382

382:                                              ; preds = %379, %375
  %383 = phi ptr [ %381, %379 ], [ null, %375 ]
  %384 = icmp eq ptr %363, %383
  br i1 %384, label %385, label %397

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.Object, ptr %363, i64 0, i32 18
  %387 = load ptr, ptr %386, align 8, !tbaa !104
  %388 = icmp eq ptr %387, null
  br i1 %388, label %397, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.bPose, ptr %387, i64 0, i32 10
  %391 = load i32, ptr %390, align 8, !tbaa !122
  %392 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 8
  %393 = load i16, ptr %392, align 2, !tbaa !74
  %394 = sext i16 %393 to i32
  %395 = add nsw i32 %394, 1
  %396 = icmp eq i32 %391, %395
  br i1 %396, label %454, label %397

397:                                              ; preds = %389, %385, %382, %369, %365
  br label %454

398:                                              ; preds = %7
  %399 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %400 = load ptr, ptr %399, align 8, !tbaa !101
  %401 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #5
  %402 = icmp eq i32 %5, 0
  br i1 %402, label %422, label %403

403:                                              ; preds = %398
  %404 = load ptr, ptr %401, align 8, !tbaa !124
  %405 = tail call i32 @BLI_findindex(ptr noundef %404, ptr noundef %400) #5
  %406 = icmp eq i32 %405, -1
  br i1 %406, label %421, label %407

407:                                              ; preds = %403
  %408 = icmp eq i32 %5, 2
  br i1 %408, label %409, label %416

409:                                              ; preds = %407
  tail call void @BKE_sequencer_active_set(ptr noundef %1, ptr noundef null) #5
  tail call void @ED_sequencer_deselect_all(ptr noundef %1) #5
  %410 = getelementptr inbounds %struct.Sequence, ptr %400, i64 0, i32 5
  %411 = load i32, ptr %410, align 8, !tbaa !126
  %412 = and i32 %411, 1
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %409
  %415 = and i32 %411, -2
  store i32 %415, ptr %410, align 8, !tbaa !126
  br label %421

416:                                              ; preds = %407
  tail call void @ED_sequencer_deselect_all(ptr noundef %1) #5
  br label %417

417:                                              ; preds = %416, %409
  %418 = getelementptr inbounds %struct.Sequence, ptr %400, i64 0, i32 5
  %419 = load i32, ptr %418, align 8, !tbaa !126
  %420 = or i32 %419, 1
  store i32 %420, ptr %418, align 8, !tbaa !126
  tail call void @BKE_sequencer_active_set(ptr noundef %1, ptr noundef %400) #5
  br label %421

421:                                              ; preds = %417, %414, %403
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502086, ptr noundef %1) #5
  br label %431

422:                                              ; preds = %398
  %423 = getelementptr inbounds %struct.Editing, ptr %401, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !128
  %425 = icmp eq ptr %424, %400
  br i1 %425, label %426, label %431

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.Sequence, ptr %400, i64 0, i32 5
  %428 = load i32, ptr %427, align 8, !tbaa !126
  %429 = and i32 %428, 1
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %454

431:                                              ; preds = %426, %422, %421
  br label %454

432:                                              ; preds = %7
  %433 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #5
  %434 = icmp eq i32 %5, 0
  br i1 %434, label %435, label %454

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %437 = load ptr, ptr %436, align 8, !tbaa !101
  %438 = getelementptr inbounds %struct.Sequence, ptr %437, i64 0, i32 5
  %439 = load i32, ptr %438, align 8, !tbaa !126
  %440 = and i32 %439, 1
  br label %454

441:                                              ; preds = %7
  %442 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 12
  %443 = load ptr, ptr %442, align 8, !tbaa !101
  %444 = icmp eq i32 %5, 0
  %445 = getelementptr inbounds %struct.wmKeyMapItem, ptr %443, i64 0, i32 13
  %446 = load i16, ptr %445, align 8, !tbaa !129
  br i1 %444, label %447, label %451

447:                                              ; preds = %441
  %448 = and i16 %446, 1
  %449 = xor i16 %448, 1
  %450 = zext nneg i16 %449 to i32
  br label %454

451:                                              ; preds = %441
  %452 = xor i16 %446, 1
  store i16 %452, ptr %445, align 8, !tbaa !129
  br label %454

453:                                              ; preds = %226, %237, %7
  br label %454

454:                                              ; preds = %212, %432, %181, %451, %447, %435, %431, %426, %397, %389, %354, %350, %342, %339, %337, %336, %329, %267, %262, %242, %240, %221, %219, %215, %178, %113, %108, %93, %44, %37, %28, %237, %453
  %455 = phi i32 [ 0, %453 ], [ 1, %237 ], [ 0, %37 ], [ 1, %28 ], [ 1, %108 ], [ 0, %113 ], [ 0, %44 ], [ 0, %93 ], [ %179, %178 ], [ %218, %215 ], [ 0, %219 ], [ 0, %221 ], [ 0, %240 ], [ 0, %242 ], [ 0, %267 ], [ 1, %262 ], [ 0, %336 ], [ 1, %329 ], [ 0, %337 ], [ 0, %339 ], [ 0, %350 ], [ %360, %354 ], [ 0, %342 ], [ 0, %397 ], [ 1, %389 ], [ 0, %431 ], [ 1, %426 ], [ %440, %435 ], [ 0, %451 ], [ %450, %447 ], [ %179, %181 ], [ 0, %432 ], [ %179, %212 ]
  ret i32 %455
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  %11 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2
  %13 = sitofp i32 %1 to float
  %14 = sitofp i32 %2 to float
  %15 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %12, float noundef %13, float noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %15) #5
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 12
  %17 = load i16, ptr %16, align 2, !tbaa !131
  %18 = add i16 %17, -11
  %19 = icmp ult i16 %18, 2
  br i1 %19, label %34, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 11
  %22 = load i16, ptr %21, align 8, !tbaa !134
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load float, ptr %6, align 4, !tbaa !135
  %27 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 1, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !136
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !138
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
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %38, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef nonnull %6)
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %36, label %43, !llvm.loop !142

43:                                               ; preds = %40
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str) #5
  br label %56

44:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i16 -1, ptr %7, align 2, !tbaa !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !138
  %46 = sitofp i16 %45 to float
  %47 = load float, ptr %6, align 4, !tbaa !135
  %48 = load float, ptr %15, align 4, !tbaa !135
  call void @UI_view2d_listview_view_to_cell(ptr noundef nonnull %12, float noundef 1.000000e+03, float noundef %46, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef %47, float noundef %48, ptr noundef null, ptr noundef nonnull %8) #5
  %49 = call fastcc i32 @outliner_select(ptr noundef %11, ptr noundef nonnull %35, ptr noundef nonnull %8, ptr noundef nonnull %7), !range !44
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.SpaceOops, ptr %11, i64 0, i32 13
  %53 = load i16, ptr %52, align 4, !tbaa !144
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 4, !tbaa !144
  br label %55

55:                                               ; preds = %51, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  br label %56

56:                                               ; preds = %55, %43
  call void @ED_region_tag_redraw(ptr noundef %10) #5
  br label %57

57:                                               ; preds = %25, %56
  %58 = phi i32 [ 4, %56 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !135
  %10 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !145
  %12 = sitofp i32 %11 to float
  %13 = fcmp ogt float %9, %12
  br i1 %13, label %14, label %146

14:                                               ; preds = %7
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !138
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %11, %16
  %18 = sitofp i32 %17 to float
  %19 = fcmp olt float %9, %18
  br i1 %19, label %20, label %146

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 7
  %24 = load i16, ptr %23, align 8, !tbaa !90
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %20
  %28 = load float, ptr %6, align 4, !tbaa !135
  %29 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !146
  %31 = sitofp i32 %30 to float
  %32 = fcmp ogt float %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = add nsw i32 %30, %16
  %35 = sitofp i32 %34 to float
  %36 = fcmp olt float %28, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = icmp eq i8 %4, 0
  %39 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 2
  %40 = load i16, ptr %39, align 4, !tbaa !147
  br i1 %38, label %47, label %41

41:                                               ; preds = %37
  %42 = and i16 %40, -2
  store i16 %42, ptr %39, align 4, !tbaa !147
  %43 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  %44 = tail call i32 @outliner_has_one_flag(ptr noundef %2, ptr noundef nonnull %43, i16 noundef signext 1, i32 noundef 1) #5
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i16
  tail call void @outliner_set_flag(ptr noundef %2, ptr noundef nonnull %43, i16 noundef signext 1, i16 noundef signext %46) #5
  br label %155

47:                                               ; preds = %37
  %48 = and i16 %40, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = and i16 %40, -2
  store i16 %51, ptr %39, align 4, !tbaa !147
  br label %155

52:                                               ; preds = %47
  %53 = or disjoint i16 %40, 1
  store i16 %53, ptr %39, align 4, !tbaa !147
  br label %155

54:                                               ; preds = %20, %33, %27
  %55 = load float, ptr %6, align 4, !tbaa !135
  %56 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !146
  %58 = add nsw i32 %57, %16
  %59 = sitofp i32 %58 to float
  %60 = fcmp ogt float %55, %59
  br i1 %60, label %61, label %146

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 10
  %63 = load i16, ptr %62, align 2, !tbaa !148
  %64 = sitofp i16 %63 to float
  %65 = fcmp olt float %55, %64
  br i1 %65, label %66, label %146

66:                                               ; preds = %61
  %67 = load i16, ptr %22, align 8, !tbaa !77
  %68 = add i16 %67, -26
  %69 = icmp ult i16 %68, 3
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = icmp ne i8 %4, 0
  %72 = icmp eq i16 %67, 0
  %73 = and i1 %71, %72
  %74 = select i1 %73, i32 2, i32 1
  %75 = icmp ne i8 %5, 0
  %76 = and i1 %75, %72
  %77 = zext i1 %76 to i8
  %78 = tail call fastcc i32 @tree_element_set_active_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %74, i8 noundef zeroext %77), !range !44
  br label %79

79:                                               ; preds = %66, %70
  %80 = load i16, ptr %22, align 8, !tbaa !77
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %84 = load i16, ptr %83, align 4, !tbaa !34
  switch i16 %84, label %140 [
    i16 17235, label %85
    i16 21063, label %92
    i16 17741, label %138
    i16 21827, label %138
    i16 16973, label %138
    i16 21580, label %138
    i16 21057, label %138
  ]

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %155, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @CTX_wm_screen(ptr noundef %0) #5
  %91 = load ptr, ptr %86, align 8, !tbaa !79
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %90, ptr noundef %91) #5
  br label %155

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.TreeStoreElem, ptr %22, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = icmp eq i8 %4, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Group, ptr %94, i64 0, i32 1
  br label %98

98:                                               ; preds = %102, %96
  %99 = phi ptr [ %97, %96 ], [ %100, %102 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !93
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.GroupObject, ptr %100, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !149
  %105 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 53
  %106 = load i16, ptr %105, align 4, !tbaa !94
  %107 = and i16 %106, 1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %98, label %109, !llvm.loop !151

109:                                              ; preds = %102, %98
  %110 = phi i16 [ 1, %98 ], [ 0, %102 ]
  %111 = load ptr, ptr %97, align 8, !tbaa !93
  %112 = icmp eq ptr %111, null
  br i1 %112, label %137, label %113

113:                                              ; preds = %109, %113
  %114 = phi ptr [ %118, %113 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.GroupObject, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !149
  %117 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %116) #5
  tail call void @ED_base_object_select(ptr noundef %117, i16 noundef signext %110) #5
  %118 = load ptr, ptr %114, align 8, !tbaa !93
  %119 = icmp eq ptr %118, null
  br i1 %119, label %137, label %113, !llvm.loop !152

120:                                              ; preds = %92
  tail call void @BKE_scene_base_deselect_all(ptr noundef %1) #5
  %121 = getelementptr inbounds %struct.Group, ptr %94, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !93
  %123 = icmp eq ptr %122, null
  br i1 %123, label %137, label %124

124:                                              ; preds = %120, %134
  %125 = phi ptr [ %135, %134 ], [ %122, %120 ]
  %126 = getelementptr inbounds %struct.GroupObject, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !149
  %128 = getelementptr inbounds %struct.Object, ptr %127, i64 0, i32 53
  %129 = load i16, ptr %128, align 4, !tbaa !94
  %130 = and i16 %129, 1
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %127) #5
  tail call void @ED_base_object_select(ptr noundef %133, i16 noundef signext 1) #5
  br label %134

134:                                              ; preds = %124, %132
  %135 = load ptr, ptr %125, align 8, !tbaa !93
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %124, !llvm.loop !153

137:                                              ; preds = %113, %134, %109, %120
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %1) #5
  br label %155

138:                                              ; preds = %82, %82, %82, %82, %82
  %139 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.13, i16 noundef signext 1, ptr noundef null) #5
  br label %155

140:                                              ; preds = %82
  %141 = tail call i32 @tree_element_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext 0), !range !44
  br label %155

142:                                              ; preds = %79
  %143 = icmp eq i8 %4, 0
  %144 = select i1 %143, i32 1, i32 2
  %145 = tail call i32 @tree_element_type_active(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %22, i32 noundef %144, i8 noundef zeroext %5), !range !44
  br label %155

146:                                              ; preds = %54, %61, %14, %7
  %147 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  br label %148

148:                                              ; preds = %152, %146
  %149 = phi ptr [ %147, %146 ], [ %150, %152 ]
  %150 = load ptr, ptr %149, align 8, !tbaa !93
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = tail call fastcc zeroext i8 @do_outliner_item_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %150, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6)
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %148, label %155, !llvm.loop !154

155:                                              ; preds = %148, %152, %50, %52, %41, %89, %85, %138, %140, %137, %142
  %156 = phi i8 [ 1, %142 ], [ 1, %137 ], [ 1, %140 ], [ 1, %138 ], [ 1, %85 ], [ 1, %89 ], [ 1, %41 ], [ 1, %52 ], [ 1, %50 ], [ 1, %152 ], [ 0, %148 ]
  ret i8 %156
}

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_listview_view_to_cell(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @outliner_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %1, align 8, !tbaa !155
  %6 = icmp eq ptr %5, null
  br i1 %6, label %71, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %7, %62
  %10 = phi i8 [ 0, %7 ], [ %63, %62 ]
  %11 = phi ptr [ %5, %7 ], [ %64, %62 ]
  %12 = load i32, ptr %2, align 4, !tbaa !156
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 7
  %20 = load i16, ptr %19, align 8, !tbaa !90
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i16, ptr %3, align 2, !tbaa !143
  %25 = icmp eq i16 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 2
  %28 = load i16, ptr %27, align 4, !tbaa !147
  %29 = lshr i16 %28, 1
  %30 = and i16 %29, 1
  %31 = xor i16 %30, 1
  store i16 %31, ptr %3, align 2, !tbaa !143
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i16, ptr %3, align 2, !tbaa !143
  %34 = icmp eq i16 %33, 0
  %35 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 2
  %36 = load i16, ptr %35, align 4, !tbaa !147
  br i1 %34, label %39, label %37

37:                                               ; preds = %32
  %38 = or i16 %36, 2
  store i16 %38, ptr %35, align 4, !tbaa !147
  br label %62

39:                                               ; preds = %32
  %40 = and i16 %36, -3
  store i16 %40, ptr %35, align 4, !tbaa !147
  br label %62

41:                                               ; preds = %14
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %16, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !147
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %8, align 2, !tbaa !157
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  %51 = and i32 %44, 8
  %52 = icmp eq i32 %51, 0
  %53 = or i1 %52, %50
  br i1 %53, label %62, label %54

54:                                               ; preds = %47, %41
  %55 = add nsw i32 %12, -1
  store i32 %55, ptr %2, align 4, !tbaa !156
  %56 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  %57 = tail call fastcc i32 @outliner_select(ptr noundef %0, ptr noundef nonnull %56, ptr noundef nonnull %2, ptr noundef %3), !range !44
  %58 = trunc i32 %57 to i8
  %59 = or i8 %10, %58
  %60 = load i32, ptr %2, align 4, !tbaa !156
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %2, align 4, !tbaa !156
  br label %62

62:                                               ; preds = %37, %39, %18, %54, %47
  %63 = phi i8 [ %10, %18 ], [ %59, %54 ], [ %10, %47 ], [ 1, %39 ], [ 1, %37 ]
  %64 = load ptr, ptr %11, align 8, !tbaa !158
  %65 = load i32, ptr %2, align 4, !tbaa !156
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %2, align 4, !tbaa !156
  %67 = icmp eq ptr %64, null
  br i1 %67, label %68, label %9, !llvm.loop !159

68:                                               ; preds = %62, %9
  %69 = phi i8 [ %10, %9 ], [ %63, %62 ]
  %70 = zext nneg i8 %69 to i32
  br label %71

71:                                               ; preds = %68, %4
  %72 = phi i32 [ 0, %4 ], [ %70, %68 ]
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_item_activate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_item_activate, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5
  %9 = load ptr, ptr %6, align 8, !tbaa !167
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_item_activate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.4) #5
  %7 = trunc i32 %6 to i8
  %8 = load ptr, ptr %4, align 8, !tbaa !168
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.7) #5
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !156
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !156
  %15 = tail call i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %12, i32 noundef %14, i8 noundef zeroext %7, i8 noundef zeroext %10), !range !170
  ret i32 %15
}

declare i32 @ED_operator_outliner_active(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !160
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !163
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_border_select_exec, ptr %5, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %8, align 8, !tbaa !166
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !174
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 0) #5
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #5
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.14) #5
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %3) #5
  %10 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %3) #5
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %2 ]
  call fastcc void @outliner_item_border_select(ptr noundef nonnull %3, ptr noundef nonnull %15, i32 noundef %9)
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !175

18:                                               ; preds = %14, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #5
  call void @ED_region_tag_redraw(ptr noundef %6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_outliner_bone_select_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !93
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
  %14 = load i32, ptr %13, align 8, !tbaa !176
  %15 = load i32, ptr %9, align 8, !tbaa !115
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !102
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = or i32 %20, 1
  store i32 %24, ptr %19, align 8, !tbaa !102
  br label %29

25:                                               ; preds = %12, %18, %10
  %26 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !102
  %28 = and i32 %27, -8
  store i32 %28, ptr %26, align 8, !tbaa !102
  br label %29

29:                                               ; preds = %25, %23
  tail call fastcc void @do_outliner_bone_select_recursive(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext %2)
  %30 = load ptr, ptr %11, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !177

32:                                               ; preds = %29, %3
  ret void
}

declare void @ED_armature_deselect_all(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_armature_ebone_is_child_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_exit_posemode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_enter_posemode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_sequencer_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @outliner_set_flag(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare i32 @outliner_has_one_flag(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outliner_item_border_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !178
  %11 = fcmp ult float %10, %8
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !138
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %7, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !179
  %19 = fcmp ugt float %18, %16
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %2, 3
  %22 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %23 = load i16, ptr %22, align 4, !tbaa !147
  %24 = and i16 %23, -3
  %25 = select i1 %21, i16 2, i16 0
  %26 = or disjoint i16 %24, %25
  store i16 %26, ptr %22, align 4, !tbaa !147
  br label %27

27:                                               ; preds = %20, %12, %3
  %28 = getelementptr inbounds %struct.TreeStoreElem, ptr %5, i64 0, i32 2
  %29 = load i16, ptr %28, align 4, !tbaa !147
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %38, %36 ], [ %34, %32 ]
  tail call fastcc void @outliner_item_border_select(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %2)
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %36, !llvm.loop !180

40:                                               ; preds = %36, %32, %27
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!45 = !{!46, !36, i64 168}
!46 = !{!"Scene", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !48, i64 280, !58, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !39, i64 4384, !59, i64 4400, !60, i64 4416, !63, i64 4600, !36, i64 4608, !64, i64 4616, !36, i64 4640, !65, i64 4648, !65, i64 4656, !51, i64 4664, !52, i64 4824, !66, i64 4888, !36, i64 4952}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!48 = !{!"RenderData", !49, i64 0, !36, i64 248, !36, i64 256, !53, i64 264, !54, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !50, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !55, i64 544, !55, i64 560, !56, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !40, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !50, i64 660, !50, i64 664, !41, i64 668, !41, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !50, i64 2528, !50, i64 2532, !41, i64 2536, !41, i64 2538, !50, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !40, i64 2576, !50, i64 2580, !37, i64 2584, !57, i64 2616, !40, i64 3976, !40, i64 3980}
!49 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !51, i64 24, !52, i64 184}
!50 = !{!"float", !37, i64 0}
!51 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!52 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!53 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!54 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !50, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!55 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!56 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!57 = !{!"BakeData", !49, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!58 = !{!"AudioData", !40, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !50, i64 24, !50, i64 28}
!59 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!60 = !{!"GameData", !59, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !61, i64 40, !41, i64 64, !41, i64 66, !50, i64 68, !62, i64 72, !50, i64 128, !50, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!61 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!62 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !40, i64 40, !50, i64 44, !50, i64 48, !41, i64 52, !41, i64 54}
!63 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!64 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!65 = !{!"long", !37, i64 0}
!66 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!67 = !{!68, !36, i64 32}
!68 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!69 = !{!70, !36, i64 448}
!70 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !71, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !50, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !65, i64 1304, !65, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!71 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!72 = !{!35, !36, i64 16}
!73 = !{!70, !40, i64 460}
!74 = !{!35, !41, i64 58}
!75 = !{!37, !37, i64 0}
!76 = !{!35, !36, i64 48}
!77 = !{!78, !41, i64 0}
!78 = !{!"TreeStoreElem", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8}
!79 = !{!78, !36, i64 8}
!80 = !{!81, !41, i64 132}
!81 = !{!"World", !47, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !50, i64 260, !41, i64 264, !41, i64 266, !41, i64 268, !41, i64 270, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !41, i64 324, !41, i64 326, !41, i64 328, !41, i64 330, !41, i64 332, !41, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !41, i64 504, !41, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!82 = !{!46, !36, i64 136}
!83 = !{!84, !41, i64 280}
!84 = !{!"Lamp", !47, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !40, i64 132, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !36, i64 200, !41, i64 208, !41, i64 210, !50, i64 212, !50, i64 216, !50, i64 220, !50, i64 224, !50, i64 228, !50, i64 232, !50, i64 236, !41, i64 240, !41, i64 242, !41, i64 244, !41, i64 246, !37, i64 248, !37, i64 249, !41, i64 250, !41, i64 252, !41, i64 254, !41, i64 256, !41, i64 258, !50, i64 260, !50, i64 264, !50, i64 268, !50, i64 272, !41, i64 276, !41, i64 278, !41, i64 280, !41, i64 282, !41, i64 284, !41, i64 286, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !41, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !41, i64 496, !41, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!85 = !{!70, !36, i64 296}
!86 = !{!87, !37, i64 541}
!87 = !{!"Material", !47, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !50, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !50, i64 208, !50, i64 212, !50, i64 216, !50, i64 220, !88, i64 224, !89, i64 312, !50, i64 328, !50, i64 332, !50, i64 336, !50, i64 340, !50, i64 344, !50, i64 348, !50, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !50, i64 364, !50, i64 368, !41, i64 372, !41, i64 374, !50, i64 376, !50, i64 380, !50, i64 384, !50, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !50, i64 420, !50, i64 424, !50, i64 428, !50, i64 432, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !50, i64 456, !37, i64 460, !50, i64 524, !50, i64 528, !50, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !50, i64 556, !50, i64 560, !37, i64 564, !50, i64 580, !50, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !50, i64 616, !50, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !50, i64 800, !50, i64 804, !50, i64 808, !50, i64 812, !50, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !50, i64 848, !50, i64 852, !50, i64 856, !50, i64 860, !50, i64 864, !50, i64 868, !50, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!88 = !{!"VolumeSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !50, i64 52, !50, i64 56, !50, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84}
!89 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!90 = !{!35, !41, i64 56}
!91 = !{!46, !36, i64 128}
!92 = !{!68, !40, i64 24}
!93 = !{!36, !36, i64 0}
!94 = !{!70, !41, i64 948}
!95 = !{!70, !37, i64 1160}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!46, !36, i64 176}
!100 = !{!70, !41, i64 1126}
!101 = !{!35, !36, i64 72}
!102 = !{!103, !40, i64 176}
!103 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !50, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !50, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !37, i64 308, !40, i64 320, !41, i64 324, !37, i64 326}
!104 = !{!70, !36, i64 288}
!105 = !{!106, !36, i64 120}
!106 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !50, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !50, i64 524, !50, i64 528, !50, i64 532, !36, i64 536}
!107 = distinct !{!107, !97, !98}
!108 = !{!109, !36, i64 168}
!109 = !{!"bArmature", !47, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!110 = !{!111, !40, i64 132}
!111 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !50, i64 104, !37, i64 108, !37, i64 120, !40, i64 132, !40, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !41, i64 180}
!112 = !{!109, !36, i64 176}
!113 = !{!111, !36, i64 24}
!114 = !{!111, !36, i64 0}
!115 = !{!109, !40, i64 216}
!116 = !{!111, !40, i64 136}
!117 = distinct !{!117, !97, !98}
!118 = !{!70, !40, i64 432}
!119 = distinct !{!119, !97, !98}
!120 = !{!78, !41, i64 2}
!121 = !{!46, !41, i64 888}
!122 = !{!123, !40, i64 80}
!123 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !40, i64 28, !40, i64 32, !50, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !71, i64 104, !37, i64 152}
!124 = !{!125, !36, i64 0}
!125 = !{!"Editing", !36, i64 0, !39, i64 8, !39, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !40, i64 2096, !40, i64 2100, !40, i64 2104, !40, i64 2108, !55, i64 2112}
!126 = !{!127, !40, i64 96}
!127 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !50, i64 144, !50, i64 148, !50, i64 152, !41, i64 156, !41, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !50, i64 224, !50, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !39, i64 256, !36, i64 272, !36, i64 280, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !50, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !39, i64 336}
!128 = !{!125, !36, i64 40}
!129 = !{!130, !41, i64 168}
!130 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!131 = !{!132, !41, i64 290}
!132 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !50, i64 36, !37, i64 40, !133, i64 56, !39, i64 216, !36, i64 232, !37, i64 240, !78, i64 272, !41, i64 288, !41, i64 290, !41, i64 292, !41, i64 294, !36, i64 296}
!133 = !{!"View2D", !55, i64 0, !55, i64 16, !56, i64 32, !56, i64 48, !56, i64 64, !37, i64 80, !37, i64 88, !50, i64 96, !50, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!134 = !{!132, !41, i64 288}
!135 = !{!50, !50, i64 0}
!136 = !{!137, !50, i64 36}
!137 = !{!"ARegion", !36, i64 0, !36, i64 8, !133, i64 16, !56, i64 176, !56, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !50, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!138 = !{!139, !41, i64 8948}
!139 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !50, i64 8956, !50, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !50, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !140, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !50, i64 10904, !50, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !141, i64 10928}
!140 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!141 = !{!"WalkNavigation", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !41, i64 24, !37, i64 26}
!142 = distinct !{!142, !97, !98}
!143 = !{!41, !41, i64 0}
!144 = !{!132, !41, i64 292}
!145 = !{!35, !40, i64 44}
!146 = !{!35, !40, i64 40}
!147 = !{!78, !41, i64 4}
!148 = !{!35, !41, i64 62}
!149 = !{!150, !36, i64 16}
!150 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!151 = distinct !{!151, !97, !98}
!152 = distinct !{!152, !97, !98}
!153 = distinct !{!153, !97, !98}
!154 = distinct !{!154, !97, !98}
!155 = !{!39, !36, i64 0}
!156 = !{!40, !40, i64 0}
!157 = !{!132, !41, i64 294}
!158 = !{!35, !36, i64 0}
!159 = distinct !{!159, !97, !98}
!160 = !{!161, !36, i64 0}
!161 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !162, i64 152, !41, i64 184}
!162 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!163 = !{!161, !36, i64 8}
!164 = !{!161, !36, i64 24}
!165 = !{!161, !36, i64 48}
!166 = !{!161, !36, i64 72}
!167 = !{!161, !36, i64 88}
!168 = !{!169, !36, i64 112}
!169 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!170 = !{i32 2, i32 5}
!171 = !{!161, !36, i64 32}
!172 = !{!161, !36, i64 64}
!173 = !{!161, !36, i64 56}
!174 = !{!161, !41, i64 184}
!175 = distinct !{!175, !97, !98}
!176 = !{!103, !40, i64 320}
!177 = distinct !{!177, !97, !98}
!178 = !{!55, !50, i64 12}
!179 = !{!55, !50, i64 8}
!180 = distinct !{!180, !97, !98}
