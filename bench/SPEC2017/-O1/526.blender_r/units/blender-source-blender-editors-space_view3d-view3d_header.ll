; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_header.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@.str = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Toggle layer(s) visibility\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_layers\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"The layer number to set, zero for all layers\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Add this layer to the current view layers\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Toggle the layer\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.12 = private unnamed_addr constant [79 x i8] c"Vertex select - Shift-Click for multiple modes, Ctrl-Click contracts selection\00", align 1
@.str.13 = private unnamed_addr constant [85 x i8] c"Edge select - Shift-Click for multiple modes, Ctrl-Click expands/contracts selection\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"Face select - Shift-Click for multiple modes, Ctrl-Click expands selection\00", align 1
@RNA_SpaceView3D = external global %struct.StructRNA, align 1
@RNA_ToolSettings = external global %struct.StructRNA, align 1
@RNA_Scene = external global %struct.StructRNA, align 1
@object_mode_items = external local_unnamed_addr global [0 x %struct.EnumPropertyItem], align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_mode_set\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"viewport_shade\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"pivot_point\00", align 1
@RNA_Mesh = external global %struct.StructRNA, align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"use_paint_mask\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"use_paint_mask_vertex\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"use_pivot_point_align\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"show_manipulator\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"transform_manipulators\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"transform_orientation\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"layers_used\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"lock_camera_and_layers\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Selectmode Set: Vertex\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Selectmode Set: Edge\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Selectmode Set: Face\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_layers_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_layers_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_layers_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 0, i32 noundef 20, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 20) #4
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #4
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_layers_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 20
  %9 = load i16, ptr %8, align 2, !tbaa !53
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %13 = load i16, ptr %12, align 8, !tbaa !54
  %14 = icmp ne i16 %13, 0
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = zext i1 %14 to i32
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %17) #4
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %19 = load i16, ptr %18, align 4, !tbaa !57
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = tail call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.3) #4
  %25 = add nsw i32 %24, 10
  %26 = load ptr, ptr %22, align 8, !tbaa !55
  tail call void @RNA_int_set(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef %25) #4
  br label %27

27:                                               ; preds = %21, %11
  %28 = tail call i32 @view3d_layers_exec(ptr noundef %0, ptr noundef %1), !range !58
  br label %29

29:                                               ; preds = %3, %7, %27
  %30 = phi i32 [ 4, %27 ], [ 8, %7 ], [ 8, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.3) #4
  %10 = load ptr, ptr %7, align 8, !tbaa !55
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.9) #4
  %12 = icmp slt i32 %9, 0
  br i1 %12, label %157, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !62
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, ptr %16, align 4, !tbaa !62
  br label %20

20:                                               ; preds = %19, %15
  %21 = and i32 %11, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %25 = load i32, ptr %24, align 8, !tbaa !66
  %26 = icmp eq i32 %25, 1048575
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32, ptr %16, align 4, !tbaa !62
  store i32 %28, ptr %24, align 8, !tbaa !66
  %29 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = icmp eq ptr %30, null
  br i1 %31, label %120, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 52
  %34 = load i32, ptr %33, align 8, !tbaa !86
  %35 = and i32 %34, %28
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %120

37:                                               ; preds = %40
  %38 = add nuw nsw i32 %41, 1
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %120, label %40, !llvm.loop !89

40:                                               ; preds = %32, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %32 ]
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %34
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %37, label %45

45:                                               ; preds = %40
  %46 = or i32 %42, %28
  store i32 %46, ptr %24, align 8, !tbaa !66
  br label %120

47:                                               ; preds = %23, %20
  %48 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %49 = load i32, ptr %48, align 8, !tbaa !66
  store i32 %49, ptr %16, align 4, !tbaa !62
  %50 = or i32 %49, 1048575
  store i32 %50, ptr %48, align 8, !tbaa !66
  br label %120

51:                                               ; preds = %13
  %52 = add nsw i32 %9, -1
  %53 = load ptr, ptr %7, align 8, !tbaa !55
  %54 = tail call i32 @RNA_boolean_get(ptr noundef %53, ptr noundef nonnull @.str.6) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %51
  %57 = and i32 %11, 255
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %61 = load i32, ptr %60, align 8, !tbaa !66
  %62 = shl nuw i32 1, %52
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = xor i32 %62, -1
  %67 = and i32 %61, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 %67, ptr %60, align 8, !tbaa !66
  br label %78

70:                                               ; preds = %65, %59, %56
  %71 = shl nuw i32 1, %52
  %72 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %73 = load i32, ptr %72, align 8, !tbaa !66
  %74 = or i32 %73, %71
  store i32 %74, ptr %72, align 8, !tbaa !66
  br label %78

75:                                               ; preds = %51
  %76 = shl nuw i32 1, %52
  %77 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  store i32 %76, ptr %77, align 8, !tbaa !66
  br label %78

78:                                               ; preds = %69, %70, %75
  %79 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = icmp eq ptr %80, null
  br i1 %81, label %99, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 52
  %84 = load i32, ptr %83, align 8, !tbaa !86
  %85 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %86 = load i32, ptr %85, align 8, !tbaa !66
  %87 = and i32 %86, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %99

89:                                               ; preds = %92
  %90 = add nuw nsw i32 %93, 1
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %99, label %92, !llvm.loop !89

92:                                               ; preds = %82, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %82 ]
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %84
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %89, label %97

97:                                               ; preds = %92
  %98 = or i32 %94, %86
  store i32 %98, ptr %85, align 8, !tbaa !66
  br label %99

99:                                               ; preds = %89, %78, %82, %97
  %100 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 22
  %101 = load i32, ptr %100, align 8, !tbaa !66
  %102 = shl nuw i32 1, %52
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 23
  br i1 %104, label %107, label %106

106:                                              ; preds = %99
  store i32 %102, ptr %105, align 4, !tbaa !92
  br label %120

107:                                              ; preds = %99
  %108 = load i32, ptr %105, align 4, !tbaa !92
  %109 = and i32 %108, %101
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %120

111:                                              ; preds = %114
  %112 = add nuw nsw i32 %115, 1
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %120, label %114, !llvm.loop !93

114:                                              ; preds = %107, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %107 ]
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %101
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %111, label %119

119:                                              ; preds = %114
  store i32 %116, ptr %105, align 4, !tbaa !92
  br label %120

120:                                              ; preds = %111, %37, %45, %32, %27, %106, %119, %107, %47
  %121 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 26
  %122 = load i16, ptr %121, align 4, !tbaa !94
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %155, label %124

124:                                              ; preds = %120
  %125 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  %126 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %127 = tail call ptr @CTX_wm_area(ptr noundef %0) #4
  %128 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %129 = icmp ne ptr %128, null
  %130 = icmp ne ptr %127, null
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %155

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 20
  %134 = load ptr, ptr %133, align 8, !tbaa !95
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 26
  %138 = load i16, ptr %137, align 4, !tbaa !94
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ScrArea, ptr %127, i64 0, i32 8
  %142 = load i8, ptr %141, align 8, !tbaa !96
  %143 = icmp eq i8 %142, 1
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 22
  %146 = load i32, ptr %145, align 8, !tbaa !66
  %147 = getelementptr inbounds %struct.Scene, ptr %126, i64 0, i32 12
  store i32 %146, ptr %147, align 8, !tbaa !97
  %148 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 23
  %149 = load i32, ptr %148, align 4, !tbaa !92
  %150 = getelementptr inbounds %struct.Scene, ptr %126, i64 0, i32 13
  store i32 %149, ptr %150, align 4, !tbaa !98
  %151 = getelementptr inbounds %struct.View3D, ptr %128, i64 0, i32 15
  %152 = load ptr, ptr %151, align 8, !tbaa !99
  %153 = getelementptr inbounds %struct.Scene, ptr %126, i64 0, i32 2
  store ptr %152, ptr %153, align 8, !tbaa !100
  %154 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 26
  tail call void @BKE_screen_view3d_main_sync(ptr noundef nonnull %154, ptr noundef %126) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68157440, ptr noundef %126) #4
  br label %155

155:                                              ; preds = %144, %140, %136, %132, %124, %120
  %156 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  tail call void @DAG_on_visible_update(ptr noundef %156, i8 noundef zeroext 0) #4
  tail call void @ED_area_tag_redraw(ptr noundef %4) #4
  br label %157

157:                                              ; preds = %2, %155
  %158 = phi i32 [ 4, %155 ], [ 2, %2 ]
  ret i32 %158
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_layers_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #4
  %6 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateEditModeSelection(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %1) #4
  %4 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #4
  tail call void @uiBlockSetHandleFunc(ptr noundef %4, ptr noundef nonnull @do_view3d_header_buttons, ptr noundef null) #4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !101
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %3) #4
  %12 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #4
  %13 = tail call ptr @uiLayoutGetBlock(ptr noundef %12) #4
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !102
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %11, i64 0, i32 12
  %16 = tail call ptr @uiDefIconButBitS(ptr noundef %13, i32 noundef 1536, i32 noundef 1, i32 noundef 110, i32 noundef 546, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.12) #4
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !102
  %18 = tail call ptr @uiDefIconButBitS(ptr noundef %13, i32 noundef 1536, i32 noundef 2, i32 noundef 111, i32 noundef 547, i32 noundef 0, i32 noundef 0, i16 noundef signext %17, i16 noundef signext %17, ptr noundef nonnull %15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.13) #4
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !102
  %20 = tail call ptr @uiDefIconButBitS(ptr noundef %13, i32 noundef 1536, i32 noundef 4, i32 noundef 112, i32 noundef 548, i32 noundef 0, i32 noundef 0, i16 noundef signext %19, i16 noundef signext %19, ptr noundef nonnull %15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.14) #4
  br label %21

21:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #1

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_view3d_header_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 18
  %8 = load i16, ptr %7, align 2, !tbaa !49
  %9 = getelementptr inbounds %struct.wmEvent, ptr %6, i64 0, i32 17
  %10 = load i16, ptr %9, align 8, !tbaa !54
  switch i32 %2, label %28 [
    i32 110, label %11
    i32 111, label %16
    i32 112, label %21
  ]

11:                                               ; preds = %3
  %12 = trunc i16 %10 to i8
  %13 = trunc i16 %8 to i8
  %14 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext 1, i32 noundef -1, i8 noundef zeroext %12, i8 noundef zeroext %13) #4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %26

16:                                               ; preds = %3
  %17 = trunc i16 %10 to i8
  %18 = trunc i16 %8 to i8
  %19 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext 2, i32 noundef -1, i8 noundef zeroext %17, i8 noundef zeroext %18) #4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %26

21:                                               ; preds = %3
  %22 = trunc i16 %10 to i8
  %23 = trunc i16 %8 to i8
  %24 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext 4, i32 noundef -1, i8 noundef zeroext %22, i8 noundef zeroext %23) #4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %16, %11
  %27 = phi ptr [ @.str.29, %11 ], [ @.str.30, %16 ], [ @.str.31, %21 ]
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %27) #4
  br label %28

28:                                               ; preds = %26, %3, %21, %16, %11
  ret void
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uiDefIconButBitS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateHeader3D(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @CTX_wm_screen(ptr noundef %1) #4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %1) #4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call ptr @CTX_data_scene(ptr noundef %1) #4
  %12 = tail call ptr @CTX_data_tool_settings(ptr noundef %1) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  %13 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi ptr [ %18, %16 ], [ null, %2 ]
  %21 = tail call ptr @CTX_data_edit_object(ptr noundef %1) #4
  call void @RNA_pointer_create(ptr noundef %7, ptr noundef nonnull @RNA_SpaceView3D, ptr noundef %10, ptr noundef nonnull %3) #4
  call void @RNA_pointer_create(ptr noundef %11, ptr noundef nonnull @RNA_ToolSettings, ptr noundef %12, ptr noundef nonnull %4) #4
  call void @RNA_pointer_create(ptr noundef %11, ptr noundef nonnull @RNA_Scene, ptr noundef %11, ptr noundef nonnull %5) #4
  %22 = call ptr @uiLayoutGetBlock(ptr noundef %0) #4
  call void @uiBlockSetHandleFunc(ptr noundef %22, ptr noundef nonnull @do_view3d_header_buttons, ptr noundef null) #4
  call void @uiBlockSetEmboss(ptr noundef %22, i8 noundef zeroext 0) #4
  %23 = icmp eq ptr %20, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 27
  %26 = load i32, ptr %25, align 8, !tbaa !111
  %27 = add i32 %26, -2
  %28 = call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 31)
  switch i32 %28, label %29 [
    i32 0, label %30
    i32 1, label %30
    i32 3, label %30
    i32 7, label %30
  ]

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %24, %19, %29, %24, %24, %24
  %31 = phi i1 [ true, %24 ], [ false, %29 ], [ true, %24 ], [ true, %24 ], [ false, %19 ], [ true, %24 ]
  %32 = phi i32 [ %26, %24 ], [ %26, %29 ], [ %26, %24 ], [ %26, %24 ], [ 0, %19 ], [ %26, %24 ]
  %33 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #4
  %34 = load ptr, ptr getelementptr inbounds ([0 x %struct.EnumPropertyItem], ptr @object_mode_items, i64 0, i64 0, i32 1), align 8, !tbaa !112
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %30, %49
  %37 = phi ptr [ %52, %49 ], [ %34, %30 ]
  %38 = phi ptr [ %50, %49 ], [ @object_mode_items, %30 ]
  %39 = load i32, ptr %38, align 8, !tbaa !114
  %40 = icmp eq i32 %39, %32
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8, ptr %37, align 1, !tbaa !115
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.EnumPropertyItem, ptr %38, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = getelementptr inbounds %struct.EnumPropertyItem, ptr %38, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !117
  br label %54

49:                                               ; preds = %41, %36
  %50 = getelementptr inbounds %struct.EnumPropertyItem, ptr %38, i64 1
  %51 = getelementptr inbounds %struct.EnumPropertyItem, ptr %38, i64 1, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !112
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !118

54:                                               ; preds = %49, %30, %44
  %55 = phi ptr [ %46, %44 ], [ @.str.15, %30 ], [ @.str.15, %49 ]
  %56 = phi i32 [ %48, %44 ], [ 130, %30 ], [ 130, %49 ]
  call void @uiItemMenuEnumO(ptr noundef %33, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %55, i32 noundef %56) #4
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  %57 = icmp eq ptr %21, null
  %58 = and i1 %57, %31
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 27
  %61 = load i32, ptr %60, align 8, !tbaa !111
  %62 = and i32 %61, 30
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %65, ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, ptr %60, align 8, !tbaa !111
  switch i32 %67, label %68 [
    i32 2, label %89
    i32 32, label %89
  ]

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #4
  %69 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !119
  call void @RNA_pointer_create(ptr noundef %70, ptr noundef nonnull @RNA_Mesh, ptr noundef %70, ptr noundef nonnull %6) #4
  %71 = load i32, ptr %60, align 8, !tbaa !111
  %72 = and i32 %71, 20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %77

75:                                               ; preds = %68
  %76 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %76, ptr noundef nonnull %6, ptr noundef nonnull @.str.20, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  call void @uiItemR(ptr noundef %76, ptr noundef nonnull %6, ptr noundef nonnull @.str.21, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %77

77:                                               ; preds = %75, %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #4
  br label %89

78:                                               ; preds = %54
  %79 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %79, ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br i1 %57, label %80, label %81

80:                                               ; preds = %78
  call void @uiItemR(ptr noundef %79, ptr noundef nonnull %3, ptr noundef nonnull @.str.22, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %81

81:                                               ; preds = %80, %78
  %82 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #4
  call void @uiItemR(ptr noundef %82, ptr noundef nonnull %3, ptr noundef nonnull @.str.23, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  %83 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 42
  %84 = load i8, ptr %83, align 1, !tbaa !120
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  call void @uiItemR(ptr noundef %82, ptr noundef nonnull %3, ptr noundef nonnull @.str.24, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %88

88:                                               ; preds = %87, %81
  call void @uiItemR(ptr noundef %82, ptr noundef nonnull %3, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %89

89:                                               ; preds = %66, %66, %77, %88
  br i1 %57, label %90, label %104

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 20
  %92 = load ptr, ptr %91, align 8, !tbaa !95
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  br i1 %23, label %98, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 52
  %97 = load i32, ptr %96, align 8, !tbaa !86
  br label %98

98:                                               ; preds = %94, %95
  %99 = phi i32 [ %97, %95 ], [ 0, %94 ]
  %100 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 26
  %101 = load i16, ptr %100, align 4, !tbaa !94
  %102 = icmp eq i16 %101, 0
  %103 = select i1 %102, ptr %3, ptr %5
  call void @uiTemplateLayers(ptr noundef %0, ptr noundef nonnull %103, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, ptr noundef nonnull @.str.27, i32 noundef %99) #4
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.28, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef 0) #4
  br label %104

104:                                              ; preds = %98, %90, %89
  call void @uiTemplateEditModeSelection(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #4
  ret void
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @uiItemMenuEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @uiTemplateLayers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

declare void @BKE_screen_view3d_main_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @EDBM_selectmode_toggle(ptr noundef, i16 noundef signext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !41, i64 74}
!50 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !51, i64 48, !51, i64 52, !52, i64 56, !51, i64 64, !51, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"double", !37, i64 0}
!53 = !{!50, !41, i64 78}
!54 = !{!50, !41, i64 72}
!55 = !{!56, !36, i64 112}
!56 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!57 = !{!50, !41, i64 76}
!58 = !{i32 2, i32 5}
!59 = !{!60, !36, i64 96}
!60 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !61, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!61 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!62 = !{!63, !51, i64 84}
!63 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !64, i64 36, !37, i64 40, !37, i64 56, !64, i64 72, !64, i64 76, !37, i64 80, !37, i64 81, !51, i64 84, !51, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !65, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !51, i64 224, !51, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !64, i64 244, !64, i64 248, !64, i64 252, !64, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!64 = !{!"float", !37, i64 0}
!65 = !{!"rctf", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!66 = !{!63, !51, i64 224}
!67 = !{!68, !36, i64 176}
!68 = !{!"Scene", !69, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !70, i64 280, !77, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !78, i64 4400, !79, i64 4416, !82, i64 4600, !36, i64 4608, !83, i64 4616, !36, i64 4640, !84, i64 4648, !84, i64 4656, !72, i64 4664, !73, i64 4824, !85, i64 4888, !36, i64 4952}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!70 = !{!"RenderData", !71, i64 0, !36, i64 248, !36, i64 256, !74, i64 264, !75, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !64, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !65, i64 544, !65, i64 560, !61, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !64, i64 612, !64, i64 616, !64, i64 620, !64, i64 624, !51, i64 628, !64, i64 632, !64, i64 636, !64, i64 640, !64, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !64, i64 660, !64, i64 664, !41, i64 668, !41, i64 670, !64, i64 672, !64, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !64, i64 2528, !64, i64 2532, !41, i64 2536, !41, i64 2538, !64, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !64, i64 2560, !64, i64 2564, !36, i64 2568, !51, i64 2576, !64, i64 2580, !37, i64 2584, !76, i64 2616, !51, i64 3976, !51, i64 3980}
!71 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !64, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !64, i64 136, !64, i64 140, !36, i64 144, !36, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!74 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!75 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !64, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!76 = !{!"BakeData", !71, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !64, i64 1280, !64, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!77 = !{!"AudioData", !51, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !64, i64 24, !64, i64 28}
!78 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!79 = !{!"GameData", !78, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !80, i64 40, !41, i64 64, !41, i64 66, !64, i64 68, !81, i64 72, !64, i64 128, !64, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180}
!80 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !64, i64 8, !64, i64 12, !36, i64 16}
!81 = !{!"RecastData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !51, i64 40, !64, i64 44, !64, i64 48, !41, i64 52, !41, i64 54}
!82 = !{!"UnitSettings", !64, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!83 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!84 = !{!"long", !37, i64 0}
!85 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!86 = !{!87, !51, i64 944}
!87 = !{!"Object", !69, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !88, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !64, i64 616, !64, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !64, i64 988, !64, i64 992, !64, i64 996, !64, i64 1000, !64, i64 1004, !64, i64 1008, !64, i64 1012, !64, i64 1016, !64, i64 1020, !64, i64 1024, !64, i64 1028, !64, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !64, i64 1048, !64, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !64, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !64, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !84, i64 1304, !84, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!88 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!63, !51, i64 228}
!93 = distinct !{!93, !90, !91}
!94 = !{!63, !41, i64 236}
!95 = !{!63, !36, i64 152}
!96 = !{!60, !37, i64 72}
!97 = !{!68, !51, i64 232}
!98 = !{!68, !51, i64 236}
!99 = !{!63, !36, i64 96}
!100 = !{!68, !36, i64 128}
!101 = !{!87, !41, i64 136}
!102 = !{!103, !41, i64 8948}
!103 = !{!"UserDef", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !51, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !51, i64 8484, !51, i64 8488, !51, i64 8492, !41, i64 8496, !41, i64 8498, !51, i64 8500, !51, i64 8504, !51, i64 8508, !51, i64 8512, !51, i64 8516, !51, i64 8520, !51, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !51, i64 8912, !51, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !64, i64 8956, !64, i64 8960, !51, i64 8964, !41, i64 8968, !41, i64 8970, !64, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !104, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !51, i64 10896, !51, i64 10900, !64, i64 10904, !64, i64 10908, !51, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !105, i64 10928}
!104 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!105 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !41, i64 24, !37, i64 26}
!106 = !{!107, !36, i64 136}
!107 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !51, i64 128, !41, i64 132, !41, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !51, i64 160, !51, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!108 = !{!68, !36, i64 168}
!109 = !{!110, !36, i64 32}
!110 = !{!"Base", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!111 = !{!87, !51, i64 432}
!112 = !{!113, !36, i64 8}
!113 = !{!"EnumPropertyItem", !51, i64 0, !36, i64 8, !51, i64 16, !36, i64 24, !36, i64 32}
!114 = !{!113, !51, i64 0}
!115 = !{!37, !37, i64 0}
!116 = !{!113, !36, i64 24}
!117 = !{!113, !51, i64 16}
!118 = distinct !{!118, !90, !91}
!119 = !{!87, !36, i64 296}
!120 = !{!63, !37, i64 293}
