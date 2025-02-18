; ModuleID = 'blender/source/blender/editors/uvedit/uvedit_smart_stitch.c'
source_filename = "blender/source/blender/editors/uvedit/uvedit_smart_stitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.StitchState = type { float, i8, float, i8, i8, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i8, ptr, ptr }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.UvEdge = type { i32, i32, i8, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon.0, i32, i32, %struct.PointerRNA, i32 }
%union.anon.0 = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.StitchPreviewer = type { ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i32 }
%struct.PreviewPosition = type { i32, i32 }
%struct.IslandStitchData = type { float, float, [2 x float], [2 x float], i32, i32, i32, i8, i8, i8 }
%struct.UVVertAverage = type { [2 x float], i16 }
%struct.NearestHit = type { ptr, ptr, ptr, ptr, ptr, i32 }

@UV_OT_stitch.stitch_modes = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"VERTEX\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Stitch\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Stitch selected UV vertices by proximity\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"UV_OT_stitch\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"use_limit\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Use Limit\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Stitch UVs within a specified limit distance\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"snap_islands\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Snap Islands\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"Snap islands together (on edge stitch mode, rotates the islands too)\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Limit distance in normalized coordinates\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"static_island\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Static Island\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Island that stays in place when stitching islands\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"midpoint_snap\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Snap At Midpoint\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"UVs are stitched at midpoint instead of at static island\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"clear_seams\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Clear Seams\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Clear seams of stitched edges\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Operation Mode\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Use vertex or edge stitching\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"stored_mode\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Stored Operation Mode\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@RNA_SelectedUvElement = external global %struct.StructRNA, align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"stitch state\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [21 x i8] c"uv_stitch_unique_uvs\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"uv_stitch_normals\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"uv_stitch_unique_map\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"stitch_edge_hash\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"stitch_all_edges\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"stitch_edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [26 x i8] c"uv_stitch_selection_stack\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"face_index\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"element_index\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"stitch island tris\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"stitch_new_edge_selection_stack\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"stitch_new_vert_selection_stack\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"stitch_face_preview_position\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"stitch_island_data\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"tri_uv_stitch_prev\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"stitch_preview_stichable_data\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"stitch_preview_unstichable_data\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"static_island_preview_tris\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"stitch_uv_average\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"stitch_uv_final_map\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"stitch_previewer\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@stitch_update_header.str = internal global [116 x i8] c"Mode(TAB) %s, (S)nap %s, (M)idpoints %s, (L)imit %.2f (Alt Wheel adjust) %s, Switch (I)sland, shift select vertices\00", align 16

; Function Attrs: nounwind uwtable
define dso_local void @UV_OT_stitch(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @stitch_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @stitch_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stitch_exec, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @stitch_cancel, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #9
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_float(ptr noundef %15, ptr noundef nonnull @.str.14, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !50
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 2147483647) #9
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  %21 = load ptr, ptr %10, align 8, !tbaa !50
  %22 = tail call ptr @RNA_def_boolean(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #9
  %23 = load ptr, ptr %10, align 8, !tbaa !50
  %24 = tail call ptr @RNA_def_enum(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef nonnull @UV_OT_stitch.stitch_modes, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #9
  %25 = load ptr, ptr %10, align 8, !tbaa !50
  %26 = tail call ptr @RNA_def_enum(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull @UV_OT_stitch.stitch_modes, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #9
  tail call void @RNA_def_property_flag(ptr noundef %26, i32 noundef 524288) #9
  %27 = load ptr, ptr %10, align 8, !tbaa !50
  %28 = tail call ptr @RNA_def_collection_runtime(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef nonnull @RNA_SelectedUvElement, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #9
  tail call void @RNA_def_property_flag(ptr noundef %28, i32 noundef 524288) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @stitch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %5 = tail call fastcc i32 @stitch_init(ptr noundef %0, ptr noundef %1), !range !51
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #9
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ 1, %7 ], [ 2, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stitch_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !61
  switch i16 %8, label %144 [
    i16 2, label %147
    i16 218, label %9
    i16 1, label %10
    i16 163, label %26
    i16 220, label %26
    i16 164, label %35
    i16 10, label %35
    i16 162, label %50
    i16 11, label %50
    i16 108, label %67
    i16 105, label %79
    i16 109, label %95
    i16 3, label %107
    i16 115, label %124
    i16 219, label %136
  ]

9:                                                ; preds = %3
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !65
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !69
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %145

22:                                               ; preds = %18
  tail call fastcc void @stitch_select(ptr noundef %0, ptr noundef %4, ptr noundef %2, ptr noundef %6)
  %23 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %22
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

26:                                               ; preds = %10, %14, %3, %3
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !69
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %147

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 1), !range !51
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %147

34:                                               ; preds = %30
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

35:                                               ; preds = %3, %3
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !69
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %147

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %41 = load i16, ptr %40, align 4, !tbaa !70
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %147, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 2
  %45 = load float, ptr %44, align 8, !tbaa !71
  %46 = fadd float %45, 0x3F847AE140000000
  store float %46, ptr %44, align 8, !tbaa !71
  %47 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %145

49:                                               ; preds = %43
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

50:                                               ; preds = %3, %3
  %51 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !69
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %147

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %56 = load i16, ptr %55, align 4, !tbaa !70
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %147, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 2
  %60 = load float, ptr %59, align 8, !tbaa !71
  %61 = fadd float %60, 0xBF847AE140000000
  %62 = fcmp olt float %61, 0x3F847AE140000000
  %63 = select i1 %62, float 0x3F847AE140000000, float %61
  store float %63, ptr %59, align 8, !tbaa !71
  %64 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %58
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !69
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %147

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 1
  %73 = load i8, ptr %72, align 4, !tbaa !73
  %74 = icmp eq i8 %73, 0
  %75 = zext i1 %74 to i8
  store i8 %75, ptr %72, align 4, !tbaa !73
  %76 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %145

78:                                               ; preds = %71
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !69
  %82 = icmp eq i16 %81, 1
  br i1 %82, label %83, label %147

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 18
  %85 = load i32, ptr %84, align 4, !tbaa !74
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %84, align 4, !tbaa !74
  %87 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.UvElementMap, ptr %88, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !76
  %91 = srem i32 %86, %90
  store i32 %91, ptr %84, align 4, !tbaa !74
  %92 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %83
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !69
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %145

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 4
  %101 = load i8, ptr %100, align 1, !tbaa !78
  %102 = icmp eq i8 %101, 0
  %103 = zext i1 %102 to i8
  store i8 %103, ptr %100, align 1, !tbaa !78
  %104 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %99
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

107:                                              ; preds = %3
  %108 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %109 = load i16, ptr %108, align 8, !tbaa !64
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %114 = load i16, ptr %113, align 2, !tbaa !69
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %147

116:                                              ; preds = %112
  %117 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !65
  %118 = and i32 %117, 16384
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  tail call fastcc void @stitch_select(ptr noundef %0, ptr noundef %4, ptr noundef %2, ptr noundef %6)
  %121 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

124:                                              ; preds = %3
  %125 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !69
  %127 = icmp eq i16 %126, 1
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 3
  %130 = load i8, ptr %129, align 4, !tbaa !79
  %131 = icmp eq i8 %130, 0
  %132 = zext i1 %131 to i8
  store i8 %132, ptr %129, align 4, !tbaa !79
  %133 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

136:                                              ; preds = %3
  %137 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !69
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  tail call fastcc void @stitch_switch_selection_mode(ptr noundef %6)
  %141 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0), !range !51
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %147

144:                                              ; preds = %3
  br label %147

145:                                              ; preds = %136, %140, %128, %120, %95, %99, %83, %71, %58, %43, %18, %22
  tail call fastcc void @stitch_update_header(ptr noundef %6, ptr noundef %0)
  %146 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  tail call void @ED_region_tag_redraw(ptr noundef %146) #9
  br label %147

147:                                              ; preds = %124, %112, %116, %79, %67, %50, %54, %35, %39, %26, %3, %145, %144, %143, %135, %123, %111, %106, %94, %78, %66, %49, %34, %33, %25, %9
  %148 = phi i32 [ 1, %144 ], [ 1, %145 ], [ 2, %143 ], [ 2, %135 ], [ 2, %123 ], [ 2, %111 ], [ 2, %106 ], [ 2, %94 ], [ 2, %78 ], [ 2, %66 ], [ 2, %49 ], [ 4, %33 ], [ 2, %34 ], [ 2, %25 ], [ 2, %9 ], [ 8, %3 ], [ 8, %26 ], [ 8, %39 ], [ 8, %35 ], [ 8, %54 ], [ 8, %50 ], [ 1, %67 ], [ 1, %79 ], [ 1, %116 ], [ 1, %112 ], [ 1, %124 ]
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stitch_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call fastcc i32 @stitch_init(ptr noundef %0, ptr noundef %1), !range !51
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call fastcc i32 @stitch_process_data(ptr noundef %8, ptr noundef %3, i32 noundef 1), !range !51
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 2, i32 4
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef %9)
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ 2, %2 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @stitch_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

declare i32 @ED_operator_uvedit(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @stitch_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.UvEdge, align 8
  %4 = alloca %struct.UvEdge, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.CollectionPropertyIterator, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.CollectionPropertyIterator, align 8
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.UvEdge, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %18 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %18) #9
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 16) #9
  %23 = icmp eq ptr %17, null
  br i1 %23, label %920, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !101
  %26 = tail call ptr %25(i64 noundef 144, ptr noundef nonnull @.str.33) #9
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !102
  %30 = tail call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.8) #9
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 1
  store i8 %31, ptr %32, align 4, !tbaa !73
  %33 = load ptr, ptr %28, align 8, !tbaa !102
  %34 = tail call float @RNA_float_get(ptr noundef %33, ptr noundef nonnull @.str.14) #9
  %35 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 2
  store float %34, ptr %35, align 8, !tbaa !71
  %36 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 5
  store ptr %19, ptr %36, align 8, !tbaa !103
  %37 = load ptr, ptr %28, align 8, !tbaa !102
  %38 = tail call i32 @RNA_boolean_get(ptr noundef %37, ptr noundef nonnull @.str.11) #9
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 3
  store i8 %39, ptr %40, align 4, !tbaa !79
  %41 = load ptr, ptr %28, align 8, !tbaa !102
  %42 = tail call i32 @RNA_int_get(ptr noundef %41, ptr noundef nonnull @.str.17) #9
  %43 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 18
  store i32 %42, ptr %43, align 4, !tbaa !74
  %44 = load ptr, ptr %28, align 8, !tbaa !102
  %45 = tail call i32 @RNA_boolean_get(ptr noundef %44, ptr noundef nonnull @.str.20) #9
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 4
  store i8 %46, ptr %47, align 1, !tbaa !78
  %48 = load ptr, ptr %28, align 8, !tbaa !102
  %49 = tail call i32 @RNA_boolean_get(ptr noundef %48, ptr noundef nonnull @.str.23) #9
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 6
  store i8 %50, ptr %51, align 8, !tbaa !104
  %52 = load ptr, ptr %28, align 8, !tbaa !102
  %53 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %52, ptr noundef nonnull @.str.26) #9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %24
  %56 = load ptr, ptr %28, align 8, !tbaa !102
  %57 = tail call i32 @RNA_enum_get(ptr noundef %56, ptr noundef nonnull @.str.26) #9
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 20
  store i8 %58, ptr %59, align 8, !tbaa !105
  br label %80

60:                                               ; preds = %24
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 11
  %62 = load i8, ptr %61, align 2, !tbaa !106
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 20
  br i1 %64, label %73, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 8
  %68 = load i16, ptr %67, align 2, !tbaa !113
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i8 0, ptr %65, align 8, !tbaa !105
  br label %80

72:                                               ; preds = %66
  store i8 1, ptr %65, align 8, !tbaa !105
  br label %80

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 12
  %75 = load i8, ptr %74, align 1, !tbaa !114
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i8 0, ptr %65, align 8, !tbaa !105
  br label %80

79:                                               ; preds = %73
  store i8 1, ptr %65, align 8, !tbaa !105
  br label %80

80:                                               ; preds = %72, %71, %79, %78, %55
  %81 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 11
  %82 = load i8, ptr %81, align 2, !tbaa !106
  %83 = and i8 %82, 1
  %84 = load ptr, ptr %36, align 8, !tbaa !103
  %85 = load ptr, ptr %84, align 8, !tbaa !99
  %86 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 7
  %87 = xor i8 %83, 1
  %88 = tail call ptr @BM_uv_element_map_create(ptr noundef %85, i8 noundef zeroext %87, i8 noundef zeroext 1) #9
  store ptr %88, ptr %86, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 7
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  tail call fastcc void @state_delete(ptr noundef %26)
  br label %920

92:                                               ; preds = %80
  call void @uvedit_get_aspect(ptr noundef %14, ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %93 = load float, ptr %7, align 4, !tbaa !115
  %94 = load float, ptr %8, align 4, !tbaa !115
  %95 = fdiv float %93, %94
  store float %95, ptr %26, align 8, !tbaa !116
  %96 = load ptr, ptr %89, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !76
  %99 = load i32, ptr %43, align 4, !tbaa !74
  %100 = srem i32 %99, %98
  store i32 %100, ptr %43, align 4, !tbaa !74
  %101 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !117
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !118
  %107 = zext nneg i32 %102 to i64
  br label %108

108:                                              ; preds = %104, %108
  %109 = phi i64 [ 0, %104 ], [ %116, %108 ]
  %110 = phi i32 [ 0, %104 ], [ %115, %108 ]
  %111 = getelementptr inbounds %struct.UvElement, ptr %106, i64 %109, i32 3
  %112 = load i8, ptr %111, align 2, !tbaa !119
  %113 = icmp ne i8 %112, 0
  %114 = zext i1 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = add nuw nsw i64 %109, 1
  %117 = icmp eq i64 %116, %107
  br i1 %117, label %118, label %108, !llvm.loop !121

118:                                              ; preds = %108, %92
  %119 = phi i32 [ 0, %92 ], [ %115, %108 ]
  %120 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 22
  store ptr null, ptr %120, align 8, !tbaa !124
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %122 = zext nneg i32 %119 to i64
  %123 = shl nuw nsw i64 %122, 3
  %124 = call ptr %121(i64 noundef %123, ptr noundef nonnull @.str.34) #9
  %125 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 9
  store ptr %124, ptr %125, align 8, !tbaa !125
  %126 = load ptr, ptr @MEM_callocN, align 8, !tbaa !101
  %127 = call ptr %126(i64 noundef %123, ptr noundef nonnull @.str.35) #9
  %128 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 11
  store ptr %127, ptr %128, align 8, !tbaa !126
  %129 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 15
  store i32 %119, ptr %129, align 4, !tbaa !127
  %130 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %131 = load ptr, ptr %89, align 8, !tbaa !75
  %132 = getelementptr inbounds %struct.UvElementMap, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !117
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 2
  %136 = call ptr %130(i64 noundef %135, ptr noundef nonnull @.str.36) #9
  %137 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 10
  store ptr %136, ptr %137, align 8, !tbaa !128
  %138 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.37) #9
  %139 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %140 = load ptr, ptr %89, align 8, !tbaa !75
  %141 = getelementptr inbounds %struct.UvElementMap, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !117
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, 40
  %145 = call ptr %139(i64 noundef %144, ptr noundef nonnull @.str.38) #9
  %146 = load ptr, ptr %125, align 8, !tbaa !125
  %147 = icmp ne ptr %146, null
  %148 = icmp ne ptr %136, null
  %149 = select i1 %147, i1 %148, i1 false
  %150 = icmp ne ptr %138, null
  %151 = select i1 %149, i1 %150, i1 false
  %152 = icmp ne ptr %145, null
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %154, label %158

154:                                              ; preds = %118
  %155 = load ptr, ptr %19, align 8, !tbaa !99
  %156 = load i32, ptr %155, align 8, !tbaa !129
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %159, label %197

158:                                              ; preds = %118
  call fastcc void @state_delete(ptr noundef nonnull %26)
  br label %920

159:                                              ; preds = %154, %190
  %160 = phi i64 [ %192, %190 ], [ 0, %154 ]
  %161 = phi i32 [ %191, %190 ], [ -1, %154 ]
  %162 = load ptr, ptr %89, align 8, !tbaa !75
  %163 = load ptr, ptr %162, align 8, !tbaa !132
  %164 = getelementptr inbounds ptr, ptr %163, i64 %160
  %165 = load ptr, ptr %164, align 8, !tbaa !101
  %166 = icmp eq ptr %165, null
  br i1 %166, label %190, label %167

167:                                              ; preds = %159, %178
  %168 = phi ptr [ %188, %178 ], [ %165, %159 ]
  %169 = phi i32 [ %179, %178 ], [ %161, %159 ]
  %170 = getelementptr inbounds %struct.UvElement, ptr %168, i64 0, i32 3
  %171 = load i8, ptr %170, align 2, !tbaa !119
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = add nsw i32 %169, 1
  %175 = load ptr, ptr %125, align 8, !tbaa !125
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds ptr, ptr %175, i64 %176
  store ptr %168, ptr %177, align 8, !tbaa !101
  br label %178

178:                                              ; preds = %173, %167
  %179 = phi i32 [ %174, %173 ], [ %169, %167 ]
  %180 = load ptr, ptr %89, align 8, !tbaa !75
  %181 = getelementptr inbounds %struct.UvElementMap, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !118
  %183 = ptrtoint ptr %168 to i64
  %184 = ptrtoint ptr %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 24
  %187 = getelementptr inbounds i32, ptr %136, i64 %186
  store i32 %179, ptr %187, align 4, !tbaa !133
  %188 = load ptr, ptr %168, align 8, !tbaa !101
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %167, !llvm.loop !134

190:                                              ; preds = %178, %159
  %191 = phi i32 [ %161, %159 ], [ %179, %178 ]
  %192 = add nuw nsw i64 %160, 1
  %193 = load ptr, ptr %19, align 8, !tbaa !99
  %194 = load i32, ptr %193, align 8, !tbaa !129
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %159, label %197, !llvm.loop !135

197:                                              ; preds = %190, %154
  %198 = phi ptr [ %155, %154 ], [ %193, %190 ]
  %199 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %199, align 4, !tbaa !136
  %200 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %200, align 8, !tbaa !138
  %201 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %201, align 8, !tbaa !139
  %202 = getelementptr inbounds %struct.BMesh, ptr %198, i64 0, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !140
  store ptr %203, ptr %5, align 8, !tbaa !141
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %204 = load ptr, ptr %201, align 8, !tbaa !139
  %205 = call ptr %204(ptr noundef nonnull %5) #9
  %206 = icmp eq ptr %205, null
  br i1 %206, label %282, label %207

207:                                              ; preds = %197
  %208 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %209 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %210 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %211

211:                                              ; preds = %207, %277
  %212 = phi i32 [ 0, %207 ], [ %278, %277 ]
  %213 = phi ptr [ %205, %207 ], [ %280, %277 ]
  %214 = load i8, ptr %81, align 2, !tbaa !106
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.BMHeader, ptr %213, i64 0, i32 3
  %219 = load i8, ptr %218, align 1, !tbaa !142
  %220 = and i8 %219, 3
  %221 = icmp eq i8 %220, 1
  br i1 %221, label %222, label %277

222:                                              ; preds = %217, %211
  store i8 11, ptr %208, align 4, !tbaa !136
  store ptr @bmiter__loop_of_face_begin, ptr %209, align 8, !tbaa !138
  store ptr @bmiter__loop_of_face_step, ptr %210, align 8, !tbaa !139
  store ptr %213, ptr %6, align 8, !tbaa !141
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %223 = load ptr, ptr %210, align 8, !tbaa !139
  %224 = call ptr %223(ptr noundef nonnull %6) #9
  %225 = icmp eq ptr %224, null
  br i1 %225, label %277, label %226

226:                                              ; preds = %222
  %227 = sext i32 %212 to i64
  br label %228

228:                                              ; preds = %226, %270
  %229 = phi i64 [ %227, %226 ], [ %271, %270 ]
  %230 = phi ptr [ %224, %226 ], [ %273, %270 ]
  %231 = load ptr, ptr %89, align 8, !tbaa !75
  %232 = call ptr @BM_uv_element_get(ptr noundef %231, ptr noundef nonnull %213, ptr noundef nonnull %230) #9
  %233 = load ptr, ptr %89, align 8, !tbaa !75
  %234 = getelementptr inbounds %struct.UvElementMap, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !118
  %236 = ptrtoint ptr %232 to i64
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = sdiv exact i64 %238, 24
  %240 = getelementptr inbounds %struct.BMLoop, ptr %230, i64 0, i32 6
  %241 = load ptr, ptr %240, align 8, !tbaa !144
  %242 = call ptr @BM_uv_element_get(ptr noundef %233, ptr noundef nonnull %213, ptr noundef %241) #9
  %243 = load ptr, ptr %89, align 8, !tbaa !75
  %244 = getelementptr inbounds %struct.UvElementMap, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !118
  %246 = ptrtoint ptr %242 to i64
  %247 = ptrtoint ptr %245 to i64
  %248 = sub i64 %246, %247
  %249 = sdiv exact i64 %248, 24
  %250 = shl i64 %239, 32
  %251 = ashr exact i64 %250, 32
  %252 = getelementptr inbounds i32, ptr %136, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !133
  %254 = shl i64 %249, 32
  %255 = ashr exact i64 %254, 32
  %256 = getelementptr inbounds i32, ptr %136, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !133
  %258 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %229
  %259 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %229, i32 4
  %260 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %229, i32 2
  store i8 0, ptr %260, align 8, !tbaa !146
  %261 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %229, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %259, i8 0, i64 16, i1 false)
  store ptr %232, ptr %261, align 8, !tbaa !148
  %262 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %229, i32 1
  %263 = call i32 @llvm.smin.i32(i32 %253, i32 %257)
  %264 = call i32 @llvm.smax.i32(i32 %253, i32 %257)
  store i32 %263, ptr %258, align 8, !tbaa !149
  store i32 %264, ptr %262, align 4, !tbaa !150
  %265 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %138, ptr noundef nonnull %258) #9
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %228
  %268 = getelementptr inbounds %struct.UvEdge, ptr %265, i64 0, i32 2
  store i8 0, ptr %268, align 8, !tbaa !146
  br label %270

269:                                              ; preds = %228
  call void @BLI_ghash_insert(ptr noundef nonnull %138, ptr noundef nonnull %258, ptr noundef nonnull %258) #9
  store i8 8, ptr %260, align 8, !tbaa !146
  br label %270

270:                                              ; preds = %269, %267
  %271 = add i64 %229, 1
  %272 = load ptr, ptr %210, align 8, !tbaa !139
  %273 = call ptr %272(ptr noundef nonnull %6) #9
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %228, !llvm.loop !151

275:                                              ; preds = %270
  %276 = trunc i64 %271 to i32
  br label %277

277:                                              ; preds = %275, %222, %217
  %278 = phi i32 [ %212, %217 ], [ %212, %222 ], [ %276, %275 ]
  %279 = load ptr, ptr %201, align 8, !tbaa !139
  %280 = call ptr %279(ptr noundef nonnull %5) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %211, !llvm.loop !152

282:                                              ; preds = %277, %197
  %283 = call ptr @BLI_ghashIterator_new(ptr noundef nonnull %138) #9
  %284 = call i32 @BLI_ghash_size(ptr noundef nonnull %138) #9
  %285 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %286 = sext i32 %284 to i64
  %287 = mul nsw i64 %286, 40
  %288 = call ptr %285(i64 noundef %287, ptr noundef nonnull @.str.39) #9
  %289 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 12
  store ptr %288, ptr %289, align 8, !tbaa !153
  %290 = icmp eq ptr %288, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %282
  call void @BLI_ghashIterator_free(ptr noundef %283) #9
  call fastcc void @state_delete(ptr noundef nonnull %26)
  br label %920

292:                                              ; preds = %282
  %293 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 14
  store i32 %284, ptr %293, align 8, !tbaa !154
  call void @BLI_ghashIterator_init(ptr noundef %283, ptr noundef nonnull %138) #9
  %294 = getelementptr inbounds %struct.GHashIterator, ptr %283, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !155
  %296 = icmp eq ptr %295, null
  br i1 %296, label %306, label %297

297:                                              ; preds = %292, %297
  %298 = phi i64 [ %300, %297 ], [ 0, %292 ]
  %299 = phi ptr [ %304, %297 ], [ %295, %292 ]
  %300 = add nuw i64 %298, 1
  %301 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %298
  %302 = getelementptr inbounds %struct._gh_Entry, ptr %299, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %301, ptr noundef nonnull align 8 dereferenceable(40) %303, i64 40, i1 false), !tbaa.struct !159
  call void @BLI_ghashIterator_step(ptr noundef %283) #9
  %304 = load ptr, ptr %294, align 8, !tbaa !155
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %297, !llvm.loop !160

306:                                              ; preds = %297, %292
  call void @BLI_ghashIterator_free(ptr noundef %283) #9
  %307 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  call void %307(ptr noundef nonnull %145) #9
  call void @BLI_ghash_free(ptr noundef nonnull %138, ptr noundef null, ptr noundef null) #9
  %308 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.37) #9
  %309 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 13
  store ptr %308, ptr %309, align 8, !tbaa !161
  %310 = icmp sgt i32 %284, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = zext nneg i32 %284 to i64
  br label %313

313:                                              ; preds = %311, %313
  %314 = phi i64 [ 0, %311 ], [ %316, %313 ]
  %315 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %314
  call void @BLI_ghash_insert(ptr noundef %308, ptr noundef nonnull %315, ptr noundef nonnull %315) #9
  %316 = add nuw nsw i64 %314, 1
  %317 = icmp eq i64 %316, %312
  br i1 %317, label %318, label %313, !llvm.loop !162

318:                                              ; preds = %313, %306
  %319 = load ptr, ptr %289, align 8, !tbaa !153
  %320 = load ptr, ptr %137, align 8, !tbaa !128
  %321 = load ptr, ptr %89, align 8, !tbaa !75
  %322 = load i32, ptr %293, align 8, !tbaa !154
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.UvElementMap, ptr %321, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !118
  %327 = ptrtoint ptr %326 to i64
  %328 = getelementptr inbounds %struct.UvEdge, ptr %4, i64 0, i32 1
  br label %333

329:                                              ; preds = %431, %318
  %330 = icmp sgt i32 %284, 0
  br i1 %330, label %331, label %539

331:                                              ; preds = %329
  %332 = zext nneg i32 %284 to i64
  br label %436

333:                                              ; preds = %324, %431
  %334 = phi i64 [ 0, %324 ], [ %432, %431 ]
  %335 = getelementptr inbounds %struct.UvEdge, ptr %319, i64 %334
  %336 = getelementptr inbounds %struct.UvEdge, ptr %319, i64 %334, i32 5
  %337 = load ptr, ptr %336, align 8, !tbaa !163
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %431

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.UvEdge, ptr %319, i64 %334, i32 2
  %341 = load i8, ptr %340, align 8, !tbaa !146
  %342 = and i8 %341, 8
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %430, label %344

344:                                              ; preds = %339
  %345 = load ptr, ptr %125, align 8, !tbaa !125
  %346 = load i32, ptr %335, align 8, !tbaa !149
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !101
  %350 = getelementptr inbounds %struct.UvEdge, ptr %319, i64 %334, i32 1
  %351 = load i32, ptr %350, align 4, !tbaa !150
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds ptr, ptr %345, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !101
  %355 = load ptr, ptr %321, align 8, !tbaa !132
  %356 = getelementptr inbounds %struct.UvElement, ptr %349, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !164
  %358 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !165
  %360 = getelementptr inbounds %struct.BMHeader, ptr %359, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !166
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds ptr, ptr %355, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !101
  %365 = getelementptr inbounds %struct.UvElement, ptr %354, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !164
  %367 = getelementptr inbounds %struct.BMLoop, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !165
  %369 = getelementptr inbounds %struct.BMHeader, ptr %368, i64 0, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !166
  store ptr %335, ptr %336, align 8, !tbaa !163
  %371 = icmp eq ptr %364, null
  br i1 %371, label %431, label %372

372:                                              ; preds = %344, %426
  %373 = phi ptr [ %428, %426 ], [ %364, %344 ]
  %374 = phi ptr [ %427, %426 ], [ %335, %344 ]
  %375 = getelementptr inbounds %struct.UvElement, ptr %373, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !164
  %377 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 6
  %378 = load ptr, ptr %377, align 8, !tbaa !144
  %379 = getelementptr inbounds %struct.BMLoop, ptr %378, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !165
  %381 = getelementptr inbounds %struct.BMHeader, ptr %380, i64 0, i32 1
  %382 = load i32, ptr %381, align 8, !tbaa !166
  %383 = icmp eq i32 %382, %370
  br i1 %383, label %392, label %384

384:                                              ; preds = %372
  %385 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 7
  %386 = load ptr, ptr %385, align 8, !tbaa !167
  %387 = getelementptr inbounds %struct.BMLoop, ptr %386, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !165
  %389 = getelementptr inbounds %struct.BMHeader, ptr %388, i64 0, i32 1
  %390 = load i32, ptr %389, align 8, !tbaa !166
  %391 = icmp eq i32 %390, %370
  br i1 %391, label %392, label %397

392:                                              ; preds = %384, %372
  %393 = phi ptr [ %378, %372 ], [ %386, %384 ]
  %394 = getelementptr inbounds %struct.BMLoop, ptr %376, i64 0, i32 3
  %395 = load ptr, ptr %394, align 8, !tbaa !168
  %396 = call ptr @BM_uv_element_get(ptr noundef nonnull %321, ptr noundef %395, ptr noundef %393) #9
  br label %397

397:                                              ; preds = %392, %384
  %398 = phi ptr [ null, %384 ], [ %396, %392 ]
  %399 = icmp eq ptr %398, null
  br i1 %399, label %426, label %400

400:                                              ; preds = %397
  %401 = ptrtoint ptr %373 to i64
  %402 = sub i64 %401, %327
  %403 = sdiv exact i64 %402, 24
  %404 = getelementptr inbounds i32, ptr %320, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !133
  %406 = ptrtoint ptr %398 to i64
  %407 = sub i64 %406, %327
  %408 = sdiv exact i64 %407, 24
  %409 = getelementptr inbounds i32, ptr %320, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  %411 = call i32 @llvm.smin.i32(i32 %405, i32 %410)
  %412 = call i32 @llvm.smax.i32(i32 %405, i32 %410)
  store i32 %411, ptr %4, align 8, !tbaa !149
  store i32 %412, ptr %328, align 4, !tbaa !150
  %413 = call ptr @BLI_ghash_lookup(ptr noundef %308, ptr noundef nonnull %4) #9
  br label %414

414:                                              ; preds = %400, %417
  %415 = phi ptr [ %335, %400 ], [ %419, %417 ]
  %416 = icmp eq ptr %413, %415
  br i1 %416, label %424, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.UvEdge, ptr %415, i64 0, i32 4
  %419 = load ptr, ptr %418, align 8, !tbaa !169
  %420 = icmp eq ptr %419, null
  br i1 %420, label %421, label %414, !llvm.loop !170

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.UvEdge, ptr %374, i64 0, i32 4
  store ptr %413, ptr %422, align 8, !tbaa !169
  %423 = getelementptr inbounds %struct.UvEdge, ptr %413, i64 0, i32 5
  store ptr %335, ptr %423, align 8, !tbaa !163
  br label %424

424:                                              ; preds = %414, %421
  %425 = phi ptr [ %413, %421 ], [ %374, %414 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  br label %426

426:                                              ; preds = %424, %397
  %427 = phi ptr [ %425, %424 ], [ %374, %397 ]
  %428 = load ptr, ptr %373, align 8, !tbaa !171
  %429 = icmp eq ptr %428, null
  br i1 %429, label %431, label %372, !llvm.loop !172

430:                                              ; preds = %339
  store ptr %335, ptr %336, align 8, !tbaa !163
  br label %431

431:                                              ; preds = %426, %344, %430, %333
  %432 = add nuw nsw i64 %334, 1
  %433 = load i32, ptr %293, align 8, !tbaa !154
  %434 = sext i32 %433 to i64
  %435 = icmp slt i64 %432, %434
  br i1 %435, label %333, label %329, !llvm.loop !173

436:                                              ; preds = %331, %536
  %437 = phi i64 [ 0, %331 ], [ %537, %536 ]
  %438 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %437, i32 2
  %439 = load i8, ptr %438, align 8, !tbaa !146
  %440 = and i8 %439, 8
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %536, label %442

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %437
  %444 = load float, ptr %26, align 8, !tbaa !116
  %445 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %437, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !148
  %447 = getelementptr inbounds %struct.UvElement, ptr %446, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !164
  %449 = load ptr, ptr %19, align 8, !tbaa !99
  %450 = getelementptr inbounds %struct.BMesh, ptr %449, i64 0, i32 26
  %451 = load ptr, ptr %448, align 8, !tbaa !174
  %452 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %450, ptr noundef %451, i32 noundef 16) #9
  %453 = load ptr, ptr %19, align 8, !tbaa !99
  %454 = getelementptr inbounds %struct.BMesh, ptr %453, i64 0, i32 26
  %455 = getelementptr inbounds %struct.BMLoop, ptr %448, i64 0, i32 6
  %456 = load ptr, ptr %455, align 8, !tbaa !144
  %457 = load ptr, ptr %456, align 8, !tbaa !174
  %458 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %454, ptr noundef %457, i32 noundef 16) #9
  %459 = load float, ptr %458, align 4, !tbaa !115
  %460 = load float, ptr %452, align 4, !tbaa !115
  %461 = fsub float %459, %460
  %462 = getelementptr inbounds float, ptr %458, i64 1
  %463 = load float, ptr %462, align 4, !tbaa !115
  %464 = getelementptr inbounds float, ptr %452, i64 1
  %465 = load float, ptr %464, align 4, !tbaa !115
  %466 = fsub float %463, %465
  %467 = fdiv float %466, %444
  %468 = fmul float %461, %461
  %469 = call float @llvm.fmuladd.f32(float %467, float %467, float %468)
  %470 = fcmp ogt float %469, 0x38AA95A5C0000000
  br i1 %470, label %471, label %477

471:                                              ; preds = %442
  %472 = fneg float %461
  %473 = call float @sqrtf(float noundef %469) #9
  %474 = fdiv float 1.000000e+00, %473
  %475 = fmul float %467, %474
  %476 = fmul float %474, %472
  br label %477

477:                                              ; preds = %442, %471
  %478 = phi float [ %475, %471 ], [ 0.000000e+00, %442 ]
  %479 = phi float [ %476, %471 ], [ 0.000000e+00, %442 ]
  %480 = load ptr, ptr %128, align 8, !tbaa !126
  %481 = load i32, ptr %443, align 8, !tbaa !149
  %482 = shl i32 %481, 1
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds float, ptr %480, i64 %483
  %485 = load float, ptr %484, align 4, !tbaa !115
  %486 = fadd float %478, %485
  store float %486, ptr %484, align 4, !tbaa !115
  %487 = getelementptr inbounds float, ptr %484, i64 1
  %488 = load float, ptr %487, align 4, !tbaa !115
  %489 = fadd float %479, %488
  store float %489, ptr %487, align 4, !tbaa !115
  %490 = getelementptr inbounds %struct.UvEdge, ptr %288, i64 %437, i32 1
  %491 = load i32, ptr %490, align 4, !tbaa !150
  %492 = shl i32 %491, 1
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds float, ptr %480, i64 %493
  %495 = load float, ptr %494, align 4, !tbaa !115
  %496 = fadd float %478, %495
  store float %496, ptr %494, align 4, !tbaa !115
  %497 = getelementptr inbounds float, ptr %494, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !115
  %499 = fadd float %479, %498
  store float %499, ptr %497, align 4, !tbaa !115
  %500 = load float, ptr %484, align 4, !tbaa !115
  %501 = load float, ptr %487, align 4, !tbaa !115
  %502 = fmul float %501, %501
  %503 = call float @llvm.fmuladd.f32(float %500, float %500, float %502)
  %504 = fcmp ogt float %503, 0x38AA95A5C0000000
  br i1 %504, label %505, label %512

505:                                              ; preds = %477
  %506 = call float @sqrtf(float noundef %503) #9
  %507 = fdiv float 1.000000e+00, %506
  %508 = load float, ptr %484, align 4, !tbaa !115
  %509 = fmul float %508, %507
  store float %509, ptr %484, align 4, !tbaa !115
  %510 = load float, ptr %487, align 4, !tbaa !115
  %511 = fmul float %507, %510
  br label %513

512:                                              ; preds = %477
  store float 0.000000e+00, ptr %484, align 4, !tbaa !115
  br label %513

513:                                              ; preds = %505, %512
  %514 = phi float [ 0.000000e+00, %512 ], [ %511, %505 ]
  store float %514, ptr %487, align 4, !tbaa !115
  %515 = load ptr, ptr %128, align 8, !tbaa !126
  %516 = load i32, ptr %490, align 4, !tbaa !150
  %517 = shl i32 %516, 1
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds float, ptr %515, i64 %518
  %520 = load float, ptr %519, align 4, !tbaa !115
  %521 = getelementptr inbounds float, ptr %519, i64 1
  %522 = load float, ptr %521, align 4, !tbaa !115
  %523 = fmul float %522, %522
  %524 = call float @llvm.fmuladd.f32(float %520, float %520, float %523)
  %525 = fcmp ogt float %524, 0x38AA95A5C0000000
  br i1 %525, label %526, label %533

526:                                              ; preds = %513
  %527 = call float @sqrtf(float noundef %524) #9
  %528 = fdiv float 1.000000e+00, %527
  %529 = load float, ptr %519, align 4, !tbaa !115
  %530 = fmul float %529, %528
  store float %530, ptr %519, align 4, !tbaa !115
  %531 = load float, ptr %521, align 4, !tbaa !115
  %532 = fmul float %528, %531
  br label %534

533:                                              ; preds = %513
  store float 0.000000e+00, ptr %519, align 4, !tbaa !115
  br label %534

534:                                              ; preds = %526, %533
  %535 = phi float [ 0.000000e+00, %533 ], [ %532, %526 ]
  store float %535, ptr %521, align 4, !tbaa !115
  br label %536

536:                                              ; preds = %534, %436
  %537 = add nuw nsw i64 %437, 1
  %538 = icmp eq i64 %537, %332
  br i1 %538, label %539, label %436, !llvm.loop !175

539:                                              ; preds = %536, %329
  %540 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 17
  store i32 0, ptr %540, align 8, !tbaa !176
  %541 = load ptr, ptr %28, align 8, !tbaa !102
  %542 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %541, ptr noundef nonnull @.str.31) #9
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %689, label %544

544:                                              ; preds = %539
  %545 = load ptr, ptr %28, align 8, !tbaa !102
  %546 = call i32 @RNA_enum_get(ptr noundef %545, ptr noundef nonnull @.str.29) #9
  %547 = load ptr, ptr %19, align 8, !tbaa !99
  call void @BM_mesh_elem_table_ensure(ptr noundef %547, i8 noundef zeroext 8) #9
  %548 = icmp eq i32 %546, 0
  %549 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %550 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 16
  br i1 %548, label %551, label %606

551:                                              ; preds = %544
  %552 = load i32, ptr %129, align 4, !tbaa !127
  %553 = sext i32 %552 to i64
  %554 = shl nsw i64 %553, 3
  %555 = call ptr %549(i64 noundef %554, ptr noundef nonnull @.str.40) #9
  store ptr %555, ptr %550, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %9) #9
  %556 = load ptr, ptr %28, align 8, !tbaa !102
  call void @RNA_collection_begin(ptr noundef %556, ptr noundef nonnull @.str.31, ptr noundef nonnull %9) #9
  %557 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %9, i64 0, i32 7
  %558 = load i32, ptr %557, align 8, !tbaa !178
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %605, label %560

560:                                              ; preds = %551
  %561 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %9, i64 0, i32 6
  br label %562

562:                                              ; preds = %560, %602
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %561, i64 24, i1 false), !tbaa.struct !182
  %563 = call i32 @RNA_int_get(ptr noundef nonnull %10, ptr noundef nonnull @.str.41) #9
  %564 = call i32 @RNA_int_get(ptr noundef nonnull %10, ptr noundef nonnull @.str.42) #9
  %565 = load ptr, ptr %19, align 8, !tbaa !99
  %566 = call ptr @BM_face_at_index(ptr noundef %565, i32 noundef %563) #9
  %567 = load ptr, ptr %89, align 8, !tbaa !75
  %568 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %566, i32 noundef %564) #9
  %569 = call ptr @BM_uv_element_get(ptr noundef %567, ptr noundef %566, ptr noundef %568) #9
  %570 = load ptr, ptr %550, align 8, !tbaa !177
  %571 = getelementptr inbounds %struct.UvElement, ptr %569, i64 0, i32 1
  %572 = load ptr, ptr %571, align 8, !tbaa !164
  %573 = load ptr, ptr %89, align 8, !tbaa !75
  %574 = load ptr, ptr %573, align 8, !tbaa !132
  %575 = getelementptr inbounds %struct.BMLoop, ptr %572, i64 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !165
  %577 = getelementptr inbounds %struct.BMHeader, ptr %576, i64 0, i32 1
  %578 = load i32, ptr %577, align 8, !tbaa !166
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds ptr, ptr %574, i64 %579
  %581 = load ptr, ptr %580, align 8, !tbaa !101
  %582 = icmp eq ptr %581, null
  br i1 %582, label %602, label %583

583:                                              ; preds = %562, %599
  %584 = phi ptr [ %600, %599 ], [ %581, %562 ]
  %585 = getelementptr inbounds %struct.UvElement, ptr %584, i64 0, i32 3
  %586 = load i8, ptr %585, align 2, !tbaa !119
  %587 = icmp eq i8 %586, 0
  br i1 %587, label %599, label %588

588:                                              ; preds = %583
  %589 = getelementptr inbounds %struct.UvElement, ptr %584, i64 0, i32 4
  %590 = load i8, ptr %589, align 1, !tbaa !183
  %591 = and i8 %590, 1
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %599

593:                                              ; preds = %588
  %594 = or disjoint i8 %590, 1
  store i8 %594, ptr %589, align 1, !tbaa !183
  %595 = load i32, ptr %540, align 8, !tbaa !176
  %596 = add nsw i32 %595, 1
  store i32 %596, ptr %540, align 8, !tbaa !176
  %597 = sext i32 %595 to i64
  %598 = getelementptr inbounds ptr, ptr %570, i64 %597
  store ptr %584, ptr %598, align 8, !tbaa !101
  br label %599

599:                                              ; preds = %588, %593, %583
  %600 = load ptr, ptr %584, align 8, !tbaa !101
  %601 = icmp eq ptr %600, null
  br i1 %601, label %602, label %583, !llvm.loop !184

602:                                              ; preds = %599, %562
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @RNA_property_collection_next(ptr noundef nonnull %9) #9
  %603 = load i32, ptr %557, align 8, !tbaa !178
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %562, !llvm.loop !185

605:                                              ; preds = %602, %551
  call void @RNA_property_collection_end(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %9) #9
  br label %680

606:                                              ; preds = %544
  %607 = load i32, ptr %293, align 8, !tbaa !154
  %608 = sext i32 %607 to i64
  %609 = shl nsw i64 %608, 3
  %610 = call ptr %549(i64 noundef %609, ptr noundef nonnull @.str.40) #9
  store ptr %610, ptr %550, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %11) #9
  %611 = load ptr, ptr %28, align 8, !tbaa !102
  call void @RNA_collection_begin(ptr noundef %611, ptr noundef nonnull @.str.31, ptr noundef nonnull %11) #9
  %612 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %11, i64 0, i32 7
  %613 = load i32, ptr %612, align 8, !tbaa !178
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %679, label %615

615:                                              ; preds = %606
  %616 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %11, i64 0, i32 6
  %617 = getelementptr inbounds %struct.UvEdge, ptr %13, i64 0, i32 1
  %618 = getelementptr inbounds %struct.UvEdge, ptr %13, i64 0, i32 1
  br label %619

619:                                              ; preds = %615, %676
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %616, i64 24, i1 false), !tbaa.struct !182
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #9
  %620 = call i32 @RNA_int_get(ptr noundef nonnull %12, ptr noundef nonnull @.str.41) #9
  %621 = call i32 @RNA_int_get(ptr noundef nonnull %12, ptr noundef nonnull @.str.42) #9
  %622 = load ptr, ptr %19, align 8, !tbaa !99
  %623 = call ptr @BM_face_at_index(ptr noundef %622, i32 noundef %620) #9
  %624 = load ptr, ptr %89, align 8, !tbaa !75
  %625 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %623, i32 noundef %621) #9
  %626 = call ptr @BM_uv_element_get(ptr noundef %624, ptr noundef %623, ptr noundef %625) #9
  %627 = load ptr, ptr %89, align 8, !tbaa !75
  %628 = getelementptr inbounds %struct.UvElementMap, ptr %627, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !118
  %630 = ptrtoint ptr %626 to i64
  %631 = ptrtoint ptr %629 to i64
  %632 = sub i64 %630, %631
  %633 = sdiv exact i64 %632, 24
  %634 = getelementptr inbounds i32, ptr %136, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !133
  %636 = add nsw i32 %621, 1
  %637 = getelementptr inbounds %struct.BMFace, ptr %623, i64 0, i32 3
  %638 = load i32, ptr %637, align 8, !tbaa !186
  %639 = srem i32 %636, %638
  %640 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %623, i32 noundef %639) #9
  %641 = call ptr @BM_uv_element_get(ptr noundef %627, ptr noundef %623, ptr noundef %640) #9
  %642 = load ptr, ptr %89, align 8, !tbaa !75
  %643 = getelementptr inbounds %struct.UvElementMap, ptr %642, i64 0, i32 1
  %644 = load ptr, ptr %643, align 8, !tbaa !118
  %645 = ptrtoint ptr %641 to i64
  %646 = ptrtoint ptr %644 to i64
  %647 = sub i64 %645, %646
  %648 = sdiv exact i64 %647, 24
  %649 = getelementptr inbounds i32, ptr %136, i64 %648
  %650 = load i32, ptr %649, align 4, !tbaa !133
  %651 = icmp slt i32 %635, %650
  br i1 %651, label %652, label %653

652:                                              ; preds = %619
  store i32 %635, ptr %13, align 8, !tbaa !149
  store i32 %650, ptr %618, align 4, !tbaa !150
  br label %654

653:                                              ; preds = %619
  store i32 %650, ptr %13, align 8, !tbaa !149
  store i32 %635, ptr %617, align 4, !tbaa !150
  br label %654

654:                                              ; preds = %653, %652
  %655 = call ptr @BLI_ghash_lookup(ptr noundef %308, ptr noundef nonnull %13) #9
  %656 = load ptr, ptr %550, align 8, !tbaa !177
  %657 = getelementptr inbounds %struct.UvEdge, ptr %655, i64 0, i32 5
  %658 = load ptr, ptr %657, align 8, !tbaa !101
  %659 = icmp eq ptr %658, null
  br i1 %659, label %676, label %660

660:                                              ; preds = %654, %672
  %661 = phi ptr [ %674, %672 ], [ %658, %654 ]
  %662 = getelementptr inbounds %struct.UvEdge, ptr %661, i64 0, i32 2
  %663 = load i8, ptr %662, align 8, !tbaa !146
  %664 = and i8 %663, 1
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %660
  %667 = or disjoint i8 %663, 1
  store i8 %667, ptr %662, align 8, !tbaa !146
  %668 = load i32, ptr %540, align 8, !tbaa !176
  %669 = add nsw i32 %668, 1
  store i32 %669, ptr %540, align 8, !tbaa !176
  %670 = sext i32 %668 to i64
  %671 = getelementptr inbounds ptr, ptr %656, i64 %670
  store ptr %661, ptr %671, align 8, !tbaa !101
  br label %672

672:                                              ; preds = %660, %666
  %673 = getelementptr inbounds %struct.UvEdge, ptr %661, i64 0, i32 4
  %674 = load ptr, ptr %673, align 8, !tbaa !101
  %675 = icmp eq ptr %674, null
  br i1 %675, label %676, label %660, !llvm.loop !188

676:                                              ; preds = %672, %654
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @RNA_property_collection_next(ptr noundef nonnull %11) #9
  %677 = load i32, ptr %612, align 8, !tbaa !178
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %619, !llvm.loop !189

679:                                              ; preds = %676, %606
  call void @RNA_property_collection_end(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #9
  br label %680

680:                                              ; preds = %679, %605
  %681 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 20
  %682 = load i8, ptr %681, align 8, !tbaa !105
  %683 = zext i8 %682 to i32
  %684 = icmp eq i32 %546, %683
  br i1 %684, label %687, label %685

685:                                              ; preds = %680
  %686 = trunc i32 %546 to i8
  store i8 %686, ptr %681, align 8, !tbaa !105
  call fastcc void @stitch_switch_selection_mode(ptr noundef nonnull %26)
  br label %687

687:                                              ; preds = %685, %680
  %688 = load ptr, ptr %28, align 8, !tbaa !102
  call void @RNA_collection_clear(ptr noundef %688, ptr noundef nonnull @.str.31) #9
  br label %860

689:                                              ; preds = %539
  %690 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 20
  %691 = load i8, ptr %690, align 8, !tbaa !105
  %692 = icmp eq i8 %691, 0
  %693 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %694 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 16
  br i1 %692, label %695, label %764

695:                                              ; preds = %689
  %696 = load i32, ptr %129, align 4, !tbaa !127
  %697 = sext i32 %696 to i64
  %698 = shl nsw i64 %697, 3
  %699 = call ptr %693(i64 noundef %698, ptr noundef nonnull @.str.40) #9
  store ptr %699, ptr %694, align 8, !tbaa !177
  %700 = load ptr, ptr %19, align 8, !tbaa !99
  store i8 3, ptr %199, align 4, !tbaa !136
  store ptr @bmiter__elem_of_mesh_begin, ptr %200, align 8, !tbaa !138
  store ptr @bmiter__elem_of_mesh_step, ptr %201, align 8, !tbaa !139
  %701 = getelementptr inbounds %struct.BMesh, ptr %700, i64 0, i32 12
  %702 = load ptr, ptr %701, align 8, !tbaa !140
  store ptr %702, ptr %5, align 8, !tbaa !141
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %703 = load ptr, ptr %201, align 8, !tbaa !139
  %704 = call ptr %703(ptr noundef nonnull %5) #9
  %705 = icmp eq ptr %704, null
  br i1 %705, label %860, label %706

706:                                              ; preds = %695
  %707 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %708 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %709 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %710

710:                                              ; preds = %706, %760
  %711 = phi ptr [ %704, %706 ], [ %762, %760 ]
  store i8 11, ptr %707, align 4, !tbaa !136
  store ptr @bmiter__loop_of_face_begin, ptr %708, align 8, !tbaa !138
  store ptr @bmiter__loop_of_face_step, ptr %709, align 8, !tbaa !139
  store ptr %711, ptr %6, align 8, !tbaa !141
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %712 = load ptr, ptr %709, align 8, !tbaa !139
  %713 = call ptr %712(ptr noundef nonnull %6) #9
  %714 = icmp eq ptr %713, null
  br i1 %714, label %760, label %715

715:                                              ; preds = %710, %756
  %716 = phi ptr [ %758, %756 ], [ %713, %710 ]
  %717 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %14, ptr noundef nonnull %716, i32 noundef %22) #9
  %718 = icmp eq i8 %717, 0
  br i1 %718, label %756, label %719

719:                                              ; preds = %715
  %720 = load ptr, ptr %89, align 8, !tbaa !75
  %721 = call ptr @BM_uv_element_get(ptr noundef %720, ptr noundef nonnull %711, ptr noundef nonnull %716) #9
  %722 = icmp eq ptr %721, null
  br i1 %722, label %756, label %723

723:                                              ; preds = %719
  %724 = load ptr, ptr %694, align 8, !tbaa !177
  %725 = getelementptr inbounds %struct.UvElement, ptr %721, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !164
  %727 = load ptr, ptr %89, align 8, !tbaa !75
  %728 = load ptr, ptr %727, align 8, !tbaa !132
  %729 = getelementptr inbounds %struct.BMLoop, ptr %726, i64 0, i32 1
  %730 = load ptr, ptr %729, align 8, !tbaa !165
  %731 = getelementptr inbounds %struct.BMHeader, ptr %730, i64 0, i32 1
  %732 = load i32, ptr %731, align 8, !tbaa !166
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds ptr, ptr %728, i64 %733
  %735 = load ptr, ptr %734, align 8, !tbaa !101
  %736 = icmp eq ptr %735, null
  br i1 %736, label %756, label %737

737:                                              ; preds = %723, %753
  %738 = phi ptr [ %754, %753 ], [ %735, %723 ]
  %739 = getelementptr inbounds %struct.UvElement, ptr %738, i64 0, i32 3
  %740 = load i8, ptr %739, align 2, !tbaa !119
  %741 = icmp eq i8 %740, 0
  br i1 %741, label %753, label %742

742:                                              ; preds = %737
  %743 = getelementptr inbounds %struct.UvElement, ptr %738, i64 0, i32 4
  %744 = load i8, ptr %743, align 1, !tbaa !183
  %745 = and i8 %744, 1
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %747, label %753

747:                                              ; preds = %742
  %748 = or disjoint i8 %744, 1
  store i8 %748, ptr %743, align 1, !tbaa !183
  %749 = load i32, ptr %540, align 8, !tbaa !176
  %750 = add nsw i32 %749, 1
  store i32 %750, ptr %540, align 8, !tbaa !176
  %751 = sext i32 %749 to i64
  %752 = getelementptr inbounds ptr, ptr %724, i64 %751
  store ptr %738, ptr %752, align 8, !tbaa !101
  br label %753

753:                                              ; preds = %742, %747, %737
  %754 = load ptr, ptr %738, align 8, !tbaa !101
  %755 = icmp eq ptr %754, null
  br i1 %755, label %756, label %737, !llvm.loop !184

756:                                              ; preds = %753, %723, %719, %715
  %757 = load ptr, ptr %709, align 8, !tbaa !139
  %758 = call ptr %757(ptr noundef nonnull %6) #9
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %715, !llvm.loop !190

760:                                              ; preds = %756, %710
  %761 = load ptr, ptr %201, align 8, !tbaa !139
  %762 = call ptr %761(ptr noundef nonnull %5) #9
  %763 = icmp eq ptr %762, null
  br i1 %763, label %860, label %710, !llvm.loop !191

764:                                              ; preds = %689
  %765 = load i32, ptr %293, align 8, !tbaa !154
  %766 = sext i32 %765 to i64
  %767 = shl nsw i64 %766, 3
  %768 = call ptr %693(i64 noundef %767, ptr noundef nonnull @.str.40) #9
  store ptr %768, ptr %694, align 8, !tbaa !177
  %769 = load ptr, ptr %19, align 8, !tbaa !99
  store i8 3, ptr %199, align 4, !tbaa !136
  store ptr @bmiter__elem_of_mesh_begin, ptr %200, align 8, !tbaa !138
  store ptr @bmiter__elem_of_mesh_step, ptr %201, align 8, !tbaa !139
  %770 = getelementptr inbounds %struct.BMesh, ptr %769, i64 0, i32 12
  %771 = load ptr, ptr %770, align 8, !tbaa !140
  store ptr %771, ptr %5, align 8, !tbaa !141
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %772 = load ptr, ptr %201, align 8, !tbaa !139
  %773 = call ptr %772(ptr noundef nonnull %5) #9
  %774 = icmp eq ptr %773, null
  br i1 %774, label %860, label %775

775:                                              ; preds = %764
  %776 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %777 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %778 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %779 = getelementptr inbounds %struct.UvEdge, ptr %3, i64 0, i32 1
  %780 = getelementptr inbounds %struct.UvEdge, ptr %3, i64 0, i32 1
  br label %781

781:                                              ; preds = %775, %856
  %782 = phi ptr [ %773, %775 ], [ %858, %856 ]
  %783 = load i8, ptr %81, align 2, !tbaa !106
  %784 = and i8 %783, 1
  %785 = icmp eq i8 %784, 0
  br i1 %785, label %786, label %791

786:                                              ; preds = %781
  %787 = getelementptr inbounds %struct.BMHeader, ptr %782, i64 0, i32 3
  %788 = load i8, ptr %787, align 1, !tbaa !142
  %789 = and i8 %788, 3
  %790 = icmp eq i8 %789, 1
  br i1 %790, label %791, label %856

791:                                              ; preds = %786, %781
  store i8 11, ptr %776, align 4, !tbaa !136
  store ptr @bmiter__loop_of_face_begin, ptr %777, align 8, !tbaa !138
  store ptr @bmiter__loop_of_face_step, ptr %778, align 8, !tbaa !139
  store ptr %782, ptr %6, align 8, !tbaa !141
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %792 = load ptr, ptr %778, align 8, !tbaa !139
  %793 = call ptr %792(ptr noundef nonnull %6) #9
  %794 = icmp eq ptr %793, null
  br i1 %794, label %856, label %795

795:                                              ; preds = %791, %852
  %796 = phi ptr [ %854, %852 ], [ %793, %791 ]
  %797 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %14, ptr noundef nonnull %796, i32 noundef %22) #9
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %852, label %799

799:                                              ; preds = %795
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %800 = load ptr, ptr %89, align 8, !tbaa !75
  %801 = getelementptr inbounds %struct.BMLoop, ptr %796, i64 0, i32 3
  %802 = load ptr, ptr %801, align 8, !tbaa !168
  %803 = call ptr @BM_uv_element_get(ptr noundef %800, ptr noundef %802, ptr noundef nonnull %796) #9
  %804 = load ptr, ptr %89, align 8, !tbaa !75
  %805 = load ptr, ptr %801, align 8, !tbaa !168
  %806 = getelementptr inbounds %struct.BMLoop, ptr %796, i64 0, i32 6
  %807 = load ptr, ptr %806, align 8, !tbaa !144
  %808 = call ptr @BM_uv_element_get(ptr noundef %804, ptr noundef %805, ptr noundef %807) #9
  %809 = load ptr, ptr %137, align 8, !tbaa !128
  %810 = load ptr, ptr %89, align 8, !tbaa !75
  %811 = getelementptr inbounds %struct.UvElementMap, ptr %810, i64 0, i32 1
  %812 = load ptr, ptr %811, align 8, !tbaa !118
  %813 = ptrtoint ptr %803 to i64
  %814 = ptrtoint ptr %812 to i64
  %815 = sub i64 %813, %814
  %816 = sdiv exact i64 %815, 24
  %817 = getelementptr inbounds i32, ptr %809, i64 %816
  %818 = load i32, ptr %817, align 4, !tbaa !133
  %819 = ptrtoint ptr %808 to i64
  %820 = sub i64 %819, %814
  %821 = sdiv exact i64 %820, 24
  %822 = getelementptr inbounds i32, ptr %809, i64 %821
  %823 = load i32, ptr %822, align 4, !tbaa !133
  %824 = icmp slt i32 %818, %823
  br i1 %824, label %825, label %826

825:                                              ; preds = %799
  store i32 %818, ptr %3, align 8, !tbaa !149
  store i32 %823, ptr %780, align 4, !tbaa !150
  br label %827

826:                                              ; preds = %799
  store i32 %823, ptr %3, align 8, !tbaa !149
  store i32 %818, ptr %779, align 4, !tbaa !150
  br label %827

827:                                              ; preds = %825, %826
  %828 = load ptr, ptr %309, align 8, !tbaa !161
  %829 = call ptr @BLI_ghash_lookup(ptr noundef %828, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %830 = icmp eq ptr %829, null
  br i1 %830, label %852, label %831

831:                                              ; preds = %827
  %832 = load ptr, ptr %694, align 8, !tbaa !177
  %833 = getelementptr inbounds %struct.UvEdge, ptr %829, i64 0, i32 5
  %834 = load ptr, ptr %833, align 8, !tbaa !101
  %835 = icmp eq ptr %834, null
  br i1 %835, label %852, label %836

836:                                              ; preds = %831, %848
  %837 = phi ptr [ %850, %848 ], [ %834, %831 ]
  %838 = getelementptr inbounds %struct.UvEdge, ptr %837, i64 0, i32 2
  %839 = load i8, ptr %838, align 8, !tbaa !146
  %840 = and i8 %839, 1
  %841 = icmp eq i8 %840, 0
  br i1 %841, label %842, label %848

842:                                              ; preds = %836
  %843 = or disjoint i8 %839, 1
  store i8 %843, ptr %838, align 8, !tbaa !146
  %844 = load i32, ptr %540, align 8, !tbaa !176
  %845 = add nsw i32 %844, 1
  store i32 %845, ptr %540, align 8, !tbaa !176
  %846 = sext i32 %844 to i64
  %847 = getelementptr inbounds ptr, ptr %832, i64 %846
  store ptr %837, ptr %847, align 8, !tbaa !101
  br label %848

848:                                              ; preds = %836, %842
  %849 = getelementptr inbounds %struct.UvEdge, ptr %837, i64 0, i32 4
  %850 = load ptr, ptr %849, align 8, !tbaa !101
  %851 = icmp eq ptr %850, null
  br i1 %851, label %852, label %836, !llvm.loop !188

852:                                              ; preds = %848, %831, %827, %795
  %853 = load ptr, ptr %778, align 8, !tbaa !139
  %854 = call ptr %853(ptr noundef nonnull %6) #9
  %855 = icmp eq ptr %854, null
  br i1 %855, label %856, label %795, !llvm.loop !192

856:                                              ; preds = %852, %791, %786
  %857 = load ptr, ptr %201, align 8, !tbaa !139
  %858 = call ptr %857(ptr noundef nonnull %5) #9
  %859 = icmp eq ptr %858, null
  br i1 %859, label %860, label %781, !llvm.loop !193

860:                                              ; preds = %856, %760, %764, %695, %687
  %861 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %862 = load ptr, ptr %89, align 8, !tbaa !75
  %863 = getelementptr inbounds %struct.UvElementMap, ptr %862, i64 0, i32 3
  %864 = load i32, ptr %863, align 4, !tbaa !76
  %865 = sext i32 %864 to i64
  %866 = shl nsw i64 %865, 2
  %867 = call ptr %861(i64 noundef %866, ptr noundef nonnull @.str.43) #9
  %868 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 19
  store ptr %867, ptr %868, align 8, !tbaa !194
  %869 = load ptr, ptr %89, align 8, !tbaa !75
  %870 = getelementptr inbounds %struct.UvElementMap, ptr %869, i64 0, i32 3
  %871 = load i32, ptr %870, align 4, !tbaa !76
  %872 = icmp sgt i32 %871, 0
  br i1 %872, label %873, label %880

873:                                              ; preds = %860, %873
  %874 = phi i64 [ %876, %873 ], [ 0, %860 ]
  %875 = getelementptr inbounds i32, ptr %867, i64 %874
  store i32 0, ptr %875, align 4, !tbaa !133
  %876 = add nuw nsw i64 %874, 1
  %877 = load i32, ptr %870, align 4, !tbaa !76
  %878 = sext i32 %877 to i64
  %879 = icmp slt i64 %876, %878
  br i1 %879, label %873, label %880, !llvm.loop !195

880:                                              ; preds = %873, %860
  %881 = load ptr, ptr %19, align 8, !tbaa !99
  store i8 3, ptr %199, align 4, !tbaa !136
  store ptr @bmiter__elem_of_mesh_begin, ptr %200, align 8, !tbaa !138
  store ptr @bmiter__elem_of_mesh_step, ptr %201, align 8, !tbaa !139
  %882 = getelementptr inbounds %struct.BMesh, ptr %881, i64 0, i32 12
  %883 = load ptr, ptr %882, align 8, !tbaa !140
  store ptr %883, ptr %5, align 8, !tbaa !141
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %884 = load ptr, ptr %201, align 8, !tbaa !139
  %885 = call ptr %884(ptr noundef nonnull %5) #9
  %886 = icmp eq ptr %885, null
  br i1 %886, label %911, label %887

887:                                              ; preds = %880, %907
  %888 = phi ptr [ %909, %907 ], [ %885, %880 ]
  %889 = load ptr, ptr %89, align 8, !tbaa !75
  %890 = getelementptr inbounds %struct.BMFace, ptr %888, i64 0, i32 2
  %891 = load ptr, ptr %890, align 8, !tbaa !196
  %892 = call ptr @BM_uv_element_get(ptr noundef %889, ptr noundef nonnull %888, ptr noundef %891) #9
  %893 = icmp eq ptr %892, null
  br i1 %893, label %907, label %894

894:                                              ; preds = %887
  %895 = getelementptr inbounds %struct.BMFace, ptr %888, i64 0, i32 3
  %896 = load i32, ptr %895, align 8, !tbaa !186
  %897 = icmp sgt i32 %896, 2
  %898 = add nsw i32 %896, -2
  %899 = select i1 %897, i32 %898, i32 0
  %900 = load ptr, ptr %868, align 8, !tbaa !194
  %901 = getelementptr inbounds %struct.UvElement, ptr %892, i64 0, i32 5
  %902 = load i16, ptr %901, align 4, !tbaa !197
  %903 = zext i16 %902 to i64
  %904 = getelementptr inbounds i32, ptr %900, i64 %903
  %905 = load i32, ptr %904, align 4, !tbaa !133
  %906 = add i32 %905, %899
  store i32 %906, ptr %904, align 4, !tbaa !133
  br label %907

907:                                              ; preds = %894, %887
  %908 = load ptr, ptr %201, align 8, !tbaa !139
  %909 = call ptr %908(ptr noundef nonnull %5) #9
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %887, !llvm.loop !198

911:                                              ; preds = %907, %880
  %912 = call fastcc i32 @stitch_process_data(ptr noundef nonnull %26, ptr noundef %14, i32 noundef 0), !range !51
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %915

914:                                              ; preds = %911
  call fastcc void @state_delete(ptr noundef nonnull %26)
  br label %920

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 20
  %917 = load ptr, ptr %916, align 8, !tbaa !199
  %918 = call ptr @ED_region_draw_cb_activate(ptr noundef %917, ptr noundef nonnull @stitch_draw, ptr noundef nonnull %26, i32 noundef 0) #9
  %919 = getelementptr inbounds %struct.StitchState, ptr %26, i64 0, i32 21
  store ptr %918, ptr %919, align 8, !tbaa !202
  call fastcc void @stitch_update_header(ptr noundef nonnull %26, ptr noundef %0)
  br label %920

920:                                              ; preds = %2, %915, %914, %291, %158, %91
  %921 = phi i32 [ 1, %915 ], [ 0, %914 ], [ 0, %291 ], [ 0, %158 ], [ 0, %91 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %921
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @state_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %86, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BM_uv_element_map_free(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !125
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %13(ptr noundef nonnull %10) #9
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %19(ptr noundef nonnull %16) #9
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !194
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %25(ptr noundef nonnull %22) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %31(ptr noundef nonnull %28) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !126
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %37(ptr noundef nonnull %34) #9
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !153
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %43(ptr noundef nonnull %40) #9
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 22
  %46 = load ptr, ptr %45, align 8, !tbaa !124
  %47 = icmp eq ptr %46, null
  br i1 %47, label %79, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !203
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %52(ptr noundef nonnull %49) #9
  store ptr null, ptr %46, align 8, !tbaa !203
  br label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.StitchPreviewer, ptr %46, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !205
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %58(ptr noundef nonnull %55) #9
  store ptr null, ptr %54, align 8, !tbaa !205
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.StitchPreviewer, ptr %46, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !206
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %64(ptr noundef nonnull %61) #9
  store ptr null, ptr %60, align 8, !tbaa !206
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.StitchPreviewer, ptr %46, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !207
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %70(ptr noundef nonnull %67) #9
  store ptr null, ptr %66, align 8, !tbaa !207
  br label %71

71:                                               ; preds = %69, %65
  %72 = getelementptr inbounds %struct.StitchPreviewer, ptr %46, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !208
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %76(ptr noundef nonnull %73) #9
  store ptr null, ptr %72, align 8, !tbaa !208
  br label %77

77:                                               ; preds = %75, %71
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %78(ptr noundef nonnull %46) #9
  br label %79

79:                                               ; preds = %77, %44
  %80 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 13
  %81 = load ptr, ptr %80, align 8, !tbaa !161
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @BLI_ghash_free(ptr noundef nonnull %81, ptr noundef null, ptr noundef null) #9
  br label %84

84:                                               ; preds = %83, %79
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %85(ptr noundef nonnull %0) #9
  br label %86

86:                                               ; preds = %84, %1
  ret void
}

declare void @uvedit_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @uv_edge_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !150
  %4 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %3) #9
  %5 = load i32, ptr %0, align 8, !tbaa !149
  %6 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %5) #9
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @uv_edge_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !149
  %4 = load i32, ptr %1, align 8, !tbaa !149
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !150
  %9 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ]
  ret i8 %14
}

declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_switch_selection_mode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !176
  store i32 0, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %7 = load i8, ptr %6, align 8, !tbaa !105
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  br i1 %8, label %10, label %82

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !154
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.44) #9
  store ptr %15, ptr %2, align 8, !tbaa !177
  %16 = load i32, ptr %11, align 8, !tbaa !154
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %21 = zext nneg i32 %16 to i64
  br label %26

22:                                               ; preds = %70, %10
  %23 = icmp sgt i32 %5, 0
  br i1 %23, label %24, label %178

24:                                               ; preds = %22
  %25 = zext nneg i32 %5 to i64
  br label %73

26:                                               ; preds = %18, %70
  %27 = phi i64 [ 0, %18 ], [ %71, %70 ]
  %28 = load ptr, ptr %19, align 8, !tbaa !153
  %29 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27
  %30 = load ptr, ptr %20, align 8, !tbaa !125
  %31 = load i32, ptr %29, align 8, !tbaa !149
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  %35 = getelementptr inbounds %struct.UvElement, ptr %34, i64 0, i32 4
  %36 = load i8, ptr %35, align 1, !tbaa !183
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !150
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %30, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.UvElement, ptr %44, i64 0, i32 4
  %46 = load i8, ptr %45, align 1, !tbaa !183
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %2, align 8, !tbaa !177
  %51 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %49, %66
  %55 = phi ptr [ %68, %66 ], [ %52, %49 ]
  %56 = getelementptr inbounds %struct.UvEdge, ptr %55, i64 0, i32 2
  %57 = load i8, ptr %56, align 8, !tbaa !146
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = or disjoint i8 %57, 1
  store i8 %61, ptr %56, align 8, !tbaa !146
  %62 = load i32, ptr %4, align 8, !tbaa !176
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %4, align 8, !tbaa !176
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds ptr, ptr %50, i64 %64
  store ptr %55, ptr %65, align 8, !tbaa !101
  br label %66

66:                                               ; preds = %54, %60
  %67 = getelementptr inbounds %struct.UvEdge, ptr %55, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !101
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %54, !llvm.loop !188

70:                                               ; preds = %66, %49, %39, %26
  %71 = add nuw nsw i64 %27, 1
  %72 = icmp eq i64 %71, %21
  br i1 %72, label %22, label %26, !llvm.loop !209

73:                                               ; preds = %24, %73
  %74 = phi i64 [ 0, %24 ], [ %80, %73 ]
  %75 = getelementptr inbounds ptr, ptr %3, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !101
  %77 = getelementptr inbounds %struct.UvElement, ptr %76, i64 0, i32 4
  %78 = load i8, ptr %77, align 1, !tbaa !183
  %79 = and i8 %78, -2
  store i8 %79, ptr %77, align 1, !tbaa !183
  %80 = add nuw nsw i64 %74, 1
  %81 = icmp eq i64 %80, %25
  br i1 %81, label %178, label %73, !llvm.loop !210

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %84 = load i32, ptr %83, align 4, !tbaa !127
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 3
  %87 = tail call ptr %9(i64 noundef %86, ptr noundef nonnull @.str.45) #9
  store ptr %87, ptr %2, align 8, !tbaa !177
  %88 = icmp sgt i32 %5, 0
  br i1 %88, label %89, label %178

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %91 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %92 = zext nneg i32 %5 to i64
  br label %93

93:                                               ; preds = %89, %172
  %94 = phi i64 [ 0, %89 ], [ %176, %172 ]
  %95 = getelementptr inbounds ptr, ptr %3, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  %97 = load ptr, ptr %90, align 8, !tbaa !125
  %98 = load i32, ptr %96, align 8, !tbaa !149
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !101
  %102 = getelementptr inbounds %struct.UvEdge, ptr %96, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !150
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %97, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !101
  %107 = load ptr, ptr %2, align 8, !tbaa !177
  %108 = getelementptr inbounds %struct.UvElement, ptr %101, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !164
  %110 = load ptr, ptr %91, align 8, !tbaa !75
  %111 = load ptr, ptr %110, align 8, !tbaa !132
  %112 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !165
  %114 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !166
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %111, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !101
  %119 = icmp eq ptr %118, null
  br i1 %119, label %139, label %120

120:                                              ; preds = %93, %136
  %121 = phi ptr [ %137, %136 ], [ %118, %93 ]
  %122 = getelementptr inbounds %struct.UvElement, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %122, align 2, !tbaa !119
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.UvElement, ptr %121, i64 0, i32 4
  %127 = load i8, ptr %126, align 1, !tbaa !183
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = or disjoint i8 %127, 1
  store i8 %131, ptr %126, align 1, !tbaa !183
  %132 = load i32, ptr %4, align 8, !tbaa !176
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %4, align 8, !tbaa !176
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds ptr, ptr %107, i64 %134
  store ptr %121, ptr %135, align 8, !tbaa !101
  br label %136

136:                                              ; preds = %125, %130, %120
  %137 = load ptr, ptr %121, align 8, !tbaa !101
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %120, !llvm.loop !184

139:                                              ; preds = %136, %93
  %140 = load ptr, ptr %2, align 8, !tbaa !177
  %141 = getelementptr inbounds %struct.UvElement, ptr %106, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !164
  %143 = load ptr, ptr %91, align 8, !tbaa !75
  %144 = load ptr, ptr %143, align 8, !tbaa !132
  %145 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !165
  %147 = getelementptr inbounds %struct.BMHeader, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !166
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %144, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !101
  %152 = icmp eq ptr %151, null
  br i1 %152, label %172, label %153

153:                                              ; preds = %139, %169
  %154 = phi ptr [ %170, %169 ], [ %151, %139 ]
  %155 = getelementptr inbounds %struct.UvElement, ptr %154, i64 0, i32 3
  %156 = load i8, ptr %155, align 2, !tbaa !119
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.UvElement, ptr %154, i64 0, i32 4
  %160 = load i8, ptr %159, align 1, !tbaa !183
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = or disjoint i8 %160, 1
  store i8 %164, ptr %159, align 1, !tbaa !183
  %165 = load i32, ptr %4, align 8, !tbaa !176
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %4, align 8, !tbaa !176
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds ptr, ptr %140, i64 %167
  store ptr %154, ptr %168, align 8, !tbaa !101
  br label %169

169:                                              ; preds = %158, %163, %153
  %170 = load ptr, ptr %154, align 8, !tbaa !101
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %153, !llvm.loop !184

172:                                              ; preds = %169, %139
  %173 = getelementptr inbounds %struct.UvEdge, ptr %96, i64 0, i32 2
  %174 = load i8, ptr %173, align 8, !tbaa !146
  %175 = and i8 %174, -2
  store i8 %175, ptr %173, align 8, !tbaa !146
  %176 = add nuw nsw i64 %94, 1
  %177 = icmp eq i64 %176, %92
  br i1 %177, label %178, label %93, !llvm.loop !211

178:                                              ; preds = %172, %73, %82, %22
  %179 = phi i8 [ 1, %22 ], [ 0, %82 ], [ 1, %73 ], [ 0, %172 ]
  store i8 %179, ptr %6, align 8, !tbaa !105
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %180(ptr noundef %3) #9
  ret void
}

declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @uvedit_edge_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @stitch_process_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x [2 x float]], align 16
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %14 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !78
  %16 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %3
  %20 = load ptr, ptr %17, align 8, !tbaa !203
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %23(ptr noundef nonnull %20) #9
  store ptr null, ptr %17, align 8, !tbaa !203
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.StitchPreviewer, ptr %17, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !205
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %29(ptr noundef nonnull %26) #9
  store ptr null, ptr %25, align 8, !tbaa !205
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.StitchPreviewer, ptr %17, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !206
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %35(ptr noundef nonnull %32) #9
  store ptr null, ptr %31, align 8, !tbaa !206
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.StitchPreviewer, ptr %17, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !207
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %41(ptr noundef nonnull %38) #9
  store ptr null, ptr %37, align 8, !tbaa !207
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.StitchPreviewer, ptr %17, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !208
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %47(ptr noundef nonnull %44) #9
  store ptr null, ptr %43, align 8, !tbaa !208
  br label %48

48:                                               ; preds = %46, %42
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  tail call void %49(ptr noundef nonnull %17) #9
  br label %50

50:                                               ; preds = %3, %48
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %52 = tail call ptr %51(i64 noundef 72, ptr noundef nonnull @.str.54) #9
  %53 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 3
  %54 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 4
  %55 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 1
  %56 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 7
  %57 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 2
  %58 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 5
  %59 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 6
  %60 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 8
  store ptr null, ptr %60, align 8, !tbaa !208
  %61 = getelementptr inbounds %struct.StitchPreviewer, ptr %52, i64 0, i32 9
  store i32 0, ptr %61, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %52, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %53, i8 0, i64 28, i1 false)
  store ptr %52, ptr %16, align 8, !tbaa !124
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %63 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !213
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = tail call ptr %62(i64 noundef %66, ptr noundef nonnull @.str.46) #9
  %68 = load i32, ptr %63, align 4, !tbaa !213
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %50
  %71 = zext nneg i32 %68 to i64
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %75, %72 ]
  %74 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %73
  store i32 -1, ptr %74, align 4, !tbaa !214
  %75 = add nuw nsw i64 %73, 1
  %76 = icmp eq i64 %75, %71
  br i1 %76, label %77, label %72, !llvm.loop !216

77:                                               ; preds = %72, %50
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = getelementptr inbounds %struct.UvElementMap, ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !76
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, 40
  %85 = tail call ptr %78(i64 noundef %84, ptr noundef nonnull @.str.47) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %2115, label %87

87:                                               ; preds = %77
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %13, i8 noundef zeroext 9) #9
  %88 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 17
  %89 = load i32, ptr %88, align 8, !tbaa !176
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %205

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %93 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %94 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %95 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %96 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  br label %97

97:                                               ; preds = %91, %200
  %98 = phi i64 [ 0, %91 ], [ %201, %200 ]
  %99 = load i8, ptr %92, align 8, !tbaa !105
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %168

101:                                              ; preds = %97
  %102 = load ptr, ptr %94, align 8, !tbaa !177
  %103 = getelementptr inbounds ptr, ptr %102, i64 %98
  %104 = load ptr, ptr %103, align 8, !tbaa !101
  %105 = getelementptr inbounds %struct.UvElement, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !164
  %107 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !165
  %109 = getelementptr inbounds %struct.BMHeader, ptr %108, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !166
  %111 = load ptr, ptr %79, align 8, !tbaa !75
  %112 = load ptr, ptr %111, align 8, !tbaa !132
  %113 = sext i32 %110 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !101
  %116 = icmp eq ptr %115, null
  br i1 %116, label %200, label %117

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.UvElement, ptr %104, i64 0, i32 5
  %119 = getelementptr inbounds %struct.UvElement, ptr %104, i64 0, i32 4
  br label %120

120:                                              ; preds = %117, %165
  %121 = phi ptr [ %115, %117 ], [ %166, %165 ]
  %122 = getelementptr inbounds %struct.UvElement, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %122, align 2, !tbaa !119
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %165, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr %11, align 8, !tbaa !103
  %127 = load ptr, ptr %126, align 8, !tbaa !99
  %128 = icmp eq ptr %121, %104
  br i1 %128, label %165, label %129

129:                                              ; preds = %125
  %130 = load float, ptr %95, align 8, !tbaa !71
  %131 = load i8, ptr %96, align 4, !tbaa !73
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %155, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %105, align 8, !tbaa !164
  %135 = getelementptr inbounds %struct.BMesh, ptr %127, i64 0, i32 26
  %136 = load ptr, ptr %134, align 8, !tbaa !174
  %137 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %135, ptr noundef %136, i32 noundef 16) #9
  %138 = getelementptr inbounds %struct.UvElement, ptr %121, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !164
  %140 = load ptr, ptr %139, align 8, !tbaa !174
  %141 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %135, ptr noundef %140, i32 noundef 16) #9
  %142 = load float, ptr %137, align 4, !tbaa !115
  %143 = load float, ptr %141, align 4, !tbaa !115
  %144 = fsub float %142, %143
  %145 = tail call float @llvm.fabs.f32(float %144)
  %146 = fcmp olt float %145, %130
  br i1 %146, label %147, label %165

147:                                              ; preds = %133
  %148 = getelementptr inbounds [2 x float], ptr %137, i64 0, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !115
  %150 = getelementptr inbounds [2 x float], ptr %141, i64 0, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !115
  %152 = fsub float %149, %151
  %153 = tail call float @llvm.fabs.f32(float %152)
  %154 = fcmp olt float %153, %130
  br i1 %154, label %155, label %165

155:                                              ; preds = %147, %129
  %156 = getelementptr inbounds %struct.UvElement, ptr %121, i64 0, i32 5
  %157 = load i16, ptr %156, align 4, !tbaa !197
  %158 = zext i16 %157 to i64
  %159 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %158, i32 8
  store i8 1, ptr %159, align 1, !tbaa !217
  %160 = load i16, ptr %118, align 4, !tbaa !197
  %161 = zext i16 %160 to i64
  %162 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %161, i32 8
  store i8 1, ptr %162, align 1, !tbaa !217
  %163 = load i8, ptr %119, align 1, !tbaa !183
  %164 = or i8 %163, 16
  store i8 %164, ptr %119, align 1, !tbaa !183
  br label %165

165:                                              ; preds = %133, %147, %125, %155, %120
  %166 = load ptr, ptr %121, align 8, !tbaa !101
  %167 = icmp eq ptr %166, null
  br i1 %167, label %200, label %120, !llvm.loop !219

168:                                              ; preds = %97
  %169 = load ptr, ptr %93, align 8, !tbaa !177
  %170 = getelementptr inbounds ptr, ptr %169, i64 %98
  %171 = load ptr, ptr %170, align 8, !tbaa !101
  %172 = getelementptr inbounds %struct.UvEdge, ptr %171, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !101
  %174 = icmp eq ptr %173, null
  br i1 %174, label %200, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.UvEdge, ptr %171, i64 0, i32 3
  %177 = getelementptr inbounds %struct.UvEdge, ptr %171, i64 0, i32 2
  br label %178

178:                                              ; preds = %175, %196
  %179 = phi ptr [ %173, %175 ], [ %198, %196 ]
  %180 = tail call fastcc zeroext i8 @stitch_check_edges_stitchable(ptr noundef %171, ptr noundef nonnull %179, ptr noundef %0), !range !220
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.UvEdge, ptr %179, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !148
  %185 = getelementptr inbounds %struct.UvElement, ptr %184, i64 0, i32 5
  %186 = load i16, ptr %185, align 4, !tbaa !197
  %187 = zext i16 %186 to i64
  %188 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %187, i32 8
  store i8 1, ptr %188, align 1, !tbaa !217
  %189 = load ptr, ptr %176, align 8, !tbaa !148
  %190 = getelementptr inbounds %struct.UvElement, ptr %189, i64 0, i32 5
  %191 = load i16, ptr %190, align 4, !tbaa !197
  %192 = zext i16 %191 to i64
  %193 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %192, i32 8
  store i8 1, ptr %193, align 1, !tbaa !217
  %194 = load i8, ptr %177, align 8, !tbaa !146
  %195 = or i8 %194, 16
  store i8 %195, ptr %177, align 8, !tbaa !146
  br label %196

196:                                              ; preds = %182, %178
  %197 = getelementptr inbounds %struct.UvEdge, ptr %179, i64 0, i32 4
  %198 = load ptr, ptr %197, align 8, !tbaa !101
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %178, !llvm.loop !221

200:                                              ; preds = %196, %165, %168, %101
  %201 = add nuw nsw i64 %98, 1
  %202 = load i32, ptr %88, align 8, !tbaa !176
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %97, label %205, !llvm.loop !222

205:                                              ; preds = %200, %87
  %206 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 17
  %207 = load ptr, ptr %79, align 8, !tbaa !75
  %208 = getelementptr inbounds %struct.UvElementMap, ptr %207, i64 0, i32 3
  %209 = load i32, ptr %208, align 4, !tbaa !76
  %210 = load i32, ptr %9, align 4, !tbaa !74
  %211 = srem i32 %210, %209
  store i32 %211, ptr %9, align 4, !tbaa !74
  br label %212

212:                                              ; preds = %218, %205
  %213 = phi i32 [ %220, %218 ], [ %211, %205 ]
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %214, i32 8
  %216 = load i8, ptr %215, align 1, !tbaa !217
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = add nsw i32 %213, 1
  %220 = srem i32 %219, %209
  store i32 %220, ptr %9, align 4, !tbaa !74
  %221 = icmp eq i32 %220, %10
  br i1 %221, label %222, label %212, !llvm.loop !223

222:                                              ; preds = %218, %212
  %223 = load i32, ptr %206, align 8, !tbaa !176
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %581

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %227 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %228 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %229 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %230 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %231 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %232 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %233 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %234 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  %235 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  br label %236

236:                                              ; preds = %225, %576
  %237 = phi i64 [ 0, %225 ], [ %577, %576 ]
  %238 = load i8, ptr %226, align 8, !tbaa !105
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %390

240:                                              ; preds = %236
  %241 = load ptr, ptr %231, align 8, !tbaa !177
  %242 = getelementptr inbounds ptr, ptr %241, i64 %237
  %243 = load ptr, ptr %242, align 8, !tbaa !101
  %244 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 4
  %245 = load i8, ptr %244, align 1, !tbaa !183
  %246 = and i8 %245, 16
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %572, label %248

248:                                              ; preds = %240
  %249 = and i8 %245, -17
  store i8 %249, ptr %244, align 1, !tbaa !183
  %250 = load ptr, ptr %16, align 8, !tbaa !124
  %251 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !164
  %253 = getelementptr inbounds %struct.BMLoop, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !165
  %255 = getelementptr inbounds %struct.BMHeader, ptr %254, i64 0, i32 1
  %256 = load i32, ptr %255, align 8, !tbaa !166
  %257 = load ptr, ptr %79, align 8, !tbaa !75
  %258 = load ptr, ptr %257, align 8, !tbaa !132
  %259 = sext i32 %256 to i64
  %260 = getelementptr inbounds ptr, ptr %258, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !101
  %262 = icmp eq ptr %261, null
  br i1 %262, label %384, label %263

263:                                              ; preds = %248
  %264 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 5
  %265 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 5
  %266 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 5
  br label %267

267:                                              ; preds = %263, %381
  %268 = phi ptr [ %261, %263 ], [ %382, %381 ]
  %269 = getelementptr inbounds %struct.UvElement, ptr %268, i64 0, i32 3
  %270 = load i8, ptr %269, align 2, !tbaa !119
  %271 = icmp eq i8 %270, 0
  %272 = icmp eq ptr %268, %243
  %273 = or i1 %272, %271
  br i1 %273, label %381, label %274

274:                                              ; preds = %267
  %275 = load i8, ptr %232, align 4, !tbaa !79
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %274
  %278 = load i16, ptr %264, align 4, !tbaa !197
  %279 = getelementptr inbounds %struct.UvElement, ptr %268, i64 0, i32 5
  %280 = load i16, ptr %279, align 4, !tbaa !197
  %281 = icmp eq i16 %278, %280
  br i1 %281, label %381, label %282

282:                                              ; preds = %277, %274
  %283 = load i8, ptr %14, align 1, !tbaa !78
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load i16, ptr %265, align 4, !tbaa !197
  %287 = getelementptr inbounds %struct.UvElement, ptr %268, i64 0, i32 5
  %288 = load i16, ptr %287, align 4, !tbaa !197
  %289 = icmp eq i16 %286, %288
  br i1 %289, label %381, label %290

290:                                              ; preds = %285, %282
  %291 = load float, ptr %233, align 8, !tbaa !71
  %292 = load i8, ptr %234, align 4, !tbaa !73
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %318, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr %11, align 8, !tbaa !103
  %296 = load ptr, ptr %295, align 8, !tbaa !99
  %297 = load ptr, ptr %251, align 8, !tbaa !164
  %298 = getelementptr inbounds %struct.BMesh, ptr %296, i64 0, i32 26
  %299 = load ptr, ptr %297, align 8, !tbaa !174
  %300 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %298, ptr noundef %299, i32 noundef 16) #9
  %301 = getelementptr inbounds %struct.UvElement, ptr %268, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !164
  %303 = load ptr, ptr %302, align 8, !tbaa !174
  %304 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %298, ptr noundef %303, i32 noundef 16) #9
  %305 = load float, ptr %300, align 4, !tbaa !115
  %306 = load float, ptr %304, align 4, !tbaa !115
  %307 = fsub float %305, %306
  %308 = tail call float @llvm.fabs.f32(float %307)
  %309 = fcmp olt float %308, %291
  br i1 %309, label %310, label %381

310:                                              ; preds = %294
  %311 = getelementptr inbounds [2 x float], ptr %300, i64 0, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !115
  %313 = getelementptr inbounds [2 x float], ptr %304, i64 0, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !115
  %315 = fsub float %312, %314
  %316 = tail call float @llvm.fabs.f32(float %315)
  %317 = fcmp olt float %316, %291
  br i1 %317, label %318, label %381

318:                                              ; preds = %290, %310
  %319 = getelementptr inbounds %struct.UvElement, ptr %268, i64 0, i32 5
  %320 = load i16, ptr %319, align 4, !tbaa !197
  %321 = zext i16 %320 to i32
  %322 = load i32, ptr %9, align 4, !tbaa !74
  %323 = icmp eq i32 %322, %321
  br i1 %323, label %328, label %324

324:                                              ; preds = %318
  %325 = load i16, ptr %266, align 4, !tbaa !197
  %326 = zext i16 %325 to i32
  %327 = icmp eq i32 %322, %326
  br i1 %327, label %328, label %381

328:                                              ; preds = %324, %318
  %329 = load i8, ptr %244, align 1, !tbaa !183
  %330 = or i8 %329, 2
  store i8 %330, ptr %244, align 1, !tbaa !183
  %331 = getelementptr inbounds %struct.StitchPreviewer, ptr %250, i64 0, i32 5
  %332 = load i32, ptr %331, align 8, !tbaa !224
  %333 = add i32 %332, 1
  store i32 %333, ptr %331, align 8, !tbaa !224
  %334 = load ptr, ptr %16, align 8, !tbaa !124
  %335 = load i8, ptr %235, align 4, !tbaa !79
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %350, label %337

337:                                              ; preds = %328
  %338 = load i8, ptr %14, align 1, !tbaa !78
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 5
  %342 = load i16, ptr %341, align 4, !tbaa !197
  %343 = zext i16 %342 to i32
  %344 = icmp eq i32 %322, %343
  br i1 %344, label %576, label %345

345:                                              ; preds = %337, %340
  %346 = getelementptr inbounds %struct.UvElement, ptr %243, i64 0, i32 5
  %347 = load i16, ptr %346, align 4, !tbaa !197
  %348 = zext i16 %347 to i64
  %349 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %348, i32 7
  store i8 1, ptr %349, align 4, !tbaa !225
  br label %350

350:                                              ; preds = %345, %328
  %351 = getelementptr inbounds %struct.StitchPreviewer, ptr %334, i64 0, i32 7
  %352 = getelementptr inbounds %struct.StitchPreviewer, ptr %334, i64 0, i32 2
  br label %353

353:                                              ; preds = %377, %350
  %354 = phi ptr [ %243, %350 ], [ %375, %377 ]
  %355 = getelementptr inbounds %struct.UvElement, ptr %354, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !164
  %357 = getelementptr inbounds %struct.BMLoop, ptr %356, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !168
  %359 = getelementptr inbounds %struct.BMHeader, ptr %358, i64 0, i32 1
  %360 = load i32, ptr %359, align 8, !tbaa !166
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !214
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %365, label %374

365:                                              ; preds = %353
  %366 = load i32, ptr %351, align 8, !tbaa !226
  %367 = shl i32 %366, 1
  store i32 %367, ptr %362, align 4, !tbaa !214
  %368 = load i32, ptr %352, align 8, !tbaa !227
  %369 = add i32 %368, 1
  store i32 %369, ptr %352, align 8, !tbaa !227
  %370 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %361, i32 1
  store i32 %368, ptr %370, align 4, !tbaa !228
  %371 = getelementptr inbounds %struct.BMFace, ptr %358, i64 0, i32 3
  %372 = load i32, ptr %371, align 8, !tbaa !186
  %373 = add i32 %372, %366
  store i32 %373, ptr %351, align 8, !tbaa !226
  br label %374

374:                                              ; preds = %365, %353
  %375 = load ptr, ptr %354, align 8, !tbaa !171
  %376 = icmp eq ptr %375, null
  br i1 %376, label %576, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.UvElement, ptr %375, i64 0, i32 3
  %379 = load i8, ptr %378, align 2, !tbaa !119
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %353, label %576, !llvm.loop !229

381:                                              ; preds = %294, %310, %285, %277, %324, %267
  %382 = load ptr, ptr %268, align 8, !tbaa !101
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %267, !llvm.loop !230

384:                                              ; preds = %381, %248
  %385 = load i8, ptr %244, align 1, !tbaa !183
  %386 = and i8 %385, 2
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %388, label %576

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.StitchPreviewer, ptr %250, i64 0, i32 6
  br label %572

390:                                              ; preds = %236
  %391 = load ptr, ptr %227, align 8, !tbaa !177
  %392 = getelementptr inbounds ptr, ptr %391, i64 %237
  %393 = load ptr, ptr %392, align 8, !tbaa !101
  %394 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 2
  %395 = load i8, ptr %394, align 8, !tbaa !146
  %396 = and i8 %395, 16
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %572, label %398

398:                                              ; preds = %390
  %399 = and i8 %395, -17
  store i8 %399, ptr %394, align 8, !tbaa !146
  %400 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 5
  %401 = load ptr, ptr %16, align 8, !tbaa !124
  %402 = load ptr, ptr %400, align 8, !tbaa !101
  %403 = icmp eq ptr %402, null
  br i1 %403, label %566, label %404

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 3
  %406 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 3
  %407 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 3
  br label %408

408:                                              ; preds = %404, %562
  %409 = phi ptr [ %402, %404 ], [ %564, %562 ]
  %410 = icmp eq ptr %409, %393
  br i1 %410, label %562, label %411

411:                                              ; preds = %408
  %412 = load i8, ptr %228, align 4, !tbaa !79
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %411
  %415 = load ptr, ptr %405, align 8, !tbaa !148
  %416 = getelementptr inbounds %struct.UvElement, ptr %415, i64 0, i32 5
  %417 = load i16, ptr %416, align 4, !tbaa !197
  %418 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !148
  %420 = getelementptr inbounds %struct.UvElement, ptr %419, i64 0, i32 5
  %421 = load i16, ptr %420, align 4, !tbaa !197
  %422 = icmp eq i16 %417, %421
  br i1 %422, label %437, label %423

423:                                              ; preds = %414, %411
  %424 = load i8, ptr %14, align 1, !tbaa !78
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %423
  %427 = load ptr, ptr %406, align 8, !tbaa !148
  %428 = getelementptr inbounds %struct.UvElement, ptr %427, i64 0, i32 5
  %429 = load i16, ptr %428, align 4, !tbaa !197
  %430 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !148
  %432 = getelementptr inbounds %struct.UvElement, ptr %431, i64 0, i32 5
  %433 = load i16, ptr %432, align 4, !tbaa !197
  %434 = icmp eq i16 %429, %433
  br i1 %434, label %437, label %435

435:                                              ; preds = %426, %423
  %436 = tail call fastcc zeroext i8 @stitch_check_edges_stitchable(ptr noundef %393, ptr noundef nonnull %409, ptr noundef %0), !range !220
  br label %437

437:                                              ; preds = %414, %426, %435
  %438 = phi i8 [ %436, %435 ], [ 0, %426 ], [ 0, %414 ]
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %562, label %440

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !148
  %443 = getelementptr inbounds %struct.UvElement, ptr %442, i64 0, i32 5
  %444 = load i16, ptr %443, align 4, !tbaa !197
  %445 = zext i16 %444 to i32
  %446 = load i32, ptr %9, align 4, !tbaa !74
  %447 = icmp eq i32 %446, %445
  br i1 %447, label %454, label %448

448:                                              ; preds = %440
  %449 = load ptr, ptr %407, align 8, !tbaa !148
  %450 = getelementptr inbounds %struct.UvElement, ptr %449, i64 0, i32 5
  %451 = load i16, ptr %450, align 4, !tbaa !197
  %452 = zext i16 %451 to i32
  %453 = icmp eq i32 %446, %452
  br i1 %453, label %454, label %562

454:                                              ; preds = %448, %440
  %455 = load i8, ptr %394, align 8, !tbaa !146
  %456 = or i8 %455, 2
  store i8 %456, ptr %394, align 8, !tbaa !146
  %457 = getelementptr inbounds %struct.StitchPreviewer, ptr %401, i64 0, i32 5
  %458 = load i32, ptr %457, align 8, !tbaa !224
  %459 = add i32 %458, 1
  store i32 %459, ptr %457, align 8, !tbaa !224
  %460 = load ptr, ptr %230, align 8, !tbaa !125
  %461 = load i32, ptr %393, align 8, !tbaa !149
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds ptr, ptr %460, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !101
  %465 = load ptr, ptr %16, align 8, !tbaa !124
  %466 = load i8, ptr %229, align 4, !tbaa !79
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %481, label %468

468:                                              ; preds = %454
  %469 = load i8, ptr %14, align 1, !tbaa !78
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.UvElement, ptr %464, i64 0, i32 5
  %473 = load i16, ptr %472, align 4, !tbaa !197
  %474 = zext i16 %473 to i32
  %475 = icmp eq i32 %446, %474
  br i1 %475, label %512, label %476

476:                                              ; preds = %468, %471
  %477 = getelementptr inbounds %struct.UvElement, ptr %464, i64 0, i32 5
  %478 = load i16, ptr %477, align 4, !tbaa !197
  %479 = zext i16 %478 to i64
  %480 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %479, i32 7
  store i8 1, ptr %480, align 4, !tbaa !225
  br label %481

481:                                              ; preds = %476, %454
  %482 = getelementptr inbounds %struct.StitchPreviewer, ptr %465, i64 0, i32 7
  %483 = getelementptr inbounds %struct.StitchPreviewer, ptr %465, i64 0, i32 2
  br label %484

484:                                              ; preds = %508, %481
  %485 = phi ptr [ %464, %481 ], [ %506, %508 ]
  %486 = getelementptr inbounds %struct.UvElement, ptr %485, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !164
  %488 = getelementptr inbounds %struct.BMLoop, ptr %487, i64 0, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !168
  %490 = getelementptr inbounds %struct.BMHeader, ptr %489, i64 0, i32 1
  %491 = load i32, ptr %490, align 8, !tbaa !166
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !214
  %495 = icmp eq i32 %494, -1
  br i1 %495, label %496, label %505

496:                                              ; preds = %484
  %497 = load i32, ptr %482, align 8, !tbaa !226
  %498 = shl i32 %497, 1
  store i32 %498, ptr %493, align 4, !tbaa !214
  %499 = load i32, ptr %483, align 8, !tbaa !227
  %500 = add i32 %499, 1
  store i32 %500, ptr %483, align 8, !tbaa !227
  %501 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %492, i32 1
  store i32 %499, ptr %501, align 4, !tbaa !228
  %502 = getelementptr inbounds %struct.BMFace, ptr %489, i64 0, i32 3
  %503 = load i32, ptr %502, align 8, !tbaa !186
  %504 = add i32 %503, %497
  store i32 %504, ptr %482, align 8, !tbaa !226
  br label %505

505:                                              ; preds = %496, %484
  %506 = load ptr, ptr %485, align 8, !tbaa !171
  %507 = icmp eq ptr %506, null
  br i1 %507, label %512, label %508

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.UvElement, ptr %506, i64 0, i32 3
  %510 = load i8, ptr %509, align 2, !tbaa !119
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %484, label %512, !llvm.loop !229

512:                                              ; preds = %505, %508, %471
  %513 = getelementptr inbounds %struct.UvEdge, ptr %393, i64 0, i32 1
  %514 = load i32, ptr %513, align 4, !tbaa !150
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds ptr, ptr %460, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !101
  br i1 %467, label %531, label %518

518:                                              ; preds = %512
  %519 = load i8, ptr %14, align 1, !tbaa !78
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.UvElement, ptr %517, i64 0, i32 5
  %523 = load i16, ptr %522, align 4, !tbaa !197
  %524 = zext i16 %523 to i32
  %525 = icmp eq i32 %446, %524
  br i1 %525, label %576, label %526

526:                                              ; preds = %518, %521
  %527 = getelementptr inbounds %struct.UvElement, ptr %517, i64 0, i32 5
  %528 = load i16, ptr %527, align 4, !tbaa !197
  %529 = zext i16 %528 to i64
  %530 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %529, i32 7
  store i8 1, ptr %530, align 4, !tbaa !225
  br label %531

531:                                              ; preds = %526, %512
  %532 = getelementptr inbounds %struct.StitchPreviewer, ptr %465, i64 0, i32 7
  %533 = getelementptr inbounds %struct.StitchPreviewer, ptr %465, i64 0, i32 2
  br label %534

534:                                              ; preds = %558, %531
  %535 = phi ptr [ %517, %531 ], [ %556, %558 ]
  %536 = getelementptr inbounds %struct.UvElement, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !164
  %538 = getelementptr inbounds %struct.BMLoop, ptr %537, i64 0, i32 3
  %539 = load ptr, ptr %538, align 8, !tbaa !168
  %540 = getelementptr inbounds %struct.BMHeader, ptr %539, i64 0, i32 1
  %541 = load i32, ptr %540, align 8, !tbaa !166
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !214
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %546, label %555

546:                                              ; preds = %534
  %547 = load i32, ptr %532, align 8, !tbaa !226
  %548 = shl i32 %547, 1
  store i32 %548, ptr %543, align 4, !tbaa !214
  %549 = load i32, ptr %533, align 8, !tbaa !227
  %550 = add i32 %549, 1
  store i32 %550, ptr %533, align 8, !tbaa !227
  %551 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %542, i32 1
  store i32 %549, ptr %551, align 4, !tbaa !228
  %552 = getelementptr inbounds %struct.BMFace, ptr %539, i64 0, i32 3
  %553 = load i32, ptr %552, align 8, !tbaa !186
  %554 = add i32 %553, %547
  store i32 %554, ptr %532, align 8, !tbaa !226
  br label %555

555:                                              ; preds = %546, %534
  %556 = load ptr, ptr %535, align 8, !tbaa !171
  %557 = icmp eq ptr %556, null
  br i1 %557, label %576, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.UvElement, ptr %556, i64 0, i32 3
  %560 = load i8, ptr %559, align 2, !tbaa !119
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %534, label %576, !llvm.loop !229

562:                                              ; preds = %448, %437, %408
  %563 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 0, i32 4
  %564 = load ptr, ptr %563, align 8, !tbaa !101
  %565 = icmp eq ptr %564, null
  br i1 %565, label %566, label %408, !llvm.loop !231

566:                                              ; preds = %562, %398
  %567 = load i8, ptr %394, align 8, !tbaa !146
  %568 = and i8 %567, 2
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.StitchPreviewer, ptr %401, i64 0, i32 6
  br label %572

572:                                              ; preds = %390, %240, %388, %570
  %573 = phi ptr [ %571, %570 ], [ %389, %388 ], [ %59, %240 ], [ %59, %390 ]
  %574 = load i32, ptr %573, align 4, !tbaa !232
  %575 = add i32 %574, 1
  store i32 %575, ptr %573, align 4, !tbaa !232
  br label %576

576:                                              ; preds = %558, %555, %377, %374, %572, %521, %340, %566, %384
  %577 = add nuw nsw i64 %237, 1
  %578 = load i32, ptr %206, align 8, !tbaa !176
  %579 = sext i32 %578 to i64
  %580 = icmp slt i64 %577, %579
  br i1 %580, label %236, label %581, !llvm.loop !233

581:                                              ; preds = %576, %222
  %582 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %583 = load i8, ptr %582, align 4, !tbaa !79
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %656, label %585

585:                                              ; preds = %581
  %586 = load ptr, ptr %79, align 8, !tbaa !75
  %587 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 3
  %588 = load i32, ptr %587, align 4, !tbaa !76
  %589 = icmp sgt i32 %588, 0
  br i1 %589, label %590, label %656

590:                                              ; preds = %585
  %591 = add nsw i32 %588, -1
  %592 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 4
  %593 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 2
  %594 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 4
  %595 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 1
  %596 = getelementptr inbounds %struct.UvElementMap, ptr %586, i64 0, i32 4
  %597 = zext i32 %591 to i64
  %598 = zext nneg i32 %588 to i64
  br label %599

599:                                              ; preds = %590, %653
  %600 = phi i64 [ 0, %590 ], [ %654, %653 ]
  %601 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %600, i32 7
  %602 = load i8, ptr %601, align 4, !tbaa !225
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %653, label %604

604:                                              ; preds = %599
  %605 = icmp eq i64 %600, %597
  br i1 %605, label %606, label %609

606:                                              ; preds = %604
  %607 = load ptr, ptr %594, align 8, !tbaa !234
  %608 = getelementptr inbounds i32, ptr %607, i64 %600
  br label %613

609:                                              ; preds = %604
  %610 = load ptr, ptr %592, align 8, !tbaa !234
  %611 = getelementptr i32, ptr %610, i64 %600
  %612 = getelementptr i32, ptr %611, i64 1
  br label %613

613:                                              ; preds = %606, %609
  %614 = phi ptr [ %608, %606 ], [ %611, %609 ]
  %615 = phi ptr [ %593, %606 ], [ %612, %609 ]
  %616 = load i32, ptr %615, align 4, !tbaa !133
  %617 = load i32, ptr %614, align 4, !tbaa !133
  %618 = sub nsw i32 %616, %617
  %619 = icmp sgt i32 %618, 0
  br i1 %619, label %620, label %653

620:                                              ; preds = %613
  %621 = load ptr, ptr %595, align 8, !tbaa !118
  %622 = load ptr, ptr %596, align 8, !tbaa !234
  %623 = getelementptr inbounds i32, ptr %622, i64 %600
  %624 = load i32, ptr %623, align 4, !tbaa !133
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.UvElement, ptr %621, i64 %625
  br label %627

627:                                              ; preds = %620, %649
  %628 = phi i32 [ %650, %649 ], [ 0, %620 ]
  %629 = phi ptr [ %651, %649 ], [ %626, %620 ]
  %630 = getelementptr inbounds %struct.UvElement, ptr %629, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !164
  %632 = getelementptr inbounds %struct.BMLoop, ptr %631, i64 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !168
  %634 = getelementptr inbounds %struct.BMHeader, ptr %633, i64 0, i32 1
  %635 = load i32, ptr %634, align 8, !tbaa !166
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !214
  %639 = icmp eq i32 %638, -1
  br i1 %639, label %640, label %649

640:                                              ; preds = %627
  %641 = load i32, ptr %56, align 8, !tbaa !226
  %642 = shl i32 %641, 1
  store i32 %642, ptr %637, align 4, !tbaa !214
  %643 = load i32, ptr %57, align 8, !tbaa !227
  %644 = add i32 %643, 1
  store i32 %644, ptr %57, align 8, !tbaa !227
  %645 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %636, i32 1
  store i32 %643, ptr %645, align 4, !tbaa !228
  %646 = getelementptr inbounds %struct.BMFace, ptr %633, i64 0, i32 3
  %647 = load i32, ptr %646, align 8, !tbaa !186
  %648 = add i32 %647, %641
  store i32 %648, ptr %56, align 8, !tbaa !226
  br label %649

649:                                              ; preds = %627, %640
  %650 = add nuw nsw i32 %628, 1
  %651 = getelementptr inbounds %struct.UvElement, ptr %629, i64 1
  %652 = icmp eq i32 %650, %618
  br i1 %652, label %653, label %627, !llvm.loop !235

653:                                              ; preds = %649, %613, %599
  %654 = add nuw nsw i64 %600, 1
  %655 = icmp eq i64 %654, %598
  br i1 %655, label %656, label %599, !llvm.loop !236

656:                                              ; preds = %653, %585, %581
  %657 = icmp eq i32 %2, 0
  br i1 %657, label %658, label %977

658:                                              ; preds = %656
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %659 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %660 = load i8, ptr %659, align 8, !tbaa !105
  %661 = icmp eq i8 %660, 0
  %662 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %663 = load i32, ptr %56, align 8, !tbaa !226
  %664 = zext i32 %663 to i64
  %665 = shl nuw nsw i64 %664, 3
  %666 = tail call ptr %662(i64 noundef %665, ptr noundef nonnull @.str.48) #9
  store ptr %666, ptr %52, align 8, !tbaa !203
  %667 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %668 = load i32, ptr %57, align 8, !tbaa !227
  %669 = zext i32 %668 to i64
  %670 = shl nuw nsw i64 %669, 2
  %671 = tail call ptr %667(i64 noundef %670, ptr noundef nonnull @.str.48) #9
  store ptr %671, ptr %55, align 8, !tbaa !205
  %672 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %673 = load i32, ptr %58, align 8, !tbaa !224
  %674 = zext i32 %673 to i64
  %675 = shl nuw nsw i64 %674, 2
  %676 = select i1 %661, i64 1, i64 2
  %677 = shl nuw nsw i64 %675, %676
  %678 = tail call ptr %672(i64 noundef %677, ptr noundef nonnull @.str.49) #9
  store ptr %678, ptr %53, align 8, !tbaa !206
  %679 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %680 = load i32, ptr %59, align 4, !tbaa !232
  %681 = zext i32 %680 to i64
  %682 = shl nuw nsw i64 %681, 2
  %683 = shl nuw nsw i64 %682, %676
  %684 = tail call ptr %679(i64 noundef %683, ptr noundef nonnull @.str.50) #9
  store ptr %684, ptr %54, align 8, !tbaa !207
  %685 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %686 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 19
  %687 = load ptr, ptr %686, align 8, !tbaa !194
  %688 = load i32, ptr %9, align 4, !tbaa !74
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, ptr %687, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !133
  %692 = zext i32 %691 to i64
  %693 = mul nuw nsw i64 %692, 24
  %694 = tail call ptr %685(i64 noundef %693, ptr noundef nonnull @.str.51) #9
  store ptr %694, ptr %60, align 8, !tbaa !208
  %695 = load ptr, ptr %686, align 8, !tbaa !194
  %696 = load i32, ptr %9, align 4, !tbaa !74
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, ptr %695, i64 %697
  %699 = load i32, ptr %698, align 4, !tbaa !133
  store i32 %699, ptr %61, align 8, !tbaa !212
  %700 = load ptr, ptr %52, align 8, !tbaa !203
  %701 = icmp eq ptr %700, null
  br i1 %701, label %2114, label %702

702:                                              ; preds = %658
  %703 = load ptr, ptr %53, align 8, !tbaa !206
  %704 = icmp eq ptr %703, null
  br i1 %704, label %2114, label %705

705:                                              ; preds = %702
  %706 = load ptr, ptr %54, align 8, !tbaa !207
  %707 = icmp eq ptr %706, null
  br i1 %707, label %2114, label %708

708:                                              ; preds = %705
  %709 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %709, align 4, !tbaa !136
  %710 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %710, align 8, !tbaa !138
  %711 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %711, align 8, !tbaa !139
  %712 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 12
  %713 = load ptr, ptr %712, align 8, !tbaa !140
  store ptr %713, ptr %7, align 8, !tbaa !141
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %714 = load ptr, ptr %711, align 8, !tbaa !139
  %715 = call ptr %714(ptr noundef nonnull %7) #9
  %716 = icmp eq ptr %715, null
  br i1 %716, label %823, label %717

717:                                              ; preds = %708
  %718 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %719 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %720 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %721 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %722 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %723 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %724 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %725 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %726

726:                                              ; preds = %717, %818
  %727 = phi ptr [ %715, %717 ], [ %821, %818 ]
  %728 = phi i32 [ 0, %717 ], [ %819, %818 ]
  %729 = load ptr, ptr %79, align 8, !tbaa !75
  %730 = getelementptr inbounds %struct.BMFace, ptr %727, i64 0, i32 2
  %731 = load ptr, ptr %730, align 8, !tbaa !196
  %732 = call ptr @BM_uv_element_get(ptr noundef %729, ptr noundef nonnull %727, ptr noundef %731) #9
  %733 = icmp eq ptr %732, null
  br i1 %733, label %818, label %734

734:                                              ; preds = %726
  %735 = getelementptr inbounds %struct.BMFace, ptr %727, i64 0, i32 3
  %736 = load i32, ptr %735, align 8, !tbaa !186
  %737 = add nsw i32 %736, -2
  %738 = getelementptr inbounds %struct.BMHeader, ptr %727, i64 0, i32 1
  %739 = load i32, ptr %738, align 8, !tbaa !166
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %740
  %742 = load i32, ptr %741, align 4, !tbaa !214
  %743 = icmp eq i32 %742, -1
  br i1 %743, label %772, label %744

744:                                              ; preds = %734
  %745 = load ptr, ptr %55, align 8, !tbaa !205
  %746 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %740, i32 1
  %747 = load i32, ptr %746, align 4, !tbaa !228
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32, ptr %745, i64 %748
  store i32 %736, ptr %749, align 4, !tbaa !133
  store i8 11, ptr %718, align 4, !tbaa !136
  store ptr @bmiter__loop_of_face_begin, ptr %719, align 8, !tbaa !138
  store ptr @bmiter__loop_of_face_step, ptr %720, align 8, !tbaa !139
  store ptr %727, ptr %8, align 8, !tbaa !141
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %750 = load ptr, ptr %720, align 8, !tbaa !139
  %751 = call ptr %750(ptr noundef nonnull %8) #9
  %752 = icmp eq ptr %751, null
  br i1 %752, label %772, label %753

753:                                              ; preds = %744
  %754 = sext i32 %742 to i64
  br label %755

755:                                              ; preds = %753, %755
  %756 = phi i64 [ 0, %753 ], [ %770, %755 ]
  %757 = phi ptr [ %751, %753 ], [ %769, %755 ]
  %758 = load ptr, ptr %757, align 8, !tbaa !174
  %759 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %721, ptr noundef %758, i32 noundef 16) #9
  %760 = load ptr, ptr %52, align 8, !tbaa !203
  %761 = getelementptr inbounds float, ptr %760, i64 %754
  %762 = shl nuw nsw i64 %756, 1
  %763 = getelementptr inbounds float, ptr %761, i64 %762
  %764 = load float, ptr %759, align 4, !tbaa !115
  store float %764, ptr %763, align 4, !tbaa !115
  %765 = getelementptr inbounds float, ptr %759, i64 1
  %766 = load float, ptr %765, align 4, !tbaa !115
  %767 = getelementptr inbounds float, ptr %763, i64 1
  store float %766, ptr %767, align 4, !tbaa !115
  %768 = load ptr, ptr %720, align 8, !tbaa !139
  %769 = call ptr %768(ptr noundef nonnull %8) #9
  %770 = add nuw i64 %756, 1
  %771 = icmp eq ptr %769, null
  br i1 %771, label %772, label %755, !llvm.loop !237

772:                                              ; preds = %755, %744, %734
  %773 = getelementptr inbounds %struct.UvElement, ptr %732, i64 0, i32 5
  %774 = load i16, ptr %773, align 4, !tbaa !197
  %775 = zext i16 %774 to i32
  %776 = load i32, ptr %9, align 4, !tbaa !74
  %777 = icmp eq i32 %776, %775
  br i1 %777, label %778, label %818

778:                                              ; preds = %772
  %779 = load ptr, ptr %730, align 8, !tbaa !196
  %780 = load ptr, ptr %779, align 8, !tbaa !174
  %781 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %722, ptr noundef %780, i32 noundef 16) #9
  store i8 11, ptr %723, align 4, !tbaa !136
  store ptr @bmiter__loop_of_face_begin, ptr %724, align 8, !tbaa !138
  store ptr @bmiter__loop_of_face_step, ptr %725, align 8, !tbaa !139
  store ptr %727, ptr %8, align 8, !tbaa !141
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %782 = load ptr, ptr %725, align 8, !tbaa !139
  %783 = call ptr %782(ptr noundef nonnull %8) #9
  %784 = icmp ne ptr %783, null
  %785 = icmp sgt i32 %736, 2
  %786 = select i1 %784, i1 %785, i1 false
  br i1 %786, label %787, label %818

787:                                              ; preds = %778, %787
  %788 = phi i32 [ %814, %787 ], [ 0, %778 ]
  %789 = phi ptr [ %813, %787 ], [ %783, %778 ]
  %790 = phi i32 [ %811, %787 ], [ %728, %778 ]
  %791 = getelementptr inbounds %struct.BMLoop, ptr %789, i64 0, i32 6
  %792 = load ptr, ptr %791, align 8, !tbaa !144
  %793 = getelementptr inbounds %struct.BMLoop, ptr %792, i64 0, i32 6
  %794 = load ptr, ptr %793, align 8, !tbaa !144
  %795 = load ptr, ptr %794, align 8, !tbaa !174
  %796 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %722, ptr noundef %795, i32 noundef 16) #9
  %797 = load ptr, ptr %792, align 8, !tbaa !174
  %798 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %722, ptr noundef %797, i32 noundef 16) #9
  %799 = load ptr, ptr %60, align 8, !tbaa !208
  %800 = zext i32 %790 to i64
  %801 = getelementptr inbounds float, ptr %799, i64 %800
  %802 = load i64, ptr %781, align 4
  store i64 %802, ptr %801, align 4
  %803 = load ptr, ptr %60, align 8, !tbaa !208
  %804 = getelementptr inbounds float, ptr %803, i64 %800
  %805 = getelementptr inbounds float, ptr %804, i64 2
  %806 = load i64, ptr %798, align 4
  store i64 %806, ptr %805, align 4
  %807 = load ptr, ptr %60, align 8, !tbaa !208
  %808 = getelementptr inbounds float, ptr %807, i64 %800
  %809 = getelementptr inbounds float, ptr %808, i64 4
  %810 = load i64, ptr %796, align 4
  store i64 %810, ptr %809, align 4
  %811 = add i32 %790, 6
  %812 = load ptr, ptr %725, align 8, !tbaa !139
  %813 = call ptr %812(ptr noundef nonnull %8) #9
  %814 = add nuw nsw i32 %788, 1
  %815 = icmp ne ptr %813, null
  %816 = icmp slt i32 %814, %737
  %817 = select i1 %815, i1 %816, i1 false
  br i1 %817, label %787, label %818, !llvm.loop !238

818:                                              ; preds = %787, %778, %772, %726
  %819 = phi i32 [ %728, %726 ], [ %728, %772 ], [ %728, %778 ], [ %811, %787 ]
  %820 = load ptr, ptr %711, align 8, !tbaa !139
  %821 = call ptr %820(ptr noundef nonnull %7) #9
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %726, !llvm.loop !239

823:                                              ; preds = %818, %708
  %824 = load i8, ptr %659, align 8, !tbaa !105
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %835, label %826

826:                                              ; preds = %823
  %827 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %828 = load i32, ptr %827, align 8, !tbaa !154
  %829 = icmp sgt i32 %828, 0
  br i1 %829, label %830, label %976

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %832 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %833 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %834 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  br label %893

835:                                              ; preds = %823
  %836 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %837 = load i32, ptr %836, align 4, !tbaa !127
  %838 = icmp sgt i32 %837, 0
  br i1 %838, label %839, label %976

839:                                              ; preds = %835
  %840 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %841 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %842 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  br label %843

843:                                              ; preds = %839, %886
  %844 = phi i64 [ 0, %839 ], [ %889, %886 ]
  %845 = phi i32 [ 0, %839 ], [ %888, %886 ]
  %846 = phi i32 [ 0, %839 ], [ %887, %886 ]
  %847 = load ptr, ptr %840, align 8, !tbaa !125
  %848 = getelementptr inbounds ptr, ptr %847, i64 %844
  %849 = load ptr, ptr %848, align 8, !tbaa !101
  %850 = getelementptr inbounds %struct.UvElement, ptr %849, i64 0, i32 4
  %851 = load i8, ptr %850, align 1, !tbaa !183
  %852 = zext i8 %851 to i32
  %853 = and i32 %852, 2
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %869, label %855

855:                                              ; preds = %843
  %856 = getelementptr inbounds %struct.UvElement, ptr %849, i64 0, i32 1
  %857 = load ptr, ptr %856, align 8, !tbaa !164
  %858 = load ptr, ptr %857, align 8, !tbaa !174
  %859 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %841, ptr noundef %858, i32 noundef 16) #9
  %860 = load ptr, ptr %53, align 8, !tbaa !206
  %861 = shl nsw i32 %845, 1
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds float, ptr %860, i64 %862
  %864 = load float, ptr %859, align 4, !tbaa !115
  store float %864, ptr %863, align 4, !tbaa !115
  %865 = getelementptr inbounds float, ptr %859, i64 1
  %866 = load float, ptr %865, align 4, !tbaa !115
  %867 = getelementptr inbounds float, ptr %863, i64 1
  store float %866, ptr %867, align 4, !tbaa !115
  %868 = add nsw i32 %845, 1
  br label %886

869:                                              ; preds = %843
  %870 = and i32 %852, 1
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %886, label %872

872:                                              ; preds = %869
  %873 = getelementptr inbounds %struct.UvElement, ptr %849, i64 0, i32 1
  %874 = load ptr, ptr %873, align 8, !tbaa !164
  %875 = load ptr, ptr %874, align 8, !tbaa !174
  %876 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %842, ptr noundef %875, i32 noundef 16) #9
  %877 = load ptr, ptr %54, align 8, !tbaa !207
  %878 = shl nsw i32 %846, 1
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds float, ptr %877, i64 %879
  %881 = load float, ptr %876, align 4, !tbaa !115
  store float %881, ptr %880, align 4, !tbaa !115
  %882 = getelementptr inbounds float, ptr %876, i64 1
  %883 = load float, ptr %882, align 4, !tbaa !115
  %884 = getelementptr inbounds float, ptr %880, i64 1
  store float %883, ptr %884, align 4, !tbaa !115
  %885 = add nsw i32 %846, 1
  br label %886

886:                                              ; preds = %869, %872, %855
  %887 = phi i32 [ %846, %855 ], [ %885, %872 ], [ %846, %869 ]
  %888 = phi i32 [ %868, %855 ], [ %845, %872 ], [ %845, %869 ]
  %889 = add nuw nsw i64 %844, 1
  %890 = load i32, ptr %836, align 4, !tbaa !127
  %891 = sext i32 %890 to i64
  %892 = icmp slt i64 %889, %891
  br i1 %892, label %843, label %976, !llvm.loop !240

893:                                              ; preds = %830, %969
  %894 = phi i64 [ 0, %830 ], [ %972, %969 ]
  %895 = phi i32 [ 0, %830 ], [ %971, %969 ]
  %896 = phi i32 [ 0, %830 ], [ %970, %969 ]
  %897 = load ptr, ptr %831, align 8, !tbaa !153
  %898 = getelementptr inbounds %struct.UvEdge, ptr %897, i64 %894
  %899 = load ptr, ptr %832, align 8, !tbaa !125
  %900 = load i32, ptr %898, align 8, !tbaa !149
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds ptr, ptr %899, i64 %901
  %903 = load ptr, ptr %902, align 8, !tbaa !101
  %904 = getelementptr inbounds %struct.UvEdge, ptr %897, i64 %894, i32 1
  %905 = load i32, ptr %904, align 4, !tbaa !150
  %906 = zext i32 %905 to i64
  %907 = getelementptr inbounds ptr, ptr %899, i64 %906
  %908 = load ptr, ptr %907, align 8, !tbaa !101
  %909 = getelementptr inbounds %struct.UvEdge, ptr %897, i64 %894, i32 2
  %910 = load i8, ptr %909, align 8, !tbaa !146
  %911 = zext i8 %910 to i32
  %912 = and i32 %911, 2
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %940, label %914

914:                                              ; preds = %893
  %915 = getelementptr inbounds %struct.UvElement, ptr %903, i64 0, i32 1
  %916 = load ptr, ptr %915, align 8, !tbaa !164
  %917 = load ptr, ptr %916, align 8, !tbaa !174
  %918 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %833, ptr noundef %917, i32 noundef 16) #9
  %919 = load ptr, ptr %53, align 8, !tbaa !206
  %920 = shl nsw i32 %895, 2
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds float, ptr %919, i64 %921
  %923 = load float, ptr %918, align 4, !tbaa !115
  store float %923, ptr %922, align 4, !tbaa !115
  %924 = getelementptr inbounds float, ptr %918, i64 1
  %925 = load float, ptr %924, align 4, !tbaa !115
  %926 = getelementptr inbounds float, ptr %922, i64 1
  store float %925, ptr %926, align 4, !tbaa !115
  %927 = getelementptr inbounds %struct.UvElement, ptr %908, i64 0, i32 1
  %928 = load ptr, ptr %927, align 8, !tbaa !164
  %929 = load ptr, ptr %928, align 8, !tbaa !174
  %930 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %833, ptr noundef %929, i32 noundef 16) #9
  %931 = load ptr, ptr %53, align 8, !tbaa !206
  %932 = or disjoint i32 %920, 2
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds float, ptr %931, i64 %933
  %935 = load float, ptr %930, align 4, !tbaa !115
  store float %935, ptr %934, align 4, !tbaa !115
  %936 = getelementptr inbounds float, ptr %930, i64 1
  %937 = load float, ptr %936, align 4, !tbaa !115
  %938 = getelementptr inbounds float, ptr %934, i64 1
  store float %937, ptr %938, align 4, !tbaa !115
  %939 = add nsw i32 %895, 1
  br label %969

940:                                              ; preds = %893
  %941 = and i32 %911, 1
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %969, label %943

943:                                              ; preds = %940
  %944 = getelementptr inbounds %struct.UvElement, ptr %903, i64 0, i32 1
  %945 = load ptr, ptr %944, align 8, !tbaa !164
  %946 = load ptr, ptr %945, align 8, !tbaa !174
  %947 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %834, ptr noundef %946, i32 noundef 16) #9
  %948 = load ptr, ptr %54, align 8, !tbaa !207
  %949 = shl nsw i32 %896, 2
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds float, ptr %948, i64 %950
  %952 = load float, ptr %947, align 4, !tbaa !115
  store float %952, ptr %951, align 4, !tbaa !115
  %953 = getelementptr inbounds float, ptr %947, i64 1
  %954 = load float, ptr %953, align 4, !tbaa !115
  %955 = getelementptr inbounds float, ptr %951, i64 1
  store float %954, ptr %955, align 4, !tbaa !115
  %956 = getelementptr inbounds %struct.UvElement, ptr %908, i64 0, i32 1
  %957 = load ptr, ptr %956, align 8, !tbaa !164
  %958 = load ptr, ptr %957, align 8, !tbaa !174
  %959 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %834, ptr noundef %958, i32 noundef 16) #9
  %960 = load ptr, ptr %54, align 8, !tbaa !207
  %961 = or disjoint i32 %949, 2
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds float, ptr %960, i64 %962
  %964 = load float, ptr %959, align 4, !tbaa !115
  store float %964, ptr %963, align 4, !tbaa !115
  %965 = getelementptr inbounds float, ptr %959, i64 1
  %966 = load float, ptr %965, align 4, !tbaa !115
  %967 = getelementptr inbounds float, ptr %963, i64 1
  store float %966, ptr %967, align 4, !tbaa !115
  %968 = add nsw i32 %896, 1
  br label %969

969:                                              ; preds = %940, %943, %914
  %970 = phi i32 [ %896, %914 ], [ %968, %943 ], [ %896, %940 ]
  %971 = phi i32 [ %939, %914 ], [ %895, %943 ], [ %895, %940 ]
  %972 = add nuw nsw i64 %894, 1
  %973 = load i32, ptr %827, align 8, !tbaa !154
  %974 = sext i32 %973 to i64
  %975 = icmp slt i64 %972, %974
  br i1 %975, label %893, label %976, !llvm.loop !241

976:                                              ; preds = %969, %886, %826, %835
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %977

977:                                              ; preds = %976, %656
  %978 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %979 = load i8, ptr %978, align 8, !tbaa !105
  %980 = icmp eq i8 %979, 0
  %981 = load ptr, ptr @MEM_callocN, align 8, !tbaa !101
  br i1 %980, label %982, label %994

982:                                              ; preds = %977
  %983 = load i32, ptr %206, align 8, !tbaa !176
  %984 = sext i32 %983 to i64
  %985 = mul nsw i64 %984, 12
  %986 = call ptr %981(i64 noundef %985, ptr noundef nonnull @.str.52) #9
  %987 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !101
  %988 = load ptr, ptr %79, align 8, !tbaa !75
  %989 = getelementptr inbounds %struct.UvElementMap, ptr %988, i64 0, i32 2
  %990 = load i32, ptr %989, align 8, !tbaa !117
  %991 = sext i32 %990 to i64
  %992 = shl nsw i64 %991, 2
  %993 = call ptr %987(i64 noundef %992, ptr noundef nonnull @.str.53) #9
  br label %1000

994:                                              ; preds = %977
  %995 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %996 = load i32, ptr %995, align 4, !tbaa !127
  %997 = sext i32 %996 to i64
  %998 = mul nsw i64 %997, 12
  %999 = call ptr %981(i64 noundef %998, ptr noundef nonnull @.str.52) #9
  br label %1000

1000:                                             ; preds = %994, %982
  %1001 = phi ptr [ %993, %982 ], [ null, %994 ]
  %1002 = phi ptr [ %986, %982 ], [ %999, %994 ]
  %1003 = load i32, ptr %206, align 8, !tbaa !176
  %1004 = icmp sgt i32 %1003, 0
  br i1 %1004, label %1005, label %1346

1005:                                             ; preds = %1000
  %1006 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1007 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %1008 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %1009 = icmp ne i8 %15, 0
  %1010 = icmp eq i8 %15, 0
  %1011 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1012 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %1013 = icmp ne i8 %15, 0
  %1014 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %1015 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  %1016 = icmp eq i8 %15, 0
  %1017 = icmp eq i8 %15, 0
  br label %1018

1018:                                             ; preds = %1005, %1341
  %1019 = phi i64 [ 0, %1005 ], [ %1342, %1341 ]
  %1020 = load i8, ptr %978, align 8, !tbaa !105
  %1021 = icmp eq i8 %1020, 0
  br i1 %1021, label %1022, label %1162

1022:                                             ; preds = %1018
  %1023 = load ptr, ptr %1011, align 8, !tbaa !177
  %1024 = getelementptr inbounds ptr, ptr %1023, i64 %1019
  %1025 = load ptr, ptr %1024, align 8, !tbaa !101
  %1026 = getelementptr inbounds %struct.UvElement, ptr %1025, i64 0, i32 4
  %1027 = load i8, ptr %1026, align 1, !tbaa !183
  %1028 = and i8 %1027, 2
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1151, label %1030

1030:                                             ; preds = %1022
  %1031 = getelementptr inbounds %struct.UvElement, ptr %1025, i64 0, i32 1
  %1032 = load ptr, ptr %1031, align 8, !tbaa !164
  %1033 = load ptr, ptr %1032, align 8, !tbaa !174
  %1034 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1012, ptr noundef %1033, i32 noundef 16) #9
  %1035 = load ptr, ptr %79, align 8, !tbaa !75
  %1036 = getelementptr inbounds %struct.UvElementMap, ptr %1035, i64 0, i32 1
  %1037 = load ptr, ptr %1036, align 8, !tbaa !118
  %1038 = ptrtoint ptr %1025 to i64
  %1039 = ptrtoint ptr %1037 to i64
  %1040 = sub i64 %1038, %1039
  %1041 = sdiv exact i64 %1040, 24
  %1042 = getelementptr inbounds i32, ptr %1001, i64 %1041
  %1043 = trunc i64 %1019 to i32
  store i32 %1043, ptr %1042, align 4, !tbaa !133
  %1044 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1019
  %1045 = load float, ptr %1034, align 4, !tbaa !115
  store float %1045, ptr %1044, align 4, !tbaa !115
  %1046 = getelementptr inbounds float, ptr %1034, i64 1
  %1047 = load float, ptr %1046, align 4, !tbaa !115
  %1048 = getelementptr inbounds float, ptr %1044, i64 1
  store float %1047, ptr %1048, align 4, !tbaa !115
  %1049 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1019, i32 1
  store i16 1, ptr %1049, align 4, !tbaa !242
  %1050 = load i8, ptr %582, align 4, !tbaa !79
  %1051 = icmp eq i8 %1050, 0
  br i1 %1051, label %1059, label %1052

1052:                                             ; preds = %1030
  %1053 = getelementptr inbounds %struct.UvElement, ptr %1025, i64 0, i32 5
  %1054 = load i16, ptr %1053, align 4, !tbaa !197
  %1055 = zext i16 %1054 to i32
  %1056 = load i32, ptr %9, align 4, !tbaa !74
  %1057 = icmp ne i32 %1056, %1055
  %1058 = select i1 %1057, i1 true, i1 %1013
  br i1 %1058, label %1059, label %1341

1059:                                             ; preds = %1052, %1030
  %1060 = load ptr, ptr %1035, align 8, !tbaa !132
  %1061 = getelementptr inbounds %struct.BMLoop, ptr %1032, i64 0, i32 1
  %1062 = load ptr, ptr %1061, align 8, !tbaa !165
  %1063 = getelementptr inbounds %struct.BMHeader, ptr %1062, i64 0, i32 1
  %1064 = load i32, ptr %1063, align 8, !tbaa !166
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds ptr, ptr %1060, i64 %1065
  %1067 = load ptr, ptr %1066, align 8, !tbaa !101
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1151, label %1069

1069:                                             ; preds = %1059
  %1070 = getelementptr inbounds %struct.UvElement, ptr %1025, i64 0, i32 5
  %1071 = getelementptr inbounds %struct.UvElement, ptr %1025, i64 0, i32 5
  br label %1072

1072:                                             ; preds = %1069, %1148
  %1073 = phi ptr [ %1067, %1069 ], [ %1149, %1148 ]
  %1074 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 3
  %1075 = load i8, ptr %1074, align 2, !tbaa !119
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1148, label %1077

1077:                                             ; preds = %1072
  %1078 = load i8, ptr %582, align 4, !tbaa !79
  %1079 = icmp eq i8 %1078, 0
  br i1 %1079, label %1085, label %1080

1080:                                             ; preds = %1077
  %1081 = load i16, ptr %1070, align 4, !tbaa !197
  %1082 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 5
  %1083 = load i16, ptr %1082, align 4, !tbaa !197
  %1084 = icmp eq i16 %1081, %1083
  br i1 %1084, label %1148, label %1085

1085:                                             ; preds = %1080, %1077
  %1086 = load i8, ptr %14, align 1, !tbaa !78
  %1087 = icmp eq i8 %1086, 0
  br i1 %1087, label %1088, label %1093

1088:                                             ; preds = %1085
  %1089 = load i16, ptr %1071, align 4, !tbaa !197
  %1090 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 5
  %1091 = load i16, ptr %1090, align 4, !tbaa !197
  %1092 = icmp eq i16 %1089, %1091
  br i1 %1092, label %1148, label %1093

1093:                                             ; preds = %1088, %1085
  %1094 = load ptr, ptr %11, align 8, !tbaa !103
  %1095 = load ptr, ptr %1094, align 8, !tbaa !99
  %1096 = icmp eq ptr %1073, %1025
  br i1 %1096, label %1148, label %1097

1097:                                             ; preds = %1093
  %1098 = load float, ptr %1014, align 8, !tbaa !71
  %1099 = load i8, ptr %1015, align 4, !tbaa !73
  %1100 = icmp eq i8 %1099, 0
  br i1 %1100, label %1123, label %1101

1101:                                             ; preds = %1097
  %1102 = load ptr, ptr %1031, align 8, !tbaa !164
  %1103 = getelementptr inbounds %struct.BMesh, ptr %1095, i64 0, i32 26
  %1104 = load ptr, ptr %1102, align 8, !tbaa !174
  %1105 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1103, ptr noundef %1104, i32 noundef 16) #9
  %1106 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 1
  %1107 = load ptr, ptr %1106, align 8, !tbaa !164
  %1108 = load ptr, ptr %1107, align 8, !tbaa !174
  %1109 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1103, ptr noundef %1108, i32 noundef 16) #9
  %1110 = load float, ptr %1105, align 4, !tbaa !115
  %1111 = load float, ptr %1109, align 4, !tbaa !115
  %1112 = fsub float %1110, %1111
  %1113 = call float @llvm.fabs.f32(float %1112)
  %1114 = fcmp olt float %1113, %1098
  br i1 %1114, label %1115, label %1148

1115:                                             ; preds = %1101
  %1116 = getelementptr inbounds [2 x float], ptr %1105, i64 0, i64 1
  %1117 = load float, ptr %1116, align 4, !tbaa !115
  %1118 = getelementptr inbounds [2 x float], ptr %1109, i64 0, i64 1
  %1119 = load float, ptr %1118, align 4, !tbaa !115
  %1120 = fsub float %1117, %1119
  %1121 = call float @llvm.fabs.f32(float %1120)
  %1122 = fcmp olt float %1121, %1098
  br i1 %1122, label %1123, label %1148

1123:                                             ; preds = %1097, %1115
  %1124 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 1
  %1125 = load ptr, ptr %1124, align 8, !tbaa !164
  %1126 = load ptr, ptr %1125, align 8, !tbaa !174
  %1127 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1012, ptr noundef %1126, i32 noundef 16) #9
  br i1 %1016, label %1138, label %1128

1128:                                             ; preds = %1123
  %1129 = load float, ptr %1127, align 4, !tbaa !115
  %1130 = load float, ptr %1044, align 4, !tbaa !115
  %1131 = fadd float %1129, %1130
  store float %1131, ptr %1044, align 4, !tbaa !115
  %1132 = getelementptr inbounds float, ptr %1127, i64 1
  %1133 = load float, ptr %1132, align 4, !tbaa !115
  %1134 = load float, ptr %1048, align 4, !tbaa !115
  %1135 = fadd float %1133, %1134
  store float %1135, ptr %1048, align 4, !tbaa !115
  %1136 = load i16, ptr %1049, align 4, !tbaa !242
  %1137 = add i16 %1136, 1
  store i16 %1137, ptr %1049, align 4, !tbaa !242
  br label %1148

1138:                                             ; preds = %1123
  %1139 = getelementptr inbounds %struct.UvElement, ptr %1073, i64 0, i32 5
  %1140 = load i16, ptr %1139, align 4, !tbaa !197
  %1141 = zext i16 %1140 to i32
  %1142 = load i32, ptr %9, align 4, !tbaa !74
  %1143 = icmp eq i32 %1142, %1141
  br i1 %1143, label %1144, label %1148

1144:                                             ; preds = %1138
  %1145 = load float, ptr %1127, align 4, !tbaa !115
  store float %1145, ptr %1044, align 4, !tbaa !115
  %1146 = getelementptr inbounds float, ptr %1127, i64 1
  %1147 = load float, ptr %1146, align 4, !tbaa !115
  store float %1147, ptr %1048, align 4, !tbaa !115
  br label %1148

1148:                                             ; preds = %1101, %1115, %1088, %1080, %1093, %1072, %1128, %1144, %1138
  %1149 = load ptr, ptr %1073, align 8, !tbaa !101
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1151, label %1072, !llvm.loop !244

1151:                                             ; preds = %1148, %1059, %1022
  br i1 %1017, label %1341, label %1152

1152:                                             ; preds = %1151
  %1153 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1019
  %1154 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1019, i32 1
  %1155 = load i16, ptr %1154, align 4, !tbaa !242
  %1156 = uitofp i16 %1155 to float
  %1157 = load float, ptr %1153, align 4, !tbaa !115
  %1158 = fdiv float %1157, %1156
  store float %1158, ptr %1153, align 4, !tbaa !115
  %1159 = getelementptr inbounds [2 x float], ptr %1153, i64 0, i64 1
  %1160 = load float, ptr %1159, align 4, !tbaa !115
  %1161 = fdiv float %1160, %1156
  store float %1161, ptr %1159, align 4, !tbaa !115
  br label %1341

1162:                                             ; preds = %1018
  %1163 = load ptr, ptr %1006, align 8, !tbaa !177
  %1164 = getelementptr inbounds ptr, ptr %1163, i64 %1019
  %1165 = load ptr, ptr %1164, align 8, !tbaa !101
  %1166 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 2
  %1167 = load i8, ptr %1166, align 8, !tbaa !146
  %1168 = and i8 %1167, 2
  %1169 = icmp eq i8 %1168, 0
  br i1 %1169, label %1341, label %1170

1170:                                             ; preds = %1162
  %1171 = load ptr, ptr %1007, align 8, !tbaa !125
  %1172 = load i32, ptr %1165, align 8, !tbaa !149
  %1173 = zext i32 %1172 to i64
  %1174 = getelementptr inbounds ptr, ptr %1171, i64 %1173
  %1175 = load ptr, ptr %1174, align 8, !tbaa !101
  %1176 = getelementptr inbounds %struct.UvElement, ptr %1175, i64 0, i32 1
  %1177 = load ptr, ptr %1176, align 8, !tbaa !164
  %1178 = load ptr, ptr %1177, align 8, !tbaa !174
  %1179 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1008, ptr noundef %1178, i32 noundef 16) #9
  %1180 = load ptr, ptr %1007, align 8, !tbaa !125
  %1181 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 1
  %1182 = load i32, ptr %1181, align 4, !tbaa !150
  %1183 = zext i32 %1182 to i64
  %1184 = getelementptr inbounds ptr, ptr %1180, i64 %1183
  %1185 = load ptr, ptr %1184, align 8, !tbaa !101
  %1186 = getelementptr inbounds %struct.UvElement, ptr %1185, i64 0, i32 1
  %1187 = load ptr, ptr %1186, align 8, !tbaa !164
  %1188 = load ptr, ptr %1187, align 8, !tbaa !174
  %1189 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1008, ptr noundef %1188, i32 noundef 16) #9
  %1190 = load i32, ptr %1165, align 8, !tbaa !149
  %1191 = zext i32 %1190 to i64
  %1192 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1191
  %1193 = load float, ptr %1179, align 4, !tbaa !115
  store float %1193, ptr %1192, align 4, !tbaa !115
  %1194 = getelementptr inbounds float, ptr %1179, i64 1
  %1195 = load float, ptr %1194, align 4, !tbaa !115
  %1196 = getelementptr inbounds float, ptr %1192, i64 1
  store float %1195, ptr %1196, align 4, !tbaa !115
  %1197 = load i32, ptr %1181, align 4, !tbaa !150
  %1198 = zext i32 %1197 to i64
  %1199 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1198
  %1200 = load float, ptr %1189, align 4, !tbaa !115
  store float %1200, ptr %1199, align 4, !tbaa !115
  %1201 = getelementptr inbounds float, ptr %1189, i64 1
  %1202 = load float, ptr %1201, align 4, !tbaa !115
  %1203 = getelementptr inbounds float, ptr %1199, i64 1
  store float %1202, ptr %1203, align 4, !tbaa !115
  %1204 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1191, i32 1
  store i16 1, ptr %1204, align 4, !tbaa !242
  %1205 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1198, i32 1
  store i16 1, ptr %1205, align 4, !tbaa !242
  %1206 = load ptr, ptr %1007, align 8, !tbaa !125
  %1207 = getelementptr inbounds ptr, ptr %1206, i64 %1191
  %1208 = load ptr, ptr %1207, align 8, !tbaa !101
  %1209 = getelementptr inbounds %struct.UvElement, ptr %1208, i64 0, i32 4
  %1210 = load i8, ptr %1209, align 1, !tbaa !183
  %1211 = or i8 %1210, 2
  store i8 %1211, ptr %1209, align 1, !tbaa !183
  %1212 = getelementptr inbounds ptr, ptr %1206, i64 %1198
  %1213 = load ptr, ptr %1212, align 8, !tbaa !101
  %1214 = getelementptr inbounds %struct.UvElement, ptr %1213, i64 0, i32 4
  %1215 = load i8, ptr %1214, align 1, !tbaa !183
  %1216 = or i8 %1215, 2
  store i8 %1216, ptr %1214, align 1, !tbaa !183
  %1217 = load i8, ptr %582, align 4, !tbaa !79
  %1218 = icmp eq i8 %1217, 0
  br i1 %1218, label %1228, label %1219

1219:                                             ; preds = %1170
  %1220 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 3
  %1221 = load ptr, ptr %1220, align 8, !tbaa !148
  %1222 = getelementptr inbounds %struct.UvElement, ptr %1221, i64 0, i32 5
  %1223 = load i16, ptr %1222, align 4, !tbaa !197
  %1224 = zext i16 %1223 to i32
  %1225 = load i32, ptr %9, align 4, !tbaa !74
  %1226 = icmp ne i32 %1225, %1224
  %1227 = select i1 %1226, i1 true, i1 %1009
  br i1 %1227, label %1228, label %1341

1228:                                             ; preds = %1219, %1170
  %1229 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 5
  %1230 = load ptr, ptr %1229, align 8, !tbaa !101
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1341, label %1232

1232:                                             ; preds = %1228
  %1233 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 3
  %1234 = getelementptr inbounds %struct.UvEdge, ptr %1165, i64 0, i32 3
  br label %1235

1235:                                             ; preds = %1232, %1337
  %1236 = phi ptr [ %1230, %1232 ], [ %1339, %1337 ]
  %1237 = load i8, ptr %582, align 4, !tbaa !79
  %1238 = icmp eq i8 %1237, 0
  br i1 %1238, label %1248, label %1239

1239:                                             ; preds = %1235
  %1240 = load ptr, ptr %1233, align 8, !tbaa !148
  %1241 = getelementptr inbounds %struct.UvElement, ptr %1240, i64 0, i32 5
  %1242 = load i16, ptr %1241, align 4, !tbaa !197
  %1243 = getelementptr inbounds %struct.UvEdge, ptr %1236, i64 0, i32 3
  %1244 = load ptr, ptr %1243, align 8, !tbaa !148
  %1245 = getelementptr inbounds %struct.UvElement, ptr %1244, i64 0, i32 5
  %1246 = load i16, ptr %1245, align 4, !tbaa !197
  %1247 = icmp eq i16 %1242, %1246
  br i1 %1247, label %1262, label %1248

1248:                                             ; preds = %1239, %1235
  %1249 = load i8, ptr %14, align 1, !tbaa !78
  %1250 = icmp eq i8 %1249, 0
  br i1 %1250, label %1251, label %1260

1251:                                             ; preds = %1248
  %1252 = load ptr, ptr %1234, align 8, !tbaa !148
  %1253 = getelementptr inbounds %struct.UvElement, ptr %1252, i64 0, i32 5
  %1254 = load i16, ptr %1253, align 4, !tbaa !197
  %1255 = getelementptr inbounds %struct.UvEdge, ptr %1236, i64 0, i32 3
  %1256 = load ptr, ptr %1255, align 8, !tbaa !148
  %1257 = getelementptr inbounds %struct.UvElement, ptr %1256, i64 0, i32 5
  %1258 = load i16, ptr %1257, align 4, !tbaa !197
  %1259 = icmp eq i16 %1254, %1258
  br i1 %1259, label %1262, label %1260

1260:                                             ; preds = %1251, %1248
  %1261 = call fastcc zeroext i8 @stitch_check_edges_stitchable(ptr noundef nonnull %1165, ptr noundef nonnull %1236, ptr noundef %0), !range !220
  br label %1262

1262:                                             ; preds = %1239, %1251, %1260
  %1263 = phi i8 [ %1261, %1260 ], [ 0, %1251 ], [ 0, %1239 ]
  %1264 = icmp eq i8 %1263, 0
  br i1 %1264, label %1337, label %1265

1265:                                             ; preds = %1262
  %1266 = load ptr, ptr %1007, align 8, !tbaa !125
  %1267 = load i32, ptr %1236, align 8, !tbaa !149
  %1268 = zext i32 %1267 to i64
  %1269 = getelementptr inbounds ptr, ptr %1266, i64 %1268
  %1270 = load ptr, ptr %1269, align 8, !tbaa !101
  %1271 = getelementptr inbounds %struct.UvElement, ptr %1270, i64 0, i32 1
  %1272 = load ptr, ptr %1271, align 8, !tbaa !164
  %1273 = load ptr, ptr %1272, align 8, !tbaa !174
  %1274 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1008, ptr noundef %1273, i32 noundef 16) #9
  %1275 = load ptr, ptr %1007, align 8, !tbaa !125
  %1276 = getelementptr inbounds %struct.UvEdge, ptr %1236, i64 0, i32 1
  %1277 = load i32, ptr %1276, align 4, !tbaa !150
  %1278 = zext i32 %1277 to i64
  %1279 = getelementptr inbounds ptr, ptr %1275, i64 %1278
  %1280 = load ptr, ptr %1279, align 8, !tbaa !101
  %1281 = getelementptr inbounds %struct.UvElement, ptr %1280, i64 0, i32 1
  %1282 = load ptr, ptr %1281, align 8, !tbaa !164
  %1283 = load ptr, ptr %1282, align 8, !tbaa !174
  %1284 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1008, ptr noundef %1283, i32 noundef 16) #9
  br i1 %1010, label %1314, label %1285

1285:                                             ; preds = %1265
  %1286 = load i32, ptr %1165, align 8, !tbaa !149
  %1287 = zext i32 %1286 to i64
  %1288 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1287
  %1289 = load float, ptr %1274, align 4, !tbaa !115
  %1290 = load float, ptr %1288, align 4, !tbaa !115
  %1291 = fadd float %1289, %1290
  store float %1291, ptr %1288, align 4, !tbaa !115
  %1292 = getelementptr inbounds float, ptr %1274, i64 1
  %1293 = load float, ptr %1292, align 4, !tbaa !115
  %1294 = getelementptr inbounds float, ptr %1288, i64 1
  %1295 = load float, ptr %1294, align 4, !tbaa !115
  %1296 = fadd float %1293, %1295
  store float %1296, ptr %1294, align 4, !tbaa !115
  %1297 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1287, i32 1
  %1298 = load i16, ptr %1297, align 4, !tbaa !242
  %1299 = add i16 %1298, 1
  store i16 %1299, ptr %1297, align 4, !tbaa !242
  %1300 = load i32, ptr %1181, align 4, !tbaa !150
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1301
  %1303 = load float, ptr %1284, align 4, !tbaa !115
  %1304 = load float, ptr %1302, align 4, !tbaa !115
  %1305 = fadd float %1303, %1304
  store float %1305, ptr %1302, align 4, !tbaa !115
  %1306 = getelementptr inbounds float, ptr %1284, i64 1
  %1307 = load float, ptr %1306, align 4, !tbaa !115
  %1308 = getelementptr inbounds float, ptr %1302, i64 1
  %1309 = load float, ptr %1308, align 4, !tbaa !115
  %1310 = fadd float %1307, %1309
  store float %1310, ptr %1308, align 4, !tbaa !115
  %1311 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1301, i32 1
  %1312 = load i16, ptr %1311, align 4, !tbaa !242
  %1313 = add i16 %1312, 1
  store i16 %1313, ptr %1311, align 4, !tbaa !242
  br label %1337

1314:                                             ; preds = %1265
  %1315 = getelementptr inbounds %struct.UvEdge, ptr %1236, i64 0, i32 3
  %1316 = load ptr, ptr %1315, align 8, !tbaa !148
  %1317 = getelementptr inbounds %struct.UvElement, ptr %1316, i64 0, i32 5
  %1318 = load i16, ptr %1317, align 4, !tbaa !197
  %1319 = zext i16 %1318 to i32
  %1320 = load i32, ptr %9, align 4, !tbaa !74
  %1321 = icmp eq i32 %1320, %1319
  br i1 %1321, label %1322, label %1337

1322:                                             ; preds = %1314
  %1323 = load i32, ptr %1165, align 8, !tbaa !149
  %1324 = zext i32 %1323 to i64
  %1325 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1324
  %1326 = load float, ptr %1274, align 4, !tbaa !115
  store float %1326, ptr %1325, align 4, !tbaa !115
  %1327 = getelementptr inbounds float, ptr %1274, i64 1
  %1328 = load float, ptr %1327, align 4, !tbaa !115
  %1329 = getelementptr inbounds float, ptr %1325, i64 1
  store float %1328, ptr %1329, align 4, !tbaa !115
  %1330 = load i32, ptr %1181, align 4, !tbaa !150
  %1331 = zext i32 %1330 to i64
  %1332 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1331
  %1333 = load float, ptr %1284, align 4, !tbaa !115
  store float %1333, ptr %1332, align 4, !tbaa !115
  %1334 = getelementptr inbounds float, ptr %1284, i64 1
  %1335 = load float, ptr %1334, align 4, !tbaa !115
  %1336 = getelementptr inbounds float, ptr %1332, i64 1
  store float %1335, ptr %1336, align 4, !tbaa !115
  br label %1337

1337:                                             ; preds = %1262, %1314, %1322, %1285
  %1338 = getelementptr inbounds %struct.UvEdge, ptr %1236, i64 0, i32 4
  %1339 = load ptr, ptr %1338, align 8, !tbaa !101
  %1340 = icmp eq ptr %1339, null
  br i1 %1340, label %1341, label %1235, !llvm.loop !245

1341:                                             ; preds = %1337, %1228, %1162, %1219, %1152, %1151, %1052
  %1342 = add nuw nsw i64 %1019, 1
  %1343 = load i32, ptr %206, align 8, !tbaa !176
  %1344 = sext i32 %1343 to i64
  %1345 = icmp slt i64 %1342, %1344
  br i1 %1345, label %1018, label %1346, !llvm.loop !246

1346:                                             ; preds = %1341, %1000
  %1347 = load i8, ptr %978, align 8, !tbaa !105
  %1348 = icmp eq i8 %1347, 1
  %1349 = icmp ne i8 %15, 0
  %1350 = select i1 %1348, i1 %1349, i1 false
  br i1 %1350, label %1351, label %1370

1351:                                             ; preds = %1346
  %1352 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %1353 = load i32, ptr %1352, align 4, !tbaa !127
  %1354 = icmp sgt i32 %1353, 0
  br i1 %1354, label %1355, label %1370

1355:                                             ; preds = %1351
  %1356 = zext nneg i32 %1353 to i64
  br label %1357

1357:                                             ; preds = %1355, %1357
  %1358 = phi i64 [ 0, %1355 ], [ %1368, %1357 ]
  %1359 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1358
  %1360 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1358, i32 1
  %1361 = load i16, ptr %1360, align 4, !tbaa !242
  %1362 = uitofp i16 %1361 to float
  %1363 = load float, ptr %1359, align 4, !tbaa !115
  %1364 = fdiv float %1363, %1362
  store float %1364, ptr %1359, align 4, !tbaa !115
  %1365 = getelementptr inbounds [2 x float], ptr %1359, i64 0, i64 1
  %1366 = load float, ptr %1365, align 4, !tbaa !115
  %1367 = fdiv float %1366, %1362
  store float %1367, ptr %1365, align 4, !tbaa !115
  %1368 = add nuw nsw i64 %1358, 1
  %1369 = icmp eq i64 %1368, %1356
  br i1 %1369, label %1370, label %1357, !llvm.loop !247

1370:                                             ; preds = %1357, %1351, %1346
  %1371 = load i8, ptr %582, align 4, !tbaa !79
  %1372 = icmp eq i8 %1371, 0
  br i1 %1372, label %1843, label %1373

1373:                                             ; preds = %1370
  %1374 = icmp eq i8 %1347, 0
  br i1 %1374, label %1382, label %1375

1375:                                             ; preds = %1373
  %1376 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %1377 = load i32, ptr %1376, align 4, !tbaa !127
  %1378 = icmp sgt i32 %1377, 0
  br i1 %1378, label %1379, label %1732

1379:                                             ; preds = %1375
  %1380 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %1381 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  br label %1738

1382:                                             ; preds = %1373
  %1383 = load i32, ptr %206, align 8, !tbaa !176
  %1384 = icmp sgt i32 %1383, 0
  br i1 %1384, label %1385, label %1388

1385:                                             ; preds = %1382
  %1386 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1387 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  br label %1395

1388:                                             ; preds = %1438, %1382
  %1389 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %1390 = load i32, ptr %1389, align 8, !tbaa !154
  %1391 = icmp sgt i32 %1390, 0
  br i1 %1391, label %1392, label %1486

1392:                                             ; preds = %1388
  %1393 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %1394 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %1443

1395:                                             ; preds = %1385, %1438
  %1396 = phi i64 [ 0, %1385 ], [ %1439, %1438 ]
  %1397 = load ptr, ptr %1386, align 8, !tbaa !177
  %1398 = getelementptr inbounds ptr, ptr %1397, i64 %1396
  %1399 = load ptr, ptr %1398, align 8, !tbaa !101
  %1400 = getelementptr inbounds %struct.UvElement, ptr %1399, i64 0, i32 4
  %1401 = load i8, ptr %1400, align 1, !tbaa !183
  %1402 = and i8 %1401, 2
  %1403 = icmp eq i8 %1402, 0
  br i1 %1403, label %1438, label %1404

1404:                                             ; preds = %1395
  %1405 = getelementptr inbounds %struct.UvElement, ptr %1399, i64 0, i32 1
  %1406 = load ptr, ptr %1405, align 8, !tbaa !164
  %1407 = load ptr, ptr %1406, align 8, !tbaa !174
  %1408 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1387, ptr noundef %1407, i32 noundef 16) #9
  %1409 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1396
  %1410 = load float, ptr %1409, align 4, !tbaa !115
  %1411 = load float, ptr %1408, align 4, !tbaa !115
  %1412 = fsub float %1410, %1411
  %1413 = getelementptr inbounds %struct.UvElement, ptr %1399, i64 0, i32 5
  %1414 = load i16, ptr %1413, align 4, !tbaa !197
  %1415 = zext i16 %1414 to i64
  %1416 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1415, i32 2
  %1417 = load float, ptr %1416, align 4, !tbaa !115
  %1418 = fadd float %1412, %1417
  store float %1418, ptr %1416, align 4, !tbaa !115
  %1419 = getelementptr inbounds [2 x float], ptr %1409, i64 0, i64 1
  %1420 = load float, ptr %1419, align 4, !tbaa !115
  %1421 = getelementptr inbounds [2 x float], ptr %1408, i64 0, i64 1
  %1422 = load float, ptr %1421, align 4, !tbaa !115
  %1423 = fsub float %1420, %1422
  %1424 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1415, i32 2, i64 1
  %1425 = load float, ptr %1424, align 4, !tbaa !115
  %1426 = fadd float %1425, %1423
  store float %1426, ptr %1424, align 4, !tbaa !115
  %1427 = load float, ptr %1408, align 4, !tbaa !115
  %1428 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1415, i32 3
  %1429 = load float, ptr %1428, align 4, !tbaa !115
  %1430 = fadd float %1427, %1429
  store float %1430, ptr %1428, align 4, !tbaa !115
  %1431 = load float, ptr %1421, align 4, !tbaa !115
  %1432 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1415, i32 3, i64 1
  %1433 = load float, ptr %1432, align 4, !tbaa !115
  %1434 = fadd float %1431, %1433
  store float %1434, ptr %1432, align 4, !tbaa !115
  %1435 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1415, i32 4
  %1436 = load i32, ptr %1435, align 4, !tbaa !248
  %1437 = add nsw i32 %1436, 1
  store i32 %1437, ptr %1435, align 4, !tbaa !248
  br label %1438

1438:                                             ; preds = %1404, %1395
  %1439 = add nuw nsw i64 %1396, 1
  %1440 = load i32, ptr %206, align 8, !tbaa !176
  %1441 = sext i32 %1440 to i64
  %1442 = icmp slt i64 %1439, %1441
  br i1 %1442, label %1395, label %1388, !llvm.loop !249

1443:                                             ; preds = %1392, %1481
  %1444 = phi i64 [ 0, %1392 ], [ %1482, %1481 ]
  %1445 = load ptr, ptr %1393, align 8, !tbaa !153
  %1446 = getelementptr inbounds %struct.UvEdge, ptr %1445, i64 %1444
  %1447 = getelementptr inbounds %struct.UvEdge, ptr %1445, i64 %1444, i32 2
  %1448 = load i8, ptr %1447, align 8, !tbaa !146
  %1449 = and i8 %1448, 8
  %1450 = icmp eq i8 %1449, 0
  br i1 %1450, label %1481, label %1451

1451:                                             ; preds = %1443
  %1452 = load ptr, ptr %1394, align 8, !tbaa !125
  %1453 = load i32, ptr %1446, align 8, !tbaa !149
  %1454 = zext i32 %1453 to i64
  %1455 = getelementptr inbounds ptr, ptr %1452, i64 %1454
  %1456 = load ptr, ptr %1455, align 8, !tbaa !101
  %1457 = getelementptr inbounds %struct.UvElement, ptr %1456, i64 0, i32 4
  %1458 = load i8, ptr %1457, align 1, !tbaa !183
  %1459 = and i8 %1458, 2
  %1460 = icmp eq i8 %1459, 0
  br i1 %1460, label %1481, label %1461

1461:                                             ; preds = %1451
  %1462 = getelementptr inbounds %struct.UvEdge, ptr %1445, i64 %1444, i32 1
  %1463 = load i32, ptr %1462, align 4, !tbaa !150
  %1464 = zext i32 %1463 to i64
  %1465 = getelementptr inbounds ptr, ptr %1452, i64 %1464
  %1466 = load ptr, ptr %1465, align 8, !tbaa !101
  %1467 = getelementptr inbounds %struct.UvElement, ptr %1466, i64 0, i32 4
  %1468 = load i8, ptr %1467, align 1, !tbaa !183
  %1469 = and i8 %1468, 2
  %1470 = icmp eq i8 %1469, 0
  br i1 %1470, label %1481, label %1471

1471:                                             ; preds = %1461
  call fastcc void @stitch_island_calculate_edge_rotation(ptr noundef nonnull %1446, ptr noundef %0, ptr noundef %1002, ptr noundef %1001, ptr noundef %85)
  %1472 = load ptr, ptr %1394, align 8, !tbaa !125
  %1473 = load i32, ptr %1446, align 8, !tbaa !149
  %1474 = zext i32 %1473 to i64
  %1475 = getelementptr inbounds ptr, ptr %1472, i64 %1474
  %1476 = load ptr, ptr %1475, align 8, !tbaa !101
  %1477 = getelementptr inbounds %struct.UvElement, ptr %1476, i64 0, i32 5
  %1478 = load i16, ptr %1477, align 4, !tbaa !197
  %1479 = zext i16 %1478 to i64
  %1480 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1479, i32 9
  store i8 1, ptr %1480, align 2, !tbaa !250
  br label %1481

1481:                                             ; preds = %1471, %1461, %1451, %1443
  %1482 = add nuw nsw i64 %1444, 1
  %1483 = load i32, ptr %1389, align 8, !tbaa !154
  %1484 = sext i32 %1483 to i64
  %1485 = icmp slt i64 %1482, %1484
  br i1 %1485, label %1443, label %1486, !llvm.loop !251

1486:                                             ; preds = %1481, %1388
  %1487 = phi i32 [ %1390, %1388 ], [ %1483, %1481 ]
  br i1 %657, label %1534, label %1488

1488:                                             ; preds = %1486
  %1489 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 6
  %1490 = load i8, ptr %1489, align 8, !tbaa !104
  %1491 = icmp ne i8 %1490, 0
  %1492 = icmp sgt i32 %1487, 0
  %1493 = and i1 %1491, %1492
  br i1 %1493, label %1494, label %1534

1494:                                             ; preds = %1488
  %1495 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %1496 = load ptr, ptr %1495, align 8, !tbaa !153
  %1497 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %1498 = load ptr, ptr %1497, align 8, !tbaa !125
  %1499 = zext i32 %1487 to i64
  br label %1500

1500:                                             ; preds = %1494, %1531
  %1501 = phi i64 [ 0, %1494 ], [ %1532, %1531 ]
  %1502 = getelementptr inbounds %struct.UvEdge, ptr %1496, i64 %1501
  %1503 = load i32, ptr %1502, align 8, !tbaa !149
  %1504 = zext i32 %1503 to i64
  %1505 = getelementptr inbounds ptr, ptr %1498, i64 %1504
  %1506 = load ptr, ptr %1505, align 8, !tbaa !101
  %1507 = getelementptr inbounds %struct.UvElement, ptr %1506, i64 0, i32 4
  %1508 = load i8, ptr %1507, align 1, !tbaa !183
  %1509 = and i8 %1508, 2
  %1510 = icmp eq i8 %1509, 0
  br i1 %1510, label %1531, label %1511

1511:                                             ; preds = %1500
  %1512 = getelementptr inbounds %struct.UvEdge, ptr %1496, i64 %1501, i32 1
  %1513 = load i32, ptr %1512, align 4, !tbaa !150
  %1514 = zext i32 %1513 to i64
  %1515 = getelementptr inbounds ptr, ptr %1498, i64 %1514
  %1516 = load ptr, ptr %1515, align 8, !tbaa !101
  %1517 = getelementptr inbounds %struct.UvElement, ptr %1516, i64 0, i32 4
  %1518 = load i8, ptr %1517, align 1, !tbaa !183
  %1519 = and i8 %1518, 2
  %1520 = icmp eq i8 %1519, 0
  br i1 %1520, label %1531, label %1521

1521:                                             ; preds = %1511
  %1522 = getelementptr inbounds %struct.UvEdge, ptr %1496, i64 %1501, i32 3
  %1523 = load ptr, ptr %1522, align 8, !tbaa !148
  %1524 = getelementptr inbounds %struct.UvElement, ptr %1523, i64 0, i32 1
  %1525 = load ptr, ptr %1524, align 8, !tbaa !164
  %1526 = getelementptr inbounds %struct.BMLoop, ptr %1525, i64 0, i32 2
  %1527 = load ptr, ptr %1526, align 8, !tbaa !252
  %1528 = getelementptr inbounds %struct.BMHeader, ptr %1527, i64 0, i32 3
  %1529 = load i8, ptr %1528, align 1, !tbaa !142
  %1530 = and i8 %1529, -5
  store i8 %1530, ptr %1528, align 1, !tbaa !142
  br label %1531

1531:                                             ; preds = %1521, %1511, %1500
  %1532 = add nuw nsw i64 %1501, 1
  %1533 = icmp eq i64 %1532, %1499
  br i1 %1533, label %1534, label %1500, !llvm.loop !253

1534:                                             ; preds = %1531, %1488, %1486
  %1535 = load i32, ptr %206, align 8, !tbaa !176
  %1536 = icmp sgt i32 %1535, 0
  br i1 %1536, label %1537, label %1843

1537:                                             ; preds = %1534
  %1538 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1539 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %1540 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  %1541 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 10
  %1542 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 11
  br label %1543

1543:                                             ; preds = %1537, %1727
  %1544 = phi i64 [ 0, %1537 ], [ %1728, %1727 ]
  %1545 = load ptr, ptr %1538, align 8, !tbaa !177
  %1546 = getelementptr inbounds ptr, ptr %1545, i64 %1544
  %1547 = load ptr, ptr %1546, align 8, !tbaa !101
  %1548 = getelementptr inbounds %struct.UvElement, ptr %1547, i64 0, i32 5
  %1549 = load i16, ptr %1548, align 4, !tbaa !197
  %1550 = zext i16 %1549 to i64
  %1551 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1550, i32 9
  %1552 = load i8, ptr %1551, align 2, !tbaa !250
  %1553 = icmp eq i8 %1552, 0
  br i1 %1553, label %1554, label %1727

1554:                                             ; preds = %1543
  %1555 = getelementptr inbounds %struct.UvElement, ptr %1547, i64 0, i32 4
  %1556 = load i8, ptr %1555, align 1, !tbaa !183
  %1557 = and i8 %1556, 2
  %1558 = icmp eq i8 %1557, 0
  br i1 %1558, label %1727, label %1559

1559:                                             ; preds = %1554
  %1560 = zext i16 %1549 to i32
  %1561 = load i32, ptr %9, align 4, !tbaa !74
  %1562 = icmp eq i32 %1561, %1560
  br i1 %1562, label %1563, label %1566

1563:                                             ; preds = %1559
  %1564 = load i8, ptr %14, align 1, !tbaa !78
  %1565 = icmp eq i8 %1564, 0
  br i1 %1565, label %1727, label %1566

1566:                                             ; preds = %1563, %1559
  %1567 = getelementptr inbounds %struct.UvElement, ptr %1547, i64 0, i32 1
  %1568 = load ptr, ptr %1567, align 8, !tbaa !164
  %1569 = getelementptr inbounds %struct.BMLoop, ptr %1568, i64 0, i32 1
  %1570 = load ptr, ptr %1569, align 8, !tbaa !165
  %1571 = getelementptr inbounds %struct.BMHeader, ptr %1570, i64 0, i32 1
  %1572 = load i32, ptr %1571, align 8, !tbaa !166
  %1573 = load ptr, ptr %79, align 8, !tbaa !75
  %1574 = load ptr, ptr %1573, align 8, !tbaa !132
  %1575 = sext i32 %1572 to i64
  %1576 = getelementptr inbounds ptr, ptr %1574, i64 %1575
  %1577 = load ptr, ptr %1576, align 8, !tbaa !101
  %1578 = icmp eq ptr %1577, null
  br i1 %1578, label %1702, label %1579

1579:                                             ; preds = %1566
  %1580 = ptrtoint ptr %1547 to i64
  br label %1581

1581:                                             ; preds = %1579, %1695
  %1582 = phi ptr [ %1577, %1579 ], [ %1700, %1695 ]
  %1583 = phi i32 [ 0, %1579 ], [ %1699, %1695 ]
  %1584 = phi i32 [ 0, %1579 ], [ %1698, %1695 ]
  %1585 = phi float [ 0.000000e+00, %1579 ], [ %1697, %1695 ]
  %1586 = phi float [ 0.000000e+00, %1579 ], [ %1696, %1695 ]
  %1587 = getelementptr inbounds %struct.UvElement, ptr %1582, i64 0, i32 3
  %1588 = load i8, ptr %1587, align 2, !tbaa !119
  %1589 = icmp eq i8 %1588, 0
  br i1 %1589, label %1695, label %1590

1590:                                             ; preds = %1581
  %1591 = load i8, ptr %582, align 4, !tbaa !79
  %1592 = icmp eq i8 %1591, 0
  br i1 %1592, label %1598, label %1593

1593:                                             ; preds = %1590
  %1594 = load i16, ptr %1548, align 4, !tbaa !197
  %1595 = getelementptr inbounds %struct.UvElement, ptr %1582, i64 0, i32 5
  %1596 = load i16, ptr %1595, align 4, !tbaa !197
  %1597 = icmp eq i16 %1594, %1596
  br i1 %1597, label %1695, label %1598

1598:                                             ; preds = %1593, %1590
  %1599 = load i8, ptr %14, align 1, !tbaa !78
  %1600 = icmp eq i8 %1599, 0
  br i1 %1600, label %1601, label %1606

1601:                                             ; preds = %1598
  %1602 = load i16, ptr %1548, align 4, !tbaa !197
  %1603 = getelementptr inbounds %struct.UvElement, ptr %1582, i64 0, i32 5
  %1604 = load i16, ptr %1603, align 4, !tbaa !197
  %1605 = icmp eq i16 %1602, %1604
  br i1 %1605, label %1695, label %1606

1606:                                             ; preds = %1601, %1598
  %1607 = load ptr, ptr %11, align 8, !tbaa !103
  %1608 = load ptr, ptr %1607, align 8, !tbaa !99
  %1609 = icmp eq ptr %1582, %1547
  br i1 %1609, label %1695, label %1610

1610:                                             ; preds = %1606
  %1611 = load float, ptr %1539, align 8, !tbaa !71
  %1612 = load i8, ptr %1540, align 4, !tbaa !73
  %1613 = icmp eq i8 %1612, 0
  br i1 %1613, label %1636, label %1614

1614:                                             ; preds = %1610
  %1615 = load ptr, ptr %1567, align 8, !tbaa !164
  %1616 = getelementptr inbounds %struct.BMesh, ptr %1608, i64 0, i32 26
  %1617 = load ptr, ptr %1615, align 8, !tbaa !174
  %1618 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1616, ptr noundef %1617, i32 noundef 16) #9
  %1619 = getelementptr inbounds %struct.UvElement, ptr %1582, i64 0, i32 1
  %1620 = load ptr, ptr %1619, align 8, !tbaa !164
  %1621 = load ptr, ptr %1620, align 8, !tbaa !174
  %1622 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1616, ptr noundef %1621, i32 noundef 16) #9
  %1623 = load float, ptr %1618, align 4, !tbaa !115
  %1624 = load float, ptr %1622, align 4, !tbaa !115
  %1625 = fsub float %1623, %1624
  %1626 = call float @llvm.fabs.f32(float %1625)
  %1627 = fcmp olt float %1626, %1611
  br i1 %1627, label %1628, label %1695

1628:                                             ; preds = %1614
  %1629 = getelementptr inbounds [2 x float], ptr %1618, i64 0, i64 1
  %1630 = load float, ptr %1629, align 4, !tbaa !115
  %1631 = getelementptr inbounds [2 x float], ptr %1622, i64 0, i64 1
  %1632 = load float, ptr %1631, align 4, !tbaa !115
  %1633 = fsub float %1630, %1632
  %1634 = call float @llvm.fabs.f32(float %1633)
  %1635 = fcmp olt float %1634, %1611
  br i1 %1635, label %1636, label %1695

1636:                                             ; preds = %1610, %1628
  %1637 = load i8, ptr %14, align 1, !tbaa !78
  %1638 = icmp eq i8 %1637, 0
  br i1 %1638, label %1639, label %1645

1639:                                             ; preds = %1636
  %1640 = getelementptr inbounds %struct.UvElement, ptr %1582, i64 0, i32 5
  %1641 = load i16, ptr %1640, align 4, !tbaa !197
  %1642 = zext i16 %1641 to i32
  %1643 = load i32, ptr %9, align 4, !tbaa !74
  %1644 = icmp eq i32 %1643, %1642
  br i1 %1644, label %1645, label %1695

1645:                                             ; preds = %1639, %1636
  %1646 = load ptr, ptr %79, align 8, !tbaa !75
  %1647 = getelementptr inbounds %struct.UvElementMap, ptr %1646, i64 0, i32 1
  %1648 = load ptr, ptr %1647, align 8, !tbaa !118
  %1649 = ptrtoint ptr %1582 to i64
  %1650 = ptrtoint ptr %1648 to i64
  %1651 = sub i64 %1649, %1650
  %1652 = sdiv exact i64 %1651, 24
  %1653 = load ptr, ptr %1541, align 8, !tbaa !128
  %1654 = shl i64 %1652, 32
  %1655 = ashr exact i64 %1654, 32
  %1656 = getelementptr inbounds i32, ptr %1653, i64 %1655
  %1657 = load i32, ptr %1656, align 4, !tbaa !133
  %1658 = sub i64 %1580, %1650
  %1659 = sdiv exact i64 %1658, 24
  %1660 = shl i64 %1659, 32
  %1661 = ashr exact i64 %1660, 32
  %1662 = getelementptr inbounds i32, ptr %1653, i64 %1661
  %1663 = load i32, ptr %1662, align 4, !tbaa !133
  %1664 = load ptr, ptr %1542, align 8, !tbaa !126
  %1665 = shl nsw i32 %1663, 1
  %1666 = sext i32 %1665 to i64
  %1667 = getelementptr inbounds float, ptr %1664, i64 %1666
  %1668 = load float, ptr %1667, align 4, !tbaa !115
  %1669 = fneg float %1668
  %1670 = getelementptr inbounds float, ptr %1667, i64 1
  %1671 = load float, ptr %1670, align 4, !tbaa !115
  %1672 = fneg float %1671
  %1673 = shl nsw i32 %1657, 1
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds float, ptr %1664, i64 %1674
  %1676 = load float, ptr %1675, align 4, !tbaa !115
  %1677 = getelementptr inbounds float, ptr %1675, i64 1
  %1678 = load float, ptr %1677, align 4, !tbaa !115
  %1679 = fmul float %1678, %1672
  %1680 = call float @llvm.fmuladd.f32(float %1669, float %1676, float %1679)
  %1681 = fmul float %1671, %1676
  %1682 = call float @llvm.fmuladd.f32(float %1669, float %1678, float %1681)
  %1683 = fcmp ogt float %1682, 0.000000e+00
  %1684 = fcmp ogt float %1680, 1.000000e+00
  %1685 = select i1 %1684, float 1.000000e+00, float %1680
  %1686 = fcmp olt float %1685, -1.000000e+00
  %1687 = select i1 %1686, float -1.000000e+00, float %1685
  %1688 = call float @acosf(float noundef %1687) #9
  br i1 %1683, label %1689, label %1692

1689:                                             ; preds = %1645
  %1690 = fadd float %1586, %1688
  %1691 = add nsw i32 %1584, 1
  br label %1695

1692:                                             ; preds = %1645
  %1693 = fadd float %1585, %1688
  %1694 = add nsw i32 %1583, 1
  br label %1695

1695:                                             ; preds = %1614, %1628, %1601, %1593, %1606, %1692, %1689, %1639, %1581
  %1696 = phi float [ %1586, %1581 ], [ %1586, %1639 ], [ %1690, %1689 ], [ %1586, %1692 ], [ %1586, %1606 ], [ %1586, %1593 ], [ %1586, %1601 ], [ %1586, %1628 ], [ %1586, %1614 ]
  %1697 = phi float [ %1585, %1581 ], [ %1585, %1639 ], [ %1585, %1689 ], [ %1693, %1692 ], [ %1585, %1606 ], [ %1585, %1593 ], [ %1585, %1601 ], [ %1585, %1628 ], [ %1585, %1614 ]
  %1698 = phi i32 [ %1584, %1581 ], [ %1584, %1639 ], [ %1691, %1689 ], [ %1584, %1692 ], [ %1584, %1606 ], [ %1584, %1593 ], [ %1584, %1601 ], [ %1584, %1628 ], [ %1584, %1614 ]
  %1699 = phi i32 [ %1583, %1581 ], [ %1583, %1639 ], [ %1583, %1689 ], [ %1694, %1692 ], [ %1583, %1606 ], [ %1583, %1593 ], [ %1583, %1601 ], [ %1583, %1628 ], [ %1583, %1614 ]
  %1700 = load ptr, ptr %1582, align 8, !tbaa !101
  %1701 = icmp eq ptr %1700, null
  br i1 %1701, label %1702, label %1581, !llvm.loop !254

1702:                                             ; preds = %1695, %1566
  %1703 = phi float [ 0.000000e+00, %1566 ], [ %1696, %1695 ]
  %1704 = phi float [ 0.000000e+00, %1566 ], [ %1697, %1695 ]
  %1705 = phi i32 [ 0, %1566 ], [ %1698, %1695 ]
  %1706 = phi i32 [ 0, %1566 ], [ %1699, %1695 ]
  %1707 = load i8, ptr %14, align 1, !tbaa !78
  %1708 = icmp eq i8 %1707, 0
  %1709 = fmul float %1703, 5.000000e-01
  %1710 = fmul float %1704, 5.000000e-01
  %1711 = select i1 %1708, float %1703, float %1709
  %1712 = select i1 %1708, float %1704, float %1710
  %1713 = load i16, ptr %1548, align 4, !tbaa !197
  %1714 = zext i16 %1713 to i64
  %1715 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1714, i32 5
  %1716 = load i32, ptr %1715, align 4, !tbaa !255
  %1717 = add nsw i32 %1716, %1705
  store i32 %1717, ptr %1715, align 4, !tbaa !255
  %1718 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1714
  %1719 = load float, ptr %1718, align 4, !tbaa !256
  %1720 = fadd float %1711, %1719
  store float %1720, ptr %1718, align 4, !tbaa !256
  %1721 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1714, i32 6
  %1722 = load i32, ptr %1721, align 4, !tbaa !257
  %1723 = add nsw i32 %1722, %1706
  store i32 %1723, ptr %1721, align 4, !tbaa !257
  %1724 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1714, i32 1
  %1725 = load float, ptr %1724, align 4, !tbaa !258
  %1726 = fadd float %1712, %1725
  store float %1726, ptr %1724, align 4, !tbaa !258
  br label %1727

1727:                                             ; preds = %1702, %1563, %1554, %1543
  %1728 = add nuw nsw i64 %1544, 1
  %1729 = load i32, ptr %206, align 8, !tbaa !176
  %1730 = sext i32 %1729 to i64
  %1731 = icmp slt i64 %1728, %1730
  br i1 %1731, label %1543, label %1843, !llvm.loop !259

1732:                                             ; preds = %1781, %1375
  %1733 = load i32, ptr %206, align 8, !tbaa !176
  %1734 = icmp sgt i32 %1733, 0
  br i1 %1734, label %1735, label %1810

1735:                                             ; preds = %1732
  %1736 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1737 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %1786

1738:                                             ; preds = %1379, %1781
  %1739 = phi i64 [ 0, %1379 ], [ %1782, %1781 ]
  %1740 = load ptr, ptr %1380, align 8, !tbaa !125
  %1741 = getelementptr inbounds ptr, ptr %1740, i64 %1739
  %1742 = load ptr, ptr %1741, align 8, !tbaa !101
  %1743 = getelementptr inbounds %struct.UvElement, ptr %1742, i64 0, i32 4
  %1744 = load i8, ptr %1743, align 1, !tbaa !183
  %1745 = and i8 %1744, 2
  %1746 = icmp eq i8 %1745, 0
  br i1 %1746, label %1781, label %1747

1747:                                             ; preds = %1738
  %1748 = getelementptr inbounds %struct.UvElement, ptr %1742, i64 0, i32 1
  %1749 = load ptr, ptr %1748, align 8, !tbaa !164
  %1750 = load ptr, ptr %1749, align 8, !tbaa !174
  %1751 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1381, ptr noundef %1750, i32 noundef 16) #9
  %1752 = getelementptr inbounds %struct.UVVertAverage, ptr %1002, i64 %1739
  %1753 = load float, ptr %1752, align 4, !tbaa !115
  %1754 = load float, ptr %1751, align 4, !tbaa !115
  %1755 = fsub float %1753, %1754
  %1756 = getelementptr inbounds %struct.UvElement, ptr %1742, i64 0, i32 5
  %1757 = load i16, ptr %1756, align 4, !tbaa !197
  %1758 = zext i16 %1757 to i64
  %1759 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1758, i32 2
  %1760 = load float, ptr %1759, align 4, !tbaa !115
  %1761 = fadd float %1755, %1760
  store float %1761, ptr %1759, align 4, !tbaa !115
  %1762 = getelementptr inbounds [2 x float], ptr %1752, i64 0, i64 1
  %1763 = load float, ptr %1762, align 4, !tbaa !115
  %1764 = getelementptr inbounds [2 x float], ptr %1751, i64 0, i64 1
  %1765 = load float, ptr %1764, align 4, !tbaa !115
  %1766 = fsub float %1763, %1765
  %1767 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1758, i32 2, i64 1
  %1768 = load float, ptr %1767, align 4, !tbaa !115
  %1769 = fadd float %1768, %1766
  store float %1769, ptr %1767, align 4, !tbaa !115
  %1770 = load float, ptr %1751, align 4, !tbaa !115
  %1771 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1758, i32 3
  %1772 = load float, ptr %1771, align 4, !tbaa !115
  %1773 = fadd float %1770, %1772
  store float %1773, ptr %1771, align 4, !tbaa !115
  %1774 = load float, ptr %1764, align 4, !tbaa !115
  %1775 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1758, i32 3, i64 1
  %1776 = load float, ptr %1775, align 4, !tbaa !115
  %1777 = fadd float %1774, %1776
  store float %1777, ptr %1775, align 4, !tbaa !115
  %1778 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1758, i32 4
  %1779 = load i32, ptr %1778, align 4, !tbaa !248
  %1780 = add nsw i32 %1779, 1
  store i32 %1780, ptr %1778, align 4, !tbaa !248
  br label %1781

1781:                                             ; preds = %1747, %1738
  %1782 = add nuw nsw i64 %1739, 1
  %1783 = load i32, ptr %1376, align 4, !tbaa !127
  %1784 = sext i32 %1783 to i64
  %1785 = icmp slt i64 %1782, %1784
  br i1 %1785, label %1738, label %1732, !llvm.loop !260

1786:                                             ; preds = %1735, %1805
  %1787 = phi i64 [ 0, %1735 ], [ %1806, %1805 ]
  %1788 = load ptr, ptr %1736, align 8, !tbaa !177
  %1789 = getelementptr inbounds ptr, ptr %1788, i64 %1787
  %1790 = load ptr, ptr %1789, align 8, !tbaa !101
  %1791 = getelementptr inbounds %struct.UvEdge, ptr %1790, i64 0, i32 2
  %1792 = load i8, ptr %1791, align 8, !tbaa !146
  %1793 = and i8 %1792, 2
  %1794 = icmp eq i8 %1793, 0
  br i1 %1794, label %1805, label %1795

1795:                                             ; preds = %1786
  call fastcc void @stitch_island_calculate_edge_rotation(ptr noundef %1790, ptr noundef %0, ptr noundef %1002, ptr noundef null, ptr noundef %85)
  %1796 = load ptr, ptr %1737, align 8, !tbaa !125
  %1797 = load i32, ptr %1790, align 8, !tbaa !149
  %1798 = zext i32 %1797 to i64
  %1799 = getelementptr inbounds ptr, ptr %1796, i64 %1798
  %1800 = load ptr, ptr %1799, align 8, !tbaa !101
  %1801 = getelementptr inbounds %struct.UvElement, ptr %1800, i64 0, i32 5
  %1802 = load i16, ptr %1801, align 4, !tbaa !197
  %1803 = zext i16 %1802 to i64
  %1804 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1803, i32 9
  store i8 1, ptr %1804, align 2, !tbaa !250
  br label %1805

1805:                                             ; preds = %1795, %1786
  %1806 = add nuw nsw i64 %1787, 1
  %1807 = load i32, ptr %206, align 8, !tbaa !176
  %1808 = sext i32 %1807 to i64
  %1809 = icmp slt i64 %1806, %1808
  br i1 %1809, label %1786, label %1810, !llvm.loop !261

1810:                                             ; preds = %1805, %1732
  %1811 = phi i32 [ %1733, %1732 ], [ %1807, %1805 ]
  br i1 %657, label %1843, label %1812

1812:                                             ; preds = %1810
  %1813 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 6
  %1814 = load i8, ptr %1813, align 8, !tbaa !104
  %1815 = icmp ne i8 %1814, 0
  %1816 = icmp sgt i32 %1811, 0
  %1817 = and i1 %1815, %1816
  br i1 %1817, label %1818, label %1843

1818:                                             ; preds = %1812
  %1819 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1820 = load ptr, ptr %1819, align 8, !tbaa !177
  %1821 = zext i32 %1811 to i64
  br label %1822

1822:                                             ; preds = %1818, %1840
  %1823 = phi i64 [ 0, %1818 ], [ %1841, %1840 ]
  %1824 = getelementptr inbounds ptr, ptr %1820, i64 %1823
  %1825 = load ptr, ptr %1824, align 8, !tbaa !101
  %1826 = getelementptr inbounds %struct.UvEdge, ptr %1825, i64 0, i32 2
  %1827 = load i8, ptr %1826, align 8, !tbaa !146
  %1828 = and i8 %1827, 2
  %1829 = icmp eq i8 %1828, 0
  br i1 %1829, label %1840, label %1830

1830:                                             ; preds = %1822
  %1831 = getelementptr inbounds %struct.UvEdge, ptr %1825, i64 0, i32 3
  %1832 = load ptr, ptr %1831, align 8, !tbaa !148
  %1833 = getelementptr inbounds %struct.UvElement, ptr %1832, i64 0, i32 1
  %1834 = load ptr, ptr %1833, align 8, !tbaa !164
  %1835 = getelementptr inbounds %struct.BMLoop, ptr %1834, i64 0, i32 2
  %1836 = load ptr, ptr %1835, align 8, !tbaa !252
  %1837 = getelementptr inbounds %struct.BMHeader, ptr %1836, i64 0, i32 3
  %1838 = load i8, ptr %1837, align 1, !tbaa !142
  %1839 = and i8 %1838, -5
  store i8 %1839, ptr %1837, align 1, !tbaa !142
  br label %1840

1840:                                             ; preds = %1830, %1822
  %1841 = add nuw nsw i64 %1823, 1
  %1842 = icmp eq i64 %1841, %1821
  br i1 %1842, label %1843, label %1822, !llvm.loop !262

1843:                                             ; preds = %1840, %1727, %1534, %1812, %1810, %1370
  %1844 = load i32, ptr %206, align 8, !tbaa !176
  %1845 = icmp sgt i32 %1844, 0
  br i1 %1845, label %1846, label %1884

1846:                                             ; preds = %1843
  %1847 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1848 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %1849 = trunc i32 %2 to i8
  %1850 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1851 = trunc i32 %2 to i8
  br label %1852

1852:                                             ; preds = %1846, %1879
  %1853 = phi i64 [ 0, %1846 ], [ %1880, %1879 ]
  %1854 = load i8, ptr %978, align 8, !tbaa !105
  %1855 = icmp eq i8 %1854, 0
  br i1 %1855, label %1856, label %1861

1856:                                             ; preds = %1852
  %1857 = load ptr, ptr %1850, align 8, !tbaa !177
  %1858 = getelementptr inbounds ptr, ptr %1857, i64 %1853
  %1859 = load ptr, ptr %1858, align 8, !tbaa !101
  %1860 = trunc i64 %1853 to i32
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1859, i32 noundef %1860, ptr noundef %67, ptr noundef %1002, ptr noundef %0, i8 noundef zeroext %1851)
  br label %1879

1861:                                             ; preds = %1852
  %1862 = load ptr, ptr %1847, align 8, !tbaa !177
  %1863 = getelementptr inbounds ptr, ptr %1862, i64 %1853
  %1864 = load ptr, ptr %1863, align 8, !tbaa !101
  %1865 = load ptr, ptr %1848, align 8, !tbaa !125
  %1866 = load i32, ptr %1864, align 8, !tbaa !149
  %1867 = zext i32 %1866 to i64
  %1868 = getelementptr inbounds ptr, ptr %1865, i64 %1867
  %1869 = load ptr, ptr %1868, align 8, !tbaa !101
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1869, i32 noundef %1866, ptr noundef %67, ptr noundef %1002, ptr noundef %0, i8 noundef zeroext %1849)
  %1870 = load ptr, ptr %1848, align 8, !tbaa !125
  %1871 = getelementptr inbounds %struct.UvEdge, ptr %1864, i64 0, i32 1
  %1872 = load i32, ptr %1871, align 4, !tbaa !150
  %1873 = zext i32 %1872 to i64
  %1874 = getelementptr inbounds ptr, ptr %1870, i64 %1873
  %1875 = load ptr, ptr %1874, align 8, !tbaa !101
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1875, i32 noundef %1872, ptr noundef %67, ptr noundef %1002, ptr noundef %0, i8 noundef zeroext %1849)
  %1876 = getelementptr inbounds %struct.UvEdge, ptr %1864, i64 0, i32 2
  %1877 = load i8, ptr %1876, align 8, !tbaa !146
  %1878 = and i8 %1877, 9
  store i8 %1878, ptr %1876, align 8, !tbaa !146
  br label %1879

1879:                                             ; preds = %1856, %1861
  %1880 = add nuw nsw i64 %1853, 1
  %1881 = load i32, ptr %206, align 8, !tbaa !176
  %1882 = sext i32 %1881 to i64
  %1883 = icmp slt i64 %1880, %1882
  br i1 %1883, label %1852, label %1884, !llvm.loop !263

1884:                                             ; preds = %1879, %1843
  %1885 = load i8, ptr %582, align 4, !tbaa !79
  %1886 = icmp eq i8 %1885, 0
  br i1 %1886, label %2105, label %1887

1887:                                             ; preds = %1884
  %1888 = load ptr, ptr %79, align 8, !tbaa !75
  %1889 = getelementptr inbounds %struct.UvElementMap, ptr %1888, i64 0, i32 3
  %1890 = load i32, ptr %1889, align 4, !tbaa !76
  %1891 = icmp sgt i32 %1890, 0
  br i1 %1891, label %1892, label %2105

1892:                                             ; preds = %1887
  %1893 = load ptr, ptr %11, align 8, !tbaa !103
  %1894 = load ptr, ptr %1893, align 8, !tbaa !99
  %1895 = getelementptr inbounds %struct.BMesh, ptr %1894, i64 0, i32 26
  %1896 = getelementptr inbounds float, ptr %5, i64 1
  %1897 = getelementptr inbounds float, ptr %4, i64 1
  br label %1898

1898:                                             ; preds = %1892, %2098
  %1899 = phi i64 [ 0, %1892 ], [ %2099, %2098 ]
  %1900 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899
  %1901 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 7
  %1902 = load i8, ptr %1901, align 4, !tbaa !225
  %1903 = icmp eq i8 %1902, 0
  br i1 %1903, label %2098, label %1904

1904:                                             ; preds = %1898
  %1905 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 6
  %1906 = load i32, ptr %1905, align 4, !tbaa !257
  %1907 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 5
  %1908 = load i32, ptr %1907, align 4, !tbaa !255
  %1909 = add nsw i32 %1908, %1906
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %1910 = icmp sgt i32 %1908, 1
  br i1 %1910, label %1911, label %1915

1911:                                             ; preds = %1904
  %1912 = sitofp i32 %1908 to float
  %1913 = load float, ptr %1900, align 4, !tbaa !256
  %1914 = fdiv float %1913, %1912
  store float %1914, ptr %1900, align 4, !tbaa !256
  br label %1915

1915:                                             ; preds = %1911, %1904
  %1916 = load i32, ptr %1905, align 4, !tbaa !257
  %1917 = icmp sgt i32 %1916, 1
  br i1 %1917, label %1918, label %1923

1918:                                             ; preds = %1915
  %1919 = sitofp i32 %1916 to float
  %1920 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 1
  %1921 = load float, ptr %1920, align 4, !tbaa !258
  %1922 = fdiv float %1921, %1919
  store float %1922, ptr %1920, align 4, !tbaa !258
  br label %1923

1923:                                             ; preds = %1918, %1915
  %1924 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 4
  %1925 = load i32, ptr %1924, align 4, !tbaa !248
  %1926 = icmp sgt i32 %1925, 1
  br i1 %1926, label %1927, label %1941

1927:                                             ; preds = %1923
  %1928 = sitofp i32 %1925 to float
  %1929 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 3
  %1930 = load float, ptr %1929, align 4, !tbaa !115
  %1931 = fdiv float %1930, %1928
  store float %1931, ptr %1929, align 4, !tbaa !115
  %1932 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 3, i64 1
  %1933 = load float, ptr %1932, align 4, !tbaa !115
  %1934 = fdiv float %1933, %1928
  store float %1934, ptr %1932, align 4, !tbaa !115
  %1935 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 2
  %1936 = load float, ptr %1935, align 4, !tbaa !115
  %1937 = fdiv float %1936, %1928
  store float %1937, ptr %1935, align 4, !tbaa !115
  %1938 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 2, i64 1
  %1939 = load float, ptr %1938, align 4, !tbaa !115
  %1940 = fdiv float %1939, %1928
  store float %1940, ptr %1938, align 4, !tbaa !115
  br label %1941

1941:                                             ; preds = %1927, %1923
  %1942 = load float, ptr %0, align 8, !tbaa !116
  %1943 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 3
  %1944 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 3, i64 1
  %1945 = load float, ptr %1944, align 4, !tbaa !115
  %1946 = fdiv float %1945, %1942
  store float %1946, ptr %1944, align 4, !tbaa !115
  %1947 = load float, ptr %1900, align 4, !tbaa !256
  %1948 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 1
  %1949 = load float, ptr %1948, align 4, !tbaa !258
  %1950 = fadd float %1947, %1949
  %1951 = fcmp olt float %1950, 0x3FF921FB60000000
  br i1 %1951, label %1957, label %1952

1952:                                             ; preds = %1941
  %1953 = load i32, ptr %1907, align 4, !tbaa !255
  %1954 = icmp eq i32 %1953, 0
  %1955 = icmp eq i32 %1916, 0
  %1956 = or i1 %1955, %1954
  br i1 %1956, label %1957, label %1964

1957:                                             ; preds = %1952, %1941
  %1958 = load i32, ptr %1907, align 4, !tbaa !255
  %1959 = sitofp i32 %1958 to float
  %1960 = sitofp i32 %1916 to float
  %1961 = fneg float %1949
  %1962 = fmul float %1960, %1961
  %1963 = call float @llvm.fmuladd.f32(float %1947, float %1959, float %1962)
  br label %1970

1964:                                             ; preds = %1952
  %1965 = sitofp i32 %1953 to float
  %1966 = fsub float 0x401921FB60000000, %1949
  %1967 = sitofp i32 %1916 to float
  %1968 = fmul float %1966, %1967
  %1969 = call float @llvm.fmuladd.f32(float %1947, float %1965, float %1968)
  br label %1970

1970:                                             ; preds = %1964, %1957
  %1971 = phi float [ %1969, %1964 ], [ %1963, %1957 ]
  %1972 = sitofp i32 %1909 to float
  %1973 = fdiv float %1971, %1972
  call void @rotate_m2(ptr noundef nonnull %6, float noundef %1973) #9
  %1974 = load ptr, ptr %79, align 8, !tbaa !75
  %1975 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 3
  %1976 = load i32, ptr %1975, align 4, !tbaa !76
  %1977 = add nsw i32 %1976, -1
  %1978 = zext i32 %1977 to i64
  %1979 = icmp eq i64 %1899, %1978
  br i1 %1979, label %1980, label %1985

1980:                                             ; preds = %1970
  %1981 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 2
  %1982 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 4
  %1983 = load ptr, ptr %1982, align 8, !tbaa !234
  %1984 = getelementptr inbounds i32, ptr %1983, i64 %1899
  br label %1990

1985:                                             ; preds = %1970
  %1986 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 4
  %1987 = load ptr, ptr %1986, align 8, !tbaa !234
  %1988 = getelementptr i32, ptr %1987, i64 %1899
  %1989 = getelementptr i32, ptr %1988, i64 1
  br label %1990

1990:                                             ; preds = %1985, %1980
  %1991 = phi ptr [ %1988, %1985 ], [ %1984, %1980 ]
  %1992 = phi ptr [ %1989, %1985 ], [ %1981, %1980 ]
  %1993 = load i32, ptr %1992, align 4, !tbaa !133
  %1994 = load i32, ptr %1991, align 4, !tbaa !133
  %1995 = sub nsw i32 %1993, %1994
  %1996 = icmp sgt i32 %1995, 0
  br i1 %1996, label %1997, label %2097

1997:                                             ; preds = %1990
  %1998 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 1
  %1999 = load ptr, ptr %1998, align 8, !tbaa !118
  %2000 = getelementptr inbounds %struct.UvElementMap, ptr %1974, i64 0, i32 4
  %2001 = load ptr, ptr %2000, align 8, !tbaa !234
  %2002 = getelementptr inbounds i32, ptr %2001, i64 %1899
  %2003 = load i32, ptr %2002, align 4, !tbaa !133
  %2004 = sext i32 %2003 to i64
  %2005 = getelementptr inbounds %struct.UvElement, ptr %1999, i64 %2004
  %2006 = getelementptr inbounds float, ptr %1943, i64 1
  %2007 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 2
  %2008 = getelementptr inbounds float, ptr %1943, i64 1
  %2009 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 2
  %2010 = getelementptr inbounds %struct.IslandStitchData, ptr %85, i64 %1899, i32 2, i64 1
  br label %2011

2011:                                             ; preds = %1997, %2091
  %2012 = phi ptr [ %2005, %1997 ], [ %2095, %2091 ]
  %2013 = phi i32 [ 0, %1997 ], [ %2094, %2091 ]
  %2014 = getelementptr inbounds %struct.UvElement, ptr %2012, i64 0, i32 4
  %2015 = load i8, ptr %2014, align 1, !tbaa !183
  %2016 = and i8 %2015, 4
  %2017 = icmp eq i8 %2016, 0
  br i1 %2017, label %2018, label %2091

2018:                                             ; preds = %2011
  %2019 = getelementptr inbounds %struct.UvElement, ptr %2012, i64 0, i32 1
  %2020 = load ptr, ptr %2019, align 8, !tbaa !164
  %2021 = load ptr, ptr %2020, align 8, !tbaa !174
  %2022 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %1895, ptr noundef %2021, i32 noundef 16) #9
  br i1 %657, label %2043, label %2023

2023:                                             ; preds = %2018
  %2024 = load float, ptr %0, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %2025 = getelementptr inbounds float, ptr %2022, i64 1
  %2026 = load float, ptr %2025, align 4, !tbaa !115
  %2027 = fdiv float %2026, %2024
  store float %2027, ptr %2025, align 4, !tbaa !115
  %2028 = load float, ptr %1943, align 4, !tbaa !115
  %2029 = load float, ptr %2022, align 4, !tbaa !115
  %2030 = fsub float %2029, %2028
  store float %2030, ptr %2022, align 4, !tbaa !115
  %2031 = load float, ptr %2006, align 4, !tbaa !115
  %2032 = fsub float %2027, %2031
  store float %2032, ptr %2025, align 4, !tbaa !115
  call void @mul_v2_m2v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %2022) #9
  %2033 = load float, ptr %5, align 4, !tbaa !115
  %2034 = load float, ptr %1943, align 4, !tbaa !115
  %2035 = fadd float %2033, %2034
  store float %2035, ptr %2022, align 4, !tbaa !115
  %2036 = load float, ptr %1896, align 4, !tbaa !115
  %2037 = load float, ptr %2006, align 4, !tbaa !115
  %2038 = fadd float %2036, %2037
  %2039 = fmul float %2024, %2038
  store float %2039, ptr %2025, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %2040 = load float, ptr %2007, align 4, !tbaa !115
  %2041 = load float, ptr %2022, align 4, !tbaa !115
  %2042 = fadd float %2040, %2041
  store float %2042, ptr %2022, align 4, !tbaa !115
  br label %2086

2043:                                             ; preds = %2018
  %2044 = load ptr, ptr %2019, align 8, !tbaa !164
  %2045 = getelementptr inbounds %struct.BMLoop, ptr %2044, i64 0, i32 3
  %2046 = load ptr, ptr %2045, align 8, !tbaa !168
  %2047 = getelementptr inbounds %struct.BMHeader, ptr %2046, i64 0, i32 1
  %2048 = load i32, ptr %2047, align 8, !tbaa !166
  %2049 = sext i32 %2048 to i64
  %2050 = getelementptr inbounds %struct.PreviewPosition, ptr %67, i64 %2049
  %2051 = load i32, ptr %2050, align 4, !tbaa !214
  %2052 = load ptr, ptr %52, align 8, !tbaa !203
  %2053 = sext i32 %2051 to i64
  %2054 = getelementptr inbounds float, ptr %2052, i64 %2053
  %2055 = getelementptr inbounds %struct.UvElement, ptr %2012, i64 0, i32 2
  %2056 = load i16, ptr %2055, align 8, !tbaa !264
  %2057 = zext i16 %2056 to i64
  %2058 = shl nuw nsw i64 %2057, 1
  %2059 = getelementptr inbounds float, ptr %2054, i64 %2058
  %2060 = load float, ptr %0, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %2061 = getelementptr inbounds float, ptr %2059, i64 1
  %2062 = load float, ptr %2061, align 4, !tbaa !115
  %2063 = fdiv float %2062, %2060
  store float %2063, ptr %2061, align 4, !tbaa !115
  %2064 = load float, ptr %1943, align 4, !tbaa !115
  %2065 = load float, ptr %2059, align 4, !tbaa !115
  %2066 = fsub float %2065, %2064
  store float %2066, ptr %2059, align 4, !tbaa !115
  %2067 = load float, ptr %2008, align 4, !tbaa !115
  %2068 = fsub float %2063, %2067
  store float %2068, ptr %2061, align 4, !tbaa !115
  call void @mul_v2_m2v2(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %2059) #9
  %2069 = load float, ptr %4, align 4, !tbaa !115
  %2070 = load float, ptr %1943, align 4, !tbaa !115
  %2071 = fadd float %2069, %2070
  store float %2071, ptr %2059, align 4, !tbaa !115
  %2072 = load float, ptr %1897, align 4, !tbaa !115
  %2073 = load float, ptr %2008, align 4, !tbaa !115
  %2074 = fadd float %2072, %2073
  %2075 = fmul float %2060, %2074
  store float %2075, ptr %2061, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %2076 = load ptr, ptr %52, align 8, !tbaa !203
  %2077 = getelementptr inbounds float, ptr %2076, i64 %2053
  %2078 = load i16, ptr %2055, align 8, !tbaa !264
  %2079 = zext i16 %2078 to i64
  %2080 = shl nuw nsw i64 %2079, 1
  %2081 = getelementptr inbounds float, ptr %2077, i64 %2080
  %2082 = load float, ptr %2009, align 4, !tbaa !115
  %2083 = load float, ptr %2081, align 4, !tbaa !115
  %2084 = fadd float %2082, %2083
  store float %2084, ptr %2081, align 4, !tbaa !115
  %2085 = getelementptr inbounds float, ptr %2081, i64 1
  br label %2086

2086:                                             ; preds = %2023, %2043
  %2087 = phi ptr [ %2085, %2043 ], [ %2025, %2023 ]
  %2088 = load float, ptr %2010, align 4, !tbaa !115
  %2089 = load float, ptr %2087, align 4, !tbaa !115
  %2090 = fadd float %2088, %2089
  store float %2090, ptr %2087, align 4, !tbaa !115
  br label %2091

2091:                                             ; preds = %2086, %2011
  %2092 = load i8, ptr %2014, align 1, !tbaa !183
  %2093 = and i8 %2092, 1
  store i8 %2093, ptr %2014, align 1, !tbaa !183
  %2094 = add nuw nsw i32 %2013, 1
  %2095 = getelementptr inbounds %struct.UvElement, ptr %2012, i64 1
  %2096 = icmp eq i32 %2094, %1995
  br i1 %2096, label %2097, label %2011, !llvm.loop !265

2097:                                             ; preds = %2091, %1990
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %2098

2098:                                             ; preds = %2097, %1898
  %2099 = add nuw nsw i64 %1899, 1
  %2100 = load ptr, ptr %79, align 8, !tbaa !75
  %2101 = getelementptr inbounds %struct.UvElementMap, ptr %2100, i64 0, i32 3
  %2102 = load i32, ptr %2101, align 4, !tbaa !76
  %2103 = sext i32 %2102 to i64
  %2104 = icmp slt i64 %2099, %2103
  br i1 %2104, label %1898, label %2105, !llvm.loop !266

2105:                                             ; preds = %2098, %1887, %1884
  %2106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  call void %2106(ptr noundef %1002) #9
  %2107 = load i8, ptr %978, align 8, !tbaa !105
  %2108 = icmp eq i8 %2107, 0
  br i1 %2108, label %2109, label %2111

2109:                                             ; preds = %2105
  %2110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  call void %2110(ptr noundef %1001) #9
  br label %2111

2111:                                             ; preds = %2109, %2105
  %2112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  call void %2112(ptr noundef %85) #9
  %2113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !101
  call void %2113(ptr noundef %67) #9
  br label %2115

2114:                                             ; preds = %658, %702, %705
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %2115

2115:                                             ; preds = %2114, %77, %2111
  %2116 = phi i32 [ 1, %2111 ], [ 0, %77 ], [ 0, %2114 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret i32 %2116
}

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @stitch_draw(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call float @UI_GetThemeValuef(i32 noundef 36) #9
  %5 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @glPushClientAttrib(i32 noundef 2) #9
  tail call void @glEnableClientState(i32 noundef 32884) #9
  %7 = fmul float %4, 2.000000e+00
  tail call void @glPointSize(float noundef %7) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @UI_ThemeColor4(i32 noundef 155) #9
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #9
  %8 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !212
  %12 = mul i32 %11, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %12) #9
  %13 = load ptr, ptr %6, align 8, !tbaa !203
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !227
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %32, %19 ]
  %21 = phi i32 [ 0, %17 ], [ %31, %19 ]
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #9
  tail call void @UI_ThemeColor4(i32 noundef 150) #9
  %22 = load ptr, ptr %18, align 8, !tbaa !205
  %23 = getelementptr inbounds i32, ptr %22, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !133
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef %21, i32 noundef %24) #9
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #9
  tail call void @UI_ThemeColor4(i32 noundef 151) #9
  %25 = load ptr, ptr %18, align 8, !tbaa !205
  %26 = getelementptr inbounds i32, ptr %25, i64 %20
  %27 = load i32, ptr %26, align 4, !tbaa !133
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef %21, i32 noundef %27) #9
  %28 = load ptr, ptr %18, align 8, !tbaa !205
  %29 = getelementptr inbounds i32, ptr %28, i64 %20
  %30 = load i32, ptr %29, align 4, !tbaa !133
  %31 = add i32 %30, %21
  %32 = add nuw nsw i64 %20, 1
  %33 = load i32, ptr %14, align 8, !tbaa !227
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %19, label %36, !llvm.loop !267

36:                                               ; preds = %19, %3
  tail call void @glDisable(i32 noundef 3042) #9
  %37 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 20
  %38 = load i8, ptr %37, align 8, !tbaa !105
  %39 = icmp eq i8 %38, 0
  tail call void @UI_ThemeColor4(i32 noundef 153) #9
  %40 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !206
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %41) #9
  %42 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !224
  br i1 %39, label %44, label %49

44:                                               ; preds = %36
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %43) #9
  tail call void @UI_ThemeColor4(i32 noundef 154) #9
  %45 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !207
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #9
  %47 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !232
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %48) #9
  br label %56

49:                                               ; preds = %36
  %50 = shl i32 %43, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %50) #9
  tail call void @UI_ThemeColor4(i32 noundef 154) #9
  %51 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !207
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %52) #9
  %53 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !232
  %55 = shl i32 %54, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %55) #9
  br label %56

56:                                               ; preds = %49, %44
  tail call void @glPopClientAttrib() #9
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #9
  tail call void @glPointSize(float noundef 1.000000e+00) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #9
  %4 = tail call ptr @CTX_wm_area(ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !105
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.1, ptr @.str.4
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !79
  %13 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %12) #9
  %14 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !78
  %16 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %15) #9
  %17 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !71
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 4, !tbaa !73
  %22 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %21) #9
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @stitch_update_header.str, ptr noundef nonnull %10, ptr noundef %13, ptr noundef %16, double noundef %19, ptr noundef %22) #9
  call void @ED_area_headerprint(ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  br label %24

24:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #9
  ret void
}

declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_ghashutil_uinthash(i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_island_calculate_edge_rotation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !125
  %11 = load i32, ptr %0, align 8, !tbaa !149
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !150
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %10, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %21 = getelementptr inbounds %struct.UvElement, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %20, ptr noundef %23, i32 noundef 16) #9
  %25 = getelementptr inbounds %struct.UvElement, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  %27 = load ptr, ptr %26, align 8, !tbaa !174
  %28 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %20, ptr noundef %27, i32 noundef 16) #9
  %29 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 20
  %30 = load i8, ptr %29, align 8, !tbaa !105
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.UvElementMap, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !118
  %37 = ptrtoint ptr %14 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 24
  %41 = getelementptr inbounds i32, ptr %3, i64 %40
  %42 = ptrtoint ptr %19 to i64
  %43 = sub i64 %42, %38
  %44 = sdiv exact i64 %43, 24
  %45 = getelementptr inbounds i32, ptr %3, i64 %44
  br label %46

46:                                               ; preds = %5, %32
  %47 = phi ptr [ %45, %32 ], [ %15, %5 ]
  %48 = phi ptr [ %41, %32 ], [ %0, %5 ]
  %49 = load i32, ptr %48, align 4, !tbaa !133
  %50 = load i32, ptr %47, align 4, !tbaa !133
  %51 = load float, ptr %28, align 4, !tbaa !115
  %52 = load float, ptr %24, align 4, !tbaa !115
  %53 = fsub float %51, %52
  %54 = getelementptr inbounds [2 x float], ptr %28, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !115
  %56 = getelementptr inbounds [2 x float], ptr %24, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !115
  %58 = fsub float %55, %57
  %59 = load float, ptr %1, align 8, !tbaa !116
  %60 = fdiv float %58, %59
  %61 = sext i32 %50 to i64
  %62 = getelementptr inbounds %struct.UVVertAverage, ptr %2, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !115
  %64 = sext i32 %49 to i64
  %65 = getelementptr inbounds %struct.UVVertAverage, ptr %2, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !115
  %67 = fsub float %63, %66
  %68 = getelementptr inbounds [2 x float], ptr %62, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !115
  %70 = getelementptr inbounds [2 x float], ptr %65, i64 0, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !115
  %72 = fsub float %69, %71
  %73 = fdiv float %72, %59
  %74 = fmul float %60, %60
  %75 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %74)
  %76 = fcmp ogt float %75, 0x38AA95A5C0000000
  br i1 %76, label %77, label %82

77:                                               ; preds = %46
  %78 = tail call float @sqrtf(float noundef %75) #9
  %79 = fdiv float 1.000000e+00, %78
  %80 = fmul float %53, %79
  %81 = fmul float %60, %79
  br label %82

82:                                               ; preds = %46, %77
  %83 = phi float [ %80, %77 ], [ 0.000000e+00, %46 ]
  %84 = phi float [ %81, %77 ], [ 0.000000e+00, %46 ]
  %85 = fmul float %73, %73
  %86 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %85)
  %87 = fcmp ogt float %86, 0x38AA95A5C0000000
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = tail call float @sqrtf(float noundef %86) #9
  %90 = fdiv float 1.000000e+00, %89
  %91 = fmul float %67, %90
  %92 = fmul float %73, %90
  br label %93

93:                                               ; preds = %82, %88
  %94 = phi float [ %91, %88 ], [ 0.000000e+00, %82 ]
  %95 = phi float [ %92, %88 ], [ 0.000000e+00, %82 ]
  %96 = fmul float %84, %95
  %97 = tail call float @llvm.fmuladd.f32(float %83, float %94, float %96)
  %98 = fneg float %84
  %99 = fmul float %94, %98
  %100 = tail call float @llvm.fmuladd.f32(float %83, float %95, float %99)
  %101 = fcmp ogt float %97, 1.000000e+00
  %102 = select i1 %101, float 1.000000e+00, float %97
  %103 = fcmp olt float %102, -1.000000e+00
  %104 = select i1 %103, float -1.000000e+00, float %102
  %105 = tail call float @acosf(float noundef %104) #9
  %106 = fcmp ogt float %100, 0.000000e+00
  %107 = getelementptr inbounds %struct.UvElement, ptr %14, i64 0, i32 5
  %108 = load i16, ptr %107, align 4, !tbaa !197
  %109 = zext i16 %108 to i64
  br i1 %106, label %110, label %115

110:                                              ; preds = %93
  %111 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %109, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !255
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %111, align 4, !tbaa !255
  %114 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %109
  br label %120

115:                                              ; preds = %93
  %116 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %109, i32 6
  %117 = load i32, ptr %116, align 4, !tbaa !257
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %116, align 4, !tbaa !257
  %119 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %109, i32 1
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi ptr [ %119, %115 ], [ %114, %110 ]
  %122 = load float, ptr %121, align 4, !tbaa !115
  %123 = fadd float %105, %122
  store float %123, ptr %121, align 4, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_propagate_uv_final_position(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  %13 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 16) #9
  %15 = getelementptr inbounds %struct.UvElement, ptr %1, i64 0, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !183
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %88, label %19

19:                                               ; preds = %7
  %20 = icmp eq i8 %6, 0
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds %struct.UVVertAverage, ptr %4, i64 %21
  %23 = getelementptr inbounds float, ptr %22, i64 1
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds %struct.UVVertAverage, ptr %4, i64 %24
  %26 = getelementptr inbounds float, ptr %25, i64 1
  %27 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 3
  %28 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 4
  %29 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 18
  br label %30

30:                                               ; preds = %19, %84
  %31 = phi ptr [ %82, %84 ], [ %1, %19 ]
  %32 = getelementptr inbounds %struct.UvElement, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !164
  %34 = load ptr, ptr %33, align 8, !tbaa !174
  %35 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %13, ptr noundef %34, i32 noundef 16) #9
  %36 = getelementptr inbounds %struct.UvElement, ptr %31, i64 0, i32 4
  %37 = load i8, ptr %36, align 1, !tbaa !183
  %38 = or i8 %37, 4
  store i8 %38, ptr %36, align 1, !tbaa !183
  br i1 %20, label %44, label %39

39:                                               ; preds = %30
  %40 = load float, ptr %22, align 4, !tbaa !115
  store float %40, ptr %35, align 4, !tbaa !115
  %41 = load float, ptr %23, align 4, !tbaa !115
  %42 = getelementptr inbounds float, ptr %35, i64 1
  store float %41, ptr %42, align 4, !tbaa !115
  %43 = load ptr, ptr %8, align 8, !tbaa !103
  tail call void @uvedit_uv_select_enable(ptr noundef %43, ptr noundef %0, ptr noundef nonnull %33, i8 noundef zeroext 0, i32 noundef %14) #9
  br label %66

44:                                               ; preds = %30
  %45 = load ptr, ptr %32, align 8, !tbaa !164
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !168
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !166
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.PreviewPosition, ptr %3, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !214
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %66, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %12, align 8, !tbaa !203
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds float, ptr %55, i64 %56
  %58 = getelementptr inbounds %struct.UvElement, ptr %31, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !264
  %60 = zext i16 %59 to i64
  %61 = shl nuw nsw i64 %60, 1
  %62 = getelementptr inbounds float, ptr %57, i64 %61
  %63 = load float, ptr %25, align 4, !tbaa !115
  store float %63, ptr %62, align 4, !tbaa !115
  %64 = load float, ptr %26, align 4, !tbaa !115
  %65 = getelementptr inbounds float, ptr %62, i64 1
  store float %64, ptr %65, align 4, !tbaa !115
  br label %66

66:                                               ; preds = %44, %54, %39
  %67 = load i8, ptr %27, align 4, !tbaa !79
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load i8, ptr %28, align 1, !tbaa !78
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.UvElement, ptr %31, i64 0, i32 5
  %74 = load i16, ptr %73, align 4, !tbaa !197
  %75 = zext i16 %74 to i32
  %76 = load i32, ptr %29, align 4, !tbaa !74
  %77 = icmp eq i32 %76, %75
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %66
  %79 = load i8, ptr %36, align 1, !tbaa !183
  %80 = and i8 %79, 1
  store i8 %80, ptr %36, align 1, !tbaa !183
  br label %81

81:                                               ; preds = %78, %72, %69
  %82 = load ptr, ptr %31, align 8, !tbaa !171
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.UvElement, ptr %82, i64 0, i32 3
  %86 = load i8, ptr %85, align 2, !tbaa !119
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %30, label %88, !llvm.loop !268

88:                                               ; preds = %84, %81, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @stitch_check_edges_stitchable(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %83, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !73
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = load i32, ptr %0, align 8, !tbaa !149
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.UvElement, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  %23 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %24 = load ptr, ptr %22, align 8, !tbaa !174
  %25 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %24, i32 noundef 16) #9
  %26 = load ptr, ptr %15, align 8, !tbaa !125
  %27 = load i32, ptr %1, align 8, !tbaa !149
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %struct.UvElement, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  %33 = load ptr, ptr %32, align 8, !tbaa !174
  %34 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %33, i32 noundef 16) #9
  %35 = load ptr, ptr %15, align 8, !tbaa !125
  %36 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !150
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  %41 = getelementptr inbounds %struct.UvElement, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !164
  %43 = load ptr, ptr %42, align 8, !tbaa !174
  %44 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %43, i32 noundef 16) #9
  %45 = load ptr, ptr %15, align 8, !tbaa !125
  %46 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !150
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = getelementptr inbounds %struct.UvElement, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !164
  %53 = load ptr, ptr %52, align 8, !tbaa !174
  %54 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %53, i32 noundef 16) #9
  %55 = load float, ptr %25, align 4, !tbaa !115
  %56 = load float, ptr %34, align 4, !tbaa !115
  %57 = fsub float %55, %56
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fcmp olt float %58, %10
  br i1 %59, label %60, label %82

60:                                               ; preds = %14
  %61 = getelementptr inbounds [2 x float], ptr %25, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !115
  %63 = getelementptr inbounds [2 x float], ptr %34, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !115
  %65 = fsub float %62, %64
  %66 = tail call float @llvm.fabs.f32(float %65)
  %67 = fcmp olt float %66, %10
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load float, ptr %44, align 4, !tbaa !115
  %70 = load float, ptr %54, align 4, !tbaa !115
  %71 = fsub float %69, %70
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fcmp olt float %72, %10
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = getelementptr inbounds [2 x float], ptr %44, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !115
  %77 = getelementptr inbounds [2 x float], ptr %54, i64 0, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !115
  %79 = fsub float %76, %78
  %80 = tail call float @llvm.fabs.f32(float %79)
  %81 = fcmp olt float %80, %10
  br i1 %81, label %83, label %82

82:                                               ; preds = %74, %68, %60, %14
  br label %83

83:                                               ; preds = %8, %82, %74, %3
  %84 = phi i8 [ 0, %3 ], [ 0, %82 ], [ 1, %74 ], [ 1, %8 ]
  ret i8 %84
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #5

declare void @uvedit_uv_select_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @rotate_m2(ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_v2_m2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @glPushClientAttrib(i32 noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glPopClientAttrib() local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_select(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.UvEdge, align 8
  %6 = alloca [2 x float], align 4
  %7 = alloca %struct.NearestHit, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #9
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !133
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !133
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %10, float noundef %13, float noundef %16, ptr noundef nonnull %6, ptr noundef nonnull %17) #9
  %18 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 20
  %19 = load i8, ptr %18, align 8, !tbaa !105
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  br i1 %20, label %23, label %89

23:                                               ; preds = %4
  call void @uv_find_nearest_vert(ptr noundef %1, ptr noundef %9, ptr noundef %22, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #9
  %24 = load ptr, ptr %7, align 8, !tbaa !269
  %25 = icmp eq ptr %24, null
  br i1 %25, label %173, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !271
  %31 = call ptr @BM_uv_element_get(ptr noundef %28, ptr noundef nonnull %24, ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds %struct.UvElement, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  %36 = load ptr, ptr %27, align 8, !tbaa !75
  %37 = load ptr, ptr %36, align 8, !tbaa !132
  %38 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !165
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !166
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %37, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = icmp eq ptr %44, null
  br i1 %45, label %173, label %46

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  %48 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  %49 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  br label %50

50:                                               ; preds = %46, %86
  %51 = phi ptr [ %44, %46 ], [ %87, %86 ]
  %52 = getelementptr inbounds %struct.UvElement, ptr %51, i64 0, i32 3
  %53 = load i8, ptr %52, align 2, !tbaa !119
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.UvElement, ptr %51, i64 0, i32 4
  %57 = load i8, ptr %56, align 1, !tbaa !183
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = and i8 %57, -2
  store i8 %61, ptr %56, align 1, !tbaa !183
  %62 = load i32, ptr %47, align 8, !tbaa !176
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = zext nneg i32 %62 to i64
  br label %69

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, %65
  br i1 %68, label %86, label %69, !llvm.loop !272

69:                                               ; preds = %64, %66
  %70 = phi i64 [ 0, %64 ], [ %67, %66 ]
  %71 = getelementptr inbounds ptr, ptr %33, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = icmp eq ptr %72, %51
  br i1 %73, label %74, label %66

74:                                               ; preds = %69
  %75 = getelementptr inbounds ptr, ptr %33, i64 %70
  %76 = add nsw i32 %62, -1
  store i32 %76, ptr %48, align 8, !tbaa !176
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %33, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !101
  store ptr %79, ptr %75, align 8, !tbaa !101
  br label %86

80:                                               ; preds = %55
  %81 = or disjoint i8 %57, 1
  store i8 %81, ptr %56, align 1, !tbaa !183
  %82 = load i32, ptr %49, align 8, !tbaa !176
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %49, align 8, !tbaa !176
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds ptr, ptr %33, i64 %84
  store ptr %51, ptr %85, align 8, !tbaa !101
  br label %86

86:                                               ; preds = %66, %60, %80, %74, %50
  %87 = load ptr, ptr %51, align 8, !tbaa !101
  %88 = icmp eq ptr %87, null
  br i1 %88, label %173, label %50, !llvm.loop !184

89:                                               ; preds = %4
  call void @uv_find_nearest_edge(ptr noundef %1, ptr noundef %9, ptr noundef %22, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %90 = load ptr, ptr %7, align 8, !tbaa !269
  %91 = icmp eq ptr %90, null
  br i1 %91, label %173, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  %95 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !168
  %99 = call ptr @BM_uv_element_get(ptr noundef %96, ptr noundef %98, ptr noundef %94) #9
  %100 = load ptr, ptr %95, align 8, !tbaa !75
  %101 = load ptr, ptr %97, align 8, !tbaa !168
  %102 = getelementptr inbounds %struct.BMLoop, ptr %94, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !144
  %104 = call ptr @BM_uv_element_get(ptr noundef %100, ptr noundef %101, ptr noundef %103) #9
  %105 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !128
  %107 = load ptr, ptr %95, align 8, !tbaa !75
  %108 = getelementptr inbounds %struct.UvElementMap, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !118
  %110 = ptrtoint ptr %99 to i64
  %111 = ptrtoint ptr %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 24
  %114 = getelementptr inbounds i32, ptr %106, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !133
  %116 = ptrtoint ptr %104 to i64
  %117 = sub i64 %116, %111
  %118 = sdiv exact i64 %117, 24
  %119 = getelementptr inbounds i32, ptr %106, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !133
  %121 = icmp slt i32 %115, %120
  %122 = getelementptr inbounds %struct.UvEdge, ptr %5, i64 0, i32 1
  %123 = select i1 %121, i32 %115, i32 %120
  %124 = select i1 %121, i32 %120, i32 %115
  store i32 %123, ptr %5, align 8, !tbaa !149
  store i32 %124, ptr %122, align 4, !tbaa !150
  %125 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 13
  %126 = load ptr, ptr %125, align 8, !tbaa !161
  %127 = call ptr @BLI_ghash_lookup(ptr noundef %126, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  %128 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 16
  %129 = load ptr, ptr %128, align 8, !tbaa !177
  %130 = getelementptr inbounds %struct.UvEdge, ptr %127, i64 0, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !101
  %132 = icmp eq ptr %131, null
  br i1 %132, label %173, label %133

133:                                              ; preds = %92
  %134 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  %135 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  %136 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 17
  br label %137

137:                                              ; preds = %133, %169
  %138 = phi ptr [ %131, %133 ], [ %171, %169 ]
  %139 = getelementptr inbounds %struct.UvEdge, ptr %138, i64 0, i32 2
  %140 = load i8, ptr %139, align 8, !tbaa !146
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %137
  %144 = and i8 %140, -2
  store i8 %144, ptr %139, align 8, !tbaa !146
  %145 = load i32, ptr %134, align 8, !tbaa !176
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = zext nneg i32 %145 to i64
  br label %152

149:                                              ; preds = %152
  %150 = add nuw nsw i64 %153, 1
  %151 = icmp eq i64 %150, %148
  br i1 %151, label %169, label %152, !llvm.loop !273

152:                                              ; preds = %147, %149
  %153 = phi i64 [ 0, %147 ], [ %150, %149 ]
  %154 = getelementptr inbounds ptr, ptr %129, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !101
  %156 = icmp eq ptr %155, %138
  br i1 %156, label %157, label %149

157:                                              ; preds = %152
  %158 = getelementptr inbounds ptr, ptr %129, i64 %153
  %159 = add nsw i32 %145, -1
  store i32 %159, ptr %135, align 8, !tbaa !176
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %129, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  store ptr %162, ptr %158, align 8, !tbaa !101
  br label %169

163:                                              ; preds = %137
  %164 = or disjoint i8 %140, 1
  store i8 %164, ptr %139, align 8, !tbaa !146
  %165 = load i32, ptr %136, align 8, !tbaa !176
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %136, align 8, !tbaa !176
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds ptr, ptr %129, i64 %167
  store ptr %138, ptr %168, align 8, !tbaa !101
  br label %169

169:                                              ; preds = %149, %143, %163, %157
  %170 = getelementptr inbounds %struct.UvEdge, ptr %138, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !101
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %137, !llvm.loop !188

173:                                              ; preds = %169, %86, %92, %26, %89, %23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stitch_exit(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 2
  %16 = load float, ptr %15, align 8, !tbaa !71
  tail call void @RNA_float_set(ptr noundef %14, ptr noundef nonnull @.str.14, float noundef %16) #9
  %17 = load ptr, ptr %13, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !73
  %20 = zext i8 %19 to i32
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %20) #9
  %21 = load ptr, ptr %13, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 3
  %23 = load i8, ptr %22, align 4, !tbaa !79
  %24 = zext i8 %23 to i32
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %24) #9
  %25 = load ptr, ptr %13, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 18
  %27 = load i32, ptr %26, align 4, !tbaa !74
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %27) #9
  %28 = load ptr, ptr %13, align 8, !tbaa !102
  %29 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 4
  %30 = load i8, ptr %29, align 1, !tbaa !78
  %31 = zext i8 %30 to i32
  tail call void @RNA_boolean_set(ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %31) #9
  %32 = load ptr, ptr %13, align 8, !tbaa !102
  %33 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 20
  %34 = load i8, ptr %33, align 8, !tbaa !105
  %35 = zext i8 %34 to i32
  tail call void @RNA_enum_set(ptr noundef %32, ptr noundef nonnull @.str.26, i32 noundef %35) #9
  %36 = load ptr, ptr %13, align 8, !tbaa !102
  %37 = load i8, ptr %33, align 8, !tbaa !105
  %38 = zext i8 %37 to i32
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.29, i32 noundef %38) #9
  %39 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 17
  %40 = load i32, ptr %39, align 8, !tbaa !176
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 16
  %44 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 16
  br label %45

45:                                               ; preds = %42, %57
  %46 = phi i64 [ 0, %42 ], [ %70, %57 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %47 = load i8, ptr %33, align 8, !tbaa !105
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load ptr, ptr %44, align 8, !tbaa !177
  %51 = getelementptr inbounds ptr, ptr %50, i64 %46
  br label %57

52:                                               ; preds = %45
  %53 = load ptr, ptr %43, align 8, !tbaa !177
  %54 = getelementptr inbounds ptr, ptr %53, i64 %46
  %55 = load ptr, ptr %54, align 8, !tbaa !101
  %56 = getelementptr inbounds %struct.UvEdge, ptr %55, i64 0, i32 3
  br label %57

57:                                               ; preds = %52, %49
  %58 = phi ptr [ %51, %49 ], [ %56, %52 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !101
  %60 = load ptr, ptr %13, align 8, !tbaa !102
  call void @RNA_collection_add(ptr noundef %60, ptr noundef nonnull @.str.31, ptr noundef nonnull %4) #9
  %61 = getelementptr inbounds %struct.UvElement, ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !164
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !168
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !166
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef %66) #9
  %67 = getelementptr inbounds %struct.UvElement, ptr %59, i64 0, i32 2
  %68 = load i16, ptr %67, align 8, !tbaa !264
  %69 = zext i16 %68 to i32
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %70 = add nuw nsw i64 %46, 1
  %71 = load i32, ptr %39, align 8, !tbaa !176
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %45, label %74, !llvm.loop !274

74:                                               ; preds = %57, %12
  call void @uvedit_live_unwrap_update(ptr noundef %8, ptr noundef %6, ptr noundef %7) #9
  br label %75

75:                                               ; preds = %74, %3
  %76 = icmp eq ptr %5, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  call void @ED_area_headerprint(ptr noundef nonnull %5, ptr noundef null) #9
  br label %78

78:                                               ; preds = %77, %75
  %79 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %80 = getelementptr inbounds %struct.ARegion, ptr %79, i64 0, i32 20
  %81 = load ptr, ptr %80, align 8, !tbaa !199
  %82 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 21
  %83 = load ptr, ptr %82, align 8, !tbaa !202
  call void @ED_region_draw_cb_exit(ptr noundef %81, ptr noundef %83) #9
  %84 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  call void @DAG_id_tag_update(ptr noundef %85, i16 noundef signext 0) #9
  %86 = load ptr, ptr %84, align 8, !tbaa !52
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %86) #9
  call fastcc void @state_delete(ptr noundef %10)
  store ptr null, ptr %9, align 8, !tbaa !59
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uv_find_nearest_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uv_find_nearest_edge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uvedit_live_unwrap_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!44 = !{!35, !41, i64 184}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 32}
!48 = !{!35, !36, i64 56}
!49 = !{!35, !36, i64 72}
!50 = !{!35, !36, i64 88}
!51 = !{i32 0, i32 2}
!52 = !{!53, !36, i64 296}
!53 = !{!"Object", !54, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !55, i64 140, !55, i64 144, !55, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !56, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !55, i64 432, !55, i64 436, !36, i64 440, !36, i64 448, !55, i64 456, !55, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !57, i64 616, !57, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !55, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !55, i64 968, !55, i64 972, !55, i64 976, !55, i64 980, !55, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !57, i64 1048, !57, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !57, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !55, i64 1144, !55, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !57, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !58, i64 1304, !58, i64 1312, !55, i64 1320, !55, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !55, i64 100, !55, i64 104, !55, i64 108, !36, i64 112}
!55 = !{!"int", !37, i64 0}
!56 = !{!"bAnimVizSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44}
!57 = !{!"float", !37, i64 0}
!58 = !{!"long", !37, i64 0}
!59 = !{!60, !36, i64 96}
!60 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!61 = !{!62, !41, i64 16}
!62 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !55, i64 20, !55, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !55, i64 48, !55, i64 52, !63, i64 56, !55, i64 64, !55, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !55, i64 108, !36, i64 112}
!63 = !{!"double", !37, i64 0}
!64 = !{!62, !41, i64 72}
!65 = !{!66, !55, i64 8}
!66 = !{!"UserDef", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !55, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !55, i64 8484, !55, i64 8488, !55, i64 8492, !41, i64 8496, !41, i64 8498, !55, i64 8500, !55, i64 8504, !55, i64 8508, !55, i64 8512, !55, i64 8516, !55, i64 8520, !55, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !55, i64 8912, !55, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !57, i64 8956, !57, i64 8960, !55, i64 8964, !41, i64 8968, !41, i64 8970, !57, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !67, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !55, i64 10896, !55, i64 10900, !57, i64 10904, !57, i64 10908, !55, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !68, i64 10928}
!67 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!68 = !{!"WalkNavigation", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !41, i64 24, !37, i64 26}
!69 = !{!62, !41, i64 18}
!70 = !{!62, !41, i64 76}
!71 = !{!72, !57, i64 8}
!72 = !{!"StitchState", !57, i64 0, !37, i64 4, !57, i64 8, !37, i64 12, !37, i64 13, !36, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !55, i64 88, !55, i64 92, !36, i64 96, !55, i64 104, !55, i64 108, !36, i64 112, !37, i64 120, !36, i64 128, !36, i64 136}
!73 = !{!72, !37, i64 4}
!74 = !{!72, !55, i64 108}
!75 = !{!72, !36, i64 32}
!76 = !{!77, !55, i64 20}
!77 = !{!"UvElementMap", !36, i64 0, !36, i64 8, !55, i64 16, !55, i64 20, !36, i64 24}
!78 = !{!72, !37, i64 13}
!79 = !{!72, !37, i64 12}
!80 = !{!81, !36, i64 264}
!81 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !55, i64 232, !55, i64 236, !55, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !82, i64 280, !91, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !55, i64 4380, !39, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !58, i64 4648, !58, i64 4656, !84, i64 4664, !85, i64 4824, !98, i64 4888, !36, i64 4952}
!82 = !{!"RenderData", !83, i64 0, !36, i64 248, !36, i64 256, !86, i64 264, !87, i64 328, !55, i64 400, !55, i64 404, !55, i64 408, !57, i64 412, !55, i64 416, !55, i64 420, !55, i64 424, !55, i64 428, !41, i64 432, !41, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !55, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !55, i64 484, !55, i64 488, !41, i64 492, !41, i64 494, !55, i64 496, !55, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !55, i64 516, !55, i64 520, !55, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !88, i64 544, !88, i64 560, !89, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !55, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !57, i64 660, !57, i64 664, !41, i64 668, !41, i64 670, !57, i64 672, !57, i64 676, !37, i64 680, !55, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !55, i64 2520, !41, i64 2524, !41, i64 2526, !57, i64 2528, !57, i64 2532, !41, i64 2536, !41, i64 2538, !57, i64 2540, !41, i64 2544, !41, i64 2546, !55, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !57, i64 2560, !57, i64 2564, !36, i64 2568, !55, i64 2576, !57, i64 2580, !37, i64 2584, !90, i64 2616, !55, i64 3976, !55, i64 3980}
!83 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !57, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !55, i64 0, !55, i64 4, !37, i64 8, !37, i64 72, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!86 = !{!"QuicktimeCodecSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !41, i64 48, !41, i64 50, !55, i64 52, !55, i64 56, !55, i64 60}
!87 = !{!"FFMpegCodecData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !57, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !36, i64 64}
!88 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!89 = !{!"rcti", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!90 = !{!"BakeData", !83, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !57, i64 1280, !57, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !55, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !55, i64 16, !41, i64 20, !41, i64 22, !57, i64 24, !57, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !94, i64 40, !41, i64 64, !41, i64 66, !57, i64 68, !95, i64 72, !57, i64 128, !57, i64 132, !55, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!94 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !57, i64 8, !57, i64 12, !36, i64 16}
!95 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !55, i64 40, !57, i64 44, !57, i64 48, !41, i64 52, !41, i64 54}
!96 = !{!"UnitSettings", !57, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !55, i64 12, !55, i64 16, !55, i64 20}
!98 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!99 = !{!100, !36, i64 0}
!100 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !55, i64 16, !36, i64 24, !55, i64 32, !36, i64 40, !36, i64 48, !58, i64 56, !36, i64 64, !55, i64 72, !36, i64 80, !55, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !55, i64 104}
!101 = !{!36, !36, i64 0}
!102 = !{!60, !36, i64 112}
!103 = !{!72, !36, i64 16}
!104 = !{!72, !37, i64 24}
!105 = !{!72, !37, i64 120}
!106 = !{!107, !37, i64 50}
!107 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !57, i64 32, !57, i64 36, !57, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !57, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !108, i64 64, !110, i64 168, !57, i64 336, !57, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !57, i64 352, !57, i64 356, !57, i64 360, !57, i64 364, !57, i64 368, !57, i64 372, !57, i64 376, !57, i64 380, !57, i64 384, !57, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !55, i64 448, !55, i64 452, !55, i64 456, !55, i64 460, !41, i64 464, !41, i64 466, !55, i64 468, !57, i64 472, !57, i64 476, !111, i64 480, !112, i64 608}
!108 = !{!"ImagePaintSettings", !109, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !55, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !57, i64 100}
!109 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!110 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !57, i64 128, !57, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !36, i64 152, !36, i64 160}
!111 = !{!"UnifiedPaintSettings", !55, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !37, i64 16, !37, i64 28, !55, i64 40, !37, i64 44, !57, i64 52, !55, i64 56, !55, i64 60, !37, i64 64, !37, i64 65, !57, i64 72, !37, i64 76, !55, i64 84, !57, i64 88, !37, i64 92, !37, i64 100, !55, i64 108, !36, i64 112, !57, i64 120, !55, i64 124}
!112 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !37, i64 20, !37, i64 21, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36}
!113 = !{!107, !41, i64 46}
!114 = !{!107, !37, i64 51}
!115 = !{!57, !57, i64 0}
!116 = !{!72, !57, i64 0}
!117 = !{!77, !55, i64 16}
!118 = !{!77, !36, i64 8}
!119 = !{!120, !37, i64 18}
!120 = !{!"UvElement", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !41, i64 20}
!121 = distinct !{!121, !122, !123}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!72, !36, i64 136}
!125 = !{!72, !36, i64 48}
!126 = !{!72, !36, i64 64}
!127 = !{!72, !55, i64 92}
!128 = !{!72, !36, i64 56}
!129 = !{!130, !55, i64 0}
!130 = !{!"BMesh", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !55, i64 88, !55, i64 92, !55, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !55, i64 128, !36, i64 136, !131, i64 144, !131, i64 344, !131, i64 544, !131, i64 744, !41, i64 944, !55, i64 948, !55, i64 952, !55, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!131 = !{!"CustomData", !36, i64 0, !37, i64 8, !55, i64 172, !55, i64 176, !55, i64 180, !36, i64 184, !36, i64 192}
!132 = !{!77, !36, i64 0}
!133 = !{!55, !55, i64 0}
!134 = distinct !{!134, !122, !123}
!135 = distinct !{!135, !122, !123}
!136 = !{!137, !37, i64 60}
!137 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !55, i64 56, !37, i64 60}
!138 = !{!137, !36, i64 40}
!139 = !{!137, !36, i64 48}
!140 = !{!130, !36, i64 56}
!141 = !{!37, !37, i64 0}
!142 = !{!143, !37, i64 13}
!143 = !{!"BMHeader", !36, i64 0, !55, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!144 = !{!145, !36, i64 56}
!145 = !{!"BMLoop", !143, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!146 = !{!147, !37, i64 8}
!147 = !{!"UvEdge", !55, i64 0, !55, i64 4, !37, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!148 = !{!147, !36, i64 16}
!149 = !{!147, !55, i64 0}
!150 = !{!147, !55, i64 4}
!151 = distinct !{!151, !122, !123}
!152 = distinct !{!152, !122, !123}
!153 = !{!72, !36, i64 72}
!154 = !{!72, !55, i64 88}
!155 = !{!156, !36, i64 8}
!156 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !55, i64 16}
!157 = !{!158, !36, i64 8}
!158 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!159 = !{i64 0, i64 4, !133, i64 4, i64 4, !133, i64 8, i64 1, !141, i64 16, i64 8, !101, i64 24, i64 8, !101, i64 32, i64 8, !101}
!160 = distinct !{!160, !122, !123}
!161 = !{!72, !36, i64 80}
!162 = distinct !{!162, !122, !123}
!163 = !{!147, !36, i64 32}
!164 = !{!120, !36, i64 8}
!165 = !{!145, !36, i64 16}
!166 = !{!143, !55, i64 8}
!167 = !{!145, !36, i64 64}
!168 = !{!145, !36, i64 32}
!169 = !{!147, !36, i64 24}
!170 = distinct !{!170, !122, !123}
!171 = !{!120, !36, i64 0}
!172 = distinct !{!172, !122, !123}
!173 = distinct !{!173, !122, !123}
!174 = !{!145, !36, i64 0}
!175 = distinct !{!175, !122, !123}
!176 = !{!72, !55, i64 104}
!177 = !{!72, !36, i64 96}
!178 = !{!179, !55, i64 128}
!179 = !{!"CollectionPropertyIterator", !180, i64 0, !180, i64 24, !36, i64 48, !37, i64 56, !55, i64 96, !55, i64 100, !180, i64 104, !55, i64 128}
!180 = !{!"PointerRNA", !181, i64 0, !36, i64 8, !36, i64 16}
!181 = !{!"", !36, i64 0}
!182 = !{i64 0, i64 8, !101, i64 8, i64 8, !101, i64 16, i64 8, !101}
!183 = !{!120, !37, i64 19}
!184 = distinct !{!184, !122, !123}
!185 = distinct !{!185, !122, !123}
!186 = !{!187, !55, i64 32}
!187 = !{!"BMFace", !143, i64 0, !36, i64 16, !36, i64 24, !55, i64 32, !37, i64 36, !41, i64 48}
!188 = distinct !{!188, !122, !123}
!189 = distinct !{!189, !122, !123}
!190 = distinct !{!190, !122, !123}
!191 = distinct !{!191, !122, !123}
!192 = distinct !{!192, !122, !123}
!193 = distinct !{!193, !122, !123}
!194 = !{!72, !36, i64 112}
!195 = distinct !{!195, !122, !123}
!196 = !{!187, !36, i64 24}
!197 = !{!120, !41, i64 20}
!198 = distinct !{!198, !122, !123}
!199 = !{!200, !36, i64 240}
!200 = !{!"ARegion", !36, i64 0, !36, i64 8, !201, i64 16, !89, i64 176, !89, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !57, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!201 = !{!"View2D", !88, i64 0, !88, i64 16, !89, i64 32, !89, i64 48, !89, i64 64, !37, i64 80, !37, i64 88, !57, i64 96, !57, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!202 = !{!72, !36, i64 128}
!203 = !{!204, !36, i64 0}
!204 = !{!"StitchPreviewer", !36, i64 0, !36, i64 8, !55, i64 16, !36, i64 24, !36, i64 32, !55, i64 40, !55, i64 44, !55, i64 48, !36, i64 56, !55, i64 64}
!205 = !{!204, !36, i64 8}
!206 = !{!204, !36, i64 24}
!207 = !{!204, !36, i64 32}
!208 = !{!204, !36, i64 56}
!209 = distinct !{!209, !122, !123}
!210 = distinct !{!210, !122, !123}
!211 = distinct !{!211, !122, !123}
!212 = !{!204, !55, i64 64}
!213 = !{!130, !55, i64 12}
!214 = !{!215, !55, i64 0}
!215 = !{!"PreviewPosition", !55, i64 0, !55, i64 4}
!216 = distinct !{!216, !122, !123}
!217 = !{!218, !37, i64 37}
!218 = !{!"IslandStitchData", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !37, i64 36, !37, i64 37, !37, i64 38}
!219 = distinct !{!219, !122, !123}
!220 = !{i8 0, i8 2}
!221 = distinct !{!221, !122, !123}
!222 = distinct !{!222, !122, !123}
!223 = distinct !{!223, !122, !123}
!224 = !{!204, !55, i64 40}
!225 = !{!218, !37, i64 36}
!226 = !{!204, !55, i64 48}
!227 = !{!204, !55, i64 16}
!228 = !{!215, !55, i64 4}
!229 = distinct !{!229, !122, !123}
!230 = distinct !{!230, !122, !123}
!231 = distinct !{!231, !122, !123}
!232 = !{!204, !55, i64 44}
!233 = distinct !{!233, !122, !123}
!234 = !{!77, !36, i64 24}
!235 = distinct !{!235, !122, !123}
!236 = distinct !{!236, !122, !123}
!237 = distinct !{!237, !122, !123}
!238 = distinct !{!238, !122, !123}
!239 = distinct !{!239, !122, !123}
!240 = distinct !{!240, !122, !123}
!241 = distinct !{!241, !122, !123}
!242 = !{!243, !41, i64 8}
!243 = !{!"UVVertAverage", !37, i64 0, !41, i64 8}
!244 = distinct !{!244, !122, !123}
!245 = distinct !{!245, !122, !123}
!246 = distinct !{!246, !122, !123}
!247 = distinct !{!247, !122, !123}
!248 = !{!218, !55, i64 24}
!249 = distinct !{!249, !122, !123}
!250 = !{!218, !37, i64 38}
!251 = distinct !{!251, !122, !123}
!252 = !{!145, !36, i64 24}
!253 = distinct !{!253, !122, !123}
!254 = distinct !{!254, !122, !123}
!255 = !{!218, !55, i64 28}
!256 = !{!218, !57, i64 0}
!257 = !{!218, !55, i64 32}
!258 = !{!218, !57, i64 4}
!259 = distinct !{!259, !122, !123}
!260 = distinct !{!260, !122, !123}
!261 = distinct !{!261, !122, !123}
!262 = distinct !{!262, !122, !123}
!263 = distinct !{!263, !122, !123}
!264 = !{!120, !41, i64 16}
!265 = distinct !{!265, !122, !123}
!266 = distinct !{!266, !122, !123}
!267 = distinct !{!267, !122, !123}
!268 = distinct !{!268, !122, !123}
!269 = !{!270, !36, i64 0}
!270 = !{!"NearestHit", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !55, i64 40}
!271 = !{!270, !36, i64 16}
!272 = distinct !{!272, !122, !123}
!273 = distinct !{!273, !122, !123}
!274 = distinct !{!274, !122, !123}
