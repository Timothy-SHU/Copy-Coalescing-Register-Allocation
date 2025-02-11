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
%struct.UvSculptData = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.NearestHit = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.UvAdjacencyElement = type { ptr, ptr, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.UvEdge = type { i32, i32, i8 }
%struct.UVInitialStroke = type { ptr, i32, [2 x float] }
%struct.UVInitialStrokeElement = type { i32, float, [2 x float] }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_space_image_uv_sculpt_update(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 64
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = icmp eq ptr %7, null
  br i1 %5, label %22, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %19

10:                                               ; preds = %9
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !19
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str) #12
  store ptr %12, ptr %6, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 66
  store i32 3, ptr %13, align 8, !tbaa !20
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 65
  store i32 3, ptr %14, align 4, !tbaa !21
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %1, i64 0, i32 67
  store i32 1, ptr %15, align 4, !tbaa !22
  %16 = getelementptr inbounds %struct.Paint, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !23
  br label %19

19:                                               ; preds = %10, %9
  %20 = phi ptr [ %12, %10 ], [ %7, %9 ]
  tail call void @BKE_paint_init(ptr noundef nonnull %20, ptr noundef nonnull @PAINT_CURSOR_SCULPT) #12
  %21 = tail call ptr @WM_paint_cursor_activate(ptr noundef %0, ptr noundef nonnull @uv_sculpt_brush_poll, ptr noundef nonnull @brush_drawcursor_uvsculpt, ptr noundef null) #12
  br label %26

22:                                               ; preds = %2
  br i1 %8, label %30, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.Paint, ptr %7, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  tail call void @WM_paint_cursor_end(ptr noundef %0, ptr noundef %25) #12
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ null, %23 ], [ %21, %19 ]
  %28 = load ptr, ptr %6, align 8, !tbaa !18
  %29 = getelementptr inbounds %struct.Paint, ptr %28, i64 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !25
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: optsize
declare void @BKE_paint_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_sculpt_brush_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = tail call fastcc ptr @uv_sculpt_brush(ptr noundef %0) #13
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %2, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i16 %13, 1
  %15 = icmp ne ptr %3, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = tail call zeroext i8 @ED_space_image_show_render(ptr noundef nonnull %3) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 17
  %22 = load i8, ptr %21, align 4, !tbaa !51
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #12
  %26 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %25) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 64
  %31 = load i32, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !57
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %24, %37, %33, %1, %11, %17, %20
  %39 = phi i32 [ 0, %20 ], [ 0, %17 ], [ 0, %11 ], [ 0, %1 ], [ 1, %33 ], [ 0, %37 ], [ 0, %24 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @brush_drawcursor_uvsculpt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %6) #12
  %8 = icmp ne ptr %6, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Paint, ptr %6, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @BKE_brush_size_get(ptr noundef %5, ptr noundef nonnull %7) #12
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = sitofp i32 %17 to float
  %21 = icmp ult i32 %17, 12
  %22 = fadd float %20, -4.000000e+00
  %23 = fmul float %22, 1.250000e-01
  %24 = fmul float %23, 5.000000e-01
  %25 = select i1 %21, float %24, float 5.000000e-01
  tail call void @glPushMatrix() #12
  %26 = sitofp i32 %1 to float
  %27 = sitofp i32 %2 to float
  tail call void @glTranslatef(float noundef %26, float noundef %27, float noundef 0.000000e+00) #12
  %28 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51
  %29 = load float, ptr %28, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !61
  %32 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 51, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !61
  tail call void @glColor4f(float noundef %29, float noundef %31, float noundef %33, float noundef %25) #12
  tail call void @glEnable(i32 noundef 2848) #12
  tail call void @glEnable(i32 noundef 3042) #12
  tail call void @glutil_draw_lined_arc(float noundef 0.000000e+00, float noundef 0x401921FB60000000, float noundef %20, i32 noundef 40) #12
  tail call void @glDisable(i32 noundef 3042) #12
  tail call void @glDisable(i32 noundef 2848) #12
  tail call void @glPopMatrix() #12
  br label %34

34:                                               ; preds = %19, %16, %4, %11
  ret void
}

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @uv_sculpt_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @uv_sculpt_brush_poll(ptr noundef %0) #13, !range !62
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SCULPT_OT_uv_sculpt_stroke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_sculpt_stroke_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @uv_sculpt_stroke_modal, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @SCULPT_OT_uv_sculpt_stroke.stroke_mode_items, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_sculpt_stroke_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = tail call fastcc ptr @uv_sculpt_stroke_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  tail call fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #13
  %8 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %10 = tail call ptr @WM_event_add_timer(ptr noundef %8, ptr noundef %9, i32 noundef 272, double noundef 0x3F50624DE0000000) #12
  %11 = getelementptr inbounds %struct.UvSculptData, ptr %5, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !73
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1) #13
  br label %16

14:                                               ; preds = %7
  %15 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #12
  br label %16

16:                                               ; preds = %3, %14, %13
  %17 = phi i32 [ 1, %14 ], [ 2, %13 ], [ 2, %3 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_sculpt_stroke_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !77
  switch i16 %8, label %22 [
    i16 1, label %9
    i16 2, label %9
    i16 3, label %9
    i16 4, label %16
    i16 17, label %16
    i16 272, label %10
  ]

9:                                                ; preds = %3, %3, %3
  tail call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %5, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %3, %3
  tail call fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %6) #13
  br label %17

17:                                               ; preds = %16, %10
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %20) #12
  %21 = load ptr, ptr %19, align 8, !tbaa !81
  tail call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 0) #12
  br label %22

22:                                               ; preds = %3, %17, %9
  %23 = phi i32 [ 1, %17 ], [ 4, %9 ], [ 1, %3 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uv_sculpt_brush(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %6) #12
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_render(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glutil_draw_lined_arc(float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uv_sculpt_stroke_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.NearestHit, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [2 x float], align 4
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !19
  %18 = tail call ptr %17(i64 noundef 72, ptr noundef nonnull @.str.16) #12
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #12
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %18, ptr %21, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = load ptr, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.Brush, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  tail call void @curvemapping_initialize(ptr noundef %26) #12
  %27 = icmp eq ptr %18, null
  br i1 %27, label %437, label %28

28:                                               ; preds = %3
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 65
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = tail call i32 @RNA_enum_get(ptr noundef %36, ptr noundef nonnull @.str.13) #12
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 66
  %41 = load i32, ptr %40, align 8, !tbaa !20
  br label %42

42:                                               ; preds = %28, %39
  %43 = phi i32 [ %41, %39 ], [ 2, %28 ]
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 8
  store i8 %44, ptr %45, align 8, !tbaa !90
  %46 = load ptr, ptr %35, align 8, !tbaa !89
  %47 = tail call i32 @RNA_enum_get(ptr noundef %46, ptr noundef nonnull @.str.13) #12
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 9
  store i8 %49, ptr %50, align 1, !tbaa !91
  %51 = load ptr, ptr %22, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !92
  %53 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 11
  %54 = load i8, ptr %53, align 2, !tbaa !93
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 6
  br i1 %33, label %58, label %63

58:                                               ; preds = %42
  br i1 %56, label %61, label %59

59:                                               ; preds = %58
  %60 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  br label %68

61:                                               ; preds = %58
  %62 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %68

63:                                               ; preds = %42
  br i1 %56, label %66, label %64

64:                                               ; preds = %63
  %65 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %68

66:                                               ; preds = %63
  %67 = tail call ptr @BM_uv_element_map_create(ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  br label %68

68:                                               ; preds = %64, %66, %59, %61
  %69 = phi ptr [ %65, %64 ], [ %67, %66 ], [ %60, %59 ], [ %62, %61 ]
  store ptr %69, ptr %57, align 8, !tbaa !94
  %70 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 6
  %71 = icmp eq ptr %69, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %439

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2
  %75 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !95
  %77 = sitofp i32 %76 to float
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %79 = load i32, ptr %78, align 4, !tbaa !95
  %80 = sitofp i32 %79 to float
  %81 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %74, float noundef %77, float noundef %80, ptr noundef nonnull %4, ptr noundef nonnull %81) #12
  br i1 %33, label %82, label %92

82:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #14
  %83 = call ptr @CTX_data_edit_image(ptr noundef %0) #12
  call void @uv_find_nearest_vert(ptr noundef nonnull %13, ptr noundef %83, ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %7) #12
  %84 = load ptr, ptr %70, align 8, !tbaa !94
  %85 = load ptr, ptr %7, align 8, !tbaa !96
  %86 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !98
  %88 = call ptr @BM_uv_element_get(ptr noundef %84, ptr noundef %85, ptr noundef %87) #12
  %89 = getelementptr inbounds %struct.UvElement, ptr %88, i64 0, i32 5
  %90 = load i16, ptr %89, align 4, !tbaa !99
  %91 = zext i16 %90 to i32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  br label %92

92:                                               ; preds = %82, %73
  %93 = phi i32 [ %91, %82 ], [ 0, %73 ]
  %94 = load ptr, ptr %70, align 8, !tbaa !94
  %95 = getelementptr inbounds %struct.UvElementMap, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !101
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.UvElementMap, ptr %94, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !103
  %101 = zext nneg i32 %96 to i64
  br label %102

102:                                              ; preds = %98, %116
  %103 = phi i64 [ 0, %98 ], [ %118, %116 ]
  %104 = phi i32 [ 0, %98 ], [ %117, %116 ]
  %105 = getelementptr inbounds %struct.UvElement, ptr %100, i64 %103, i32 3
  %106 = load i8, ptr %105, align 2, !tbaa !104
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  br i1 %33, label %109, label %114

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.UvElement, ptr %100, i64 %103, i32 5
  %111 = load i16, ptr %110, align 4, !tbaa !99
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %93, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %108
  %115 = add nsw i32 %104, 1
  br label %116

116:                                              ; preds = %102, %109, %114
  %117 = phi i32 [ %115, %114 ], [ %104, %109 ], [ %104, %102 ]
  %118 = add nuw nsw i64 %103, 1
  %119 = icmp eq i64 %118, %101
  br i1 %119, label %120, label %102, !llvm.loop !105

120:                                              ; preds = %116, %92
  %121 = phi i32 [ 0, %92 ], [ %117, %116 ]
  %122 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %123 = sext i32 %121 to i64
  %124 = mul nsw i64 %123, 24
  %125 = call ptr %122(i64 noundef %124, ptr noundef nonnull @.str.17) #12
  store ptr %125, ptr %18, align 8, !tbaa !107
  %126 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %127 = load ptr, ptr %70, align 8, !tbaa !94
  %128 = getelementptr inbounds %struct.UvElementMap, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !101
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 2
  %132 = call ptr %126(i64 noundef %131, ptr noundef nonnull @.str.18) #12
  %133 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.19) #12
  %134 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %135 = load ptr, ptr %70, align 8, !tbaa !94
  %136 = getelementptr inbounds %struct.UvElementMap, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !101
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, 12
  %140 = call ptr %134(i64 noundef %139, ptr noundef nonnull @.str.20) #12
  %141 = load ptr, ptr %18, align 8, !tbaa !107
  %142 = icmp ne ptr %141, null
  %143 = icmp ne ptr %132, null
  %144 = select i1 %142, i1 %143, i1 false
  %145 = icmp ne ptr %133, null
  %146 = select i1 %144, i1 %145, i1 false
  %147 = icmp ne ptr %140, null
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %158, label %149

149:                                              ; preds = %120
  br i1 %147, label %150, label %152

150:                                              ; preds = %149
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %151(ptr noundef nonnull %140) #12
  br label %152

152:                                              ; preds = %150, %149
  br i1 %143, label %153, label %155

153:                                              ; preds = %152
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %154(ptr noundef nonnull %132) #12
  br label %155

155:                                              ; preds = %153, %152
  br i1 %145, label %156, label %157

156:                                              ; preds = %155
  call void @BLI_ghash_free(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #12
  br label %157

157:                                              ; preds = %156, %155
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1) #13
  br label %439

158:                                              ; preds = %120
  %159 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 1
  store i32 %121, ptr %159, align 8, !tbaa !108
  %160 = load i32, ptr %20, align 8, !tbaa !109
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %240

162:                                              ; preds = %158
  %163 = load ptr, ptr %70, align 8, !tbaa !94
  br label %164

164:                                              ; preds = %162, %232
  %165 = phi i32 [ %160, %162 ], [ %233, %232 ]
  %166 = phi ptr [ %163, %162 ], [ %234, %232 ]
  %167 = phi ptr [ %163, %162 ], [ %235, %232 ]
  %168 = phi i64 [ 0, %162 ], [ %237, %232 ]
  %169 = phi i32 [ -1, %162 ], [ %236, %232 ]
  %170 = load ptr, ptr %167, align 8, !tbaa !112
  %171 = getelementptr inbounds ptr, ptr %170, i64 %168
  %172 = load ptr, ptr %171, align 8, !tbaa !19
  %173 = icmp eq ptr %172, null
  br i1 %173, label %232, label %174

174:                                              ; preds = %164, %221
  %175 = phi ptr [ %223, %221 ], [ %166, %164 ]
  %176 = phi ptr [ %224, %221 ], [ %167, %164 ]
  %177 = phi ptr [ %222, %221 ], [ %172, %164 ]
  %178 = phi i32 [ %225, %221 ], [ %169, %164 ]
  %179 = getelementptr inbounds %struct.UvElement, ptr %177, i64 0, i32 3
  %180 = load i8, ptr %179, align 2, !tbaa !104
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %210, label %182

182:                                              ; preds = %174
  br i1 %33, label %183, label %196

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.UvElement, ptr %177, i64 0, i32 5
  %185 = load i16, ptr %184, align 4, !tbaa !99
  %186 = zext i16 %185 to i32
  %187 = icmp eq i32 %93, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %183, %192
  %189 = phi ptr [ %190, %192 ], [ %177, %183 ]
  %190 = load ptr, ptr %189, align 8, !tbaa !19
  %191 = icmp eq ptr %190, null
  br i1 %191, label %227, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.UvElement, ptr %190, i64 0, i32 3
  %194 = load i8, ptr %193, align 2, !tbaa !104
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %188, label %221, !llvm.loop !113

196:                                              ; preds = %183, %182
  %197 = getelementptr inbounds %struct.UvElement, ptr %177, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !114
  %199 = load ptr, ptr %19, align 8, !tbaa !82
  %200 = getelementptr inbounds %struct.BMesh, ptr %199, i64 0, i32 26
  %201 = load ptr, ptr %198, align 8, !tbaa !115
  %202 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %200, ptr noundef %201, i32 noundef 16) #12
  %203 = add nsw i32 %178, 1
  %204 = load ptr, ptr %18, align 8, !tbaa !107
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %204, i64 %205
  store ptr %177, ptr %206, align 8, !tbaa !118
  %207 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %204, i64 %205, i32 2
  store i8 0, ptr %207, align 8, !tbaa !120
  %208 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %204, i64 %205, i32 1
  store ptr %202, ptr %208, align 8, !tbaa !121
  %209 = load ptr, ptr %70, align 8, !tbaa !94
  br label %210

210:                                              ; preds = %196, %174
  %211 = phi ptr [ %209, %196 ], [ %175, %174 ]
  %212 = phi i32 [ %203, %196 ], [ %178, %174 ]
  %213 = getelementptr inbounds %struct.UvElementMap, ptr %211, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !103
  %215 = ptrtoint ptr %177 to i64
  %216 = ptrtoint ptr %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 24
  %219 = getelementptr inbounds i32, ptr %132, i64 %218
  store i32 %212, ptr %219, align 4, !tbaa !95
  %220 = load ptr, ptr %177, align 8, !tbaa !19
  br label %221

221:                                              ; preds = %192, %210
  %222 = phi ptr [ %220, %210 ], [ %190, %192 ]
  %223 = phi ptr [ %211, %210 ], [ %175, %192 ]
  %224 = phi ptr [ %211, %210 ], [ %176, %192 ]
  %225 = phi i32 [ %212, %210 ], [ %178, %192 ]
  %226 = icmp eq ptr %222, null
  br i1 %226, label %227, label %174, !llvm.loop !122

227:                                              ; preds = %221, %188
  %228 = phi i32 [ %178, %188 ], [ %225, %221 ]
  %229 = phi ptr [ %176, %188 ], [ %224, %221 ]
  %230 = phi ptr [ %175, %188 ], [ %223, %221 ]
  %231 = load i32, ptr %20, align 8, !tbaa !109
  br label %232

232:                                              ; preds = %227, %164
  %233 = phi i32 [ %165, %164 ], [ %231, %227 ]
  %234 = phi ptr [ %166, %164 ], [ %230, %227 ]
  %235 = phi ptr [ %167, %164 ], [ %229, %227 ]
  %236 = phi i32 [ %169, %164 ], [ %228, %227 ]
  %237 = add nuw nsw i64 %168, 1
  %238 = sext i32 %233 to i64
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %164, label %240, !llvm.loop !123

240:                                              ; preds = %232, %158
  %241 = load ptr, ptr %19, align 8, !tbaa !82
  %242 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %241, i8 noundef zeroext 3, ptr noundef null) #13
  %243 = icmp eq ptr %242, null
  br i1 %243, label %288, label %244

244:                                              ; preds = %240, %284
  %245 = phi i32 [ %285, %284 ], [ 0, %240 ]
  %246 = phi ptr [ %286, %284 ], [ %242, %240 ]
  %247 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %246) #13
  %248 = icmp eq ptr %247, null
  br i1 %248, label %284, label %249

249:                                              ; preds = %244, %280
  %250 = phi i32 [ %281, %280 ], [ %245, %244 ]
  %251 = phi ptr [ %282, %280 ], [ %247, %244 ]
  %252 = load ptr, ptr %70, align 8, !tbaa !94
  %253 = call fastcc i32 @uv_element_offset_from_face_get(ptr noundef %252, ptr noundef nonnull %246, ptr noundef nonnull %251, i32 noundef %93, i8 noundef zeroext %34) #13
  %254 = load ptr, ptr %70, align 8, !tbaa !94
  %255 = getelementptr inbounds %struct.BMLoop, ptr %251, i64 0, i32 6
  %256 = load ptr, ptr %255, align 8, !tbaa !124
  %257 = call fastcc i32 @uv_element_offset_from_face_get(ptr noundef %254, ptr noundef nonnull %246, ptr noundef %256, i32 noundef %93, i8 noundef zeroext %34) #13
  %258 = icmp eq i32 %253, -1
  %259 = icmp eq i32 %257, -1
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %280, label %261

261:                                              ; preds = %249
  %262 = sext i32 %253 to i64
  %263 = getelementptr inbounds i32, ptr %132, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !95
  %265 = sext i32 %257 to i64
  %266 = getelementptr inbounds i32, ptr %132, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !95
  %268 = sext i32 %250 to i64
  %269 = getelementptr inbounds %struct.UvEdge, ptr %140, i64 %268
  %270 = getelementptr inbounds %struct.UvEdge, ptr %140, i64 %268, i32 2
  store i8 0, ptr %270, align 4, !tbaa !125
  %271 = call i32 @llvm.smin.i32(i32 %264, i32 %267)
  %272 = call i32 @llvm.smax.i32(i32 %264, i32 %267)
  store i32 %271, ptr %269, align 4
  %273 = getelementptr inbounds %struct.UvEdge, ptr %140, i64 %268, i32 1
  store i32 %272, ptr %273, align 4
  %274 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %133, ptr noundef nonnull %269) #12
  %275 = icmp eq ptr %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %261
  store i8 1, ptr %274, align 1, !tbaa !127
  br label %278

277:                                              ; preds = %261
  call void @BLI_ghash_insert(ptr noundef nonnull %133, ptr noundef nonnull %269, ptr noundef nonnull %270) #12
  br label %278

278:                                              ; preds = %277, %276
  %279 = add nsw i32 %250, 1
  br label %280

280:                                              ; preds = %249, %278
  %281 = phi i32 [ %279, %278 ], [ %250, %249 ]
  %282 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %249, !llvm.loop !128

284:                                              ; preds = %280, %244
  %285 = phi i32 [ %245, %244 ], [ %281, %280 ]
  %286 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %244, !llvm.loop !129

288:                                              ; preds = %284, %240
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %289(ptr noundef nonnull %132) #12
  %290 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %291 = call i32 @BLI_ghash_size(ptr noundef nonnull %133) #12
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, 12
  %294 = call ptr %290(i64 noundef %293, ptr noundef nonnull @.str.21) #12
  %295 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 2
  store ptr %294, ptr %295, align 8, !tbaa !130
  %296 = icmp eq ptr %294, null
  br i1 %296, label %297, label %299

297:                                              ; preds = %288
  call void @BLI_ghash_free(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #12
  %298 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %298(ptr noundef nonnull %140) #12
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1) #13
  br label %439

299:                                              ; preds = %288
  %300 = call ptr @BLI_ghashIterator_new(ptr noundef nonnull %133) #12
  %301 = icmp eq ptr %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %300) #13, !range !131
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %307, label %315

305:                                              ; preds = %299
  call void @BLI_ghash_free(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #12
  %306 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %306(ptr noundef nonnull %140) #12
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef %1) #13
  br label %439

307:                                              ; preds = %302, %307
  %308 = phi i64 [ %310, %307 ], [ 0, %302 ]
  %309 = load ptr, ptr %295, align 8, !tbaa !130
  %310 = add nuw i64 %308, 1
  %311 = getelementptr inbounds %struct.UvEdge, ptr %309, i64 %308
  %312 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %300) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %311, ptr noundef nonnull align 4 dereferenceable(12) %312, i64 12, i1 false), !tbaa.struct !132
  call void @BLI_ghashIterator_step(ptr noundef nonnull %300) #12
  %313 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %300) #13, !range !131
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %307, label %315, !llvm.loop !133

315:                                              ; preds = %307, %302
  %316 = call i32 @BLI_ghash_size(ptr noundef nonnull %133) #12
  %317 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 3
  store i32 %316, ptr %317, align 8, !tbaa !134
  call void @BLI_ghashIterator_free(ptr noundef nonnull %300) #12
  call void @BLI_ghash_free(ptr noundef nonnull %133, ptr noundef null, ptr noundef null) #12
  %318 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  call void %318(ptr noundef nonnull %140) #12
  %319 = load i32, ptr %30, align 4, !tbaa !21
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %350, label %322

322:                                              ; preds = %315
  %323 = load i32, ptr %317, align 8, !tbaa !134
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %350

325:                                              ; preds = %322
  %326 = load ptr, ptr %295, align 8, !tbaa !130
  %327 = zext nneg i32 %323 to i64
  br label %328

328:                                              ; preds = %325, %347
  %329 = phi i64 [ 0, %325 ], [ %348, %347 ]
  %330 = getelementptr inbounds %struct.UvEdge, ptr %326, i64 %329, i32 2
  %331 = load i8, ptr %330, align 4, !tbaa !125
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %347

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.UvEdge, ptr %326, i64 %329
  %335 = load ptr, ptr %18, align 8, !tbaa !107
  %336 = load i32, ptr %334, align 4, !tbaa !135
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %335, i64 %337, i32 2
  %339 = load i8, ptr %338, align 8, !tbaa !120
  %340 = or i8 %339, 1
  store i8 %340, ptr %338, align 8, !tbaa !120
  %341 = getelementptr inbounds %struct.UvEdge, ptr %326, i64 %329, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !136
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %335, i64 %343, i32 2
  %345 = load i8, ptr %344, align 8, !tbaa !120
  %346 = or i8 %345, 1
  store i8 %346, ptr %344, align 8, !tbaa !120
  br label %347

347:                                              ; preds = %328, %333
  %348 = add nuw nsw i64 %329, 1
  %349 = icmp eq i64 %348, %327
  br i1 %349, label %350, label %328, !llvm.loop !137

350:                                              ; preds = %347, %322, %315
  %351 = load i8, ptr %45, align 8, !tbaa !90
  %352 = icmp eq i8 %351, 3
  br i1 %352, label %353, label %436

353:                                              ; preds = %350
  %354 = load ptr, ptr %21, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  %355 = getelementptr inbounds %struct.UvSculptData, ptr %354, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !92
  %357 = call ptr @BKE_paint_brush(ptr noundef %356) #12
  %358 = call float @BKE_brush_alpha_get(ptr noundef %13, ptr noundef %357) #12
  %359 = call i32 @BKE_brush_size_get(ptr noundef %13, ptr noundef %357) #12
  %360 = sitofp i32 %359 to float
  %361 = call ptr @CTX_wm_space_image(ptr noundef %0) #12
  call void @ED_space_image_get_size(ptr noundef %361, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  call void @ED_space_image_get_zoom(ptr noundef %361, ptr noundef %29, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %362 = load i32, ptr %8, align 4, !tbaa !95
  %363 = sitofp i32 %362 to float
  %364 = load i32, ptr %9, align 4, !tbaa !95
  %365 = sitofp i32 %364 to float
  %366 = fdiv float %363, %365
  %367 = load float, ptr %10, align 4, !tbaa !61
  %368 = fmul float %367, %363
  %369 = fdiv float %360, %368
  %370 = fmul float %369, %369
  %371 = call float @llvm.sqrt.f32(float %370)
  %372 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %373 = call ptr %372(i64 noundef 24, ptr noundef nonnull @.str.22) #12
  %374 = getelementptr inbounds %struct.UvSculptData, ptr %18, i64 0, i32 4
  store ptr %373, ptr %374, align 8, !tbaa !138
  %375 = icmp eq ptr %373, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %353
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %377

377:                                              ; preds = %376, %353
  %378 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !19
  %379 = load i32, ptr %159, align 8, !tbaa !108
  %380 = sext i32 %379 to i64
  %381 = shl nsw i64 %380, 4
  %382 = call ptr %378(i64 noundef %381, ptr noundef nonnull @.str.23) #12
  %383 = load ptr, ptr %374, align 8, !tbaa !138
  store ptr %382, ptr %383, align 8, !tbaa !139
  %384 = icmp eq ptr %382, null
  br i1 %384, label %385, label %387

385:                                              ; preds = %377
  call fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr noundef nonnull %1) #13
  %386 = load ptr, ptr %374, align 8, !tbaa !138
  br label %387

387:                                              ; preds = %385, %377
  %388 = phi ptr [ %386, %385 ], [ %383, %377 ]
  %389 = getelementptr inbounds %struct.UVInitialStroke, ptr %388, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %389, ptr noundef nonnull %4) #13
  %390 = load i32, ptr %159, align 8, !tbaa !108
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %432

392:                                              ; preds = %387
  %393 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  br label %394

394:                                              ; preds = %392, %426
  %395 = phi i32 [ %390, %392 ], [ %427, %426 ]
  %396 = phi i64 [ 0, %392 ], [ %429, %426 ]
  %397 = phi i32 [ 0, %392 ], [ %428, %426 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  %398 = load ptr, ptr %18, align 8, !tbaa !107
  %399 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %398, i64 %396, i32 2
  %400 = load i8, ptr %399, align 8, !tbaa !120
  %401 = and i8 %400, 1
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %426

403:                                              ; preds = %394
  %404 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %398, i64 %396, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !121
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %12, ptr noundef %405, ptr noundef nonnull %4) #13
  %406 = load float, ptr %393, align 4, !tbaa !61
  %407 = fdiv float %406, %366
  store float %407, ptr %393, align 4, !tbaa !61
  %408 = call fastcc float @dot_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %12) #13
  %409 = fcmp ugt float %408, %370
  br i1 %409, label %426, label %410

410:                                              ; preds = %403
  %411 = call float @sqrtf(float noundef %408) #12
  %412 = call float @BKE_brush_curve_strength(ptr noundef %357, float noundef %411, float noundef %371) #12
  %413 = fmul float %358, %412
  %414 = load ptr, ptr %374, align 8, !tbaa !138
  %415 = load ptr, ptr %414, align 8, !tbaa !139
  %416 = sext i32 %397 to i64
  %417 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %415, i64 %416
  %418 = trunc i64 %396 to i32
  store i32 %418, ptr %417, align 4, !tbaa !141
  %419 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %415, i64 %416, i32 1
  store float %413, ptr %419, align 4, !tbaa !143
  %420 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %415, i64 %416, i32 2
  %421 = load ptr, ptr %18, align 8, !tbaa !107
  %422 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %421, i64 %396, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !121
  call fastcc void @copy_v2_v2(ptr noundef nonnull %420, ptr noundef %423) #13
  %424 = add nsw i32 %397, 1
  %425 = load i32, ptr %159, align 8, !tbaa !108
  br label %426

426:                                              ; preds = %403, %410, %394
  %427 = phi i32 [ %395, %394 ], [ %425, %410 ], [ %395, %403 ]
  %428 = phi i32 [ %397, %394 ], [ %424, %410 ], [ %397, %403 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  %429 = add nuw nsw i64 %396, 1
  %430 = sext i32 %427 to i64
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %394, label %432, !llvm.loop !144

432:                                              ; preds = %426, %387
  %433 = phi i32 [ 0, %387 ], [ %428, %426 ]
  %434 = load ptr, ptr %374, align 8, !tbaa !138
  %435 = getelementptr inbounds %struct.UVInitialStroke, ptr %434, i64 0, i32 1
  store i32 %433, ptr %435, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %436

436:                                              ; preds = %350, %432
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %437

437:                                              ; preds = %436, %3
  %438 = load ptr, ptr %21, align 8, !tbaa !75
  br label %440

439:                                              ; preds = %72, %157, %297, %305
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %440

440:                                              ; preds = %439, %437
  %441 = phi ptr [ %438, %437 ], [ null, %439 ]
  ret ptr %441
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_sculpt_stroke_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %17 = getelementptr inbounds %struct.UvSculptData, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = tail call ptr @BKE_paint_brush(ptr noundef %18) #12
  %20 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #12
  %21 = getelementptr inbounds %struct.UvSculptData, ptr %16, i64 0, i32 8
  %22 = load i8, ptr %21, align 8, !tbaa !90
  %23 = getelementptr inbounds %struct.UvSculptData, ptr %16, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !91
  %25 = tail call float @BKE_brush_alpha_get(ptr noundef %12, ptr noundef %19) #12
  %26 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !95
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !95
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %26, float noundef %29, float noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %33) #12
  %34 = call ptr @CTX_wm_space_image(ptr noundef %0) #12
  call void @ED_space_image_get_size(ptr noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call void @ED_space_image_get_zoom(ptr noundef %34, ptr noundef %13, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %35 = call i32 @BKE_brush_size_get(ptr noundef %12, ptr noundef %19) #12
  %36 = sitofp i32 %35 to float
  %37 = load i32, ptr %6, align 4, !tbaa !95
  %38 = sitofp i32 %37 to float
  %39 = load float, ptr %8, align 4, !tbaa !61
  %40 = fmul float %39, %38
  %41 = fdiv float %36, %40
  %42 = load i32, ptr %7, align 4, !tbaa !95
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %38, %43
  %45 = fmul float %41, %41
  %46 = call float @llvm.sqrt.f32(float %45)
  switch i8 %22, label %184 [
    i8 1, label %47
    i8 2, label %113
    i8 3, label %119
  ]

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.UvSculptData, ptr %16, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !108
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %184

51:                                               ; preds = %47
  %52 = icmp eq i8 %24, 0
  %53 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %54 = fneg float %25
  %55 = select i1 %52, float %54, float %25
  br label %56

56:                                               ; preds = %51, %108
  %57 = phi i64 [ 0, %51 ], [ %109, %108 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %58 = load ptr, ptr %16, align 8, !tbaa !107
  %59 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %58, i64 %57, i32 2
  %60 = load i8, ptr %59, align 8, !tbaa !120
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %58, i64 %57, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !121
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %10, ptr noundef %65, ptr noundef nonnull %5) #13
  %66 = load float, ptr %53, align 4, !tbaa !61
  %67 = fdiv float %66, %44
  store float %67, ptr %53, align 4, !tbaa !61
  %68 = call fastcc float @dot_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %10) #13
  %69 = fcmp ugt float %68, %45
  br i1 %69, label %108, label %70

70:                                               ; preds = %63
  %71 = call float @sqrtf(float noundef %68) #12
  %72 = call float @BKE_brush_curve_strength(ptr noundef %19, float noundef %71, float noundef %46) #12
  call fastcc void @normalize_v2(ptr noundef nonnull %10) #13
  %73 = load ptr, ptr %16, align 8, !tbaa !107
  %74 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %73, i64 %57, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !121
  %76 = fmul float %55, %72
  %77 = load <2 x float>, ptr %10, align 8, !tbaa !61
  %78 = load <2 x float>, ptr %75, align 4, !tbaa !61
  %79 = insertelement <2 x float> poison, float %76, i64 0
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> zeroinitializer
  %81 = fmul <2 x float> %80, %77
  %82 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %81, <2 x float> <float 0x3F50624DE0000000, float 0x3F50624DE0000000>, <2 x float> %78)
  store <2 x float> %82, ptr %75, align 4, !tbaa !61
  %83 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %73, i64 %57
  %84 = load ptr, ptr %83, align 8, !tbaa !19
  %85 = icmp eq ptr %84, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %70, %96
  %87 = phi ptr [ %106, %96 ], [ %84, %70 ]
  %88 = getelementptr inbounds %struct.UvElement, ptr %87, i64 0, i32 3
  %89 = load i8, ptr %88, align 2, !tbaa !104
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %16, align 8, !tbaa !107
  %93 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %92, i64 %57
  %94 = load ptr, ptr %93, align 8, !tbaa !118
  %95 = icmp eq ptr %87, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %86, %91
  %97 = getelementptr inbounds %struct.UvElement, ptr %87, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !114
  %99 = load ptr, ptr %14, align 8, !tbaa !82
  %100 = getelementptr inbounds %struct.BMesh, ptr %99, i64 0, i32 26
  %101 = load ptr, ptr %98, align 8, !tbaa !115
  %102 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %100, ptr noundef %101, i32 noundef 16) #12
  %103 = load ptr, ptr %16, align 8, !tbaa !107
  %104 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %103, i64 %57, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !121
  call fastcc void @copy_v2_v2(ptr noundef %102, ptr noundef %105) #13
  %106 = load ptr, ptr %87, align 8, !tbaa !19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %86, !llvm.loop !146

108:                                              ; preds = %96, %91, %70, %63, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %109 = add nuw nsw i64 %57, 1
  %110 = load i32, ptr %48, align 8, !tbaa !108
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %56, label %184, !llvm.loop !147

113:                                              ; preds = %4
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %20, i64 0, i32 67
  %115 = load i32, ptr %114, align 4, !tbaa !22
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  call fastcc void @HC_relaxation_iteration_uv(ptr noundef %14, ptr noundef nonnull %16, ptr noundef nonnull %5, float noundef %25, float noundef %45, float noundef %44) #13
  br label %184

118:                                              ; preds = %113
  call fastcc void @laplacian_relaxation_iteration_uv(ptr noundef %14, ptr noundef nonnull %16, ptr noundef nonnull %5, float noundef %25, float noundef %45, float noundef %44) #13
  br label %184

119:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %120 = getelementptr inbounds %struct.UvSculptData, ptr %16, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !138
  %122 = getelementptr inbounds %struct.UVInitialStroke, ptr %121, i64 0, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %122) #13
  %123 = getelementptr inbounds %struct.UVInitialStroke, ptr %121, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !145
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %183

126:                                              ; preds = %119
  %127 = load float, ptr %11, align 4, !tbaa !61
  %128 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !61
  br label %130

130:                                              ; preds = %126, %176
  %131 = phi ptr [ %121, %126 ], [ %177, %176 ]
  %132 = phi i64 [ 0, %126 ], [ %178, %176 ]
  %133 = load ptr, ptr %131, align 8, !tbaa !139
  %134 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %133, i64 %132
  %135 = load i32, ptr %134, align 4, !tbaa !141
  %136 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %133, i64 %132, i32 1
  %137 = load float, ptr %136, align 4, !tbaa !143
  %138 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %133, i64 %132, i32 2
  %139 = load float, ptr %138, align 4, !tbaa !61
  %140 = call float @llvm.fmuladd.f32(float %137, float %127, float %139)
  %141 = load ptr, ptr %16, align 8, !tbaa !107
  %142 = sext i32 %135 to i64
  %143 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %141, i64 %142, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !121
  store float %140, ptr %144, align 4, !tbaa !61
  %145 = getelementptr inbounds %struct.UVInitialStrokeElement, ptr %133, i64 %132, i32 2, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !61
  %147 = call float @llvm.fmuladd.f32(float %137, float %129, float %146)
  %148 = getelementptr inbounds float, ptr %144, i64 1
  store float %147, ptr %148, align 4, !tbaa !61
  %149 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %141, i64 %142
  %150 = load ptr, ptr %149, align 8, !tbaa !19
  %151 = icmp eq ptr %150, null
  br i1 %151, label %176, label %152

152:                                              ; preds = %130, %162
  %153 = phi ptr [ %172, %162 ], [ %150, %130 ]
  %154 = getelementptr inbounds %struct.UvElement, ptr %153, i64 0, i32 3
  %155 = load i8, ptr %154, align 2, !tbaa !104
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %16, align 8, !tbaa !107
  %159 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %158, i64 %142
  %160 = load ptr, ptr %159, align 8, !tbaa !118
  %161 = icmp eq ptr %153, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %152, %157
  %163 = getelementptr inbounds %struct.UvElement, ptr %153, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !114
  %165 = load ptr, ptr %14, align 8, !tbaa !82
  %166 = getelementptr inbounds %struct.BMesh, ptr %165, i64 0, i32 26
  %167 = load ptr, ptr %164, align 8, !tbaa !115
  %168 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %166, ptr noundef %167, i32 noundef 16) #12
  %169 = load ptr, ptr %16, align 8, !tbaa !107
  %170 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %169, i64 %142, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !121
  call fastcc void @copy_v2_v2(ptr noundef %168, ptr noundef %171) #13
  %172 = load ptr, ptr %153, align 8, !tbaa !19
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %152, !llvm.loop !148

174:                                              ; preds = %157, %162
  %175 = load ptr, ptr %120, align 8, !tbaa !138
  br label %176

176:                                              ; preds = %174, %130
  %177 = phi ptr [ %175, %174 ], [ %131, %130 ]
  %178 = add nuw nsw i64 %132, 1
  %179 = getelementptr inbounds %struct.UVInitialStroke, ptr %177, i64 0, i32 1
  %180 = load i32, ptr %179, align 8, !tbaa !145
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %178, %181
  br i1 %182, label %130, label %183, !llvm.loop !149

183:                                              ; preds = %176, %119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %184

184:                                              ; preds = %108, %47, %4, %117, %118, %183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_sculpt_stroke_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %11 = load ptr, ptr %5, align 8, !tbaa !73
  tail call void @WM_event_remove_timer(ptr noundef %9, ptr noundef %10, ptr noundef %11) #12
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @BM_uv_element_map_free(ptr noundef nonnull %14) #12
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %4, align 8, !tbaa !107
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %21(ptr noundef nonnull %18) #12
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %27(ptr noundef nonnull %24) #12
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.UvSculptData, ptr %4, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !139
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %36(ptr noundef nonnull %33) #12
  %37 = load ptr, ptr %29, align 8, !tbaa !138
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi ptr [ %37, %35 ], [ %30, %32 ]
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %40(ptr noundef %39) #12
  br label %41

41:                                               ; preds = %38, %28
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %42(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uv_find_nearest_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @uv_edge_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !136
  %4 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %3) #12
  %5 = load i32, ptr %0, align 4, !tbaa !135
  %6 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %5) #12
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @uv_edge_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !135
  %4 = load i32, ptr %1, align 4, !tbaa !135
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !136
  %9 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !136
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #13
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @uv_element_offset_from_face_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = tail call ptr @BM_uv_element_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.UvElement, ptr %6, i64 0, i32 5
  %12 = load i16, ptr %11, align 4, !tbaa !99
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %15, label %23

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = ptrtoint ptr %6 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 24
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %5, %10, %15
  %24 = phi i32 [ %22, %15 ], [ -1, %10 ], [ -1, %5 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_brush_alpha_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !61
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: optsize
declare float @BKE_brush_curve_strength(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_ghashutil_uinthash(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !156
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %19 [
    i8 11, label %18
    i8 10, label %17
    i8 3, label %8
    i8 4, label %11
    i8 5, label %12
    i8 6, label %13
    i8 7, label %14
    i8 8, label %15
    i8 9, label %16
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !158
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !150
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !150
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !150
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !150
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !150
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !150
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !150
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !157
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !150
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !127
  tail call void %22(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #9 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @HC_relaxation_iteration_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %8 = tail call float @sqrtf(float noundef %4) #12
  %9 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %10) #12
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 36
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.24) #12
  %18 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !134
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 2
  br label %29

23:                                               ; preds = %29, %6
  %24 = phi i32 [ %19, %6 ], [ %57, %29 ]
  %25 = load i32, ptr %13, align 8, !tbaa !108
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %68

29:                                               ; preds = %21, %29
  %30 = phi i64 [ 0, %21 ], [ %56, %29 ]
  %31 = load ptr, ptr %22, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.UvEdge, ptr %31, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !135
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %34, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !159
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !159
  %38 = getelementptr inbounds %struct.UvEdge, ptr %31, i64 %30, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !136
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %40, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !159
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !159
  %44 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %40
  %45 = load ptr, ptr %1, align 8, !tbaa !107
  %46 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %45, i64 %34, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  tail call fastcc void @add_v2_v2(ptr noundef %44, ptr noundef %47) #13
  %48 = load i32, ptr %32, align 4, !tbaa !135
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %49
  %51 = load ptr, ptr %1, align 8, !tbaa !107
  %52 = load i32, ptr %38, align 4, !tbaa !136
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %51, i64 %53, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !121
  tail call fastcc void @add_v2_v2(ptr noundef %50, ptr noundef %55) #13
  %56 = add nuw nsw i64 %30, 1
  %57 = load i32, ptr %18, align 8, !tbaa !134
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %29, label %23, !llvm.loop !161

60:                                               ; preds = %68
  %61 = load i32, ptr %18, align 8, !tbaa !134
  br label %62

62:                                               ; preds = %60, %23
  %63 = phi i32 [ %89, %60 ], [ %25, %23 ]
  %64 = phi i32 [ %61, %60 ], [ %24, %23 ]
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 2
  br label %99

68:                                               ; preds = %27, %68
  %69 = phi i64 [ 0, %27 ], [ %88, %68 ]
  %70 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %69
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %70) #13
  %71 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %69, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !159
  %73 = sitofp i32 %72 to float
  %74 = fdiv float 1.000000e+00, %73
  call fastcc void @mul_v2_fl(ptr noundef nonnull %7, float noundef %74) #13
  %75 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %69, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %75, ptr noundef nonnull %7) #13
  %76 = load float, ptr %7, align 4, !tbaa !61
  %77 = load ptr, ptr %1, align 8, !tbaa !107
  %78 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %77, i64 %69, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !121
  %80 = load float, ptr %79, align 4, !tbaa !61
  %81 = fsub float %76, %80
  %82 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %69, i32 2
  store float %81, ptr %82, align 4, !tbaa !61
  %83 = load float, ptr %28, align 4, !tbaa !61
  %84 = getelementptr inbounds float, ptr %79, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !61
  %86 = fsub float %83, %85
  %87 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %69, i32 2, i64 1
  store float %86, ptr %87, align 4, !tbaa !61
  %88 = add nuw nsw i64 %69, 1
  %89 = load i32, ptr %13, align 8, !tbaa !108
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %88, %90
  br i1 %91, label %68, label %60, !llvm.loop !162

92:                                               ; preds = %99
  %93 = load i32, ptr %13, align 8, !tbaa !108
  br label %94

94:                                               ; preds = %92, %62
  %95 = phi i32 [ %93, %92 ], [ %63, %62 ]
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %200

97:                                               ; preds = %94
  %98 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %120

99:                                               ; preds = %66, %99
  %100 = phi i64 [ 0, %66 ], [ %116, %99 ]
  %101 = load ptr, ptr %67, align 8, !tbaa !130
  %102 = getelementptr inbounds %struct.UvEdge, ptr %101, i64 %100
  %103 = load i32, ptr %102, align 4, !tbaa !135
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %104, i32 3
  %106 = getelementptr inbounds %struct.UvEdge, ptr %101, i64 %100, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !136
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %108, i32 2
  tail call fastcc void @add_v2_v2(ptr noundef nonnull %105, ptr noundef nonnull %109) #13
  %110 = load i32, ptr %106, align 4, !tbaa !136
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %111, i32 3
  %113 = load i32, ptr %102, align 4, !tbaa !135
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %114, i32 2
  tail call fastcc void @add_v2_v2(ptr noundef nonnull %112, ptr noundef nonnull %115) #13
  %116 = add nuw nsw i64 %100, 1
  %117 = load i32, ptr %18, align 8, !tbaa !134
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %99, label %92, !llvm.loop !163

120:                                              ; preds = %97, %195
  %121 = phi i64 [ 0, %97 ], [ %196, %195 ]
  %122 = load ptr, ptr %1, align 8, !tbaa !107
  %123 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %122, i64 %121, i32 2
  %124 = load i8, ptr %123, align 8, !tbaa !120
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %195

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %122, i64 %121, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !121
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %129, ptr noundef %2) #13
  %130 = load float, ptr %98, align 4, !tbaa !61
  %131 = fdiv float %130, %5
  store float %131, ptr %98, align 4, !tbaa !61
  %132 = call fastcc float @dot_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %7) #13
  %133 = fcmp ugt float %132, %4
  br i1 %133, label %195, label %134

134:                                              ; preds = %127
  %135 = tail call float @sqrtf(float noundef %132) #12
  %136 = tail call float @BKE_brush_curve_strength(ptr noundef %11, float noundef %135, float noundef %8) #12
  %137 = fmul float %136, %3
  %138 = fsub float 1.000000e+00, %137
  %139 = load ptr, ptr %1, align 8, !tbaa !107
  %140 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %139, i64 %121, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !121
  %142 = load float, ptr %141, align 4, !tbaa !61
  %143 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 1
  %144 = load float, ptr %143, align 4, !tbaa !61
  %145 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !61
  %147 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 3
  %148 = load float, ptr %147, align 4, !tbaa !61
  %149 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !159
  %151 = sitofp i32 %150 to float
  %152 = fdiv float %148, %151
  %153 = fadd float %146, %152
  %154 = tail call float @llvm.fmuladd.f32(float %153, float -5.000000e-01, float %144)
  %155 = fmul float %137, %154
  %156 = tail call float @llvm.fmuladd.f32(float %138, float %142, float %155)
  store float %156, ptr %141, align 4, !tbaa !61
  %157 = getelementptr inbounds float, ptr %141, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !61
  %159 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 1, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !61
  %161 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 2, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !61
  %163 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %121, i32 3, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !61
  %165 = fdiv float %164, %151
  %166 = fadd float %162, %165
  %167 = tail call float @llvm.fmuladd.f32(float %166, float -5.000000e-01, float %160)
  %168 = fmul float %137, %167
  %169 = tail call float @llvm.fmuladd.f32(float %138, float %158, float %168)
  store float %169, ptr %157, align 4, !tbaa !61
  %170 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %139, i64 %121
  %171 = load ptr, ptr %170, align 8, !tbaa !19
  %172 = icmp eq ptr %171, null
  br i1 %172, label %195, label %173

173:                                              ; preds = %134, %183
  %174 = phi ptr [ %193, %183 ], [ %171, %134 ]
  %175 = getelementptr inbounds %struct.UvElement, ptr %174, i64 0, i32 3
  %176 = load i8, ptr %175, align 2, !tbaa !104
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %1, align 8, !tbaa !107
  %180 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %179, i64 %121
  %181 = load ptr, ptr %180, align 8, !tbaa !118
  %182 = icmp eq ptr %174, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %173, %178
  %184 = getelementptr inbounds %struct.UvElement, ptr %174, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !114
  %186 = load ptr, ptr %0, align 8, !tbaa !82
  %187 = getelementptr inbounds %struct.BMesh, ptr %186, i64 0, i32 26
  %188 = load ptr, ptr %185, align 8, !tbaa !115
  %189 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %187, ptr noundef %188, i32 noundef 16) #12
  %190 = load ptr, ptr %1, align 8, !tbaa !107
  %191 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %190, i64 %121, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !121
  tail call fastcc void @copy_v2_v2(ptr noundef %189, ptr noundef %192) #13
  %193 = load ptr, ptr %174, align 8, !tbaa !19
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %173, !llvm.loop !164

195:                                              ; preds = %183, %178, %134, %127, %120
  %196 = add nuw nsw i64 %121, 1
  %197 = load i32, ptr %13, align 8, !tbaa !108
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %120, label %200, !llvm.loop !165

200:                                              ; preds = %195, %94
  %201 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %201(ptr noundef %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @laplacian_relaxation_iteration_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %8 = tail call float @sqrtf(float noundef %4) #12
  %9 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = tail call ptr @BKE_paint_brush(ptr noundef %10) #12
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 36
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.24) #12
  %18 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !134
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.UvSculptData, ptr %1, i64 0, i32 2
  br label %26

23:                                               ; preds = %26, %6
  %24 = load i32, ptr %13, align 8, !tbaa !108
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %61, label %136

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %53, %26 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !130
  %29 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27
  %30 = load i32, ptr %29, align 4, !tbaa !135
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %31, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !159
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !159
  %35 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !136
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %37, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !159
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !159
  %41 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %37
  %42 = load ptr, ptr %1, align 8, !tbaa !107
  %43 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %42, i64 %31, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !121
  tail call fastcc void @add_v2_v2(ptr noundef %41, ptr noundef %44) #13
  %45 = load i32, ptr %29, align 4, !tbaa !135
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %46
  %48 = load ptr, ptr %1, align 8, !tbaa !107
  %49 = load i32, ptr %35, align 4, !tbaa !136
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %48, i64 %50, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !121
  tail call fastcc void @add_v2_v2(ptr noundef %47, ptr noundef %52) #13
  %53 = add nuw nsw i64 %27, 1
  %54 = load i32, ptr %18, align 8, !tbaa !134
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %26, label %23, !llvm.loop !166

57:                                               ; preds = %61
  %58 = icmp sgt i32 %70, 0
  br i1 %58, label %59, label %136

59:                                               ; preds = %57
  %60 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  br label %73

61:                                               ; preds = %23, %61
  %62 = phi i64 [ %69, %61 ], [ 0, %23 ]
  %63 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %62
  %64 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %62, i32 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %64, ptr noundef %63) #13
  %65 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %62, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !159
  %67 = sitofp i32 %66 to float
  %68 = fdiv float 1.000000e+00, %67
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %64, float noundef %68) #13
  %69 = add nuw nsw i64 %62, 1
  %70 = load i32, ptr %13, align 8, !tbaa !108
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %61, label %57, !llvm.loop !167

73:                                               ; preds = %59, %131
  %74 = phi i64 [ 0, %59 ], [ %132, %131 ]
  %75 = load ptr, ptr %1, align 8, !tbaa !107
  %76 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %75, i64 %74, i32 2
  %77 = load i8, ptr %76, align 8, !tbaa !120
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %131

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %75, i64 %74, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !121
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %82, ptr noundef %2) #13
  %83 = load float, ptr %60, align 4, !tbaa !61
  %84 = fdiv float %83, %5
  store float %84, ptr %60, align 4, !tbaa !61
  %85 = call fastcc float @dot_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %7) #13
  %86 = fcmp ugt float %85, %4
  br i1 %86, label %131, label %87

87:                                               ; preds = %80
  %88 = tail call float @sqrtf(float noundef %85) #12
  %89 = tail call float @BKE_brush_curve_strength(ptr noundef %11, float noundef %88, float noundef %8) #12
  %90 = fmul float %89, %3
  %91 = fsub float 1.000000e+00, %90
  %92 = load ptr, ptr %1, align 8, !tbaa !107
  %93 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %92, i64 %74, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !121
  %95 = load float, ptr %94, align 4, !tbaa !61
  %96 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %74, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !61
  %98 = fmul float %90, %97
  %99 = tail call float @llvm.fmuladd.f32(float %91, float %95, float %98)
  store float %99, ptr %94, align 4, !tbaa !61
  %100 = getelementptr inbounds float, ptr %94, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !61
  %102 = getelementptr inbounds %struct.Temp_UvData, ptr %17, i64 %74, i32 1, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !61
  %104 = fmul float %90, %103
  %105 = tail call float @llvm.fmuladd.f32(float %91, float %101, float %104)
  store float %105, ptr %100, align 4, !tbaa !61
  %106 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %92, i64 %74
  %107 = load ptr, ptr %106, align 8, !tbaa !19
  %108 = icmp eq ptr %107, null
  br i1 %108, label %131, label %109

109:                                              ; preds = %87, %119
  %110 = phi ptr [ %129, %119 ], [ %107, %87 ]
  %111 = getelementptr inbounds %struct.UvElement, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 2, !tbaa !104
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr %1, align 8, !tbaa !107
  %116 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %115, i64 %74
  %117 = load ptr, ptr %116, align 8, !tbaa !118
  %118 = icmp eq ptr %110, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %109, %114
  %120 = getelementptr inbounds %struct.UvElement, ptr %110, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !114
  %122 = load ptr, ptr %0, align 8, !tbaa !82
  %123 = getelementptr inbounds %struct.BMesh, ptr %122, i64 0, i32 26
  %124 = load ptr, ptr %121, align 8, !tbaa !115
  %125 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %123, ptr noundef %124, i32 noundef 16) #12
  %126 = load ptr, ptr %1, align 8, !tbaa !107
  %127 = getelementptr inbounds %struct.UvAdjacencyElement, ptr %126, i64 %74, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !121
  tail call fastcc void @copy_v2_v2(ptr noundef %125, ptr noundef %128) #13
  %129 = load ptr, ptr %110, align 8, !tbaa !19
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %109, !llvm.loop !168

131:                                              ; preds = %119, %114, %87, %80, %73
  %132 = add nuw nsw i64 %74, 1
  %133 = load i32, ptr %13, align 8, !tbaa !108
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %73, label %136, !llvm.loop !169

136:                                              ; preds = %131, %23, %57
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !19
  tail call void %137(ptr noundef %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !61
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !14, i64 448}
!6 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !11, i64 44, !11, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !10, i64 52, !11, i64 56, !8, i64 58, !8, i64 59, !12, i64 64, !15, i64 168, !10, i64 336, !10, i64 340, !11, i64 344, !11, i64 346, !8, i64 348, !8, i64 349, !11, i64 350, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !11, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !14, i64 448, !14, i64 452, !14, i64 456, !14, i64 460, !11, i64 464, !11, i64 466, !14, i64 468, !10, i64 472, !10, i64 476, !16, i64 480, !17, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!"ImagePaintSettings", !13, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !8, i64 48, !14, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !10, i64 100}
!13 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !14, i64 28, !14, i64 32, !14, i64 36}
!14 = !{!"int", !8, i64 0}
!15 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !8, i64 8, !7, i64 120, !10, i64 128, !10, i64 132, !14, i64 136, !14, i64 140, !14, i64 144, !14, i64 148, !7, i64 152, !7, i64 160}
!16 = !{!"UnifiedPaintSettings", !14, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !8, i64 16, !8, i64 28, !14, i64 40, !8, i64 44, !10, i64 52, !14, i64 56, !14, i64 60, !8, i64 64, !8, i64 65, !10, i64 72, !8, i64 76, !14, i64 84, !10, i64 88, !8, i64 92, !8, i64 100, !14, i64 108, !7, i64 112, !10, i64 120, !14, i64 124}
!17 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !8, i64 20, !8, i64 21, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!18 = !{!6, !7, i64 24}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !14, i64 456}
!21 = !{!6, !14, i64 452}
!22 = !{!6, !14, i64 460}
!23 = !{!24, !14, i64 28}
!24 = !{!"UvSculpt", !13, i64 0}
!25 = !{!24, !7, i64 16}
!26 = !{!27, !7, i64 264}
!27 = !{!"Scene", !28, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !29, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !14, i64 232, !14, i64 236, !14, i64 240, !11, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !30, i64 280, !39, i64 4264, !29, i64 4296, !29, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !11, i64 4376, !11, i64 4378, !14, i64 4380, !29, i64 4384, !40, i64 4400, !41, i64 4416, !44, i64 4600, !7, i64 4608, !45, i64 4616, !7, i64 4640, !46, i64 4648, !46, i64 4656, !32, i64 4664, !33, i64 4824, !47, i64 4888, !7, i64 4952}
!28 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !14, i64 100, !14, i64 104, !14, i64 108, !7, i64 112}
!29 = !{!"ListBase", !7, i64 0, !7, i64 8}
!30 = !{!"RenderData", !31, i64 0, !7, i64 248, !7, i64 256, !34, i64 264, !35, i64 328, !14, i64 400, !14, i64 404, !14, i64 408, !10, i64 412, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !11, i64 432, !11, i64 434, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !14, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !14, i64 484, !14, i64 488, !11, i64 492, !11, i64 494, !14, i64 496, !14, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !8, i64 514, !8, i64 515, !14, i64 516, !14, i64 520, !14, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !36, i64 544, !36, i64 560, !37, i64 576, !29, i64 592, !11, i64 608, !11, i64 610, !10, i64 612, !10, i64 616, !10, i64 620, !10, i64 624, !14, i64 628, !10, i64 632, !10, i64 636, !10, i64 640, !10, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !10, i64 660, !10, i64 664, !11, i64 668, !11, i64 670, !10, i64 672, !10, i64 676, !8, i64 680, !14, i64 1704, !11, i64 1708, !11, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !14, i64 2520, !11, i64 2524, !11, i64 2526, !10, i64 2528, !10, i64 2532, !11, i64 2536, !11, i64 2538, !10, i64 2540, !11, i64 2544, !11, i64 2546, !14, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !10, i64 2560, !10, i64 2564, !7, i64 2568, !14, i64 2576, !10, i64 2580, !8, i64 2584, !38, i64 2616, !14, i64 3976, !14, i64 3980}
!31 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !11, i64 8, !11, i64 10, !10, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !32, i64 24, !33, i64 184}
!32 = !{!"ColorManagedViewSettings", !14, i64 0, !14, i64 4, !8, i64 8, !8, i64 72, !10, i64 136, !10, i64 140, !7, i64 144, !7, i64 152}
!33 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!34 = !{!"QuicktimeCodecSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !11, i64 48, !11, i64 50, !14, i64 52, !14, i64 56, !14, i64 60}
!35 = !{!"FFMpegCodecData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !10, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !7, i64 64}
!36 = !{!"rctf", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!37 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!38 = !{!"BakeData", !31, i64 0, !8, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !10, i64 1280, !10, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!39 = !{!"AudioData", !14, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !14, i64 16, !11, i64 20, !11, i64 22, !10, i64 24, !10, i64 28}
!40 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!41 = !{!"GameData", !40, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !8, i64 34, !42, i64 40, !11, i64 64, !11, i64 66, !10, i64 68, !43, i64 72, !10, i64 128, !10, i64 132, !14, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180}
!42 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !10, i64 8, !10, i64 12, !7, i64 16}
!43 = !{!"RecastData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !14, i64 40, !10, i64 44, !10, i64 48, !11, i64 52, !11, i64 54}
!44 = !{!"UnitSettings", !10, i64 0, !8, i64 4, !8, i64 5, !11, i64 6}
!45 = !{!"PhysicsSettings", !8, i64 0, !14, i64 12, !14, i64 16, !14, i64 20}
!46 = !{!"long", !8, i64 0}
!47 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!48 = !{!49, !11, i64 136}
!49 = !{!"Object", !28, i64 0, !7, i64 120, !7, i64 128, !11, i64 136, !11, i64 138, !14, i64 140, !14, i64 144, !14, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !50, i64 312, !7, i64 360, !29, i64 368, !29, i64 384, !29, i64 400, !29, i64 416, !14, i64 432, !14, i64 436, !7, i64 440, !7, i64 448, !14, i64 456, !14, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !10, i64 616, !10, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !14, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !8, i64 966, !8, i64 967, !14, i64 968, !14, i64 972, !14, i64 976, !14, i64 980, !14, i64 984, !10, i64 988, !10, i64 992, !10, i64 996, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !10, i64 1028, !10, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !8, i64 1042, !8, i64 1043, !11, i64 1044, !8, i64 1046, !8, i64 1047, !10, i64 1048, !10, i64 1052, !29, i64 1056, !29, i64 1072, !29, i64 1088, !29, i64 1104, !10, i64 1120, !11, i64 1124, !11, i64 1126, !8, i64 1128, !14, i64 1144, !14, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !11, i64 1162, !8, i64 1164, !29, i64 1176, !29, i64 1192, !29, i64 1208, !29, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !11, i64 1266, !10, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !46, i64 1304, !46, i64 1312, !14, i64 1320, !14, i64 1324, !29, i64 1328, !29, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !29, i64 1400, !7, i64 1416}
!50 = !{!"bAnimVizSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!51 = !{!52, !8, i64 10556}
!52 = !{!"SpaceImage", !7, i64 0, !7, i64 8, !29, i64 16, !14, i64 32, !14, i64 36, !7, i64 40, !53, i64 48, !7, i64 88, !54, i64 96, !55, i64 5360, !7, i64 10520, !8, i64 10528, !10, i64 10536, !10, i64 10540, !10, i64 10544, !10, i64 10548, !10, i64 10552, !8, i64 10556, !8, i64 10557, !11, i64 10558, !11, i64 10560, !11, i64 10562, !8, i64 10564, !8, i64 10565, !8, i64 10566, !8, i64 10567, !56, i64 10568}
!53 = !{!"ImageUser", !7, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !14, i64 36}
!54 = !{!"Scopes", !14, i64 0, !14, i64 4, !14, i64 8, !10, i64 12, !14, i64 16, !10, i64 20, !10, i64 24, !14, i64 28, !10, i64 32, !14, i64 36, !8, i64 40, !55, i64 64, !7, i64 5224, !7, i64 5232, !7, i64 5240, !7, i64 5248, !14, i64 5256, !14, i64 5260}
!55 = !{!"Histogram", !14, i64 0, !14, i64 4, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 3080, !8, i64 4104, !10, i64 5128, !10, i64 5132, !11, i64 5136, !11, i64 5138, !14, i64 5140, !8, i64 5144}
!56 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!57 = !{!58, !11, i64 214}
!58 = !{!"ARegion", !7, i64 0, !7, i64 8, !59, i64 16, !37, i64 176, !37, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !10, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !29, i64 248, !29, i64 264, !29, i64 280, !29, i64 296, !29, i64 312, !29, i64 328, !29, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!59 = !{!"View2D", !36, i64 0, !36, i64 16, !37, i64 32, !37, i64 48, !37, i64 64, !8, i64 80, !8, i64 88, !10, i64 96, !10, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !14, i64 136, !14, i64 140, !7, i64 144, !7, i64 152}
!60 = !{!13, !14, i64 28}
!61 = !{!10, !10, i64 0}
!62 = !{i32 0, i32 2}
!63 = !{!64, !7, i64 0}
!64 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !29, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !65, i64 152, !11, i64 184}
!65 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!66 = !{!64, !7, i64 24}
!67 = !{!64, !7, i64 8}
!68 = !{!64, !7, i64 48}
!69 = !{!64, !7, i64 64}
!70 = !{!64, !7, i64 72}
!71 = !{!64, !11, i64 184}
!72 = !{!64, !7, i64 88}
!73 = !{!74, !7, i64 40}
!74 = !{!"UvSculptData", !7, i64 0, !14, i64 8, !7, i64 16, !14, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!75 = !{!76, !7, i64 96}
!76 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !29, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!77 = !{!78, !11, i64 16}
!78 = !{!"wmEvent", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 18, !14, i64 20, !14, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !11, i64 44, !11, i64 46, !14, i64 48, !14, i64 52, !79, i64 56, !14, i64 64, !14, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 106, !14, i64 108, !7, i64 112}
!79 = !{!"double", !8, i64 0}
!80 = !{!78, !7, i64 112}
!81 = !{!49, !7, i64 296}
!82 = !{!83, !7, i64 0}
!83 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !14, i64 16, !7, i64 24, !14, i64 32, !7, i64 40, !7, i64 48, !46, i64 56, !7, i64 64, !14, i64 72, !7, i64 80, !14, i64 88, !11, i64 92, !11, i64 94, !7, i64 96, !14, i64 104}
!84 = !{!24, !7, i64 0}
!85 = !{!86, !7, i64 144}
!86 = !{!"Brush", !28, i64 0, !87, i64 120, !7, i64 144, !88, i64 152, !88, i64 464, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !8, i64 816, !10, i64 1840, !11, i64 1844, !11, i64 1846, !10, i64 1848, !14, i64 1852, !14, i64 1856, !14, i64 1860, !10, i64 1864, !14, i64 1868, !14, i64 1872, !14, i64 1876, !14, i64 1880, !10, i64 1884, !10, i64 1888, !8, i64 1892, !10, i64 1904, !8, i64 1908, !14, i64 1920, !10, i64 1924, !10, i64 1928, !14, i64 1932, !14, i64 1936, !14, i64 1940, !8, i64 1944, !8, i64 1945, !8, i64 1946, !8, i64 1947, !10, i64 1948, !10, i64 1952, !10, i64 1956, !10, i64 1960, !10, i64 1964, !14, i64 1968, !14, i64 1972, !14, i64 1976, !10, i64 1980, !10, i64 1984, !14, i64 1988, !14, i64 1992, !10, i64 1996, !8, i64 2000, !8, i64 2012, !8, i64 2024, !8, i64 2032, !8, i64 2040, !8, i64 2048}
!87 = !{!"BrushClone", !7, i64 0, !8, i64 8, !10, i64 16, !10, i64 20}
!88 = !{!"MTex", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !10, i64 116, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !11, i64 128, !11, i64 130, !8, i64 132, !8, i64 133, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308}
!89 = !{!76, !7, i64 112}
!90 = !{!74, !8, i64 64}
!91 = !{!74, !8, i64 65}
!92 = !{!74, !7, i64 56}
!93 = !{!6, !8, i64 50}
!94 = !{!74, !7, i64 48}
!95 = !{!14, !14, i64 0}
!96 = !{!97, !7, i64 0}
!97 = !{!"NearestHit", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !14, i64 40}
!98 = !{!97, !7, i64 16}
!99 = !{!100, !11, i64 20}
!100 = !{!"UvElement", !7, i64 0, !7, i64 8, !11, i64 16, !8, i64 18, !8, i64 19, !11, i64 20}
!101 = !{!102, !14, i64 16}
!102 = !{!"UvElementMap", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 20, !7, i64 24}
!103 = !{!102, !7, i64 8}
!104 = !{!100, !8, i64 18}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!74, !7, i64 0}
!108 = !{!74, !14, i64 8}
!109 = !{!110, !14, i64 0}
!110 = !{!"BMesh", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !14, i64 88, !14, i64 92, !14, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !14, i64 128, !7, i64 136, !111, i64 144, !111, i64 344, !111, i64 544, !111, i64 744, !11, i64 944, !14, i64 948, !14, i64 952, !14, i64 956, !29, i64 960, !7, i64 976, !29, i64 984, !7, i64 1000}
!111 = !{!"CustomData", !7, i64 0, !8, i64 8, !14, i64 172, !14, i64 176, !14, i64 180, !7, i64 184, !7, i64 192}
!112 = !{!102, !7, i64 0}
!113 = distinct !{!113, !106}
!114 = !{!100, !7, i64 8}
!115 = !{!116, !7, i64 0}
!116 = !{!"BMLoop", !117, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!117 = !{!"BMHeader", !7, i64 0, !14, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!118 = !{!119, !7, i64 0}
!119 = !{!"UvAdjacencyElement", !7, i64 0, !7, i64 8, !8, i64 16}
!120 = !{!119, !8, i64 16}
!121 = !{!119, !7, i64 8}
!122 = distinct !{!122, !106}
!123 = distinct !{!123, !106}
!124 = !{!116, !7, i64 56}
!125 = !{!126, !8, i64 8}
!126 = !{!"UvEdge", !14, i64 0, !14, i64 4, !8, i64 8}
!127 = !{!8, !8, i64 0}
!128 = distinct !{!128, !106}
!129 = distinct !{!129, !106}
!130 = !{!74, !7, i64 16}
!131 = !{i8 0, i8 2}
!132 = !{i64 0, i64 4, !95, i64 4, i64 4, !95, i64 8, i64 1, !127}
!133 = distinct !{!133, !106}
!134 = !{!74, !14, i64 24}
!135 = !{!126, !14, i64 0}
!136 = !{!126, !14, i64 4}
!137 = distinct !{!137, !106}
!138 = !{!74, !7, i64 32}
!139 = !{!140, !7, i64 0}
!140 = !{!"UVInitialStroke", !7, i64 0, !14, i64 8, !8, i64 12}
!141 = !{!142, !14, i64 0}
!142 = !{!"UVInitialStrokeElement", !14, i64 0, !10, i64 4, !8, i64 8}
!143 = !{!142, !10, i64 4}
!144 = distinct !{!144, !106}
!145 = !{!140, !14, i64 8}
!146 = distinct !{!146, !106}
!147 = distinct !{!147, !106}
!148 = distinct !{!148, !106}
!149 = distinct !{!149, !106}
!150 = !{!151, !7, i64 48}
!151 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !14, i64 56, !8, i64 60}
!152 = !{!153, !7, i64 8}
!153 = !{!"GHashIterator", !7, i64 0, !7, i64 8, !14, i64 16}
!154 = !{!155, !7, i64 8}
!155 = !{!"_gh_Entry", !7, i64 0, !7, i64 8, !7, i64 16}
!156 = !{!151, !8, i64 60}
!157 = !{!151, !7, i64 40}
!158 = !{!110, !7, i64 56}
!159 = !{!160, !14, i64 32}
!160 = !{!"Temp_UvData", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32}
!161 = distinct !{!161, !106}
!162 = distinct !{!162, !106}
!163 = distinct !{!163, !106}
!164 = distinct !{!164, !106}
!165 = distinct !{!165, !106}
!166 = distinct !{!166, !106}
!167 = distinct !{!167, !106}
!168 = distinct !{!168, !106}
!169 = distinct !{!169, !106}
