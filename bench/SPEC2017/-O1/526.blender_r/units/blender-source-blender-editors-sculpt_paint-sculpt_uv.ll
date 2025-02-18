; ModuleID = 'blender/source/blender/editors/sculpt_paint/sculpt_uv.c'
source_filename = "blender/source/blender/editors/sculpt_paint/sculpt_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
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
%struct.ListBase = type { ptr, ptr }
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
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.NearestHit = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.UvSculptData = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.UvAdjacencyElement = type { ptr, ptr, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.UvEdge = type { i32, i32, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.UVInitialStroke = type { ptr, i32, [2 x float] }
%struct.UVInitialStrokeElement = type { i32, float, [2 x float] }
%struct.Temp_UvData = type { [2 x float], [2 x float], [2 x float], [2 x float], i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"UV Smooth paint\00", align 1
@PAINT_CURSOR_SCULPT = external constant [3 x i8], align 1
@SCULPT_OT_uv_sculpt_stroke.stroke_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr @.str.2, ptr @.str.3 }, %struct.EnumPropertyItem { i32 1, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.9 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Apply brush normally\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Invert action of brush for duration of stroke\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"RELAX\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Relax\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Switch brush to relax mode for duration of stroke\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Sculpt UVs\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Sculpt UVs using a brush\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SCULPT_OT_uv_sculpt_stroke\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Stroke Mode\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"UV Smooth Brush Data\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"uv_brush_unique_uvs\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"uv_brush_unique_uv_map\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"uv_brush_edge_hash\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"uv_brush_all_edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"uv_brush_edge_connectivity_data\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"uv_sculpt_initial_stroke\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"uv_sculpt_initial_selection\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Temporal data\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_space_image_uv_sculpt_update(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 64
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %5, label %22, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %19

10:                                               ; preds = %9
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #8
  store ptr %12, ptr %6, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 66
  store i32 3, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 65
  store i32 3, ptr %14, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 67
  store i32 1, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.Paint, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !52
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !52
  br label %19

19:                                               ; preds = %10, %9
  %20 = load ptr, ptr %6, align 8, !tbaa !47
  tail call void @BKE_paint_init(ptr noundef %20, ptr noundef nonnull @PAINT_CURSOR_SCULPT) #8
  %21 = tail call ptr @WM_paint_cursor_activate(ptr noundef %0, ptr noundef nonnull @uv_sculpt_brush_poll, ptr noundef nonnull @brush_drawcursor_uvsculpt, ptr noundef null) #8
  br label %26

22:                                               ; preds = %2
  br i1 %8, label %30, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.Paint, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  tail call void @WM_paint_cursor_end(ptr noundef %0, ptr noundef %25) #8
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ null, %23 ], [ %21, %19 ]
  %28 = load ptr, ptr %6, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.Paint, ptr %28, i64 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_sculpt_brush_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %11) #8
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %1, %13
  %17 = phi i1 [ %15, %13 ], [ false, %1 ]
  %18 = icmp ne ptr %2, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i16 %22, 1
  %24 = icmp ne ptr %3, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef nonnull %3) #8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 17
  %31 = load i8, ptr %30, align 4, !tbaa !80
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #8
  %35 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %34) #8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %40 = load i32, ptr %39, align 8, !tbaa !34
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !86
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %33, %46, %42, %16, %20, %26, %29
  %48 = phi i32 [ 0, %29 ], [ 0, %26 ], [ 0, %20 ], [ 0, %16 ], [ 1, %42 ], [ 0, %46 ], [ 0, %33 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal void @brush_drawcursor_uvsculpt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %6) #8
  %8 = icmp ne ptr %6, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Paint, ptr %6, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @BKE_brush_size_get(ptr noundef %5, ptr noundef nonnull %7) #8
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = sitofp i32 %17 to float
  %21 = icmp slt i32 %17, 12
  %22 = fadd float %20, -4.000000e+00
  %23 = fmul float %22, 1.250000e-01
  %24 = fmul float %23, 5.000000e-01
  %25 = select i1 %21, float %24, float 5.000000e-01
  tail call void @glPushMatrix() #8
  %26 = sitofp i32 %1 to float
  %27 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %26, float noundef %27, float noundef 0.000000e+00) #8
  %28 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51
  %29 = load float, ptr %28, align 8, !tbaa !90
  %30 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !90
  %32 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !90
  tail call void @glColor4f(float noundef %29, float noundef %31, float noundef %33, float noundef %25) #8
  tail call void @glEnable(i32 noundef 2848) #8
  tail call void @glEnable(i32 noundef 3042) #8
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %20, i32 noundef 40) #8
  tail call void @glDisable(i32 noundef 3042) #8
  tail call void @glDisable(i32 noundef 2848) #8
  tail call void @glPopMatrix() #8
  br label %34

34:                                               ; preds = %19, %16, %4, %11
  ret void
}

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @uv_sculpt_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @uv_sculpt_brush_poll(ptr noundef %0), !range !91
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local void @SCULPT_OT_uv_sculpt_stroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !92
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_sculpt_stroke_invoke, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @uv_sculpt_stroke_modal, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @SCULPT_OT_uv_sculpt_stroke.stroke_mode_items, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_sculpt_stroke_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.NearestHit, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %18 = tail call ptr %17(i64 noundef 72, ptr noundef nonnull @.str.16) #8
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #8
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %18, ptr %21, align 8, !tbaa !104
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = load ptr, ptr %23, align 8, !tbaa !106
  %25 = getelementptr inbounds %struct.Brush, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  tail call void @curvemapping_initialize(ptr noundef %26) #8
  %27 = icmp eq ptr %18, null
  br i1 %27, label %477, label %28

28:                                               ; preds = %3
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 65
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = tail call i32 @RNA_enum_get(ptr noundef %35, ptr noundef nonnull @.str.13) #8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 66
  %40 = load i32, ptr %39, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ %40, %38 ], [ 2, %28 ]
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 8
  store i8 %43, ptr %44, align 8, !tbaa !112
  %45 = load ptr, ptr %34, align 8, !tbaa !111
  %46 = tail call i32 @RNA_enum_get(ptr noundef %45, ptr noundef nonnull @.str.13) #8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 9
  store i8 %48, ptr %49, align 1, !tbaa !114
  %50 = load ptr, ptr %22, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 7
  store ptr %50, ptr %51, align 8, !tbaa !115
  %52 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 11
  %53 = load i8, ptr %52, align 2, !tbaa !116
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 6
  br i1 %33, label %57, label %62

57:                                               ; preds = %41
  br i1 %55, label %60, label %58

58:                                               ; preds = %57
  %59 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  br label %67

60:                                               ; preds = %57
  %61 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %67

62:                                               ; preds = %41
  br i1 %55, label %65, label %63

63:                                               ; preds = %62
  %64 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  br label %67

65:                                               ; preds = %62
  %66 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %67

67:                                               ; preds = %65, %63, %60, %58
  %68 = phi ptr [ %66, %65 ], [ %64, %63 ], [ %61, %60 ], [ %59, %58 ]
  store ptr %68, ptr %56, align 8, !tbaa !117
  %69 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 6
  %70 = icmp eq ptr %68, null
  br i1 %70, label %479, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2
  %73 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !118
  %75 = sitofp i32 %74 to float
  %76 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !118
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %72, float noundef %75, float noundef %78, ptr noundef nonnull %4, ptr noundef nonnull %79) #8
  br i1 %33, label %80, label %90

80:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  %81 = call ptr @CTX_data_edit_image(ptr noundef %0) #8
  call void @uv_find_nearest_vert(ptr noundef %13, ptr noundef %81, ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %7) #8
  %82 = load ptr, ptr %69, align 8, !tbaa !117
  %83 = load ptr, ptr %7, align 8, !tbaa !119
  %84 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !121
  %86 = call ptr @BM_uv_element_get(ptr noundef %82, ptr noundef %83, ptr noundef %85) #8
  %87 = getelementptr inbounds %struct.UvElement, ptr %86, i64 0, i32 5
  %88 = load i16, ptr %87, align 4, !tbaa !122
  %89 = zext i16 %88 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  br label %90

90:                                               ; preds = %80, %71
  %91 = phi i32 [ %89, %80 ], [ 0, %71 ]
  %92 = load ptr, ptr %69, align 8, !tbaa !117
  %93 = getelementptr inbounds %struct.UvElementMap, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !124
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.UvElementMap, ptr %92, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !126
  %99 = zext nneg i32 %94 to i64
  br label %100

100:                                              ; preds = %96, %114
  %101 = phi i64 [ 0, %96 ], [ %116, %114 ]
  %102 = phi i32 [ 0, %96 ], [ %115, %114 ]
  %103 = getelementptr inbounds %struct.UvElement, ptr %98, i64 %101, i32 3
  %104 = load i8, ptr %103, align 2, !tbaa !127
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %100
  br i1 %33, label %107, label %112

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.UvElement, ptr %98, i64 %101, i32 5
  %109 = load i16, ptr %108, align 4, !tbaa !122
  %110 = zext i16 %109 to i32
  %111 = icmp eq i32 %91, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %106
  %113 = add nsw i32 %102, 1
  br label %114

114:                                              ; preds = %112, %107, %100
  %115 = phi i32 [ %113, %112 ], [ %102, %107 ], [ %102, %100 ]
  %116 = add nuw nsw i64 %101, 1
  %117 = icmp eq i64 %116, %99
  br i1 %117, label %118, label %100, !llvm.loop !128

118:                                              ; preds = %114, %90
  %119 = phi i32 [ 0, %90 ], [ %115, %114 ]
  %120 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %121 = sext i32 %119 to i64
  %122 = mul nsw i64 %121, 24
  %123 = call ptr %120(i64 noundef %122, ptr noundef nonnull @.str.17) #8
  store ptr %123, ptr %18, align 8, !tbaa !131
  %124 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %125 = load ptr, ptr %69, align 8, !tbaa !117
  %126 = getelementptr inbounds %struct.UvElementMap, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !124
  %128 = sext i32 %127 to i64
  %129 = shl nsw i64 %128, 2
  %130 = call ptr %124(i64 noundef %129, ptr noundef nonnull @.str.18) #8
  %131 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.19) #8
  %132 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %133 = load ptr, ptr %69, align 8, !tbaa !117
  %134 = getelementptr inbounds %struct.UvElementMap, ptr %133, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !124
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, 12
  %138 = call ptr %132(i64 noundef %137, ptr noundef nonnull @.str.20) #8
  %139 = load ptr, ptr %18, align 8, !tbaa !131
  %140 = icmp ne ptr %139, null
  %141 = icmp ne ptr %130, null
  %142 = select i1 %140, i1 %141, i1 false
  %143 = icmp ne ptr %131, null
  %144 = select i1 %142, i1 %143, i1 false
  %145 = icmp ne ptr %138, null
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %155, label %147

147:                                              ; preds = %118
  br i1 %145, label %148, label %150

148:                                              ; preds = %147
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %149(ptr noundef nonnull %138) #8
  br label %150

150:                                              ; preds = %148, %147
  br i1 %141, label %151, label %153

151:                                              ; preds = %150
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %152(ptr noundef nonnull %130) #8
  br label %153

153:                                              ; preds = %151, %150
  br i1 %143, label %154, label %479

154:                                              ; preds = %153
  call void @BLI_ghash_free(ptr noundef nonnull %131, ptr noundef null, ptr noundef null) #8
  br label %479

155:                                              ; preds = %118
  %156 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 1
  store i32 %119, ptr %156, align 8, !tbaa !132
  %157 = load i32, ptr %20, align 8, !tbaa !133
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %221

159:                                              ; preds = %155, %215
  %160 = phi i64 [ %217, %215 ], [ 0, %155 ]
  %161 = phi i32 [ %216, %215 ], [ -1, %155 ]
  %162 = load ptr, ptr %69, align 8, !tbaa !117
  %163 = load ptr, ptr %162, align 8, !tbaa !136
  %164 = getelementptr inbounds ptr, ptr %163, i64 %160
  %165 = load ptr, ptr %164, align 8, !tbaa !48
  %166 = icmp eq ptr %165, null
  br i1 %166, label %215, label %167

167:                                              ; preds = %159, %210
  %168 = phi ptr [ %213, %210 ], [ %165, %159 ]
  %169 = phi i32 [ %212, %210 ], [ %161, %159 ]
  %170 = getelementptr inbounds %struct.UvElement, ptr %168, i64 0, i32 3
  %171 = load i8, ptr %170, align 2, !tbaa !127
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %200, label %173

173:                                              ; preds = %167
  br i1 %33, label %174, label %187

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.UvElement, ptr %168, i64 0, i32 5
  %176 = load i16, ptr %175, align 4, !tbaa !122
  %177 = zext i16 %176 to i32
  %178 = icmp eq i32 %91, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %174, %183
  %180 = phi ptr [ %181, %183 ], [ %168, %174 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !137
  %182 = icmp eq ptr %181, null
  br i1 %182, label %210, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.UvElement, ptr %181, i64 0, i32 3
  %185 = load i8, ptr %184, align 2, !tbaa !127
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %179, label %210, !llvm.loop !138

187:                                              ; preds = %174, %173
  %188 = getelementptr inbounds %struct.UvElement, ptr %168, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !139
  %190 = load ptr, ptr %19, align 8, !tbaa !102
  %191 = getelementptr inbounds %struct.BMesh, ptr %190, i64 0, i32 26
  %192 = load ptr, ptr %189, align 8, !tbaa !140
  %193 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %191, ptr noundef %192, i32 noundef 16) #8
  %194 = add nsw i32 %169, 1
  %195 = load ptr, ptr %18, align 8, !tbaa !131
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %195, i64 %196
  store ptr %168, ptr %197, align 8, !tbaa !143
  %198 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %195, i64 %196, i32 2
  store i8 0, ptr %198, align 8, !tbaa !145
  %199 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %195, i64 %196, i32 1
  store ptr %193, ptr %199, align 8, !tbaa !146
  br label %200

200:                                              ; preds = %187, %167
  %201 = phi i32 [ %194, %187 ], [ %169, %167 ]
  %202 = load ptr, ptr %69, align 8, !tbaa !117
  %203 = getelementptr inbounds %struct.UvElementMap, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !126
  %205 = ptrtoint ptr %168 to i64
  %206 = ptrtoint ptr %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 24
  %209 = getelementptr inbounds i32, ptr %130, i64 %208
  store i32 %201, ptr %209, align 4, !tbaa !118
  br label %210

210:                                              ; preds = %183, %179, %200
  %211 = phi ptr [ %168, %200 ], [ %180, %179 ], [ %180, %183 ]
  %212 = phi i32 [ %201, %200 ], [ %169, %179 ], [ %169, %183 ]
  %213 = load ptr, ptr %211, align 8, !tbaa !48
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %167, !llvm.loop !147

215:                                              ; preds = %210, %159
  %216 = phi i32 [ %161, %159 ], [ %212, %210 ]
  %217 = add nuw nsw i64 %160, 1
  %218 = load i32, ptr %20, align 8, !tbaa !133
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %217, %219
  br i1 %220, label %159, label %221, !llvm.loop !148

221:                                              ; preds = %215, %155
  %222 = load ptr, ptr %19, align 8, !tbaa !102
  %223 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %223, align 4, !tbaa !149
  %224 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %224, align 8, !tbaa !151
  %225 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %225, align 8, !tbaa !152
  %226 = getelementptr inbounds %struct.BMesh, ptr %222, i64 0, i32 12
  %227 = load ptr, ptr %226, align 8, !tbaa !153
  store ptr %227, ptr %5, align 8, !tbaa !154
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #8
  %228 = load ptr, ptr %225, align 8, !tbaa !152
  %229 = call ptr %228(ptr noundef nonnull %5) #8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %316, label %231

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %233 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %234 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %235

235:                                              ; preds = %231, %311
  %236 = phi i32 [ 0, %231 ], [ %312, %311 ]
  %237 = phi ptr [ %229, %231 ], [ %314, %311 ]
  store i8 11, ptr %232, align 4, !tbaa !149
  store ptr @bmiter__loop_of_face_begin, ptr %233, align 8, !tbaa !151
  store ptr @bmiter__loop_of_face_step, ptr %234, align 8, !tbaa !152
  store ptr %237, ptr %6, align 8, !tbaa !154
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #8
  %238 = load ptr, ptr %234, align 8, !tbaa !152
  %239 = call ptr %238(ptr noundef nonnull %6) #8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %311, label %241

241:                                              ; preds = %235, %306
  %242 = phi i32 [ %307, %306 ], [ %236, %235 ]
  %243 = phi ptr [ %309, %306 ], [ %239, %235 ]
  %244 = load ptr, ptr %69, align 8, !tbaa !117
  %245 = call ptr @BM_uv_element_get(ptr noundef %244, ptr noundef nonnull %237, ptr noundef nonnull %243) #8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %261, label %247

247:                                              ; preds = %241
  br i1 %33, label %248, label %253

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.UvElement, ptr %245, i64 0, i32 5
  %250 = load i16, ptr %249, align 4, !tbaa !122
  %251 = zext i16 %250 to i32
  %252 = icmp eq i32 %91, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %248, %247
  %254 = getelementptr inbounds %struct.UvElementMap, ptr %244, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !126
  %256 = ptrtoint ptr %245 to i64
  %257 = ptrtoint ptr %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 24
  %260 = trunc i64 %259 to i32
  br label %261

261:                                              ; preds = %253, %248, %241
  %262 = phi i32 [ %260, %253 ], [ -1, %248 ], [ -1, %241 ]
  %263 = load ptr, ptr %69, align 8, !tbaa !117
  %264 = getelementptr inbounds %struct.BMLoop, ptr %243, i64 0, i32 6
  %265 = load ptr, ptr %264, align 8, !tbaa !155
  %266 = call ptr @BM_uv_element_get(ptr noundef %263, ptr noundef nonnull %237, ptr noundef %265) #8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %282, label %268

268:                                              ; preds = %261
  br i1 %33, label %269, label %274

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.UvElement, ptr %266, i64 0, i32 5
  %271 = load i16, ptr %270, align 4, !tbaa !122
  %272 = zext i16 %271 to i32
  %273 = icmp eq i32 %91, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %269, %268
  %275 = getelementptr inbounds %struct.UvElementMap, ptr %263, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !126
  %277 = ptrtoint ptr %266 to i64
  %278 = ptrtoint ptr %276 to i64
  %279 = sub i64 %277, %278
  %280 = sdiv exact i64 %279, 24
  %281 = trunc i64 %280 to i32
  br label %282

282:                                              ; preds = %274, %269, %261
  %283 = phi i32 [ %281, %274 ], [ -1, %269 ], [ -1, %261 ]
  %284 = icmp eq i32 %262, -1
  %285 = icmp eq i32 %283, -1
  %286 = select i1 %284, i1 true, i1 %285
  br i1 %286, label %306, label %287

287:                                              ; preds = %282
  %288 = sext i32 %262 to i64
  %289 = getelementptr inbounds i32, ptr %130, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !118
  %291 = sext i32 %283 to i64
  %292 = getelementptr inbounds i32, ptr %130, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !118
  %294 = sext i32 %242 to i64
  %295 = getelementptr inbounds %struct.UvEdge, ptr %138, i64 %294
  %296 = getelementptr inbounds %struct.UvEdge, ptr %138, i64 %294, i32 2
  store i8 0, ptr %296, align 4, !tbaa !156
  %297 = getelementptr inbounds %struct.UvEdge, ptr %138, i64 %294, i32 1
  %298 = call i32 @llvm.smin.i32(i32 %290, i32 %293)
  %299 = call i32 @llvm.smax.i32(i32 %290, i32 %293)
  store i32 %298, ptr %295, align 4, !tbaa !158
  store i32 %299, ptr %297, align 4, !tbaa !159
  %300 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %131, ptr noundef nonnull %295) #8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %287
  store i8 1, ptr %300, align 1, !tbaa !154
  br label %304

303:                                              ; preds = %287
  call void @BLI_ghash_insert(ptr noundef nonnull %131, ptr noundef nonnull %295, ptr noundef nonnull %296) #8
  br label %304

304:                                              ; preds = %303, %302
  %305 = add nsw i32 %242, 1
  br label %306

306:                                              ; preds = %304, %282
  %307 = phi i32 [ %305, %304 ], [ %242, %282 ]
  %308 = load ptr, ptr %234, align 8, !tbaa !152
  %309 = call ptr %308(ptr noundef nonnull %6) #8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %241, !llvm.loop !160

311:                                              ; preds = %306, %235
  %312 = phi i32 [ %236, %235 ], [ %307, %306 ]
  %313 = load ptr, ptr %225, align 8, !tbaa !152
  %314 = call ptr %313(ptr noundef nonnull %5) #8
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %235, !llvm.loop !161

316:                                              ; preds = %311, %221
  %317 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %317(ptr noundef nonnull %130) #8
  %318 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %319 = call i32 @BLI_ghash_size(ptr noundef nonnull %131) #8
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %320, 12
  %322 = call ptr %318(i64 noundef %321, ptr noundef nonnull @.str.21) #8
  %323 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 2
  store ptr %322, ptr %323, align 8, !tbaa !162
  %324 = icmp eq ptr %322, null
  br i1 %324, label %325, label %327

325:                                              ; preds = %316
  call void @BLI_ghash_free(ptr noundef nonnull %131, ptr noundef null, ptr noundef null) #8
  %326 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %326(ptr noundef nonnull %138) #8
  br label %479

327:                                              ; preds = %316
  %328 = call ptr @BLI_ghashIterator_new(ptr noundef nonnull %131) #8
  %329 = icmp eq ptr %328, null
  br i1 %329, label %334, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.GHashIterator, ptr %328, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !163
  %333 = icmp eq ptr %332, null
  br i1 %333, label %346, label %336

334:                                              ; preds = %327
  call void @BLI_ghash_free(ptr noundef nonnull %131, ptr noundef null, ptr noundef null) #8
  %335 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %335(ptr noundef nonnull %138) #8
  br label %479

336:                                              ; preds = %330, %336
  %337 = phi i64 [ %340, %336 ], [ 0, %330 ]
  %338 = phi ptr [ %344, %336 ], [ %332, %330 ]
  %339 = load ptr, ptr %323, align 8, !tbaa !162
  %340 = add nuw i64 %337, 1
  %341 = getelementptr inbounds %struct.UvEdge, ptr %339, i64 %337
  %342 = getelementptr inbounds %struct._gh_Entry, ptr %338, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %341, ptr noundef nonnull align 4 dereferenceable(12) %343, i64 12, i1 false), !tbaa.struct !167
  call void @BLI_ghashIterator_step(ptr noundef nonnull %328) #8
  %344 = load ptr, ptr %331, align 8, !tbaa !163
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %336, !llvm.loop !168

346:                                              ; preds = %336, %330
  %347 = call i32 @BLI_ghash_size(ptr noundef nonnull %131) #8
  %348 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 3
  store i32 %347, ptr %348, align 8, !tbaa !169
  call void @BLI_ghashIterator_free(ptr noundef nonnull %328) #8
  call void @BLI_ghash_free(ptr noundef nonnull %131, ptr noundef null, ptr noundef null) #8
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %349(ptr noundef nonnull %138) #8
  %350 = load i32, ptr %30, align 4, !tbaa !50
  %351 = and i32 %350, 1
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %381, label %353

353:                                              ; preds = %346
  %354 = load i32, ptr %348, align 8, !tbaa !169
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %381

356:                                              ; preds = %353
  %357 = load ptr, ptr %323, align 8, !tbaa !162
  %358 = zext nneg i32 %354 to i64
  br label %359

359:                                              ; preds = %356, %378
  %360 = phi i64 [ 0, %356 ], [ %379, %378 ]
  %361 = getelementptr inbounds %struct.UvEdge, ptr %357, i64 %360, i32 2
  %362 = load i8, ptr %361, align 4, !tbaa !156
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %378

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.UvEdge, ptr %357, i64 %360
  %366 = load ptr, ptr %18, align 8, !tbaa !131
  %367 = load i32, ptr %365, align 4, !tbaa !158
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %366, i64 %368, i32 2
  %370 = load i8, ptr %369, align 8, !tbaa !145
  %371 = or i8 %370, 1
  store i8 %371, ptr %369, align 8, !tbaa !145
  %372 = getelementptr inbounds %struct.UvEdge, ptr %357, i64 %360, i32 1
  %373 = load i32, ptr %372, align 4, !tbaa !159
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %366, i64 %374, i32 2
  %376 = load i8, ptr %375, align 8, !tbaa !145
  %377 = or i8 %376, 1
  store i8 %377, ptr %375, align 8, !tbaa !145
  br label %378

378:                                              ; preds = %364, %359
  %379 = add nuw nsw i64 %360, 1
  %380 = icmp eq i64 %379, %358
  br i1 %380, label %381, label %359, !llvm.loop !170

381:                                              ; preds = %378, %353, %346
  %382 = load i8, ptr %44, align 8, !tbaa !112
  %383 = icmp eq i8 %382, 3
  br i1 %383, label %384, label %476

384:                                              ; preds = %381
  %385 = load ptr, ptr %21, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  %386 = getelementptr inbounds %struct.UvSculptData, ptr %385, i64 0, i32 7
  %387 = load ptr, ptr %386, align 8, !tbaa !115
  %388 = call ptr @BKE_paint_brush(ptr noundef %387) #8
  %389 = call float @BKE_brush_alpha_get(ptr noundef %13, ptr noundef %388) #8
  %390 = call i32 @BKE_brush_size_get(ptr noundef %13, ptr noundef %388) #8
  %391 = sitofp i32 %390 to float
  %392 = call ptr @CTX_wm_space_image(ptr noundef %0) #8
  call void @ED_space_image_get_size(ptr noundef %392, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  call void @ED_space_image_get_zoom(ptr noundef %392, ptr noundef %29, ptr noundef nonnull %10, ptr noundef nonnull %11) #8
  %393 = load i32, ptr %8, align 4, !tbaa !118
  %394 = sitofp i32 %393 to float
  %395 = load i32, ptr %9, align 4, !tbaa !118
  %396 = sitofp i32 %395 to float
  %397 = fdiv float %394, %396
  %398 = load float, ptr %10, align 4, !tbaa !90
  %399 = fmul float %398, %394
  %400 = fdiv float %391, %399
  %401 = fmul float %400, %400
  %402 = call float @sqrtf(float noundef %401) #8
  %403 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %404 = call ptr %403(i64 noundef 24, ptr noundef nonnull @.str.22) #8
  %405 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 4
  store ptr %404, ptr %405, align 8, !tbaa !171
  %406 = icmp eq ptr %404, null
  br i1 %406, label %407, label %408

407:                                              ; preds = %384
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1)
  br label %408

408:                                              ; preds = %407, %384
  %409 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %410 = load i32, ptr %156, align 8, !tbaa !132
  %411 = sext i32 %410 to i64
  %412 = shl nsw i64 %411, 4
  %413 = call ptr %409(i64 noundef %412, ptr noundef nonnull @.str.23) #8
  %414 = load ptr, ptr %405, align 8, !tbaa !171
  store ptr %413, ptr %414, align 8, !tbaa !172
  %415 = icmp eq ptr %413, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %408
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1)
  br label %417

417:                                              ; preds = %416, %408
  %418 = load ptr, ptr %405, align 8, !tbaa !171
  %419 = getelementptr inbounds %struct.UVInitialStroke, ptr %418, i64 0, i32 2
  %420 = load float, ptr %4, align 4, !tbaa !90
  store float %420, ptr %419, align 4, !tbaa !90
  %421 = load float, ptr %79, align 4, !tbaa !90
  %422 = getelementptr inbounds %struct.UVInitialStroke, ptr %418, i64 0, i32 2, i64 1
  store float %421, ptr %422, align 4, !tbaa !90
  %423 = load i32, ptr %156, align 8, !tbaa !132
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %472

425:                                              ; preds = %417, %466
  %426 = phi i64 [ %468, %466 ], [ 0, %417 ]
  %427 = phi i32 [ %467, %466 ], [ 0, %417 ]
  %428 = load ptr, ptr %18, align 8, !tbaa !131
  %429 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %428, i64 %426, i32 2
  %430 = load i8, ptr %429, align 8, !tbaa !145
  %431 = and i8 %430, 1
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %433, label %466

433:                                              ; preds = %425
  %434 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %428, i64 %426, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !146
  %436 = load float, ptr %435, align 4, !tbaa !90
  %437 = load float, ptr %4, align 4, !tbaa !90
  %438 = fsub float %436, %437
  %439 = getelementptr inbounds float, ptr %435, i64 1
  %440 = load float, ptr %439, align 4, !tbaa !90
  %441 = load float, ptr %79, align 4, !tbaa !90
  %442 = fsub float %440, %441
  %443 = fdiv float %442, %397
  %444 = fmul float %443, %443
  %445 = call float @llvm.fmuladd.f32(float %438, float %438, float %444)
  %446 = fcmp ugt float %445, %401
  br i1 %446, label %466, label %447

447:                                              ; preds = %433
  %448 = call float @sqrtf(float noundef %445) #8
  %449 = call float @BKE_brush_curve_strength(ptr noundef %388, float noundef %448, float noundef %402) #8
  %450 = fmul float %389, %449
  %451 = load ptr, ptr %405, align 8, !tbaa !171
  %452 = load ptr, ptr %451, align 8, !tbaa !172
  %453 = sext i32 %427 to i64
  %454 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %452, i64 %453
  %455 = trunc i64 %426 to i32
  store i32 %455, ptr %454, align 4, !tbaa !174
  %456 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %452, i64 %453, i32 1
  store float %450, ptr %456, align 4, !tbaa !176
  %457 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %452, i64 %453, i32 2
  %458 = load ptr, ptr %18, align 8, !tbaa !131
  %459 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %458, i64 %426, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !146
  %461 = load float, ptr %460, align 4, !tbaa !90
  store float %461, ptr %457, align 4, !tbaa !90
  %462 = getelementptr inbounds float, ptr %460, i64 1
  %463 = load float, ptr %462, align 4, !tbaa !90
  %464 = getelementptr inbounds float, ptr %457, i64 1
  store float %463, ptr %464, align 4, !tbaa !90
  %465 = add nsw i32 %427, 1
  br label %466

466:                                              ; preds = %447, %433, %425
  %467 = phi i32 [ %427, %425 ], [ %465, %447 ], [ %427, %433 ]
  %468 = add nuw nsw i64 %426, 1
  %469 = load i32, ptr %156, align 8, !tbaa !132
  %470 = sext i32 %469 to i64
  %471 = icmp slt i64 %468, %470
  br i1 %471, label %425, label %472, !llvm.loop !177

472:                                              ; preds = %466, %417
  %473 = phi i32 [ 0, %417 ], [ %467, %466 ]
  %474 = load ptr, ptr %405, align 8, !tbaa !171
  %475 = getelementptr inbounds %struct.UVInitialStroke, ptr %474, i64 0, i32 1
  store i32 %473, ptr %475, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %476

476:                                              ; preds = %472, %381
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %477

477:                                              ; preds = %476, %3
  %478 = load ptr, ptr %21, align 8, !tbaa !104
  br label %480

479:                                              ; preds = %153, %154, %67, %334, %325
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %480

480:                                              ; preds = %477, %479
  %481 = phi ptr [ %478, %477 ], [ null, %479 ]
  %482 = icmp eq ptr %481, null
  br i1 %482, label %492, label %483

483:                                              ; preds = %480
  call fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %12)
  %484 = call ptr @CTX_wm_manager(ptr noundef %0) #8
  %485 = call ptr @CTX_wm_window(ptr noundef %0) #8
  %486 = call ptr @WM_event_add_timer(ptr noundef %484, ptr noundef %485, i32 noundef 272, double noundef 0x3F50624DE0000000) #8
  %487 = getelementptr inbounds %struct.UvSculptData, ptr %481, i64 0, i32 5
  store ptr %486, ptr %487, align 8, !tbaa !179
  %488 = icmp eq ptr %486, null
  br i1 %488, label %489, label %490

489:                                              ; preds = %483
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1)
  br label %492

490:                                              ; preds = %483
  %491 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %492

492:                                              ; preds = %480, %490, %489
  %493 = phi i32 [ 1, %490 ], [ 2, %489 ], [ 2, %480 ]
  ret i32 %493
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_sculpt_stroke_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !180
  switch i16 %8, label %22 [
    i16 1, label %9
    i16 2, label %9
    i16 3, label %9
    i16 4, label %16
    i16 17, label %16
    i16 272, label %10
  ]

9:                                                ; preds = %3, %3, %3
  tail call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1)
  br label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %5, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !179
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %3, %3
  tail call fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6)
  br label %17

17:                                               ; preds = %16, %10
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_region_tag_redraw(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !184
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %20) #8
  %21 = load ptr, ptr %19, align 8, !tbaa !184
  tail call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 0) #8
  br label %22

22:                                               ; preds = %3, %17, %9
  %23 = phi i32 [ 1, %17 ], [ 4, %9 ], [ 1, %3 ]
  ret i32 %23
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glPushMatrix() local_unnamed_addr #1

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  %15 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = tail call ptr @BKE_paint_brush(ptr noundef %16) #8
  %18 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  %19 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 8
  %20 = load i8, ptr %19, align 8, !tbaa !112
  %21 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 9
  %22 = load i8, ptr %21, align 1, !tbaa !114
  %23 = tail call float @BKE_brush_alpha_get(ptr noundef %10, ptr noundef %17) #8
  %24 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !118
  %27 = sitofp i32 %26 to float
  %28 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !118
  %30 = sitofp i32 %29 to float
  %31 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %24, float noundef %27, float noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %31) #8
  %32 = call ptr @CTX_wm_space_image(ptr noundef %0) #8
  call void @ED_space_image_get_size(ptr noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  call void @ED_space_image_get_zoom(ptr noundef %32, ptr noundef %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %33 = call i32 @BKE_brush_size_get(ptr noundef %10, ptr noundef %17) #8
  %34 = sitofp i32 %33 to float
  %35 = load i32, ptr %6, align 4, !tbaa !118
  %36 = sitofp i32 %35 to float
  %37 = load float, ptr %8, align 4, !tbaa !90
  %38 = fmul float %37, %36
  %39 = fdiv float %34, %38
  %40 = load i32, ptr %7, align 4, !tbaa !118
  %41 = sitofp i32 %40 to float
  %42 = fdiv float %36, %41
  %43 = fmul float %39, %39
  %44 = call float @sqrtf(float noundef %43) #8
  switch i8 %20, label %566 [
    i8 1, label %45
    i8 2, label %131
    i8 3, label %494
  ]

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !132
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %566

49:                                               ; preds = %45
  %50 = icmp eq i8 %22, 0
  %51 = fneg float %23
  %52 = select i1 %50, float %51, float %23
  br label %53

53:                                               ; preds = %49, %126
  %54 = phi i64 [ 0, %49 ], [ %127, %126 ]
  %55 = load ptr, ptr %14, align 8, !tbaa !131
  %56 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %55, i64 %54, i32 2
  %57 = load i8, ptr %56, align 8, !tbaa !145
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %55, i64 %54, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !146
  %63 = load float, ptr %62, align 4, !tbaa !90
  %64 = load float, ptr %5, align 4, !tbaa !90
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %62, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !90
  %68 = load float, ptr %31, align 4, !tbaa !90
  %69 = fsub float %67, %68
  %70 = fdiv float %69, %42
  %71 = fmul float %70, %70
  %72 = call float @llvm.fmuladd.f32(float %65, float %65, float %71)
  %73 = fcmp ugt float %72, %43
  br i1 %73, label %126, label %74

74:                                               ; preds = %60
  %75 = call float @sqrtf(float noundef %72) #8
  %76 = call float @BKE_brush_curve_strength(ptr noundef %17, float noundef %75, float noundef %44) #8
  %77 = fcmp ogt float %72, 0x38AA95A5C0000000
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = call float @sqrtf(float noundef %72) #8
  %80 = fdiv float 1.000000e+00, %79
  %81 = fmul float %65, %80
  %82 = fmul float %70, %80
  br label %83

83:                                               ; preds = %74, %78
  %84 = phi float [ %81, %78 ], [ 0.000000e+00, %74 ]
  %85 = phi float [ %82, %78 ], [ 0.000000e+00, %74 ]
  %86 = load ptr, ptr %14, align 8, !tbaa !131
  %87 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %86, i64 %54, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !146
  %89 = load float, ptr %88, align 4, !tbaa !90
  %90 = fmul float %52, %76
  %91 = fmul float %90, %84
  %92 = call float @llvm.fmuladd.f32(float %91, float 0x3F50624DE0000000, float %89)
  store float %92, ptr %88, align 4, !tbaa !90
  %93 = getelementptr inbounds float, ptr %88, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !90
  %95 = fmul float %90, %85
  %96 = call float @llvm.fmuladd.f32(float %95, float 0x3F50624DE0000000, float %94)
  store float %96, ptr %93, align 4, !tbaa !90
  %97 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %86, i64 %54
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %83, %110
  %101 = phi ptr [ %124, %110 ], [ %98, %83 ]
  %102 = getelementptr inbounds %struct.UvElement, ptr %101, i64 0, i32 3
  %103 = load i8, ptr %102, align 2, !tbaa !127
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %14, align 8, !tbaa !131
  %107 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %106, i64 %54
  %108 = load ptr, ptr %107, align 8, !tbaa !143
  %109 = icmp eq ptr %101, %108
  br i1 %109, label %110, label %126, !llvm.loop !185

110:                                              ; preds = %105, %100
  %111 = getelementptr inbounds %struct.UvElement, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !139
  %113 = load ptr, ptr %12, align 8, !tbaa !102
  %114 = getelementptr inbounds %struct.BMesh, ptr %113, i64 0, i32 26
  %115 = load ptr, ptr %112, align 8, !tbaa !140
  %116 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %114, ptr noundef %115, i32 noundef 16) #8
  %117 = load ptr, ptr %14, align 8, !tbaa !131
  %118 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %117, i64 %54, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !146
  %120 = load float, ptr %119, align 4, !tbaa !90
  store float %120, ptr %116, align 4, !tbaa !90
  %121 = getelementptr inbounds float, ptr %119, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !90
  %123 = getelementptr inbounds float, ptr %116, i64 1
  store float %122, ptr %123, align 4, !tbaa !90
  %124 = load ptr, ptr %101, align 8, !tbaa !48
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %100

126:                                              ; preds = %110, %105, %83, %60, %53
  %127 = add nuw nsw i64 %54, 1
  %128 = load i32, ptr %46, align 8, !tbaa !132
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %53, label %566, !llvm.loop !186

131:                                              ; preds = %4
  %132 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 67
  %133 = load i32, ptr %132, align 4, !tbaa !51
  %134 = icmp eq i32 %133, 2
  %135 = call float @sqrtf(float noundef %43) #8
  %136 = load ptr, ptr %15, align 8, !tbaa !115
  %137 = call ptr @BKE_paint_brush(ptr noundef %136) #8
  %138 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %139 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !132
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %141, 36
  %143 = call ptr %138(i64 noundef %142, ptr noundef nonnull @.str.24) #8
  %144 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 3
  %145 = load i32, ptr %144, align 8, !tbaa !169
  %146 = icmp sgt i32 %145, 0
  br i1 %134, label %147, label %352

147:                                              ; preds = %131
  br i1 %146, label %148, label %153

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !162
  %151 = load ptr, ptr %14, align 8, !tbaa !131
  %152 = zext nneg i32 %145 to i64
  br label %159

153:                                              ; preds = %159, %147
  %154 = load i32, ptr %139, align 8, !tbaa !132
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %197

156:                                              ; preds = %153
  %157 = load ptr, ptr %14, align 8, !tbaa !131
  %158 = zext nneg i32 %154 to i64
  br label %203

159:                                              ; preds = %148, %159
  %160 = phi i64 [ 0, %148 ], [ %195, %159 ]
  %161 = getelementptr inbounds %struct.UvEdge, ptr %150, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !158
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %163, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !187
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %164, align 4, !tbaa !187
  %167 = getelementptr inbounds %struct.UvEdge, ptr %150, i64 %160, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !159
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %169, i32 4
  %171 = load i32, ptr %170, align 4, !tbaa !187
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %170, align 4, !tbaa !187
  %173 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %169
  %174 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %151, i64 %163, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !146
  %176 = load float, ptr %175, align 4, !tbaa !90
  %177 = load float, ptr %173, align 4, !tbaa !90
  %178 = fadd float %176, %177
  store float %178, ptr %173, align 4, !tbaa !90
  %179 = getelementptr inbounds float, ptr %175, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !90
  %181 = getelementptr inbounds float, ptr %173, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !90
  %183 = fadd float %180, %182
  store float %183, ptr %181, align 4, !tbaa !90
  %184 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %163
  %185 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %151, i64 %169, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !146
  %187 = load float, ptr %186, align 4, !tbaa !90
  %188 = load float, ptr %184, align 4, !tbaa !90
  %189 = fadd float %187, %188
  store float %189, ptr %184, align 4, !tbaa !90
  %190 = getelementptr inbounds float, ptr %186, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !90
  %192 = getelementptr inbounds float, ptr %184, i64 1
  %193 = load float, ptr %192, align 4, !tbaa !90
  %194 = fadd float %191, %193
  store float %194, ptr %192, align 4, !tbaa !90
  %195 = add nuw nsw i64 %160, 1
  %196 = icmp eq i64 %195, %152
  br i1 %196, label %153, label %159, !llvm.loop !189

197:                                              ; preds = %203, %153
  %198 = icmp sgt i32 %145, 0
  br i1 %198, label %199, label %228

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !162
  %202 = zext nneg i32 %145 to i64
  br label %231

203:                                              ; preds = %156, %203
  %204 = phi i64 [ 0, %156 ], [ %226, %203 ]
  %205 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !90
  %207 = getelementptr inbounds float, ptr %205, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !90
  %209 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %204, i32 4
  %210 = load i32, ptr %209, align 4, !tbaa !187
  %211 = sitofp i32 %210 to float
  %212 = fdiv float 1.000000e+00, %211
  %213 = fmul float %206, %212
  %214 = fmul float %208, %212
  %215 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %204, i32 1
  store float %213, ptr %215, align 4, !tbaa !90
  %216 = getelementptr inbounds float, ptr %215, i64 1
  store float %214, ptr %216, align 4, !tbaa !90
  %217 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %157, i64 %204, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !146
  %219 = load float, ptr %218, align 4, !tbaa !90
  %220 = fsub float %213, %219
  %221 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %204, i32 2
  store float %220, ptr %221, align 4, !tbaa !90
  %222 = getelementptr inbounds float, ptr %218, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !90
  %224 = fsub float %214, %223
  %225 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %204, i32 2, i64 1
  store float %224, ptr %225, align 4, !tbaa !90
  %226 = add nuw nsw i64 %204, 1
  %227 = icmp eq i64 %226, %158
  br i1 %227, label %197, label %203, !llvm.loop !190

228:                                              ; preds = %231, %197
  %229 = load i32, ptr %139, align 8, !tbaa !132
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %261, label %564

231:                                              ; preds = %199, %231
  %232 = phi i64 [ 0, %199 ], [ %259, %231 ]
  %233 = getelementptr inbounds %struct.UvEdge, ptr %201, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !158
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %235, i32 3
  %237 = getelementptr inbounds %struct.UvEdge, ptr %201, i64 %232, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !159
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %239, i32 2
  %241 = load float, ptr %240, align 4, !tbaa !90
  %242 = load float, ptr %236, align 4, !tbaa !90
  %243 = fadd float %241, %242
  store float %243, ptr %236, align 4, !tbaa !90
  %244 = getelementptr inbounds float, ptr %240, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !90
  %246 = getelementptr inbounds float, ptr %236, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !90
  %248 = fadd float %245, %247
  store float %248, ptr %246, align 4, !tbaa !90
  %249 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %239, i32 3
  %250 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %235, i32 2
  %251 = load float, ptr %250, align 4, !tbaa !90
  %252 = load float, ptr %249, align 4, !tbaa !90
  %253 = fadd float %251, %252
  store float %253, ptr %249, align 4, !tbaa !90
  %254 = getelementptr inbounds float, ptr %250, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !90
  %256 = getelementptr inbounds float, ptr %249, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !90
  %258 = fadd float %255, %257
  store float %258, ptr %256, align 4, !tbaa !90
  %259 = add nuw nsw i64 %232, 1
  %260 = icmp eq i64 %259, %202
  br i1 %260, label %228, label %231, !llvm.loop !191

261:                                              ; preds = %228, %347
  %262 = phi i64 [ %348, %347 ], [ 0, %228 ]
  %263 = load ptr, ptr %14, align 8, !tbaa !131
  %264 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %263, i64 %262, i32 2
  %265 = load i8, ptr %264, align 8, !tbaa !145
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %347

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %263, i64 %262, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !146
  %271 = load float, ptr %270, align 4, !tbaa !90
  %272 = load float, ptr %5, align 4, !tbaa !90
  %273 = fsub float %271, %272
  %274 = getelementptr inbounds float, ptr %270, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !90
  %276 = load float, ptr %31, align 4, !tbaa !90
  %277 = fsub float %275, %276
  %278 = fdiv float %277, %42
  %279 = fmul float %278, %278
  %280 = call float @llvm.fmuladd.f32(float %273, float %273, float %279)
  %281 = fcmp ugt float %280, %43
  br i1 %281, label %347, label %282

282:                                              ; preds = %268
  %283 = call float @sqrtf(float noundef %280) #8
  %284 = call float @BKE_brush_curve_strength(ptr noundef %137, float noundef %283, float noundef %135) #8
  %285 = fmul float %23, %284
  %286 = fsub float 1.000000e+00, %285
  %287 = load ptr, ptr %14, align 8, !tbaa !131
  %288 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %287, i64 %262, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !146
  %290 = load float, ptr %289, align 4, !tbaa !90
  %291 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 1
  %292 = load float, ptr %291, align 4, !tbaa !90
  %293 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 2
  %294 = load float, ptr %293, align 4, !tbaa !90
  %295 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 3
  %296 = load float, ptr %295, align 4, !tbaa !90
  %297 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 4
  %298 = load i32, ptr %297, align 4, !tbaa !187
  %299 = sitofp i32 %298 to float
  %300 = fdiv float %296, %299
  %301 = fadd float %294, %300
  %302 = call float @llvm.fmuladd.f32(float %301, float -5.000000e-01, float %292)
  %303 = fmul float %285, %302
  %304 = call float @llvm.fmuladd.f32(float %286, float %290, float %303)
  store float %304, ptr %289, align 4, !tbaa !90
  %305 = getelementptr inbounds float, ptr %289, i64 1
  %306 = load float, ptr %305, align 4, !tbaa !90
  %307 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 1, i64 1
  %308 = load float, ptr %307, align 4, !tbaa !90
  %309 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 2, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !90
  %311 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %262, i32 3, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !90
  %313 = fdiv float %312, %299
  %314 = fadd float %310, %313
  %315 = call float @llvm.fmuladd.f32(float %314, float -5.000000e-01, float %308)
  %316 = fmul float %285, %315
  %317 = call float @llvm.fmuladd.f32(float %286, float %306, float %316)
  store float %317, ptr %305, align 4, !tbaa !90
  %318 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %287, i64 %262
  %319 = load ptr, ptr %318, align 8, !tbaa !48
  %320 = icmp eq ptr %319, null
  br i1 %320, label %347, label %321

321:                                              ; preds = %282, %331
  %322 = phi ptr [ %345, %331 ], [ %319, %282 ]
  %323 = getelementptr inbounds %struct.UvElement, ptr %322, i64 0, i32 3
  %324 = load i8, ptr %323, align 2, !tbaa !127
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %321
  %327 = load ptr, ptr %14, align 8, !tbaa !131
  %328 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %327, i64 %262
  %329 = load ptr, ptr %328, align 8, !tbaa !143
  %330 = icmp eq ptr %322, %329
  br i1 %330, label %331, label %347, !llvm.loop !192

331:                                              ; preds = %326, %321
  %332 = getelementptr inbounds %struct.UvElement, ptr %322, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !139
  %334 = load ptr, ptr %12, align 8, !tbaa !102
  %335 = getelementptr inbounds %struct.BMesh, ptr %334, i64 0, i32 26
  %336 = load ptr, ptr %333, align 8, !tbaa !140
  %337 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %335, ptr noundef %336, i32 noundef 16) #8
  %338 = load ptr, ptr %14, align 8, !tbaa !131
  %339 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %338, i64 %262, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !146
  %341 = load float, ptr %340, align 4, !tbaa !90
  store float %341, ptr %337, align 4, !tbaa !90
  %342 = getelementptr inbounds float, ptr %340, i64 1
  %343 = load float, ptr %342, align 4, !tbaa !90
  %344 = getelementptr inbounds float, ptr %337, i64 1
  store float %343, ptr %344, align 4, !tbaa !90
  %345 = load ptr, ptr %322, align 8, !tbaa !48
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %321

347:                                              ; preds = %331, %326, %282, %268, %261
  %348 = add nuw nsw i64 %262, 1
  %349 = load i32, ptr %139, align 8, !tbaa !132
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %261, label %564, !llvm.loop !193

352:                                              ; preds = %131
  br i1 %146, label %353, label %358

353:                                              ; preds = %352
  %354 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !162
  %356 = load ptr, ptr %14, align 8, !tbaa !131
  %357 = zext nneg i32 %145 to i64
  br label %363

358:                                              ; preds = %363, %352
  %359 = load i32, ptr %139, align 8, !tbaa !132
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %401

361:                                              ; preds = %358
  %362 = zext nneg i32 %359 to i64
  br label %404

363:                                              ; preds = %353, %363
  %364 = phi i64 [ 0, %353 ], [ %399, %363 ]
  %365 = getelementptr inbounds %struct.UvEdge, ptr %355, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !158
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %367, i32 4
  %369 = load i32, ptr %368, align 4, !tbaa !187
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %368, align 4, !tbaa !187
  %371 = getelementptr inbounds %struct.UvEdge, ptr %355, i64 %364, i32 1
  %372 = load i32, ptr %371, align 4, !tbaa !159
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %373, i32 4
  %375 = load i32, ptr %374, align 4, !tbaa !187
  %376 = add nsw i32 %375, 1
  store i32 %376, ptr %374, align 4, !tbaa !187
  %377 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %373
  %378 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %356, i64 %367, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !146
  %380 = load float, ptr %379, align 4, !tbaa !90
  %381 = load float, ptr %377, align 4, !tbaa !90
  %382 = fadd float %380, %381
  store float %382, ptr %377, align 4, !tbaa !90
  %383 = getelementptr inbounds float, ptr %379, i64 1
  %384 = load float, ptr %383, align 4, !tbaa !90
  %385 = getelementptr inbounds float, ptr %377, i64 1
  %386 = load float, ptr %385, align 4, !tbaa !90
  %387 = fadd float %384, %386
  store float %387, ptr %385, align 4, !tbaa !90
  %388 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %367
  %389 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %356, i64 %373, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !146
  %391 = load float, ptr %390, align 4, !tbaa !90
  %392 = load float, ptr %388, align 4, !tbaa !90
  %393 = fadd float %391, %392
  store float %393, ptr %388, align 4, !tbaa !90
  %394 = getelementptr inbounds float, ptr %390, i64 1
  %395 = load float, ptr %394, align 4, !tbaa !90
  %396 = getelementptr inbounds float, ptr %388, i64 1
  %397 = load float, ptr %396, align 4, !tbaa !90
  %398 = fadd float %395, %397
  store float %398, ptr %396, align 4, !tbaa !90
  %399 = add nuw nsw i64 %364, 1
  %400 = icmp eq i64 %399, %357
  br i1 %400, label %358, label %363, !llvm.loop !194

401:                                              ; preds = %404, %358
  %402 = load i32, ptr %139, align 8, !tbaa !132
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %420, label %564

404:                                              ; preds = %361, %404
  %405 = phi i64 [ 0, %361 ], [ %418, %404 ]
  %406 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %405
  %407 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %405, i32 1
  %408 = load float, ptr %406, align 4, !tbaa !90
  store float %408, ptr %407, align 4, !tbaa !90
  %409 = getelementptr inbounds float, ptr %406, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !90
  %411 = getelementptr inbounds float, ptr %407, i64 1
  store float %410, ptr %411, align 4, !tbaa !90
  %412 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %405, i32 4
  %413 = load i32, ptr %412, align 4, !tbaa !187
  %414 = sitofp i32 %413 to float
  %415 = fdiv float 1.000000e+00, %414
  %416 = fmul float %408, %415
  store float %416, ptr %407, align 4, !tbaa !90
  %417 = fmul float %410, %415
  store float %417, ptr %411, align 4, !tbaa !90
  %418 = add nuw nsw i64 %405, 1
  %419 = icmp eq i64 %418, %362
  br i1 %419, label %401, label %404, !llvm.loop !195

420:                                              ; preds = %401, %489
  %421 = phi i64 [ %490, %489 ], [ 0, %401 ]
  %422 = load ptr, ptr %14, align 8, !tbaa !131
  %423 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %422, i64 %421, i32 2
  %424 = load i8, ptr %423, align 8, !tbaa !145
  %425 = and i8 %424, 1
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %489

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %422, i64 %421, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !146
  %430 = load float, ptr %429, align 4, !tbaa !90
  %431 = load float, ptr %5, align 4, !tbaa !90
  %432 = fsub float %430, %431
  %433 = getelementptr inbounds float, ptr %429, i64 1
  %434 = load float, ptr %433, align 4, !tbaa !90
  %435 = load float, ptr %31, align 4, !tbaa !90
  %436 = fsub float %434, %435
  %437 = fdiv float %436, %42
  %438 = fmul float %437, %437
  %439 = call float @llvm.fmuladd.f32(float %432, float %432, float %438)
  %440 = fcmp ugt float %439, %43
  br i1 %440, label %489, label %441

441:                                              ; preds = %427
  %442 = call float @sqrtf(float noundef %439) #8
  %443 = call float @BKE_brush_curve_strength(ptr noundef %137, float noundef %442, float noundef %135) #8
  %444 = fmul float %23, %443
  %445 = fsub float 1.000000e+00, %444
  %446 = load ptr, ptr %14, align 8, !tbaa !131
  %447 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %446, i64 %421, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !146
  %449 = load float, ptr %448, align 4, !tbaa !90
  %450 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %421, i32 1
  %451 = load float, ptr %450, align 4, !tbaa !90
  %452 = fmul float %444, %451
  %453 = call float @llvm.fmuladd.f32(float %445, float %449, float %452)
  store float %453, ptr %448, align 4, !tbaa !90
  %454 = getelementptr inbounds float, ptr %448, i64 1
  %455 = load float, ptr %454, align 4, !tbaa !90
  %456 = getelementptr inbounds %struct.Temp_UvData, ptr %143, i64 %421, i32 1, i64 1
  %457 = load float, ptr %456, align 4, !tbaa !90
  %458 = fmul float %444, %457
  %459 = call float @llvm.fmuladd.f32(float %445, float %455, float %458)
  store float %459, ptr %454, align 4, !tbaa !90
  %460 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %446, i64 %421
  %461 = load ptr, ptr %460, align 8, !tbaa !48
  %462 = icmp eq ptr %461, null
  br i1 %462, label %489, label %463

463:                                              ; preds = %441, %473
  %464 = phi ptr [ %487, %473 ], [ %461, %441 ]
  %465 = getelementptr inbounds %struct.UvElement, ptr %464, i64 0, i32 3
  %466 = load i8, ptr %465, align 2, !tbaa !127
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %463
  %469 = load ptr, ptr %14, align 8, !tbaa !131
  %470 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %469, i64 %421
  %471 = load ptr, ptr %470, align 8, !tbaa !143
  %472 = icmp eq ptr %464, %471
  br i1 %472, label %473, label %489, !llvm.loop !196

473:                                              ; preds = %468, %463
  %474 = getelementptr inbounds %struct.UvElement, ptr %464, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !139
  %476 = load ptr, ptr %12, align 8, !tbaa !102
  %477 = getelementptr inbounds %struct.BMesh, ptr %476, i64 0, i32 26
  %478 = load ptr, ptr %475, align 8, !tbaa !140
  %479 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %477, ptr noundef %478, i32 noundef 16) #8
  %480 = load ptr, ptr %14, align 8, !tbaa !131
  %481 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %480, i64 %421, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !146
  %483 = load float, ptr %482, align 4, !tbaa !90
  store float %483, ptr %479, align 4, !tbaa !90
  %484 = getelementptr inbounds float, ptr %482, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !90
  %486 = getelementptr inbounds float, ptr %479, i64 1
  store float %485, ptr %486, align 4, !tbaa !90
  %487 = load ptr, ptr %464, align 8, !tbaa !48
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %463

489:                                              ; preds = %473, %468, %441, %427, %420
  %490 = add nuw nsw i64 %421, 1
  %491 = load i32, ptr %139, align 8, !tbaa !132
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %420, label %564, !llvm.loop !197

494:                                              ; preds = %4
  %495 = getelementptr inbounds %struct.UvSculptData, ptr %14, i64 0, i32 4
  %496 = load ptr, ptr %495, align 8, !tbaa !171
  %497 = getelementptr inbounds %struct.UVInitialStroke, ptr %496, i64 0, i32 2
  %498 = load float, ptr %5, align 4, !tbaa !90
  %499 = load float, ptr %497, align 4, !tbaa !90
  %500 = fsub float %498, %499
  %501 = load float, ptr %31, align 4, !tbaa !90
  %502 = getelementptr inbounds %struct.UVInitialStroke, ptr %496, i64 0, i32 2, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !90
  %504 = fsub float %501, %503
  %505 = load ptr, ptr %495, align 8, !tbaa !171
  %506 = getelementptr inbounds %struct.UVInitialStroke, ptr %505, i64 0, i32 1
  %507 = load i32, ptr %506, align 8, !tbaa !178
  %508 = icmp sgt i32 %507, 0
  br i1 %508, label %509, label %566

509:                                              ; preds = %494, %557
  %510 = phi i64 [ %558, %557 ], [ 0, %494 ]
  %511 = phi ptr [ %559, %557 ], [ %505, %494 ]
  %512 = load ptr, ptr %511, align 8, !tbaa !172
  %513 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %512, i64 %510
  %514 = load i32, ptr %513, align 4, !tbaa !174
  %515 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %512, i64 %510, i32 1
  %516 = load float, ptr %515, align 4, !tbaa !176
  %517 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %512, i64 %510, i32 2
  %518 = load float, ptr %517, align 4, !tbaa !90
  %519 = call float @llvm.fmuladd.f32(float %516, float %500, float %518)
  %520 = load ptr, ptr %14, align 8, !tbaa !131
  %521 = sext i32 %514 to i64
  %522 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %520, i64 %521, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !146
  store float %519, ptr %523, align 4, !tbaa !90
  %524 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %512, i64 %510, i32 2, i64 1
  %525 = load float, ptr %524, align 4, !tbaa !90
  %526 = call float @llvm.fmuladd.f32(float %516, float %504, float %525)
  %527 = getelementptr inbounds float, ptr %523, i64 1
  store float %526, ptr %527, align 4, !tbaa !90
  %528 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %520, i64 %521
  %529 = load ptr, ptr %528, align 8, !tbaa !48
  %530 = icmp eq ptr %529, null
  br i1 %530, label %557, label %531

531:                                              ; preds = %509, %541
  %532 = phi ptr [ %555, %541 ], [ %529, %509 ]
  %533 = getelementptr inbounds %struct.UvElement, ptr %532, i64 0, i32 3
  %534 = load i8, ptr %533, align 2, !tbaa !127
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %541, label %536

536:                                              ; preds = %531
  %537 = load ptr, ptr %14, align 8, !tbaa !131
  %538 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %537, i64 %521
  %539 = load ptr, ptr %538, align 8, !tbaa !143
  %540 = icmp eq ptr %532, %539
  br i1 %540, label %541, label %557, !llvm.loop !198

541:                                              ; preds = %536, %531
  %542 = getelementptr inbounds %struct.UvElement, ptr %532, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !139
  %544 = load ptr, ptr %12, align 8, !tbaa !102
  %545 = getelementptr inbounds %struct.BMesh, ptr %544, i64 0, i32 26
  %546 = load ptr, ptr %543, align 8, !tbaa !140
  %547 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %545, ptr noundef %546, i32 noundef 16) #8
  %548 = load ptr, ptr %14, align 8, !tbaa !131
  %549 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %548, i64 %521, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !146
  %551 = load float, ptr %550, align 4, !tbaa !90
  store float %551, ptr %547, align 4, !tbaa !90
  %552 = getelementptr inbounds float, ptr %550, i64 1
  %553 = load float, ptr %552, align 4, !tbaa !90
  %554 = getelementptr inbounds float, ptr %547, i64 1
  store float %553, ptr %554, align 4, !tbaa !90
  %555 = load ptr, ptr %532, align 8, !tbaa !48
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %531

557:                                              ; preds = %541, %536, %509
  %558 = add nuw nsw i64 %510, 1
  %559 = load ptr, ptr %495, align 8, !tbaa !171
  %560 = getelementptr inbounds %struct.UVInitialStroke, ptr %559, i64 0, i32 1
  %561 = load i32, ptr %560, align 8, !tbaa !178
  %562 = sext i32 %561 to i64
  %563 = icmp slt i64 %558, %562
  br i1 %563, label %509, label %566, !llvm.loop !199

564:                                              ; preds = %489, %347, %401, %228
  %565 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %565(ptr noundef %143) #8
  br label %566

566:                                              ; preds = %557, %126, %564, %494, %45, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !179
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %10, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @BM_uv_element_map_free(ptr noundef nonnull %14) #8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %4, align 8, !tbaa !131
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %21(ptr noundef nonnull %18) #8
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !162
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %27(ptr noundef nonnull %24) #8
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !171
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !172
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %36(ptr noundef nonnull %33) #8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %39 = load ptr, ptr %29, align 8, !tbaa !171
  tail call void %38(ptr noundef %39) #8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %41(ptr noundef nonnull %4) #8
  store ptr null, ptr %3, align 8, !tbaa !104
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #1

declare void @uv_find_nearest_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @uv_edge_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !159
  %4 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %3) #8
  %5 = load i32, ptr %0, align 4, !tbaa !158
  %6 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %5) #8
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @uv_edge_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !158
  %4 = load i32, ptr %1, align 4, !tbaa !158
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !159
  %9 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !159
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ]
  ret i8 %14
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #1

declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare float @BKE_brush_curve_strength(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare i32 @BLI_ghashutil_uinthash(i32 noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__loop_of_face_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !43, i64 448}
!35 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !39, i64 52, !40, i64 56, !37, i64 58, !37, i64 59, !41, i64 64, !44, i64 168, !39, i64 336, !39, i64 340, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 349, !40, i64 350, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !40, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !43, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !40, i64 464, !40, i64 466, !43, i64 468, !39, i64 472, !39, i64 476, !45, i64 480, !46, i64 608}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ImagePaintSettings", !42, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !43, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !39, i64 100}
!42 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!43 = !{!"int", !37, i64 0}
!44 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !36, i64 120, !39, i64 128, !39, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !36, i64 160}
!45 = !{!"UnifiedPaintSettings", !43, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !43, i64 40, !37, i64 44, !39, i64 52, !43, i64 56, !43, i64 60, !37, i64 64, !37, i64 65, !39, i64 72, !37, i64 76, !43, i64 84, !39, i64 88, !37, i64 92, !37, i64 100, !43, i64 108, !36, i64 112, !39, i64 120, !43, i64 124}
!46 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 21, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!47 = !{!35, !36, i64 24}
!48 = !{!36, !36, i64 0}
!49 = !{!35, !43, i64 456}
!50 = !{!35, !43, i64 452}
!51 = !{!35, !43, i64 460}
!52 = !{!53, !43, i64 28}
!53 = !{!"UvSculpt", !42, i64 0}
!54 = !{!53, !36, i64 16}
!55 = !{!56, !36, i64 264}
!56 = !{!"Scene", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !58, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !59, i64 280, !68, i64 4264, !58, i64 4296, !58, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !43, i64 4380, !58, i64 4384, !69, i64 4400, !70, i64 4416, !73, i64 4600, !36, i64 4608, !74, i64 4616, !36, i64 4640, !75, i64 4648, !75, i64 4656, !61, i64 4664, !62, i64 4824, !76, i64 4888, !36, i64 4952}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!58 = !{!"ListBase", !36, i64 0, !36, i64 8}
!59 = !{!"RenderData", !60, i64 0, !36, i64 248, !36, i64 256, !63, i64 264, !64, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !39, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !43, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !43, i64 484, !43, i64 488, !40, i64 492, !40, i64 494, !43, i64 496, !43, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !65, i64 544, !65, i64 560, !66, i64 576, !58, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !43, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !43, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !43, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !36, i64 2568, !43, i64 2576, !39, i64 2580, !37, i64 2584, !67, i64 2616, !43, i64 3976, !43, i64 3980}
!60 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!63 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !40, i64 48, !40, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!64 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !39, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!65 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!66 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!67 = !{!"BakeData", !60, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!68 = !{!"AudioData", !43, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !43, i64 16, !40, i64 20, !40, i64 22, !39, i64 24, !39, i64 28}
!69 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!70 = !{!"GameData", !69, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !71, i64 40, !40, i64 64, !40, i64 66, !39, i64 68, !72, i64 72, !39, i64 128, !39, i64 132, !43, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!71 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !39, i64 8, !39, i64 12, !36, i64 16}
!72 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !43, i64 40, !39, i64 44, !39, i64 48, !40, i64 52, !40, i64 54}
!73 = !{!"UnitSettings", !39, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!74 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!75 = !{!"long", !37, i64 0}
!76 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!77 = !{!78, !40, i64 136}
!78 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !79, i64 312, !36, i64 360, !58, i64 368, !58, i64 384, !58, i64 400, !58, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !58, i64 1056, !58, i64 1072, !58, i64 1088, !58, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !58, i64 1176, !58, i64 1192, !58, i64 1208, !58, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !75, i64 1304, !75, i64 1312, !43, i64 1320, !43, i64 1324, !58, i64 1328, !58, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !58, i64 1400, !36, i64 1416}
!79 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!80 = !{!81, !37, i64 10556}
!81 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !58, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !82, i64 48, !36, i64 88, !83, i64 96, !84, i64 5360, !36, i64 10520, !37, i64 10528, !39, i64 10536, !39, i64 10540, !39, i64 10544, !39, i64 10548, !39, i64 10552, !37, i64 10556, !37, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !85, i64 10568}
!82 = !{!"ImageUser", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !43, i64 36}
!83 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !39, i64 12, !43, i64 16, !39, i64 20, !39, i64 24, !43, i64 28, !39, i64 32, !43, i64 36, !37, i64 40, !84, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !43, i64 5256, !43, i64 5260}
!84 = !{!"Histogram", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !39, i64 5128, !39, i64 5132, !40, i64 5136, !40, i64 5138, !43, i64 5140, !37, i64 5144}
!85 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!86 = !{!87, !40, i64 214}
!87 = !{!"ARegion", !36, i64 0, !36, i64 8, !88, i64 16, !66, i64 176, !66, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !58, i64 248, !58, i64 264, !58, i64 280, !58, i64 296, !58, i64 312, !58, i64 328, !58, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!88 = !{!"View2D", !65, i64 0, !65, i64 16, !66, i64 32, !66, i64 48, !66, i64 64, !37, i64 80, !37, i64 88, !39, i64 96, !39, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!89 = !{!42, !43, i64 28}
!90 = !{!39, !39, i64 0}
!91 = !{i32 0, i32 2}
!92 = !{!93, !36, i64 0}
!93 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !58, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !94, i64 152, !40, i64 184}
!94 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!95 = !{!93, !36, i64 24}
!96 = !{!93, !36, i64 8}
!97 = !{!93, !36, i64 48}
!98 = !{!93, !36, i64 64}
!99 = !{!93, !36, i64 72}
!100 = !{!93, !40, i64 184}
!101 = !{!93, !36, i64 88}
!102 = !{!103, !36, i64 0}
!103 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !43, i64 16, !36, i64 24, !43, i64 32, !36, i64 40, !36, i64 48, !75, i64 56, !36, i64 64, !43, i64 72, !36, i64 80, !43, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !43, i64 104}
!104 = !{!105, !36, i64 96}
!105 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !58, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!106 = !{!53, !36, i64 0}
!107 = !{!108, !36, i64 144}
!108 = !{!"Brush", !57, i64 0, !109, i64 120, !36, i64 144, !110, i64 152, !110, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !39, i64 1840, !40, i64 1844, !40, i64 1846, !39, i64 1848, !43, i64 1852, !43, i64 1856, !43, i64 1860, !39, i64 1864, !43, i64 1868, !43, i64 1872, !43, i64 1876, !43, i64 1880, !39, i64 1884, !39, i64 1888, !37, i64 1892, !39, i64 1904, !37, i64 1908, !43, i64 1920, !39, i64 1924, !39, i64 1928, !43, i64 1932, !43, i64 1936, !43, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !39, i64 1948, !39, i64 1952, !39, i64 1956, !39, i64 1960, !39, i64 1964, !43, i64 1968, !43, i64 1972, !43, i64 1976, !39, i64 1980, !39, i64 1984, !43, i64 1988, !43, i64 1992, !39, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!109 = !{!"BrushClone", !36, i64 0, !37, i64 8, !39, i64 16, !39, i64 20}
!110 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !39, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!111 = !{!105, !36, i64 112}
!112 = !{!113, !37, i64 64}
!113 = !{!"UvSculptData", !36, i64 0, !43, i64 8, !36, i64 16, !43, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!114 = !{!113, !37, i64 65}
!115 = !{!113, !36, i64 56}
!116 = !{!35, !37, i64 50}
!117 = !{!113, !36, i64 48}
!118 = !{!43, !43, i64 0}
!119 = !{!120, !36, i64 0}
!120 = !{!"NearestHit", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !43, i64 40}
!121 = !{!120, !36, i64 16}
!122 = !{!123, !40, i64 20}
!123 = !{!"UvElement", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 18, !37, i64 19, !40, i64 20}
!124 = !{!125, !43, i64 16}
!125 = !{!"UvElementMap", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !36, i64 24}
!126 = !{!125, !36, i64 8}
!127 = !{!123, !37, i64 18}
!128 = distinct !{!128, !129, !130}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!"llvm.loop.unroll.disable"}
!131 = !{!113, !36, i64 0}
!132 = !{!113, !43, i64 8}
!133 = !{!134, !43, i64 0}
!134 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !43, i64 128, !36, i64 136, !135, i64 144, !135, i64 344, !135, i64 544, !135, i64 744, !40, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !58, i64 960, !36, i64 976, !58, i64 984, !36, i64 1000}
!135 = !{!"CustomData", !36, i64 0, !37, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !36, i64 192}
!136 = !{!125, !36, i64 0}
!137 = !{!123, !36, i64 0}
!138 = distinct !{!138, !129, !130}
!139 = !{!123, !36, i64 8}
!140 = !{!141, !36, i64 0}
!141 = !{!"BMLoop", !142, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!142 = !{!"BMHeader", !36, i64 0, !43, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!143 = !{!144, !36, i64 0}
!144 = !{!"UvAdjacencyElement", !36, i64 0, !36, i64 8, !37, i64 16}
!145 = !{!144, !37, i64 16}
!146 = !{!144, !36, i64 8}
!147 = distinct !{!147, !129, !130}
!148 = distinct !{!148, !129, !130}
!149 = !{!150, !37, i64 60}
!150 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !43, i64 56, !37, i64 60}
!151 = !{!150, !36, i64 40}
!152 = !{!150, !36, i64 48}
!153 = !{!134, !36, i64 56}
!154 = !{!37, !37, i64 0}
!155 = !{!141, !36, i64 56}
!156 = !{!157, !37, i64 8}
!157 = !{!"UvEdge", !43, i64 0, !43, i64 4, !37, i64 8}
!158 = !{!157, !43, i64 0}
!159 = !{!157, !43, i64 4}
!160 = distinct !{!160, !129, !130}
!161 = distinct !{!161, !129, !130}
!162 = !{!113, !36, i64 16}
!163 = !{!164, !36, i64 8}
!164 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !43, i64 16}
!165 = !{!166, !36, i64 8}
!166 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!167 = !{i64 0, i64 4, !118, i64 4, i64 4, !118, i64 8, i64 1, !154}
!168 = distinct !{!168, !129, !130}
!169 = !{!113, !43, i64 24}
!170 = distinct !{!170, !129, !130}
!171 = !{!113, !36, i64 32}
!172 = !{!173, !36, i64 0}
!173 = !{!"UVInitialStroke", !36, i64 0, !43, i64 8, !37, i64 12}
!174 = !{!175, !43, i64 0}
!175 = !{!"UVInitialStrokeElement", !43, i64 0, !39, i64 4, !37, i64 8}
!176 = !{!175, !39, i64 4}
!177 = distinct !{!177, !129, !130}
!178 = !{!173, !43, i64 8}
!179 = !{!113, !36, i64 40}
!180 = !{!181, !40, i64 16}
!181 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !43, i64 48, !43, i64 52, !182, i64 56, !43, i64 64, !43, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !43, i64 108, !36, i64 112}
!182 = !{!"double", !37, i64 0}
!183 = !{!181, !36, i64 112}
!184 = !{!78, !36, i64 296}
!185 = distinct !{!185, !129, !130}
!186 = distinct !{!186, !129, !130}
!187 = !{!188, !43, i64 32}
!188 = !{!"Temp_UvData", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32}
!189 = distinct !{!189, !129, !130}
!190 = distinct !{!190, !129, !130}
!191 = distinct !{!191, !129, !130}
!192 = distinct !{!192, !129, !130}
!193 = distinct !{!193, !129, !130}
!194 = distinct !{!194, !129, !130}
!195 = distinct !{!195, !129, !130}
!196 = distinct !{!196, !129, !130}
!197 = distinct !{!197, !129, !130}
!198 = distinct !{!198, !129, !130}
!199 = distinct !{!199, !129, !130}
