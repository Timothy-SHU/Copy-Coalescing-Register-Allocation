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
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon.0, i32, i32, %struct.PointerRNA, i32 }
%union.anon.0 = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.UvEdge = type { i32, i32, i8, ptr, ptr, ptr }
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
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.PreviewPosition = type { i32, i32 }
%struct.IslandStitchData = type { float, float, [2 x float], [2 x float], i32, i32, i32, i8, i8, i8 }
%struct.StitchPreviewer = type { ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i32 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UV_OT_stitch(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @stitch_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @stitch_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stitch_exec, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @stitch_cancel, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %9, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !21
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !21
  %16 = tail call ptr @RNA_def_float(ptr noundef %15, ptr noundef nonnull @.str.14, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000) #15
  %17 = load ptr, ptr %10, align 8, !tbaa !21
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 2147483647) #15
  %19 = load ptr, ptr %10, align 8, !tbaa !21
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #15
  %21 = load ptr, ptr %10, align 8, !tbaa !21
  %22 = tail call ptr @RNA_def_boolean(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #15
  %23 = load ptr, ptr %10, align 8, !tbaa !21
  %24 = tail call ptr @RNA_def_enum(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef nonnull @UV_OT_stitch.stitch_modes, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #15
  %25 = load ptr, ptr %10, align 8, !tbaa !21
  %26 = tail call ptr @RNA_def_enum(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull @UV_OT_stitch.stitch_modes, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #15
  tail call void @RNA_def_property_flag(ptr noundef %26, i32 noundef 524288) #15
  %27 = load ptr, ptr %10, align 8, !tbaa !21
  %28 = tail call ptr @RNA_def_collection_runtime(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef nonnull @RNA_SelectedUvElement, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #15
  tail call void @RNA_def_property_flag(ptr noundef %28, i32 noundef 524288) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stitch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call fastcc i32 @stitch_init(ptr noundef %0, ptr noundef %1) #16, !range !22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %10) #15
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ 1, %7 ], [ 2, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stitch_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !32
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
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %12 = load i16, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !36
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !40
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %145

22:                                               ; preds = %18
  tail call fastcc void @stitch_select(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %2, ptr noundef %6) #16
  %23 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %22
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

26:                                               ; preds = %10, %14, %3, %3
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !40
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %147

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 1) #16, !range !22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %147

34:                                               ; preds = %30
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

35:                                               ; preds = %3, %3
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %37 = load i16, ptr %36, align 2, !tbaa !40
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %147

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %41 = load i16, ptr %40, align 4, !tbaa !41
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %147, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 2
  %45 = load float, ptr %44, align 8, !tbaa !42
  %46 = fadd float %45, 0x3F847AE140000000
  store float %46, ptr %44, align 8, !tbaa !42
  %47 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %145

49:                                               ; preds = %43
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

50:                                               ; preds = %3, %3
  %51 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !40
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %147

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %56 = load i16, ptr %55, align 4, !tbaa !41
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %147, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 2
  %60 = load float, ptr %59, align 8, !tbaa !42
  %61 = fadd float %60, 0xBF847AE140000000
  %62 = fcmp olt float %61, 0x3F847AE140000000
  %63 = select i1 %62, float 0x3F847AE140000000, float %61
  store float %63, ptr %59, align 8, !tbaa !42
  %64 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %145

66:                                               ; preds = %58
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !40
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %147

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 1
  %73 = load i8, ptr %72, align 4, !tbaa !44
  %74 = icmp eq i8 %73, 0
  %75 = zext i1 %74 to i8
  store i8 %75, ptr %72, align 4, !tbaa !44
  %76 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %145

78:                                               ; preds = %71
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !40
  %82 = icmp eq i16 %81, 1
  br i1 %82, label %83, label %147

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 18
  %85 = load i32, ptr %84, align 4, !tbaa !45
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.UvElementMap, ptr %88, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !47
  %91 = srem i32 %86, %90
  store i32 %91, ptr %84, align 4, !tbaa !45
  %92 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %83
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !40
  %98 = icmp eq i16 %97, 1
  br i1 %98, label %99, label %145

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 4
  %101 = load i8, ptr %100, align 1, !tbaa !49
  %102 = icmp eq i8 %101, 0
  %103 = zext i1 %102 to i8
  store i8 %103, ptr %100, align 1, !tbaa !49
  %104 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %99
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

107:                                              ; preds = %3
  %108 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %109 = load i16, ptr %108, align 8, !tbaa !35
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %114 = load i16, ptr %113, align 2, !tbaa !40
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %147

116:                                              ; preds = %112
  %117 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !36
  %118 = and i32 %117, 16384
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  tail call fastcc void @stitch_select(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %2, ptr noundef %6) #16
  %121 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

124:                                              ; preds = %3
  %125 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %126 = load i16, ptr %125, align 2, !tbaa !40
  %127 = icmp eq i16 %126, 1
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.StitchState, ptr %6, i64 0, i32 3
  %130 = load i8, ptr %129, align 4, !tbaa !50
  %131 = icmp eq i8 %130, 0
  %132 = zext i1 %131 to i8
  store i8 %132, ptr %129, align 4, !tbaa !50
  %133 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

136:                                              ; preds = %3
  %137 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !40
  %139 = icmp eq i16 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  tail call fastcc void @stitch_switch_selection_mode(ptr noundef %6) #16
  %141 = tail call fastcc i32 @stitch_process_data(ptr noundef %6, ptr noundef %4, i32 noundef 0) #16, !range !22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %147

144:                                              ; preds = %3
  br label %147

145:                                              ; preds = %136, %140, %128, %120, %95, %99, %83, %71, %58, %43, %18, %22
  tail call fastcc void @stitch_update_header(ptr noundef %6, ptr noundef %0) #16
  %146 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  tail call void @ED_region_tag_redraw(ptr noundef %146) #15
  br label %147

147:                                              ; preds = %124, %112, %116, %79, %67, %50, %54, %35, %39, %26, %3, %145, %144, %143, %135, %123, %111, %106, %94, %78, %66, %49, %34, %33, %25, %9
  %148 = phi i32 [ 1, %144 ], [ 1, %145 ], [ 2, %143 ], [ 2, %135 ], [ 2, %123 ], [ 2, %111 ], [ 2, %106 ], [ 2, %94 ], [ 2, %78 ], [ 2, %66 ], [ 2, %49 ], [ 4, %33 ], [ 2, %34 ], [ 2, %25 ], [ 2, %9 ], [ 8, %3 ], [ 8, %26 ], [ 8, %39 ], [ 8, %35 ], [ 8, %54 ], [ 8, %50 ], [ 1, %67 ], [ 1, %79 ], [ 1, %116 ], [ 1, %112 ], [ 1, %124 ]
  ret i32 %148
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stitch_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %4 = tail call fastcc i32 @stitch_init(ptr noundef %0, ptr noundef %1) #16, !range !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = tail call fastcc i32 @stitch_process_data(ptr noundef %8, ptr noundef %3, i32 noundef 1) #16, !range !22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %13

12:                                               ; preds = %6
  tail call void @stitch_cancel(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %13

13:                                               ; preds = %2, %12, %11
  %14 = phi i32 [ 4, %11 ], [ 2, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stitch_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @stitch_exit(ptr noundef %0, ptr noundef %1, i32 noundef 0) #16
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_uvedit(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stitch_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.CollectionPropertyIterator, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.CollectionPropertyIterator, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.UvEdge, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #15
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 26
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 16) #15
  %22 = icmp eq ptr %16, null
  br i1 %22, label %571, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %25 = tail call ptr %24(i64 noundef 144, ptr noundef nonnull @.str.33) #15
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = tail call i32 @RNA_boolean_get(ptr noundef %28, ptr noundef nonnull @.str.8) #15
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 1
  store i8 %30, ptr %31, align 4, !tbaa !44
  %32 = load ptr, ptr %27, align 8, !tbaa !73
  %33 = tail call float @RNA_float_get(ptr noundef %32, ptr noundef nonnull @.str.14) #15
  %34 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 2
  store float %33, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 5
  store ptr %18, ptr %35, align 8, !tbaa !74
  %36 = load ptr, ptr %27, align 8, !tbaa !73
  %37 = tail call i32 @RNA_boolean_get(ptr noundef %36, ptr noundef nonnull @.str.11) #15
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 3
  store i8 %38, ptr %39, align 4, !tbaa !50
  %40 = load ptr, ptr %27, align 8, !tbaa !73
  %41 = tail call i32 @RNA_int_get(ptr noundef %40, ptr noundef nonnull @.str.17) #15
  %42 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 18
  store i32 %41, ptr %42, align 4, !tbaa !45
  %43 = load ptr, ptr %27, align 8, !tbaa !73
  %44 = tail call i32 @RNA_boolean_get(ptr noundef %43, ptr noundef nonnull @.str.20) #15
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 4
  store i8 %45, ptr %46, align 1, !tbaa !49
  %47 = load ptr, ptr %27, align 8, !tbaa !73
  %48 = tail call i32 @RNA_boolean_get(ptr noundef %47, ptr noundef nonnull @.str.23) #15
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 6
  store i8 %49, ptr %50, align 8, !tbaa !75
  %51 = load ptr, ptr %27, align 8, !tbaa !73
  %52 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %51, ptr noundef nonnull @.str.26) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %23
  %55 = load ptr, ptr %27, align 8, !tbaa !73
  %56 = tail call i32 @RNA_enum_get(ptr noundef %55, ptr noundef nonnull @.str.26) #15
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 20
  store i8 %57, ptr %58, align 8, !tbaa !76
  %59 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 11
  %60 = load i8, ptr %59, align 2, !tbaa !77
  br label %81

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 11
  %63 = load i8, ptr %62, align 2, !tbaa !77
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 20
  br i1 %65, label %74, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  %69 = load i16, ptr %68, align 2, !tbaa !84
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i8 0, ptr %66, align 8, !tbaa !76
  br label %81

73:                                               ; preds = %67
  store i8 1, ptr %66, align 8, !tbaa !76
  br label %81

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 12
  %76 = load i8, ptr %75, align 1, !tbaa !85
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i8 0, ptr %66, align 8, !tbaa !76
  br label %81

80:                                               ; preds = %74
  store i8 1, ptr %66, align 8, !tbaa !76
  br label %81

81:                                               ; preds = %73, %72, %80, %79, %54
  %82 = phi i8 [ %63, %73 ], [ %63, %72 ], [ %63, %80 ], [ %63, %79 ], [ %60, %54 ]
  %83 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 11
  %84 = and i8 %82, 1
  %85 = load ptr, ptr %35, align 8, !tbaa !74
  %86 = load ptr, ptr %85, align 8, !tbaa !70
  %87 = xor i8 %84, 1
  %88 = tail call ptr @BM_uv_element_map_create(ptr noundef %86, i8 noundef zeroext %87, i8 noundef zeroext 1) #15
  %89 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 7
  store ptr %88, ptr %89, align 8
  %90 = icmp eq ptr %88, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  tail call fastcc void @state_delete(ptr noundef nonnull %25) #16
  br label %571

92:                                               ; preds = %81
  call void @uvedit_get_aspect(ptr noundef nonnull %13, ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %93 = load float, ptr %5, align 4, !tbaa !86
  %94 = load float, ptr %6, align 4, !tbaa !86
  %95 = fdiv float %93, %94
  store float %95, ptr %25, align 8, !tbaa !87
  %96 = load ptr, ptr %89, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !47
  %99 = load i32, ptr %42, align 4, !tbaa !45
  %100 = srem i32 %99, %98
  store i32 %100, ptr %42, align 4, !tbaa !45
  %101 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !88
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.UvElementMap, ptr %96, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !89
  %107 = zext nneg i32 %102 to i64
  br label %108

108:                                              ; preds = %104, %108
  %109 = phi i64 [ 0, %104 ], [ %116, %108 ]
  %110 = phi i32 [ 0, %104 ], [ %115, %108 ]
  %111 = getelementptr inbounds %struct.UvElement, ptr %106, i64 %109, i32 3
  %112 = load i8, ptr %111, align 2, !tbaa !90
  %113 = icmp ne i8 %112, 0
  %114 = zext i1 %113 to i32
  %115 = add nuw nsw i32 %110, %114
  %116 = add nuw nsw i64 %109, 1
  %117 = icmp eq i64 %116, %107
  br i1 %117, label %118, label %108, !llvm.loop !92

118:                                              ; preds = %108, %92
  %119 = phi i32 [ 0, %92 ], [ %115, %108 ]
  %120 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 22
  store ptr null, ptr %120, align 8, !tbaa !94
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %122 = sext i32 %119 to i64
  %123 = shl nsw i64 %122, 3
  %124 = call ptr %121(i64 noundef %123, ptr noundef nonnull @.str.34) #15
  %125 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 9
  store ptr %124, ptr %125, align 8, !tbaa !95
  %126 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %127 = call ptr %126(i64 noundef %123, ptr noundef nonnull @.str.35) #15
  %128 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 11
  store ptr %127, ptr %128, align 8, !tbaa !96
  %129 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 15
  store i32 %119, ptr %129, align 4, !tbaa !97
  %130 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %131 = load ptr, ptr %89, align 8, !tbaa !46
  %132 = getelementptr inbounds %struct.UvElementMap, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !88
  %134 = sext i32 %133 to i64
  %135 = shl nsw i64 %134, 2
  %136 = call ptr %130(i64 noundef %135, ptr noundef nonnull @.str.36) #15
  %137 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 10
  store ptr %136, ptr %137, align 8, !tbaa !98
  %138 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.37) #15
  %139 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %140 = load ptr, ptr %89, align 8, !tbaa !46
  %141 = getelementptr inbounds %struct.UvElementMap, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !88
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, 40
  %145 = call ptr %139(i64 noundef %144, ptr noundef nonnull @.str.38) #15
  %146 = load ptr, ptr %125, align 8, !tbaa !95
  %147 = insertelement <4 x ptr> poison, ptr %136, i64 0
  %148 = insertelement <4 x ptr> %147, ptr %146, i64 1
  %149 = insertelement <4 x ptr> %148, ptr %138, i64 2
  %150 = insertelement <4 x ptr> %149, ptr %145, i64 3
  %151 = freeze <4 x ptr> %150
  %152 = icmp eq <4 x ptr> %151, zeroinitializer
  %153 = bitcast <4 x i1> %152 to i4
  %154 = icmp eq i4 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %118
  %156 = load ptr, ptr %18, align 8, !tbaa !70
  %157 = load i32, ptr %156, align 8, !tbaa !99
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %210

159:                                              ; preds = %155
  %160 = load ptr, ptr %89, align 8, !tbaa !46
  br label %162

161:                                              ; preds = %118
  call fastcc void @state_delete(ptr noundef nonnull %25) #16
  br label %571

162:                                              ; preds = %159, %201
  %163 = phi i32 [ %157, %159 ], [ %202, %201 ]
  %164 = phi ptr [ %156, %159 ], [ %203, %201 ]
  %165 = phi ptr [ %160, %159 ], [ %204, %201 ]
  %166 = phi ptr [ %160, %159 ], [ %205, %201 ]
  %167 = phi i64 [ 0, %159 ], [ %207, %201 ]
  %168 = phi i32 [ -1, %159 ], [ %206, %201 ]
  %169 = load ptr, ptr %166, align 8, !tbaa !102
  %170 = getelementptr inbounds ptr, ptr %169, i64 %167
  %171 = load ptr, ptr %170, align 8, !tbaa !72
  %172 = icmp eq ptr %171, null
  br i1 %172, label %201, label %173

173:                                              ; preds = %162, %186
  %174 = phi ptr [ %187, %186 ], [ %165, %162 ]
  %175 = phi ptr [ %196, %186 ], [ %171, %162 ]
  %176 = phi i32 [ %188, %186 ], [ %168, %162 ]
  %177 = getelementptr inbounds %struct.UvElement, ptr %175, i64 0, i32 3
  %178 = load i8, ptr %177, align 2, !tbaa !90
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %173
  %181 = add nsw i32 %176, 1
  %182 = load ptr, ptr %125, align 8, !tbaa !95
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds ptr, ptr %182, i64 %183
  store ptr %175, ptr %184, align 8, !tbaa !72
  %185 = load ptr, ptr %89, align 8, !tbaa !46
  br label %186

186:                                              ; preds = %180, %173
  %187 = phi ptr [ %185, %180 ], [ %174, %173 ]
  %188 = phi i32 [ %181, %180 ], [ %176, %173 ]
  %189 = getelementptr inbounds %struct.UvElementMap, ptr %187, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !89
  %191 = ptrtoint ptr %175 to i64
  %192 = ptrtoint ptr %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 24
  %195 = getelementptr inbounds i32, ptr %136, i64 %194
  store i32 %188, ptr %195, align 4, !tbaa !103
  %196 = load ptr, ptr %175, align 8, !tbaa !72
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %173, !llvm.loop !104

198:                                              ; preds = %186
  %199 = load ptr, ptr %18, align 8, !tbaa !70
  %200 = load i32, ptr %199, align 8, !tbaa !99
  br label %201

201:                                              ; preds = %198, %162
  %202 = phi i32 [ %163, %162 ], [ %200, %198 ]
  %203 = phi ptr [ %164, %162 ], [ %199, %198 ]
  %204 = phi ptr [ %165, %162 ], [ %187, %198 ]
  %205 = phi ptr [ %166, %162 ], [ %187, %198 ]
  %206 = phi i32 [ %168, %162 ], [ %188, %198 ]
  %207 = add nuw nsw i64 %167, 1
  %208 = sext i32 %202 to i64
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %162, label %210, !llvm.loop !105

210:                                              ; preds = %201, %155
  %211 = phi ptr [ %156, %155 ], [ %203, %201 ]
  %212 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %211, i8 noundef zeroext 3, ptr noundef null) #16
  %213 = icmp eq ptr %212, null
  br i1 %213, label %283, label %214

214:                                              ; preds = %210, %279
  %215 = phi i32 [ %280, %279 ], [ 0, %210 ]
  %216 = phi ptr [ %281, %279 ], [ %212, %210 ]
  %217 = load i8, ptr %83, align 2, !tbaa !77
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %216, i8 noundef zeroext 2) #16, !range !106
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %279

223:                                              ; preds = %220
  %224 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %216, i8 noundef zeroext 1) #16, !range !106
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %279, label %226

226:                                              ; preds = %223, %214
  %227 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %216) #16
  %228 = icmp eq ptr %227, null
  br i1 %228, label %279, label %229

229:                                              ; preds = %226
  %230 = sext i32 %215 to i64
  br label %231

231:                                              ; preds = %229, %273
  %232 = phi i64 [ %230, %229 ], [ %274, %273 ]
  %233 = phi ptr [ %227, %229 ], [ %275, %273 ]
  %234 = load ptr, ptr %89, align 8, !tbaa !46
  %235 = call ptr @BM_uv_element_get(ptr noundef %234, ptr noundef nonnull %216, ptr noundef nonnull %233) #15
  %236 = load ptr, ptr %89, align 8, !tbaa !46
  %237 = getelementptr inbounds %struct.UvElementMap, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !89
  %239 = ptrtoint ptr %235 to i64
  %240 = ptrtoint ptr %238 to i64
  %241 = sub i64 %239, %240
  %242 = sdiv exact i64 %241, 24
  %243 = getelementptr inbounds %struct.BMLoop, ptr %233, i64 0, i32 6
  %244 = load ptr, ptr %243, align 8, !tbaa !107
  %245 = call ptr @BM_uv_element_get(ptr noundef %236, ptr noundef nonnull %216, ptr noundef %244) #15
  %246 = load ptr, ptr %89, align 8, !tbaa !46
  %247 = getelementptr inbounds %struct.UvElementMap, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !89
  %249 = ptrtoint ptr %245 to i64
  %250 = ptrtoint ptr %248 to i64
  %251 = sub i64 %249, %250
  %252 = sdiv exact i64 %251, 24
  %253 = shl i64 %242, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr inbounds i32, ptr %136, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !103
  %257 = shl i64 %252, 32
  %258 = ashr exact i64 %257, 32
  %259 = getelementptr inbounds i32, ptr %136, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !103
  %261 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %232
  %262 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %232, i32 4
  %263 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %232, i32 2
  store i8 0, ptr %263, align 8, !tbaa !110
  %264 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %232, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %262, i8 0, i64 16, i1 false)
  store ptr %235, ptr %264, align 8, !tbaa !112
  %265 = call i32 @llvm.smin.i32(i32 %256, i32 %260)
  %266 = call i32 @llvm.smax.i32(i32 %256, i32 %260)
  store i32 %265, ptr %261, align 8
  %267 = getelementptr inbounds %struct.UvEdge, ptr %145, i64 %232, i32 1
  store i32 %266, ptr %267, align 4
  %268 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %138, ptr noundef nonnull %261) #15
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %231
  %271 = getelementptr inbounds %struct.UvEdge, ptr %268, i64 0, i32 2
  store i8 0, ptr %271, align 8, !tbaa !110
  br label %273

272:                                              ; preds = %231
  call void @BLI_ghash_insert(ptr noundef nonnull %138, ptr noundef nonnull %261, ptr noundef nonnull %261) #15
  store i8 8, ptr %263, align 8, !tbaa !110
  br label %273

273:                                              ; preds = %272, %270
  %274 = add i64 %232, 1
  %275 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %231, !llvm.loop !113

277:                                              ; preds = %273
  %278 = trunc i64 %274 to i32
  br label %279

279:                                              ; preds = %277, %226, %220, %223
  %280 = phi i32 [ %215, %220 ], [ %215, %223 ], [ %215, %226 ], [ %278, %277 ]
  %281 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %214, !llvm.loop !114

283:                                              ; preds = %279, %210
  %284 = call ptr @BLI_ghashIterator_new(ptr noundef nonnull %138) #15
  %285 = call i32 @BLI_ghash_size(ptr noundef nonnull %138) #15
  %286 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %287 = sext i32 %285 to i64
  %288 = mul nsw i64 %287, 40
  %289 = call ptr %286(i64 noundef %288, ptr noundef nonnull @.str.39) #15
  %290 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 12
  store ptr %289, ptr %290, align 8, !tbaa !115
  %291 = icmp eq ptr %289, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  call void @BLI_ghashIterator_free(ptr noundef %284) #15
  call fastcc void @state_delete(ptr noundef nonnull %25) #16
  br label %571

293:                                              ; preds = %283
  %294 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 14
  store i32 %285, ptr %294, align 8, !tbaa !116
  call void @BLI_ghashIterator_init(ptr noundef %284, ptr noundef nonnull %138) #15
  %295 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %284) #16, !range !117
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %293, %297
  %298 = phi i64 [ %299, %297 ], [ 0, %293 ]
  %299 = add nuw i64 %298, 1
  %300 = getelementptr inbounds %struct.UvEdge, ptr %289, i64 %298
  %301 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %284) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %300, ptr noundef nonnull align 8 dereferenceable(40) %301, i64 40, i1 false), !tbaa.struct !118
  call void @BLI_ghashIterator_step(ptr noundef %284) #15
  %302 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %284) #16, !range !117
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %297, label %304, !llvm.loop !120

304:                                              ; preds = %297, %293
  call void @BLI_ghashIterator_free(ptr noundef %284) #15
  %305 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %305(ptr noundef nonnull %145) #15
  call void @BLI_ghash_free(ptr noundef nonnull %138, ptr noundef null, ptr noundef null) #15
  %306 = call ptr @BLI_ghash_new(ptr noundef nonnull @uv_edge_hash, ptr noundef nonnull @uv_edge_compare, ptr noundef nonnull @.str.37) #15
  %307 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 13
  store ptr %306, ptr %307, align 8, !tbaa !121
  %308 = icmp sgt i32 %285, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %304
  call fastcc void @stitch_uv_edge_generate_linked_edges(ptr noundef %306, ptr noundef nonnull %25) #16
  br label %353

310:                                              ; preds = %304
  %311 = zext nneg i32 %285 to i64
  br label %312

312:                                              ; preds = %310, %312
  %313 = phi i64 [ 0, %310 ], [ %315, %312 ]
  %314 = getelementptr inbounds %struct.UvEdge, ptr %289, i64 %313
  call void @BLI_ghash_insert(ptr noundef %306, ptr noundef nonnull %314, ptr noundef nonnull %314) #15
  %315 = add nuw nsw i64 %313, 1
  %316 = icmp eq i64 %315, %311
  br i1 %316, label %317, label %312, !llvm.loop !122

317:                                              ; preds = %312
  call fastcc void @stitch_uv_edge_generate_linked_edges(ptr noundef %306, ptr noundef nonnull %25) #16
  br i1 %308, label %318, label %353

318:                                              ; preds = %317
  %319 = zext nneg i32 %285 to i64
  br label %320

320:                                              ; preds = %318, %350
  %321 = phi i64 [ 0, %318 ], [ %351, %350 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %322 = getelementptr inbounds %struct.UvEdge, ptr %289, i64 %321, i32 2
  %323 = load i8, ptr %322, align 8, !tbaa !110
  %324 = and i8 %323, 8
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %350, label %326

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.UvEdge, ptr %289, i64 %321
  %328 = load float, ptr %25, align 8, !tbaa !87
  call fastcc void @stitch_calculate_edge_normal(ptr noundef nonnull %18, ptr noundef nonnull %327, ptr noundef nonnull %7, float noundef %328) #16
  %329 = load ptr, ptr %128, align 8, !tbaa !96
  %330 = load i32, ptr %327, align 8, !tbaa !123
  %331 = shl i32 %330, 1
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds float, ptr %329, i64 %332
  call fastcc void @add_v2_v2(ptr noundef %333, ptr noundef nonnull %7) #16
  %334 = load ptr, ptr %128, align 8, !tbaa !96
  %335 = getelementptr inbounds %struct.UvEdge, ptr %289, i64 %321, i32 1
  %336 = load i32, ptr %335, align 4, !tbaa !124
  %337 = shl i32 %336, 1
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds float, ptr %334, i64 %338
  call fastcc void @add_v2_v2(ptr noundef %339, ptr noundef nonnull %7) #16
  %340 = load ptr, ptr %128, align 8, !tbaa !96
  %341 = load i32, ptr %327, align 8, !tbaa !123
  %342 = shl i32 %341, 1
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds float, ptr %340, i64 %343
  call fastcc void @normalize_v2(ptr noundef %344) #16
  %345 = load ptr, ptr %128, align 8, !tbaa !96
  %346 = load i32, ptr %335, align 4, !tbaa !124
  %347 = shl i32 %346, 1
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds float, ptr %345, i64 %348
  call fastcc void @normalize_v2(ptr noundef %349) #16
  br label %350

350:                                              ; preds = %326, %320
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %351 = add nuw nsw i64 %321, 1
  %352 = icmp eq i64 %351, %319
  br i1 %352, label %353, label %320, !llvm.loop !125

353:                                              ; preds = %350, %309, %317
  %354 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 17
  store i32 0, ptr %354, align 8, !tbaa !126
  %355 = load ptr, ptr %27, align 8, !tbaa !73
  %356 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %355, ptr noundef nonnull @.str.31) #15
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %446, label %358

358:                                              ; preds = %353
  %359 = load ptr, ptr %27, align 8, !tbaa !73
  %360 = call i32 @RNA_enum_get(ptr noundef %359, ptr noundef nonnull @.str.29) #15
  %361 = load ptr, ptr %18, align 8, !tbaa !70
  call void @BM_mesh_elem_table_ensure(ptr noundef %361, i8 noundef zeroext 8) #15
  %362 = icmp eq i32 %360, 0
  %363 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %364 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 16
  br i1 %362, label %365, label %387

365:                                              ; preds = %358
  %366 = load i32, ptr %129, align 4, !tbaa !97
  %367 = sext i32 %366 to i64
  %368 = shl nsw i64 %367, 3
  %369 = call ptr %363(i64 noundef %368, ptr noundef nonnull @.str.40) #15
  store ptr %369, ptr %364, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #17
  %370 = load ptr, ptr %27, align 8, !tbaa !73
  call void @RNA_collection_begin(ptr noundef %370, ptr noundef nonnull @.str.31, ptr noundef nonnull %8) #15
  %371 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 7
  %372 = load i32, ptr %371, align 8, !tbaa !128
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %386, label %374

374:                                              ; preds = %365
  %375 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 6
  br label %376

376:                                              ; preds = %374, %376
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %375, i64 24, i1 false), !tbaa.struct !132
  %377 = call i32 @RNA_int_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.41) #15
  %378 = call i32 @RNA_int_get(ptr noundef nonnull %9, ptr noundef nonnull @.str.42) #15
  %379 = load ptr, ptr %18, align 8, !tbaa !70
  %380 = call ptr @BM_face_at_index(ptr noundef %379, i32 noundef %377) #15
  %381 = load ptr, ptr %89, align 8, !tbaa !46
  %382 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %380, i32 noundef %378) #15
  %383 = call ptr @BM_uv_element_get(ptr noundef %381, ptr noundef %380, ptr noundef %382) #15
  call fastcc void @stitch_select_uv(ptr noundef %383, ptr noundef nonnull %25, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  call void @RNA_property_collection_next(ptr noundef nonnull %8) #15
  %384 = load i32, ptr %371, align 8, !tbaa !128
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %376, !llvm.loop !133

386:                                              ; preds = %376, %365
  call void @RNA_property_collection_end(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #17
  br label %437

387:                                              ; preds = %358
  %388 = load i32, ptr %294, align 8, !tbaa !116
  %389 = sext i32 %388 to i64
  %390 = shl nsw i64 %389, 3
  %391 = call ptr %363(i64 noundef %390, ptr noundef nonnull @.str.40) #15
  store ptr %391, ptr %364, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %10) #17
  %392 = load ptr, ptr %27, align 8, !tbaa !73
  call void @RNA_collection_begin(ptr noundef %392, ptr noundef nonnull @.str.31, ptr noundef nonnull %10) #15
  %393 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 7
  %394 = load i32, ptr %393, align 8, !tbaa !128
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %436, label %396

396:                                              ; preds = %387
  %397 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 6
  %398 = getelementptr inbounds %struct.UvEdge, ptr %12, i64 0, i32 1
  br label %399

399:                                              ; preds = %396, %399
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %397, i64 24, i1 false), !tbaa.struct !132
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #17
  %400 = call i32 @RNA_int_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.41) #15
  %401 = call i32 @RNA_int_get(ptr noundef nonnull %11, ptr noundef nonnull @.str.42) #15
  %402 = load ptr, ptr %18, align 8, !tbaa !70
  %403 = call ptr @BM_face_at_index(ptr noundef %402, i32 noundef %400) #15
  %404 = load ptr, ptr %89, align 8, !tbaa !46
  %405 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %403, i32 noundef %401) #15
  %406 = call ptr @BM_uv_element_get(ptr noundef %404, ptr noundef %403, ptr noundef %405) #15
  %407 = load ptr, ptr %89, align 8, !tbaa !46
  %408 = getelementptr inbounds %struct.UvElementMap, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !89
  %410 = ptrtoint ptr %406 to i64
  %411 = ptrtoint ptr %409 to i64
  %412 = sub i64 %410, %411
  %413 = sdiv exact i64 %412, 24
  %414 = getelementptr inbounds i32, ptr %136, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !103
  %416 = add nsw i32 %401, 1
  %417 = getelementptr inbounds %struct.BMFace, ptr %403, i64 0, i32 3
  %418 = load i32, ptr %417, align 8, !tbaa !134
  %419 = srem i32 %416, %418
  %420 = call ptr @BM_iter_at_index(ptr noundef null, i8 noundef zeroext 11, ptr noundef %403, i32 noundef %419) #15
  %421 = call ptr @BM_uv_element_get(ptr noundef %407, ptr noundef %403, ptr noundef %420) #15
  %422 = load ptr, ptr %89, align 8, !tbaa !46
  %423 = getelementptr inbounds %struct.UvElementMap, ptr %422, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !89
  %425 = ptrtoint ptr %421 to i64
  %426 = ptrtoint ptr %424 to i64
  %427 = sub i64 %425, %426
  %428 = sdiv exact i64 %427, 24
  %429 = getelementptr inbounds i32, ptr %136, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !103
  %431 = call i32 @llvm.smin.i32(i32 %415, i32 %430)
  %432 = call i32 @llvm.smax.i32(i32 %415, i32 %430)
  store i32 %431, ptr %12, align 8, !tbaa !123
  store i32 %432, ptr %398, align 4, !tbaa !124
  %433 = call ptr @BLI_ghash_lookup(ptr noundef %306, ptr noundef nonnull %12) #15
  call fastcc void @stitch_select_edge(ptr noundef %433, ptr noundef nonnull %25, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  call void @RNA_property_collection_next(ptr noundef nonnull %10) #15
  %434 = load i32, ptr %393, align 8, !tbaa !128
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %399, !llvm.loop !136

436:                                              ; preds = %399, %387
  call void @RNA_property_collection_end(ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #17
  br label %437

437:                                              ; preds = %436, %386
  %438 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 20
  %439 = load i8, ptr %438, align 8, !tbaa !76
  %440 = zext i8 %439 to i32
  %441 = icmp eq i32 %360, %440
  br i1 %441, label %444, label %442

442:                                              ; preds = %437
  %443 = trunc i32 %360 to i8
  store i8 %443, ptr %438, align 8, !tbaa !76
  call fastcc void @stitch_switch_selection_mode(ptr noundef nonnull %25) #16
  br label %444

444:                                              ; preds = %442, %437
  %445 = load ptr, ptr %27, align 8, !tbaa !73
  call void @RNA_collection_clear(ptr noundef %445, ptr noundef nonnull @.str.31) #15
  br label %515

446:                                              ; preds = %353
  %447 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 20
  %448 = load i8, ptr %447, align 8, !tbaa !76
  %449 = icmp eq i8 %448, 0
  %450 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %451 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 16
  br i1 %449, label %452, label %479

452:                                              ; preds = %446
  %453 = load i32, ptr %129, align 4, !tbaa !97
  %454 = sext i32 %453 to i64
  %455 = shl nsw i64 %454, 3
  %456 = call ptr %450(i64 noundef %455, ptr noundef nonnull @.str.40) #15
  store ptr %456, ptr %451, align 8, !tbaa !127
  %457 = load ptr, ptr %18, align 8, !tbaa !70
  %458 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %457, i8 noundef zeroext 3, ptr noundef null) #16
  %459 = icmp eq ptr %458, null
  br i1 %459, label %515, label %460

460:                                              ; preds = %452, %476
  %461 = phi ptr [ %477, %476 ], [ %458, %452 ]
  %462 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %461) #16
  %463 = icmp eq ptr %462, null
  br i1 %463, label %476, label %464

464:                                              ; preds = %460, %473
  %465 = phi ptr [ %474, %473 ], [ %462, %460 ]
  %466 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %13, ptr noundef nonnull %465, i32 noundef %21) #15
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %473, label %468

468:                                              ; preds = %464
  %469 = load ptr, ptr %89, align 8, !tbaa !46
  %470 = call ptr @BM_uv_element_get(ptr noundef %469, ptr noundef nonnull %461, ptr noundef nonnull %465) #15
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %468
  call fastcc void @stitch_select_uv(ptr noundef nonnull %470, ptr noundef nonnull %25, i32 noundef 1) #16
  br label %473

473:                                              ; preds = %468, %472, %464
  %474 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %464, !llvm.loop !137

476:                                              ; preds = %473, %460
  %477 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %478 = icmp eq ptr %477, null
  br i1 %478, label %515, label %460, !llvm.loop !138

479:                                              ; preds = %446
  %480 = load i32, ptr %294, align 8, !tbaa !116
  %481 = sext i32 %480 to i64
  %482 = shl nsw i64 %481, 3
  %483 = call ptr %450(i64 noundef %482, ptr noundef nonnull @.str.40) #15
  store ptr %483, ptr %451, align 8, !tbaa !127
  %484 = load ptr, ptr %18, align 8, !tbaa !70
  %485 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %484, i8 noundef zeroext 3, ptr noundef null) #16
  %486 = icmp eq ptr %485, null
  br i1 %486, label %515, label %487

487:                                              ; preds = %479, %512
  %488 = phi ptr [ %513, %512 ], [ %485, %479 ]
  %489 = load i8, ptr %83, align 2, !tbaa !77
  %490 = and i8 %489, 1
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %487
  %493 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %488, i8 noundef zeroext 2) #16, !range !106
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %512

495:                                              ; preds = %492
  %496 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %488, i8 noundef zeroext 1) #16, !range !106
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %512, label %498

498:                                              ; preds = %495, %487
  %499 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %488) #16
  %500 = icmp eq ptr %499, null
  br i1 %500, label %512, label %501

501:                                              ; preds = %498, %509
  %502 = phi ptr [ %510, %509 ], [ %499, %498 ]
  %503 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %13, ptr noundef nonnull %502, i32 noundef %21) #15
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %509, label %505

505:                                              ; preds = %501
  %506 = call fastcc ptr @uv_edge_get(ptr noundef nonnull %502, ptr noundef nonnull %25) #16
  %507 = icmp eq ptr %506, null
  br i1 %507, label %509, label %508

508:                                              ; preds = %505
  call fastcc void @stitch_select_edge(ptr noundef nonnull %506, ptr noundef nonnull %25, i32 noundef 1) #16
  br label %509

509:                                              ; preds = %505, %508, %501
  %510 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %501, !llvm.loop !139

512:                                              ; preds = %509, %498, %492, %495
  %513 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %487, !llvm.loop !140

515:                                              ; preds = %512, %476, %479, %452, %444
  %516 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %517 = load ptr, ptr %89, align 8, !tbaa !46
  %518 = getelementptr inbounds %struct.UvElementMap, ptr %517, i64 0, i32 3
  %519 = load i32, ptr %518, align 4, !tbaa !47
  %520 = sext i32 %519 to i64
  %521 = shl nsw i64 %520, 2
  %522 = call ptr %516(i64 noundef %521, ptr noundef nonnull @.str.43) #15
  %523 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 19
  store ptr %522, ptr %523, align 8, !tbaa !141
  %524 = load ptr, ptr %89, align 8, !tbaa !46
  %525 = getelementptr inbounds %struct.UvElementMap, ptr %524, i64 0, i32 3
  %526 = load i32, ptr %525, align 4, !tbaa !47
  %527 = icmp sgt i32 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %515, %528
  %529 = phi i64 [ %531, %528 ], [ 0, %515 ]
  %530 = getelementptr inbounds i32, ptr %522, i64 %529
  store i32 0, ptr %530, align 4, !tbaa !103
  %531 = add nuw nsw i64 %529, 1
  %532 = load i32, ptr %525, align 4, !tbaa !47
  %533 = sext i32 %532 to i64
  %534 = icmp slt i64 %531, %533
  br i1 %534, label %528, label %535, !llvm.loop !142

535:                                              ; preds = %528, %515
  %536 = load ptr, ptr %18, align 8, !tbaa !70
  %537 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %536, i8 noundef zeroext 3, ptr noundef null) #16
  %538 = icmp eq ptr %537, null
  br i1 %538, label %562, label %539

539:                                              ; preds = %535, %559
  %540 = phi ptr [ %560, %559 ], [ %537, %535 ]
  %541 = load ptr, ptr %89, align 8, !tbaa !46
  %542 = getelementptr inbounds %struct.BMFace, ptr %540, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !143
  %544 = call ptr @BM_uv_element_get(ptr noundef %541, ptr noundef nonnull %540, ptr noundef %543) #15
  %545 = icmp eq ptr %544, null
  br i1 %545, label %559, label %546

546:                                              ; preds = %539
  %547 = getelementptr inbounds %struct.BMFace, ptr %540, i64 0, i32 3
  %548 = load i32, ptr %547, align 8, !tbaa !134
  %549 = icmp sgt i32 %548, 2
  %550 = add nsw i32 %548, -2
  %551 = select i1 %549, i32 %550, i32 0
  %552 = load ptr, ptr %523, align 8, !tbaa !141
  %553 = getelementptr inbounds %struct.UvElement, ptr %544, i64 0, i32 5
  %554 = load i16, ptr %553, align 4, !tbaa !144
  %555 = zext i16 %554 to i64
  %556 = getelementptr inbounds i32, ptr %552, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !103
  %558 = add i32 %557, %551
  store i32 %558, ptr %556, align 4, !tbaa !103
  br label %559

559:                                              ; preds = %546, %539
  %560 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #16
  %561 = icmp eq ptr %560, null
  br i1 %561, label %562, label %539, !llvm.loop !145

562:                                              ; preds = %559, %535
  %563 = call fastcc i32 @stitch_process_data(ptr noundef nonnull %25, ptr noundef %13, i32 noundef 0) #16, !range !22
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  call fastcc void @state_delete(ptr noundef nonnull %25) #16
  br label %571

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 20
  %568 = load ptr, ptr %567, align 8, !tbaa !146
  %569 = call ptr @ED_region_draw_cb_activate(ptr noundef %568, ptr noundef nonnull @stitch_draw, ptr noundef nonnull %25, i32 noundef 0) #15
  %570 = getelementptr inbounds %struct.StitchState, ptr %25, i64 0, i32 21
  store ptr %569, ptr %570, align 8, !tbaa !149
  call fastcc void @stitch_update_header(ptr noundef nonnull %25, ptr noundef %0) #16
  br label %571

571:                                              ; preds = %2, %566, %565, %292, %161, %91
  %572 = phi i32 [ 1, %566 ], [ 0, %565 ], [ 0, %292 ], [ 0, %161 ], [ 0, %91 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret i32 %572
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @state_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BM_uv_element_map_free(ptr noundef nonnull %5) #15
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %13(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %19(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %25(ptr noundef nonnull %22) #15
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %31(ptr noundef nonnull %28) #15
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %37(ptr noundef nonnull %34) #15
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %43(ptr noundef nonnull %40) #15
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 22
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call fastcc void @stitch_preview_delete(ptr noundef nonnull %46) #16
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @BLI_ghash_free(ptr noundef nonnull %51, ptr noundef null, ptr noundef null) #15
  br label %54

54:                                               ; preds = %53, %49
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %55(ptr noundef nonnull %0) #15
  br label %56

56:                                               ; preds = %54, %1
  ret void
}

; Function Attrs: optsize
declare void @uvedit_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @uv_edge_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !124
  %4 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %3) #15
  %5 = load i32, ptr %0, align 8, !tbaa !123
  %6 = tail call i32 @BLI_ghashutil_uinthash(i32 noundef %5) #15
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @uv_edge_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !123
  %4 = load i32, ptr %1, align 8, !tbaa !123
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !124
  %9 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !124
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %2
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i8 [ 1, %12 ], [ 0, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #16
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !150
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_uv_edge_generate_linked_edges(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.UvEdge, align 8
  %4 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !116
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.UvElementMap, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 9
  %17 = ptrtoint ptr %15 to i64
  %18 = getelementptr inbounds %struct.UvEdge, ptr %3, i64 0, i32 1
  br label %19

19:                                               ; preds = %13, %114
  %20 = phi i32 [ %11, %13 ], [ %115, %114 ]
  %21 = phi i64 [ 0, %13 ], [ %116, %114 ]
  %22 = getelementptr inbounds %struct.UvEdge, ptr %5, i64 %21
  %23 = getelementptr inbounds %struct.UvEdge, ptr %5, i64 %21, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !157
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %114

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.UvEdge, ptr %5, i64 %21, i32 2
  %28 = load i8, ptr %27, align 8, !tbaa !110
  %29 = and i8 %28, 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %111, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %16, align 8, !tbaa !95
  %33 = load i32, ptr %22, align 8, !tbaa !123
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.UvEdge, ptr %5, i64 %21, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !124
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %32, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = load ptr, ptr %9, align 8, !tbaa !102
  %43 = getelementptr inbounds %struct.UvElement, ptr %36, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !158
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !159
  %47 = call fastcc i32 @_bm_elem_index_get(ptr noundef %46) #16
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %42, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.UvElement, ptr %41, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !158
  %53 = getelementptr inbounds %struct.BMLoop, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = call fastcc i32 @_bm_elem_index_get(ptr noundef %54) #16
  store ptr %22, ptr %23, align 8, !tbaa !157
  %56 = icmp eq ptr %50, null
  br i1 %56, label %114, label %57

57:                                               ; preds = %31, %107
  %58 = phi ptr [ %109, %107 ], [ %50, %31 ]
  %59 = phi ptr [ %108, %107 ], [ %22, %31 ]
  %60 = getelementptr inbounds %struct.UvElement, ptr %58, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !158
  %62 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !107
  %64 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !159
  %66 = call fastcc i32 @_bm_elem_index_get(ptr noundef %65) #16
  %67 = icmp eq i32 %66, %55
  br i1 %67, label %75, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !160
  %71 = getelementptr inbounds %struct.BMLoop, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  %73 = call fastcc i32 @_bm_elem_index_get(ptr noundef %72) #16
  %74 = icmp eq i32 %73, %55
  br i1 %74, label %75, label %107

75:                                               ; preds = %68, %57
  %76 = phi ptr [ %63, %57 ], [ %70, %68 ]
  %77 = getelementptr inbounds %struct.BMLoop, ptr %61, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !161
  %79 = call ptr @BM_uv_element_get(ptr noundef nonnull %9, ptr noundef %78, ptr noundef nonnull %76) #15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %107, label %81

81:                                               ; preds = %75
  %82 = ptrtoint ptr %58 to i64
  %83 = sub i64 %82, %17
  %84 = sdiv exact i64 %83, 24
  %85 = getelementptr inbounds i32, ptr %7, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !103
  %87 = ptrtoint ptr %79 to i64
  %88 = sub i64 %87, %17
  %89 = sdiv exact i64 %88, 24
  %90 = getelementptr inbounds i32, ptr %7, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %92 = call i32 @llvm.smin.i32(i32 %86, i32 %91)
  %93 = call i32 @llvm.smax.i32(i32 %86, i32 %91)
  store i32 %92, ptr %3, align 8, !tbaa !123
  store i32 %93, ptr %18, align 4, !tbaa !124
  %94 = call ptr @BLI_ghash_lookup(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %95

95:                                               ; preds = %81, %98
  %96 = phi ptr [ %22, %81 ], [ %100, %98 ]
  %97 = icmp eq ptr %94, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.UvEdge, ptr %96, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !162
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %95, !llvm.loop !163

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.UvEdge, ptr %59, i64 0, i32 4
  store ptr %94, ptr %103, align 8, !tbaa !162
  %104 = getelementptr inbounds %struct.UvEdge, ptr %94, i64 0, i32 5
  store ptr %22, ptr %104, align 8, !tbaa !157
  br label %105

105:                                              ; preds = %95, %102
  %106 = phi ptr [ %94, %102 ], [ %59, %95 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  br label %107

107:                                              ; preds = %68, %105, %75
  %108 = phi ptr [ %106, %105 ], [ %59, %75 ], [ %59, %68 ]
  %109 = load ptr, ptr %58, align 8, !tbaa !164
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %57, !llvm.loop !165

111:                                              ; preds = %26
  store ptr %22, ptr %23, align 8, !tbaa !157
  br label %114

112:                                              ; preds = %107
  %113 = load i32, ptr %10, align 8, !tbaa !116
  br label %114

114:                                              ; preds = %112, %31, %111, %19
  %115 = phi i32 [ %113, %112 ], [ %20, %31 ], [ %20, %111 ], [ %20, %19 ]
  %116 = add nuw nsw i64 %21, 1
  %117 = sext i32 %115 to i64
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %19, label %119, !llvm.loop !166

119:                                              ; preds = %114, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_calculate_edge_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.UvElement, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %12 = load ptr, ptr %9, align 8, !tbaa !167
  %13 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %11, ptr noundef %12, i32 noundef 16) #15
  %14 = load ptr, ptr %0, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 26
  %16 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = load ptr, ptr %17, align 8, !tbaa !167
  %19 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %15, ptr noundef %18, i32 noundef 16) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef %19, ptr noundef %13) #16
  %20 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !86
  %22 = fdiv float %21, %3
  store float %22, ptr %2, align 4, !tbaa !86
  %23 = load float, ptr %5, align 4, !tbaa !86
  %24 = fneg float %23
  %25 = getelementptr inbounds float, ptr %2, i64 1
  store float %24, ptr %25, align 4, !tbaa !86
  tail call fastcc void @normalize_v2(ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !86
  %4 = load float, ptr %0, align 4, !tbaa !86
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !86
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #7 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stitch_select_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %12) #16
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, 0
  %20 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 17
  br label %21

21:                                               ; preds = %18, %58
  %22 = phi ptr [ %16, %18 ], [ %59, %58 ]
  %23 = getelementptr inbounds %struct.UvElement, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 2, !tbaa !90
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.UvElement, ptr %22, i64 0, i32 4
  %28 = load i8, ptr %27, align 1, !tbaa !168
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  br i1 %19, label %32, label %58

32:                                               ; preds = %31
  %33 = and i8 %28, -2
  store i8 %33, ptr %27, align 1, !tbaa !168
  %34 = load i32, ptr %20, align 8, !tbaa !126
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = zext nneg i32 %34 to i64
  br label %41

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %37
  br i1 %40, label %58, label %41, !llvm.loop !169

41:                                               ; preds = %36, %38
  %42 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %43 = getelementptr inbounds ptr, ptr %5, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = icmp eq ptr %44, %22
  br i1 %45, label %46, label %38

46:                                               ; preds = %41
  %47 = getelementptr inbounds ptr, ptr %5, i64 %42
  %48 = add nsw i32 %34, -1
  store i32 %48, ptr %20, align 8, !tbaa !126
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %5, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  store ptr %51, ptr %47, align 8, !tbaa !72
  br label %58

52:                                               ; preds = %26
  %53 = or disjoint i8 %28, 1
  store i8 %53, ptr %27, align 1, !tbaa !168
  %54 = load i32, ptr %20, align 8, !tbaa !126
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %20, align 8, !tbaa !126
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds ptr, ptr %5, i64 %56
  store ptr %22, ptr %57, align 8, !tbaa !72
  br label %58

58:                                               ; preds = %38, %32, %31, %46, %21, %52
  %59 = load ptr, ptr %22, align 8, !tbaa !72
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21, !llvm.loop !170

61:                                               ; preds = %58, %3
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stitch_select_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 17
  br label %12

12:                                               ; preds = %9, %45
  %13 = phi ptr [ %7, %9 ], [ %47, %45 ]
  %14 = getelementptr inbounds %struct.UvEdge, ptr %13, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !110
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  br i1 %10, label %19, label %45

19:                                               ; preds = %18
  %20 = and i8 %15, -2
  store i8 %20, ptr %14, align 8, !tbaa !110
  %21 = load i32, ptr %11, align 8, !tbaa !126
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = zext nneg i32 %21 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %45, label %28, !llvm.loop !171

28:                                               ; preds = %23, %25
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = getelementptr inbounds ptr, ptr %5, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %25

33:                                               ; preds = %28
  %34 = getelementptr inbounds ptr, ptr %5, i64 %29
  %35 = add nsw i32 %21, -1
  store i32 %35, ptr %11, align 8, !tbaa !126
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %5, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  store ptr %38, ptr %34, align 8, !tbaa !72
  br label %45

39:                                               ; preds = %12
  %40 = or disjoint i8 %15, 1
  store i8 %40, ptr %14, align 8, !tbaa !110
  %41 = load i32, ptr %11, align 8, !tbaa !126
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %11, align 8, !tbaa !126
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %5, i64 %43
  store ptr %13, ptr %44, align 8, !tbaa !72
  br label %45

45:                                               ; preds = %25, %19, %18, %33, %39
  %46 = getelementptr inbounds %struct.UvEdge, ptr %13, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !72
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %12, !llvm.loop !172

49:                                               ; preds = %45, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_switch_selection_mode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !126
  store i32 0, ptr %4, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %7 = load i8, ptr %6, align 8, !tbaa !76
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  br i1 %8, label %10, label %65

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr %9(i64 noundef %14, ptr noundef nonnull @.str.44) #15
  store ptr %15, ptr %2, align 8, !tbaa !127
  %16 = load i32, ptr %11, align 8, !tbaa !116
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %25

21:                                               ; preds = %51, %10
  %22 = icmp sgt i32 %5, 0
  br i1 %22, label %23, label %94

23:                                               ; preds = %21
  %24 = zext nneg i32 %5 to i64
  br label %56

25:                                               ; preds = %18, %51
  %26 = phi i32 [ %16, %18 ], [ %52, %51 ]
  %27 = phi i64 [ 0, %18 ], [ %53, %51 ]
  %28 = load ptr, ptr %19, align 8, !tbaa !115
  %29 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27
  %30 = load ptr, ptr %20, align 8, !tbaa !95
  %31 = load i32, ptr %29, align 8, !tbaa !123
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = getelementptr inbounds %struct.UvElement, ptr %34, i64 0, i32 4
  %36 = load i8, ptr %35, align 1, !tbaa !168
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.UvEdge, ptr %28, i64 %27, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !124
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %30, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.UvElement, ptr %44, i64 0, i32 4
  %46 = load i8, ptr %45, align 1, !tbaa !168
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  tail call fastcc void @stitch_select_edge(ptr noundef nonnull %29, ptr noundef nonnull %0, i32 noundef 1) #16
  %50 = load i32, ptr %11, align 8, !tbaa !116
  br label %51

51:                                               ; preds = %49, %39, %25
  %52 = phi i32 [ %50, %49 ], [ %26, %39 ], [ %26, %25 ]
  %53 = add nuw nsw i64 %27, 1
  %54 = sext i32 %52 to i64
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %25, label %21, !llvm.loop !173

56:                                               ; preds = %23, %56
  %57 = phi i64 [ 0, %23 ], [ %63, %56 ]
  %58 = getelementptr inbounds ptr, ptr %3, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !72
  %60 = getelementptr inbounds %struct.UvElement, ptr %59, i64 0, i32 4
  %61 = load i8, ptr %60, align 1, !tbaa !168
  %62 = and i8 %61, -2
  store i8 %62, ptr %60, align 1, !tbaa !168
  %63 = add nuw nsw i64 %57, 1
  %64 = icmp eq i64 %63, %24
  br i1 %64, label %94, label %56, !llvm.loop !174

65:                                               ; preds = %1
  %66 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %67 = load i32, ptr %66, align 4, !tbaa !97
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 3
  %70 = tail call ptr %9(i64 noundef %69, ptr noundef nonnull @.str.45) #15
  store ptr %70, ptr %2, align 8, !tbaa !127
  %71 = icmp sgt i32 %5, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %74 = zext nneg i32 %5 to i64
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ 0, %72 ], [ %92, %75 ]
  %77 = getelementptr inbounds ptr, ptr %3, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !72
  %79 = load ptr, ptr %73, align 8, !tbaa !95
  %80 = load i32, ptr %78, align 8, !tbaa !123
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !72
  %84 = getelementptr inbounds %struct.UvEdge, ptr %78, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !124
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %79, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !72
  tail call fastcc void @stitch_select_uv(ptr noundef %83, ptr noundef nonnull %0, i32 noundef 1) #16
  tail call fastcc void @stitch_select_uv(ptr noundef %88, ptr noundef nonnull %0, i32 noundef 1) #16
  %89 = getelementptr inbounds %struct.UvEdge, ptr %78, i64 0, i32 2
  %90 = load i8, ptr %89, align 8, !tbaa !110
  %91 = and i8 %90, -2
  store i8 %91, ptr %89, align 8, !tbaa !110
  %92 = add nuw nsw i64 %76, 1
  %93 = icmp eq i64 %92, %74
  br i1 %93, label %94, label %75, !llvm.loop !175

94:                                               ; preds = %75, %56, %65, %21
  %95 = phi i8 [ 1, %21 ], [ 0, %65 ], [ 1, %56 ], [ 0, %75 ]
  store i8 %95, ptr %6, align 8, !tbaa !76
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %96(ptr noundef %3) #15
  ret void
}

; Function Attrs: optsize
declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @uvedit_edge_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uv_edge_get(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.UvEdge, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = tail call ptr @BM_uv_element_get(ptr noundef %5, ptr noundef %7, ptr noundef %0) #15
  %9 = load ptr, ptr %4, align 8, !tbaa !46
  %10 = load ptr, ptr %6, align 8, !tbaa !161
  %11 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = tail call ptr @BM_uv_element_get(ptr noundef %9, ptr noundef %10, ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = load ptr, ptr %4, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.UvElementMap, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = ptrtoint ptr %8 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 24
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !103
  %25 = ptrtoint ptr %13 to i64
  %26 = sub i64 %25, %20
  %27 = sdiv exact i64 %26, 24
  %28 = getelementptr inbounds i32, ptr %15, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !103
  %30 = tail call i32 @llvm.smin.i32(i32 %24, i32 %29)
  %31 = tail call i32 @llvm.smax.i32(i32 %24, i32 %29)
  store i32 %30, ptr %3, align 8
  %32 = getelementptr inbounds %struct.UvEdge, ptr %3, i64 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 13
  %34 = load ptr, ptr %33, align 8, !tbaa !121
  %35 = call ptr @BLI_ghash_lookup(ptr noundef %34, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stitch_process_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  tail call fastcc void @stitch_preview_delete(ptr noundef %14) #16
  %15 = tail call fastcc ptr @stitch_preview_init() #16
  store ptr %15, ptr %13, align 8, !tbaa !94
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1108, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !176
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.46) #15
  %24 = load i32, ptr %19, align 4, !tbaa !176
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %17
  %27 = zext nneg i32 %24 to i64
  %28 = add nuw nsw i64 %27, 3
  %29 = and i64 %28, 4294967292
  %30 = add nsw i64 %27, -1
  %31 = insertelement <4 x i64> poison, i64 %30, i64 0
  %32 = shufflevector <4 x i64> %31, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %55, %26
  %34 = phi i64 [ 0, %26 ], [ %56, %55 ]
  %35 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %26 ], [ %57, %55 ]
  %36 = icmp ule <4 x i64> %35, %32
  %37 = extractelement <4 x i1> %36, i64 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %34
  store i32 -1, ptr %39, align 4, !tbaa !177
  br label %40

40:                                               ; preds = %38, %33
  %41 = extractelement <4 x i1> %36, i64 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or disjoint i64 %34, 1
  %44 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %43
  store i32 -1, ptr %44, align 4, !tbaa !177
  br label %45

45:                                               ; preds = %42, %40
  %46 = extractelement <4 x i1> %36, i64 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or disjoint i64 %34, 2
  %49 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %48
  store i32 -1, ptr %49, align 4, !tbaa !177
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <4 x i1> %36, i64 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %34, 3
  %54 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %53
  store i32 -1, ptr %54, align 4, !tbaa !177
  br label %55

55:                                               ; preds = %52, %50
  %56 = add i64 %34, 4
  %57 = add <4 x i64> %35, <i64 4, i64 4, i64 4, i64 4>
  %58 = icmp eq i64 %56, %29
  br i1 %58, label %59, label %33, !llvm.loop !179

59:                                               ; preds = %55, %17
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %61 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.UvElementMap, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !47
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 40
  %67 = tail call ptr %60(i64 noundef %66, ptr noundef nonnull @.str.47) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %1108, label %69

69:                                               ; preds = %59
  tail call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %10, i8 noundef zeroext 9) #15
  %70 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 17
  %71 = load i32, ptr %70, align 8, !tbaa !126
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %75 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  br label %76

76:                                               ; preds = %73, %85
  %77 = phi i64 [ 0, %73 ], [ %86, %85 ]
  %78 = load i8, ptr %74, align 8, !tbaa !76
  %79 = icmp eq i8 %78, 0
  %80 = load ptr, ptr %75, align 8, !tbaa !127
  %81 = getelementptr inbounds ptr, ptr %80, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !72
  br i1 %79, label %83, label %84

83:                                               ; preds = %76
  tail call fastcc void @determine_uv_stitchability(ptr noundef %82, ptr noundef nonnull %0, ptr noundef %67) #16
  br label %85

84:                                               ; preds = %76
  tail call fastcc void @determine_uv_edge_stitchability(ptr noundef %82, ptr noundef nonnull %0, ptr noundef %67) #16
  br label %85

85:                                               ; preds = %83, %84
  %86 = add nuw nsw i64 %77, 1
  %87 = load i32, ptr %70, align 8, !tbaa !126
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %76, label %90, !llvm.loop !182

90:                                               ; preds = %85, %69
  %91 = phi i32 [ %71, %69 ], [ %87, %85 ]
  %92 = load ptr, ptr %61, align 8, !tbaa !46
  %93 = getelementptr inbounds %struct.UvElementMap, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !47
  %95 = load i32, ptr %6, align 4, !tbaa !45
  %96 = srem i32 %95, %94
  store i32 %96, ptr %6, align 4, !tbaa !45
  br label %97

97:                                               ; preds = %103, %90
  %98 = phi i32 [ %105, %103 ], [ %96, %90 ]
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %99, i32 8
  %101 = load i8, ptr %100, align 1, !tbaa !183
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = add nsw i32 %98, 1
  %105 = srem i32 %104, %94
  store i32 %105, ptr %6, align 4, !tbaa !45
  %106 = icmp eq i32 %105, %7
  br i1 %106, label %107, label %97, !llvm.loop !185

107:                                              ; preds = %103, %97
  %108 = icmp sgt i32 %91, 0
  br i1 %108, label %109, label %145

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %111 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %112 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 6
  br label %113

113:                                              ; preds = %109, %140
  %114 = phi i64 [ 0, %109 ], [ %141, %140 ]
  %115 = load i8, ptr %110, align 8, !tbaa !76
  %116 = icmp eq i8 %115, 0
  %117 = load ptr, ptr %111, align 8, !tbaa !127
  %118 = getelementptr inbounds ptr, ptr %117, i64 %114
  %119 = load ptr, ptr %118, align 8, !tbaa !72
  br i1 %116, label %120, label %130

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.UvElement, ptr %119, i64 0, i32 4
  %122 = load i8, ptr %121, align 1, !tbaa !168
  %123 = and i8 %122, 16
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = and i8 %122, -17
  store i8 %126, ptr %121, align 1, !tbaa !168
  tail call fastcc void @stitch_validate_uv_stichability(ptr noundef nonnull %119, ptr noundef nonnull %0, ptr noundef %67, ptr noundef %23) #16
  br label %140

127:                                              ; preds = %120
  %128 = load i32, ptr %112, align 4, !tbaa !186
  %129 = add i32 %128, 1
  store i32 %129, ptr %112, align 4, !tbaa !186
  br label %140

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.UvEdge, ptr %119, i64 0, i32 2
  %132 = load i8, ptr %131, align 8, !tbaa !110
  %133 = and i8 %132, 16
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = and i8 %132, -17
  store i8 %136, ptr %131, align 8, !tbaa !110
  tail call fastcc void @stitch_validate_edge_stichability(ptr noundef nonnull %119, ptr noundef nonnull %0, ptr noundef %67, ptr noundef %23) #16
  br label %140

137:                                              ; preds = %130
  %138 = load i32, ptr %112, align 4, !tbaa !186
  %139 = add i32 %138, 1
  store i32 %139, ptr %112, align 4, !tbaa !186
  br label %140

140:                                              ; preds = %135, %137, %125, %127
  %141 = add nuw nsw i64 %114, 1
  %142 = load i32, ptr %70, align 8, !tbaa !126
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %113, label %145, !llvm.loop !188

145:                                              ; preds = %140, %107
  %146 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %147 = load i8, ptr %146, align 4, !tbaa !50
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %192, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %61, align 8, !tbaa !46
  %151 = getelementptr inbounds %struct.UvElementMap, ptr %150, i64 0, i32 3
  %152 = load i32, ptr %151, align 4, !tbaa !47
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %149, %185
  %155 = phi ptr [ %186, %185 ], [ %150, %149 ]
  %156 = phi i64 [ %187, %185 ], [ 0, %149 ]
  %157 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %156, i32 7
  %158 = load i8, ptr %157, align 4, !tbaa !189
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %185, label %160

160:                                              ; preds = %154
  %161 = trunc i64 %156 to i32
  %162 = tail call fastcc i32 @getNumOfIslandUvs(ptr noundef nonnull %155, i32 noundef %161) #16
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.UvElementMap, ptr %155, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !89
  %167 = getelementptr inbounds %struct.UvElementMap, ptr %155, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !190
  %169 = getelementptr inbounds i32, ptr %168, i64 %156
  %170 = load i32, ptr %169, align 4, !tbaa !103
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.UvElement, ptr %166, i64 %171
  br label %173

173:                                              ; preds = %164, %173
  %174 = phi i32 [ %180, %173 ], [ 0, %164 ]
  %175 = phi ptr [ %181, %173 ], [ %172, %164 ]
  %176 = getelementptr inbounds %struct.UvElement, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !158
  %178 = getelementptr inbounds %struct.BMLoop, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !161
  tail call fastcc void @stitch_set_face_preview_buffer_position(ptr noundef %179, ptr noundef nonnull %15, ptr noundef %23) #16
  %180 = add nuw nsw i32 %174, 1
  %181 = getelementptr inbounds %struct.UvElement, ptr %175, i64 1
  %182 = icmp eq i32 %180, %162
  br i1 %182, label %183, label %173, !llvm.loop !191

183:                                              ; preds = %173
  %184 = load ptr, ptr %61, align 8, !tbaa !46
  br label %185

185:                                              ; preds = %183, %160, %154
  %186 = phi ptr [ %184, %183 ], [ %155, %160 ], [ %155, %154 ]
  %187 = add nuw nsw i64 %156, 1
  %188 = getelementptr inbounds %struct.UvElementMap, ptr %186, i64 0, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !47
  %190 = sext i32 %189 to i64
  %191 = icmp slt i64 %187, %190
  br i1 %191, label %154, label %192, !llvm.loop !192

192:                                              ; preds = %185, %149, %145
  %193 = icmp eq i32 %2, 0
  br i1 %193, label %194, label %473

194:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %195 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %196 = load i8, ptr %195, align 8, !tbaa !76
  %197 = icmp eq i8 %196, 0
  %198 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %199 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 7
  %200 = load i32, ptr %199, align 8, !tbaa !193
  %201 = zext i32 %200 to i64
  %202 = shl nuw nsw i64 %201, 3
  %203 = tail call ptr %198(i64 noundef %202, ptr noundef nonnull @.str.48) #15
  store ptr %203, ptr %15, align 8, !tbaa !194
  %204 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %205 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 2
  %206 = load i32, ptr %205, align 8, !tbaa !195
  %207 = zext i32 %206 to i64
  %208 = shl nuw nsw i64 %207, 2
  %209 = tail call ptr %204(i64 noundef %208, ptr noundef nonnull @.str.48) #15
  %210 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 1
  store ptr %209, ptr %210, align 8, !tbaa !196
  %211 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %212 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 5
  %213 = load i32, ptr %212, align 8, !tbaa !197
  %214 = zext i32 %213 to i64
  %215 = shl nuw nsw i64 %214, 2
  %216 = select i1 %197, i64 1, i64 2
  %217 = shl nuw nsw i64 %215, %216
  %218 = tail call ptr %211(i64 noundef %217, ptr noundef nonnull @.str.49) #15
  %219 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 3
  store ptr %218, ptr %219, align 8, !tbaa !198
  %220 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %221 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !186
  %223 = zext i32 %222 to i64
  %224 = shl nuw nsw i64 %223, 2
  %225 = shl nuw nsw i64 %224, %216
  %226 = tail call ptr %220(i64 noundef %225, ptr noundef nonnull @.str.50) #15
  %227 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 4
  store ptr %226, ptr %227, align 8, !tbaa !199
  %228 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %229 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 19
  %230 = load ptr, ptr %229, align 8, !tbaa !141
  %231 = load i32, ptr %6, align 4, !tbaa !45
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, ptr %230, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !103
  %235 = zext i32 %234 to i64
  %236 = mul nuw nsw i64 %235, 24
  %237 = tail call ptr %228(i64 noundef %236, ptr noundef nonnull @.str.51) #15
  %238 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 8
  store ptr %237, ptr %238, align 8, !tbaa !200
  %239 = load ptr, ptr %229, align 8, !tbaa !141
  %240 = load i32, ptr %6, align 4, !tbaa !45
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, ptr %239, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !103
  %244 = getelementptr inbounds %struct.StitchPreviewer, ptr %15, i64 0, i32 9
  store i32 %243, ptr %244, align 8, !tbaa !201
  %245 = load ptr, ptr %15, align 8, !tbaa !194
  %246 = icmp eq ptr %245, null
  br i1 %246, label %1107, label %247

247:                                              ; preds = %194
  %248 = load ptr, ptr %219, align 8, !tbaa !198
  %249 = icmp eq ptr %248, null
  br i1 %249, label %1107, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %227, align 8, !tbaa !199
  %252 = icmp eq ptr %251, null
  br i1 %252, label %1107, label %253

253:                                              ; preds = %250
  %254 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %10, i8 noundef zeroext 3, ptr noundef null) #16
  %255 = icmp eq ptr %254, null
  br i1 %255, label %345, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  br label %258

258:                                              ; preds = %256, %341
  %259 = phi ptr [ %254, %256 ], [ %343, %341 ]
  %260 = phi i32 [ 0, %256 ], [ %342, %341 ]
  %261 = load ptr, ptr %61, align 8, !tbaa !46
  %262 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !143
  %264 = call ptr @BM_uv_element_get(ptr noundef %261, ptr noundef nonnull %259, ptr noundef %263) #15
  %265 = icmp eq ptr %264, null
  br i1 %265, label %341, label %266

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.BMFace, ptr %259, i64 0, i32 3
  %268 = load i32, ptr %267, align 8, !tbaa !134
  %269 = add nsw i32 %268, -2
  %270 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %259) #16
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !177
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %297, label %275

275:                                              ; preds = %266
  %276 = load ptr, ptr %210, align 8, !tbaa !196
  %277 = getelementptr inbounds %struct.PreviewPosition, ptr %23, i64 %271, i32 1
  %278 = load i32, ptr %277, align 4, !tbaa !202
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %276, i64 %279
  store i32 %268, ptr %280, align 4, !tbaa !103
  %281 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %259) #16
  %282 = icmp eq ptr %281, null
  br i1 %282, label %297, label %283

283:                                              ; preds = %275
  %284 = sext i32 %273 to i64
  br label %285

285:                                              ; preds = %283, %285
  %286 = phi i64 [ 0, %283 ], [ %295, %285 ]
  %287 = phi ptr [ %281, %283 ], [ %294, %285 ]
  %288 = load ptr, ptr %287, align 8, !tbaa !167
  %289 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %257, ptr noundef %288, i32 noundef 16) #15
  %290 = load ptr, ptr %15, align 8, !tbaa !194
  %291 = getelementptr inbounds float, ptr %290, i64 %284
  %292 = shl nuw nsw i64 %286, 1
  %293 = getelementptr inbounds float, ptr %291, i64 %292
  call fastcc void @copy_v2_v2(ptr noundef %293, ptr noundef %289) #16
  %294 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %295 = add nuw i64 %286, 1
  %296 = icmp eq ptr %294, null
  br i1 %296, label %297, label %285, !llvm.loop !203

297:                                              ; preds = %285, %275, %266
  %298 = getelementptr inbounds %struct.UvElement, ptr %264, i64 0, i32 5
  %299 = load i16, ptr %298, align 4, !tbaa !144
  %300 = zext i16 %299 to i32
  %301 = load i32, ptr %6, align 4, !tbaa !45
  %302 = icmp eq i32 %301, %300
  br i1 %302, label %303, label %341

303:                                              ; preds = %297
  %304 = load ptr, ptr %262, align 8, !tbaa !143
  %305 = load ptr, ptr %304, align 8, !tbaa !167
  %306 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %257, ptr noundef %305, i32 noundef 16) #15
  %307 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %259) #16
  %308 = icmp ne ptr %307, null
  %309 = icmp sgt i32 %268, 2
  %310 = select i1 %308, i1 %309, i1 false
  br i1 %310, label %311, label %341

311:                                              ; preds = %303, %311
  %312 = phi i32 [ %337, %311 ], [ 0, %303 ]
  %313 = phi ptr [ %336, %311 ], [ %307, %303 ]
  %314 = phi i32 [ %335, %311 ], [ %260, %303 ]
  %315 = getelementptr inbounds %struct.BMLoop, ptr %313, i64 0, i32 6
  %316 = load ptr, ptr %315, align 8, !tbaa !107
  %317 = getelementptr inbounds %struct.BMLoop, ptr %316, i64 0, i32 6
  %318 = load ptr, ptr %317, align 8, !tbaa !107
  %319 = load ptr, ptr %318, align 8, !tbaa !167
  %320 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %257, ptr noundef %319, i32 noundef 16) #15
  %321 = load ptr, ptr %316, align 8, !tbaa !167
  %322 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %257, ptr noundef %321, i32 noundef 16) #15
  %323 = load ptr, ptr %238, align 8, !tbaa !200
  %324 = zext i32 %314 to i64
  %325 = getelementptr inbounds float, ptr %323, i64 %324
  %326 = load i64, ptr %306, align 4
  store i64 %326, ptr %325, align 4
  %327 = load ptr, ptr %238, align 8, !tbaa !200
  %328 = getelementptr inbounds float, ptr %327, i64 %324
  %329 = getelementptr inbounds float, ptr %328, i64 2
  %330 = load i64, ptr %322, align 4
  store i64 %330, ptr %329, align 4
  %331 = load ptr, ptr %238, align 8, !tbaa !200
  %332 = getelementptr inbounds float, ptr %331, i64 %324
  %333 = getelementptr inbounds float, ptr %332, i64 4
  %334 = load i64, ptr %320, align 4
  store i64 %334, ptr %333, align 4
  %335 = add i32 %314, 6
  %336 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %337 = add nuw nsw i32 %312, 1
  %338 = icmp ne ptr %336, null
  %339 = icmp slt i32 %337, %269
  %340 = select i1 %338, i1 %339, i1 false
  br i1 %340, label %311, label %341, !llvm.loop !204

341:                                              ; preds = %311, %303, %297, %258
  %342 = phi i32 [ %260, %258 ], [ %260, %297 ], [ %260, %303 ], [ %335, %311 ]
  %343 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %258, !llvm.loop !205

345:                                              ; preds = %341, %253
  %346 = load i8, ptr %195, align 8, !tbaa !76
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %350 = load i32, ptr %349, align 8, !tbaa !116
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %472

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %354 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %355 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  br label %405

356:                                              ; preds = %345
  %357 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %358 = load i32, ptr %357, align 4, !tbaa !97
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %472

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %362 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  br label %363

363:                                              ; preds = %360, %398
  %364 = phi i64 [ 0, %360 ], [ %401, %398 ]
  %365 = phi i32 [ 0, %360 ], [ %400, %398 ]
  %366 = phi i32 [ 0, %360 ], [ %399, %398 ]
  %367 = load ptr, ptr %361, align 8, !tbaa !95
  %368 = getelementptr inbounds ptr, ptr %367, i64 %364
  %369 = load ptr, ptr %368, align 8, !tbaa !72
  %370 = getelementptr inbounds %struct.UvElement, ptr %369, i64 0, i32 4
  %371 = load i8, ptr %370, align 1, !tbaa !168
  %372 = zext i8 %371 to i32
  %373 = and i32 %372, 2
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %385, label %375

375:                                              ; preds = %363
  %376 = getelementptr inbounds %struct.UvElement, ptr %369, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !158
  %378 = load ptr, ptr %377, align 8, !tbaa !167
  %379 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %362, ptr noundef %378, i32 noundef 16) #15
  %380 = load ptr, ptr %219, align 8, !tbaa !198
  %381 = shl nsw i32 %365, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, ptr %380, i64 %382
  call fastcc void @copy_v2_v2(ptr noundef %383, ptr noundef %379) #16
  %384 = add nsw i32 %365, 1
  br label %398

385:                                              ; preds = %363
  %386 = and i32 %372, 1
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.UvElement, ptr %369, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !158
  %391 = load ptr, ptr %390, align 8, !tbaa !167
  %392 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %362, ptr noundef %391, i32 noundef 16) #15
  %393 = load ptr, ptr %227, align 8, !tbaa !199
  %394 = shl nsw i32 %366, 1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, ptr %393, i64 %395
  call fastcc void @copy_v2_v2(ptr noundef %396, ptr noundef %392) #16
  %397 = add nsw i32 %366, 1
  br label %398

398:                                              ; preds = %385, %388, %375
  %399 = phi i32 [ %366, %375 ], [ %397, %388 ], [ %366, %385 ]
  %400 = phi i32 [ %384, %375 ], [ %365, %388 ], [ %365, %385 ]
  %401 = add nuw nsw i64 %364, 1
  %402 = load i32, ptr %357, align 4, !tbaa !97
  %403 = sext i32 %402 to i64
  %404 = icmp slt i64 %401, %403
  br i1 %404, label %363, label %472, !llvm.loop !206

405:                                              ; preds = %352, %465
  %406 = phi i64 [ 0, %352 ], [ %468, %465 ]
  %407 = phi i32 [ 0, %352 ], [ %467, %465 ]
  %408 = phi i32 [ 0, %352 ], [ %466, %465 ]
  %409 = load ptr, ptr %353, align 8, !tbaa !115
  %410 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 %406
  %411 = load ptr, ptr %354, align 8, !tbaa !95
  %412 = load i32, ptr %410, align 8, !tbaa !123
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds ptr, ptr %411, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !72
  %416 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 %406, i32 1
  %417 = load i32, ptr %416, align 4, !tbaa !124
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds ptr, ptr %411, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !72
  %421 = getelementptr inbounds %struct.UvEdge, ptr %409, i64 %406, i32 2
  %422 = load i8, ptr %421, align 8, !tbaa !110
  %423 = zext i8 %422 to i32
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %444, label %426

426:                                              ; preds = %405
  %427 = getelementptr inbounds %struct.UvElement, ptr %415, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !158
  %429 = load ptr, ptr %428, align 8, !tbaa !167
  %430 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %355, ptr noundef %429, i32 noundef 16) #15
  %431 = load ptr, ptr %219, align 8, !tbaa !198
  %432 = shl nsw i32 %407, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds float, ptr %431, i64 %433
  call fastcc void @copy_v2_v2(ptr noundef %434, ptr noundef %430) #16
  %435 = getelementptr inbounds %struct.UvElement, ptr %420, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !158
  %437 = load ptr, ptr %436, align 8, !tbaa !167
  %438 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %355, ptr noundef %437, i32 noundef 16) #15
  %439 = load ptr, ptr %219, align 8, !tbaa !198
  %440 = or disjoint i32 %432, 2
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, ptr %439, i64 %441
  call fastcc void @copy_v2_v2(ptr noundef nonnull %442, ptr noundef %438) #16
  %443 = add nsw i32 %407, 1
  br label %465

444:                                              ; preds = %405
  %445 = and i32 %423, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %465, label %447

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.UvElement, ptr %415, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !158
  %450 = load ptr, ptr %449, align 8, !tbaa !167
  %451 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %355, ptr noundef %450, i32 noundef 16) #15
  %452 = load ptr, ptr %227, align 8, !tbaa !199
  %453 = shl nsw i32 %408, 2
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds float, ptr %452, i64 %454
  call fastcc void @copy_v2_v2(ptr noundef %455, ptr noundef %451) #16
  %456 = getelementptr inbounds %struct.UvElement, ptr %420, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !158
  %458 = load ptr, ptr %457, align 8, !tbaa !167
  %459 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %355, ptr noundef %458, i32 noundef 16) #15
  %460 = load ptr, ptr %227, align 8, !tbaa !199
  %461 = or disjoint i32 %453, 2
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds float, ptr %460, i64 %462
  call fastcc void @copy_v2_v2(ptr noundef nonnull %463, ptr noundef %459) #16
  %464 = add nsw i32 %408, 1
  br label %465

465:                                              ; preds = %444, %447, %426
  %466 = phi i32 [ %408, %426 ], [ %464, %447 ], [ %408, %444 ]
  %467 = phi i32 [ %443, %426 ], [ %407, %447 ], [ %407, %444 ]
  %468 = add nuw nsw i64 %406, 1
  %469 = load i32, ptr %349, align 8, !tbaa !116
  %470 = sext i32 %469 to i64
  %471 = icmp slt i64 %468, %470
  br i1 %471, label %405, label %472, !llvm.loop !207

472:                                              ; preds = %465, %398, %348, %356
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %473

473:                                              ; preds = %472, %192
  %474 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %475 = load i8, ptr %474, align 8, !tbaa !76
  %476 = icmp eq i8 %475, 0
  %477 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  br i1 %476, label %478, label %490

478:                                              ; preds = %473
  %479 = load i32, ptr %70, align 8, !tbaa !126
  %480 = sext i32 %479 to i64
  %481 = mul nsw i64 %480, 12
  %482 = call ptr %477(i64 noundef %481, ptr noundef nonnull @.str.52) #15
  %483 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %484 = load ptr, ptr %61, align 8, !tbaa !46
  %485 = getelementptr inbounds %struct.UvElementMap, ptr %484, i64 0, i32 2
  %486 = load i32, ptr %485, align 8, !tbaa !88
  %487 = sext i32 %486 to i64
  %488 = shl nsw i64 %487, 2
  %489 = call ptr %483(i64 noundef %488, ptr noundef nonnull @.str.53) #15
  br label %496

490:                                              ; preds = %473
  %491 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %492 = load i32, ptr %491, align 4, !tbaa !97
  %493 = sext i32 %492 to i64
  %494 = mul nsw i64 %493, 12
  %495 = call ptr %477(i64 noundef %494, ptr noundef nonnull @.str.52) #15
  br label %496

496:                                              ; preds = %490, %478
  %497 = phi ptr [ %489, %478 ], [ null, %490 ]
  %498 = phi ptr [ %482, %478 ], [ %495, %490 ]
  %499 = load i32, ptr %70, align 8, !tbaa !126
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %718

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %503 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %504 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %505 = icmp ne i8 %12, 0
  %506 = icmp eq i8 %12, 0
  br label %507

507:                                              ; preds = %501, %713
  %508 = phi i64 [ 0, %501 ], [ %714, %713 ]
  %509 = load i8, ptr %474, align 8, !tbaa !76
  %510 = icmp eq i8 %509, 0
  %511 = load ptr, ptr %502, align 8, !tbaa !127
  %512 = getelementptr inbounds ptr, ptr %511, i64 %508
  %513 = load ptr, ptr %512, align 8, !tbaa !72
  br i1 %510, label %514, label %590

514:                                              ; preds = %507
  %515 = getelementptr inbounds %struct.UvElement, ptr %513, i64 0, i32 4
  %516 = load i8, ptr %515, align 1, !tbaa !168
  %517 = and i8 %516, 2
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %580, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.UvElement, ptr %513, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !158
  %522 = load ptr, ptr %521, align 8, !tbaa !167
  %523 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %522, i32 noundef 16) #15
  %524 = load ptr, ptr %61, align 8, !tbaa !46
  %525 = getelementptr inbounds %struct.UvElementMap, ptr %524, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !89
  %527 = ptrtoint ptr %513 to i64
  %528 = ptrtoint ptr %526 to i64
  %529 = sub i64 %527, %528
  %530 = sdiv exact i64 %529, 24
  %531 = getelementptr inbounds i32, ptr %497, i64 %530
  %532 = trunc i64 %508 to i32
  store i32 %532, ptr %531, align 4, !tbaa !103
  %533 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %508
  call fastcc void @copy_v2_v2(ptr noundef %533, ptr noundef %523) #16
  %534 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %508, i32 1
  store i16 1, ptr %534, align 4, !tbaa !208
  %535 = load i8, ptr %146, align 4, !tbaa !50
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %519
  %538 = getelementptr inbounds %struct.UvElement, ptr %513, i64 0, i32 5
  %539 = load i16, ptr %538, align 4, !tbaa !144
  %540 = zext i16 %539 to i32
  %541 = load i32, ptr %6, align 4, !tbaa !45
  %542 = icmp ne i32 %541, %540
  %543 = select i1 %542, i1 true, i1 %505
  br i1 %543, label %544, label %713

544:                                              ; preds = %537, %519
  %545 = load ptr, ptr %61, align 8, !tbaa !46
  %546 = load ptr, ptr %545, align 8, !tbaa !102
  %547 = getelementptr inbounds %struct.BMLoop, ptr %521, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !159
  %549 = call fastcc i32 @_bm_elem_index_get(ptr noundef %548) #16
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds ptr, ptr %546, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !72
  %553 = icmp eq ptr %552, null
  br i1 %553, label %580, label %554

554:                                              ; preds = %544, %577
  %555 = phi ptr [ %578, %577 ], [ %552, %544 ]
  %556 = getelementptr inbounds %struct.UvElement, ptr %555, i64 0, i32 3
  %557 = load i8, ptr %556, align 2, !tbaa !90
  %558 = icmp eq i8 %557, 0
  br i1 %558, label %577, label %559

559:                                              ; preds = %554
  %560 = call fastcc zeroext i8 @stitch_check_uvs_state_stitchable(ptr noundef %513, ptr noundef nonnull %555, ptr noundef %0) #16, !range !117
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %577, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct.UvElement, ptr %555, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !158
  %565 = load ptr, ptr %564, align 8, !tbaa !167
  %566 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %565, i32 noundef 16) #15
  br i1 %506, label %570, label %567

567:                                              ; preds = %562
  call fastcc void @add_v2_v2(ptr noundef %533, ptr noundef %566) #16
  %568 = load i16, ptr %534, align 4, !tbaa !208
  %569 = add i16 %568, 1
  store i16 %569, ptr %534, align 4, !tbaa !208
  br label %577

570:                                              ; preds = %562
  %571 = getelementptr inbounds %struct.UvElement, ptr %555, i64 0, i32 5
  %572 = load i16, ptr %571, align 4, !tbaa !144
  %573 = zext i16 %572 to i32
  %574 = load i32, ptr %6, align 4, !tbaa !45
  %575 = icmp eq i32 %574, %573
  br i1 %575, label %576, label %577

576:                                              ; preds = %570
  call fastcc void @copy_v2_v2(ptr noundef %533, ptr noundef %566) #16
  br label %577

577:                                              ; preds = %554, %567, %576, %570, %559
  %578 = load ptr, ptr %555, align 8, !tbaa !72
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %554, !llvm.loop !210

580:                                              ; preds = %577, %544, %514
  br i1 %506, label %713, label %581

581:                                              ; preds = %580
  %582 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %508
  %583 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %508, i32 1
  %584 = load i16, ptr %583, align 4, !tbaa !208
  %585 = uitofp i16 %584 to float
  %586 = load <2 x float>, ptr %582, align 4, !tbaa !86
  %587 = insertelement <2 x float> poison, float %585, i64 0
  %588 = shufflevector <2 x float> %587, <2 x float> poison, <2 x i32> zeroinitializer
  %589 = fdiv <2 x float> %586, %588
  store <2 x float> %589, ptr %582, align 4, !tbaa !86
  br label %713

590:                                              ; preds = %507
  %591 = getelementptr inbounds %struct.UvEdge, ptr %513, i64 0, i32 2
  %592 = load i8, ptr %591, align 8, !tbaa !110
  %593 = and i8 %592, 2
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %713, label %595

595:                                              ; preds = %590
  %596 = load ptr, ptr %503, align 8, !tbaa !95
  %597 = load i32, ptr %513, align 8, !tbaa !123
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds ptr, ptr %596, i64 %598
  %600 = load ptr, ptr %599, align 8, !tbaa !72
  %601 = getelementptr inbounds %struct.UvElement, ptr %600, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !158
  %603 = load ptr, ptr %602, align 8, !tbaa !167
  %604 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %603, i32 noundef 16) #15
  %605 = load ptr, ptr %503, align 8, !tbaa !95
  %606 = getelementptr inbounds %struct.UvEdge, ptr %513, i64 0, i32 1
  %607 = load i32, ptr %606, align 4, !tbaa !124
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds ptr, ptr %605, i64 %608
  %610 = load ptr, ptr %609, align 8, !tbaa !72
  %611 = getelementptr inbounds %struct.UvElement, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !158
  %613 = load ptr, ptr %612, align 8, !tbaa !167
  %614 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %613, i32 noundef 16) #15
  %615 = load i32, ptr %513, align 8, !tbaa !123
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %616
  call fastcc void @copy_v2_v2(ptr noundef %617, ptr noundef %604) #16
  %618 = load i32, ptr %606, align 4, !tbaa !124
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %619
  call fastcc void @copy_v2_v2(ptr noundef %620, ptr noundef %614) #16
  %621 = load i32, ptr %513, align 8, !tbaa !123
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %622, i32 1
  store i16 1, ptr %623, align 4, !tbaa !208
  %624 = load i32, ptr %606, align 4, !tbaa !124
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %625, i32 1
  store i16 1, ptr %626, align 4, !tbaa !208
  %627 = load ptr, ptr %503, align 8, !tbaa !95
  %628 = getelementptr inbounds ptr, ptr %627, i64 %622
  %629 = load ptr, ptr %628, align 8, !tbaa !72
  %630 = getelementptr inbounds %struct.UvElement, ptr %629, i64 0, i32 4
  %631 = load i8, ptr %630, align 1, !tbaa !168
  %632 = or i8 %631, 2
  store i8 %632, ptr %630, align 1, !tbaa !168
  %633 = getelementptr inbounds ptr, ptr %627, i64 %625
  %634 = load ptr, ptr %633, align 8, !tbaa !72
  %635 = getelementptr inbounds %struct.UvElement, ptr %634, i64 0, i32 4
  %636 = load i8, ptr %635, align 1, !tbaa !168
  %637 = or i8 %636, 2
  store i8 %637, ptr %635, align 1, !tbaa !168
  %638 = load i8, ptr %146, align 4, !tbaa !50
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %649, label %640

640:                                              ; preds = %595
  %641 = getelementptr inbounds %struct.UvEdge, ptr %513, i64 0, i32 3
  %642 = load ptr, ptr %641, align 8, !tbaa !112
  %643 = getelementptr inbounds %struct.UvElement, ptr %642, i64 0, i32 5
  %644 = load i16, ptr %643, align 4, !tbaa !144
  %645 = zext i16 %644 to i32
  %646 = load i32, ptr %6, align 4, !tbaa !45
  %647 = icmp ne i32 %646, %645
  %648 = select i1 %647, i1 true, i1 %505
  br i1 %648, label %649, label %713

649:                                              ; preds = %640, %595
  %650 = getelementptr inbounds %struct.UvEdge, ptr %513, i64 0, i32 5
  %651 = load ptr, ptr %650, align 8, !tbaa !72
  %652 = icmp eq ptr %651, null
  br i1 %652, label %713, label %653

653:                                              ; preds = %649, %709
  %654 = phi ptr [ %711, %709 ], [ %651, %649 ]
  %655 = call fastcc zeroext i8 @stitch_check_edges_state_stitchable(ptr noundef nonnull %513, ptr noundef nonnull %654, ptr noundef %0) #16, !range !117
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %709, label %657

657:                                              ; preds = %653
  %658 = load ptr, ptr %503, align 8, !tbaa !95
  %659 = load i32, ptr %654, align 8, !tbaa !123
  %660 = zext i32 %659 to i64
  %661 = getelementptr inbounds ptr, ptr %658, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !72
  %663 = getelementptr inbounds %struct.UvElement, ptr %662, i64 0, i32 1
  %664 = load ptr, ptr %663, align 8, !tbaa !158
  %665 = load ptr, ptr %664, align 8, !tbaa !167
  %666 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %665, i32 noundef 16) #15
  %667 = load ptr, ptr %503, align 8, !tbaa !95
  %668 = getelementptr inbounds %struct.UvEdge, ptr %654, i64 0, i32 1
  %669 = load i32, ptr %668, align 4, !tbaa !124
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds ptr, ptr %667, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !72
  %673 = getelementptr inbounds %struct.UvElement, ptr %672, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !158
  %675 = load ptr, ptr %674, align 8, !tbaa !167
  %676 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %504, ptr noundef %675, i32 noundef 16) #15
  br i1 %506, label %694, label %677

677:                                              ; preds = %657
  %678 = load i32, ptr %513, align 8, !tbaa !123
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %679
  call fastcc void @add_v2_v2(ptr noundef %680, ptr noundef %666) #16
  %681 = load i32, ptr %513, align 8, !tbaa !123
  %682 = zext i32 %681 to i64
  %683 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %682, i32 1
  %684 = load i16, ptr %683, align 4, !tbaa !208
  %685 = add i16 %684, 1
  store i16 %685, ptr %683, align 4, !tbaa !208
  %686 = load i32, ptr %606, align 4, !tbaa !124
  %687 = zext i32 %686 to i64
  %688 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %687
  call fastcc void @add_v2_v2(ptr noundef %688, ptr noundef %676) #16
  %689 = load i32, ptr %606, align 4, !tbaa !124
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %690, i32 1
  %692 = load i16, ptr %691, align 4, !tbaa !208
  %693 = add i16 %692, 1
  store i16 %693, ptr %691, align 4, !tbaa !208
  br label %709

694:                                              ; preds = %657
  %695 = getelementptr inbounds %struct.UvEdge, ptr %654, i64 0, i32 3
  %696 = load ptr, ptr %695, align 8, !tbaa !112
  %697 = getelementptr inbounds %struct.UvElement, ptr %696, i64 0, i32 5
  %698 = load i16, ptr %697, align 4, !tbaa !144
  %699 = zext i16 %698 to i32
  %700 = load i32, ptr %6, align 4, !tbaa !45
  %701 = icmp eq i32 %700, %699
  br i1 %701, label %702, label %709

702:                                              ; preds = %694
  %703 = load i32, ptr %513, align 8, !tbaa !123
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %704
  call fastcc void @copy_v2_v2(ptr noundef %705, ptr noundef %666) #16
  %706 = load i32, ptr %606, align 4, !tbaa !124
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %707
  call fastcc void @copy_v2_v2(ptr noundef %708, ptr noundef %676) #16
  br label %709

709:                                              ; preds = %653, %694, %702, %677
  %710 = getelementptr inbounds %struct.UvEdge, ptr %654, i64 0, i32 4
  %711 = load ptr, ptr %710, align 8, !tbaa !72
  %712 = icmp eq ptr %711, null
  br i1 %712, label %713, label %653, !llvm.loop !211

713:                                              ; preds = %709, %649, %590, %640, %581, %580, %537
  %714 = add nuw nsw i64 %508, 1
  %715 = load i32, ptr %70, align 8, !tbaa !126
  %716 = sext i32 %715 to i64
  %717 = icmp slt i64 %714, %716
  br i1 %717, label %507, label %718, !llvm.loop !212

718:                                              ; preds = %713, %496
  %719 = phi i32 [ %499, %496 ], [ %715, %713 ]
  %720 = load i8, ptr %474, align 8, !tbaa !76
  %721 = icmp eq i8 %720, 1
  %722 = icmp ne i8 %12, 0
  %723 = select i1 %721, i1 %722, i1 false
  br i1 %723, label %724, label %742

724:                                              ; preds = %718
  %725 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %726 = load i32, ptr %725, align 4, !tbaa !97
  %727 = icmp sgt i32 %726, 0
  br i1 %727, label %728, label %745

728:                                              ; preds = %724
  %729 = zext nneg i32 %726 to i64
  br label %730

730:                                              ; preds = %728, %730
  %731 = phi i64 [ 0, %728 ], [ %740, %730 ]
  %732 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %731
  %733 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %731, i32 1
  %734 = load i16, ptr %733, align 4, !tbaa !208
  %735 = uitofp i16 %734 to float
  %736 = load <2 x float>, ptr %732, align 4, !tbaa !86
  %737 = insertelement <2 x float> poison, float %735, i64 0
  %738 = shufflevector <2 x float> %737, <2 x float> poison, <2 x i32> zeroinitializer
  %739 = fdiv <2 x float> %736, %738
  store <2 x float> %739, ptr %732, align 4, !tbaa !86
  %740 = add nuw nsw i64 %731, 1
  %741 = icmp eq i64 %740, %729
  br i1 %741, label %742, label %730, !llvm.loop !213

742:                                              ; preds = %730, %718
  %743 = load i8, ptr %146, align 4, !tbaa !50
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %1058, label %748

745:                                              ; preds = %724
  %746 = load i8, ptr %146, align 4, !tbaa !50
  %747 = icmp eq i8 %746, 0
  br i1 %747, label %1058, label %750

748:                                              ; preds = %742
  %749 = icmp eq i8 %720, 0
  br i1 %749, label %757, label %750

750:                                              ; preds = %745, %748
  %751 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 15
  %752 = load i32, ptr %751, align 4, !tbaa !97
  %753 = icmp sgt i32 %752, 0
  br i1 %753, label %754, label %943

754:                                              ; preds = %750
  %755 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %756 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  br label %949

757:                                              ; preds = %748
  %758 = icmp sgt i32 %719, 0
  br i1 %758, label %759, label %762

759:                                              ; preds = %757
  %760 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %761 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  br label %769

762:                                              ; preds = %814, %757
  %763 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 14
  %764 = load i32, ptr %763, align 8, !tbaa !116
  %765 = icmp sgt i32 %764, 0
  br i1 %765, label %766, label %864

766:                                              ; preds = %762
  %767 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %768 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %819

769:                                              ; preds = %759, %814
  %770 = phi i32 [ %719, %759 ], [ %815, %814 ]
  %771 = phi i64 [ 0, %759 ], [ %816, %814 ]
  %772 = load ptr, ptr %760, align 8, !tbaa !127
  %773 = getelementptr inbounds ptr, ptr %772, i64 %771
  %774 = load ptr, ptr %773, align 8, !tbaa !72
  %775 = getelementptr inbounds %struct.UvElement, ptr %774, i64 0, i32 4
  %776 = load i8, ptr %775, align 1, !tbaa !168
  %777 = and i8 %776, 2
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %814, label %779

779:                                              ; preds = %769
  %780 = getelementptr inbounds %struct.UvElement, ptr %774, i64 0, i32 1
  %781 = load ptr, ptr %780, align 8, !tbaa !158
  %782 = load ptr, ptr %781, align 8, !tbaa !167
  %783 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %761, ptr noundef %782, i32 noundef 16) #15
  %784 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %771
  %785 = load float, ptr %784, align 4, !tbaa !86
  %786 = load float, ptr %783, align 4, !tbaa !86
  %787 = fsub float %785, %786
  %788 = getelementptr inbounds %struct.UvElement, ptr %774, i64 0, i32 5
  %789 = load i16, ptr %788, align 4, !tbaa !144
  %790 = zext i16 %789 to i64
  %791 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %790, i32 2
  %792 = load float, ptr %791, align 4, !tbaa !86
  %793 = fadd float %787, %792
  store float %793, ptr %791, align 4, !tbaa !86
  %794 = getelementptr inbounds [2 x float], ptr %784, i64 0, i64 1
  %795 = load float, ptr %794, align 4, !tbaa !86
  %796 = getelementptr inbounds [2 x float], ptr %783, i64 0, i64 1
  %797 = load float, ptr %796, align 4, !tbaa !86
  %798 = fsub float %795, %797
  %799 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %790, i32 2, i64 1
  %800 = load float, ptr %799, align 4, !tbaa !86
  %801 = fadd float %800, %798
  store float %801, ptr %799, align 4, !tbaa !86
  %802 = load float, ptr %783, align 4, !tbaa !86
  %803 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %790, i32 3
  %804 = load float, ptr %803, align 4, !tbaa !86
  %805 = fadd float %802, %804
  store float %805, ptr %803, align 4, !tbaa !86
  %806 = load float, ptr %796, align 4, !tbaa !86
  %807 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %790, i32 3, i64 1
  %808 = load float, ptr %807, align 4, !tbaa !86
  %809 = fadd float %806, %808
  store float %809, ptr %807, align 4, !tbaa !86
  %810 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %790, i32 4
  %811 = load i32, ptr %810, align 4, !tbaa !214
  %812 = add nsw i32 %811, 1
  store i32 %812, ptr %810, align 4, !tbaa !214
  %813 = load i32, ptr %70, align 8, !tbaa !126
  br label %814

814:                                              ; preds = %779, %769
  %815 = phi i32 [ %813, %779 ], [ %770, %769 ]
  %816 = add nuw nsw i64 %771, 1
  %817 = sext i32 %815 to i64
  %818 = icmp slt i64 %816, %817
  br i1 %818, label %769, label %762, !llvm.loop !215

819:                                              ; preds = %766, %859
  %820 = phi i32 [ %764, %766 ], [ %860, %859 ]
  %821 = phi i64 [ 0, %766 ], [ %861, %859 ]
  %822 = load ptr, ptr %767, align 8, !tbaa !115
  %823 = getelementptr inbounds %struct.UvEdge, ptr %822, i64 %821
  %824 = getelementptr inbounds %struct.UvEdge, ptr %822, i64 %821, i32 2
  %825 = load i8, ptr %824, align 8, !tbaa !110
  %826 = and i8 %825, 8
  %827 = icmp eq i8 %826, 0
  br i1 %827, label %859, label %828

828:                                              ; preds = %819
  %829 = load ptr, ptr %768, align 8, !tbaa !95
  %830 = load i32, ptr %823, align 8, !tbaa !123
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds ptr, ptr %829, i64 %831
  %833 = load ptr, ptr %832, align 8, !tbaa !72
  %834 = getelementptr inbounds %struct.UvElement, ptr %833, i64 0, i32 4
  %835 = load i8, ptr %834, align 1, !tbaa !168
  %836 = and i8 %835, 2
  %837 = icmp eq i8 %836, 0
  br i1 %837, label %859, label %838

838:                                              ; preds = %828
  %839 = getelementptr inbounds %struct.UvEdge, ptr %822, i64 %821, i32 1
  %840 = load i32, ptr %839, align 4, !tbaa !124
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds ptr, ptr %829, i64 %841
  %843 = load ptr, ptr %842, align 8, !tbaa !72
  %844 = getelementptr inbounds %struct.UvElement, ptr %843, i64 0, i32 4
  %845 = load i8, ptr %844, align 1, !tbaa !168
  %846 = and i8 %845, 2
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %859, label %848

848:                                              ; preds = %838
  call fastcc void @stitch_island_calculate_edge_rotation(ptr noundef nonnull %823, ptr noundef nonnull %0, ptr noundef %498, ptr noundef %497, ptr noundef %67) #16
  %849 = load ptr, ptr %768, align 8, !tbaa !95
  %850 = load i32, ptr %823, align 8, !tbaa !123
  %851 = zext i32 %850 to i64
  %852 = getelementptr inbounds ptr, ptr %849, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !72
  %854 = getelementptr inbounds %struct.UvElement, ptr %853, i64 0, i32 5
  %855 = load i16, ptr %854, align 4, !tbaa !144
  %856 = zext i16 %855 to i64
  %857 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %856, i32 9
  store i8 1, ptr %857, align 2, !tbaa !216
  %858 = load i32, ptr %763, align 8, !tbaa !116
  br label %859

859:                                              ; preds = %848, %838, %828, %819
  %860 = phi i32 [ %858, %848 ], [ %820, %838 ], [ %820, %828 ], [ %820, %819 ]
  %861 = add nuw nsw i64 %821, 1
  %862 = sext i32 %860 to i64
  %863 = icmp slt i64 %861, %862
  br i1 %863, label %819, label %864, !llvm.loop !217

864:                                              ; preds = %859, %762
  %865 = phi i32 [ %764, %762 ], [ %860, %859 ]
  br i1 %193, label %912, label %866

866:                                              ; preds = %864
  %867 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 6
  %868 = load i8, ptr %867, align 8, !tbaa !75
  %869 = icmp ne i8 %868, 0
  %870 = icmp sgt i32 %865, 0
  %871 = and i1 %869, %870
  br i1 %871, label %872, label %912

872:                                              ; preds = %866
  %873 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 12
  %874 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %875

875:                                              ; preds = %872, %907
  %876 = phi i32 [ %865, %872 ], [ %908, %907 ]
  %877 = phi i64 [ 0, %872 ], [ %909, %907 ]
  %878 = load ptr, ptr %873, align 8, !tbaa !115
  %879 = getelementptr inbounds %struct.UvEdge, ptr %878, i64 %877
  %880 = load ptr, ptr %874, align 8, !tbaa !95
  %881 = load i32, ptr %879, align 8, !tbaa !123
  %882 = zext i32 %881 to i64
  %883 = getelementptr inbounds ptr, ptr %880, i64 %882
  %884 = load ptr, ptr %883, align 8, !tbaa !72
  %885 = getelementptr inbounds %struct.UvElement, ptr %884, i64 0, i32 4
  %886 = load i8, ptr %885, align 1, !tbaa !168
  %887 = and i8 %886, 2
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %907, label %889

889:                                              ; preds = %875
  %890 = getelementptr inbounds %struct.UvEdge, ptr %878, i64 %877, i32 1
  %891 = load i32, ptr %890, align 4, !tbaa !124
  %892 = zext i32 %891 to i64
  %893 = getelementptr inbounds ptr, ptr %880, i64 %892
  %894 = load ptr, ptr %893, align 8, !tbaa !72
  %895 = getelementptr inbounds %struct.UvElement, ptr %894, i64 0, i32 4
  %896 = load i8, ptr %895, align 1, !tbaa !168
  %897 = and i8 %896, 2
  %898 = icmp eq i8 %897, 0
  br i1 %898, label %907, label %899

899:                                              ; preds = %889
  %900 = getelementptr inbounds %struct.UvEdge, ptr %878, i64 %877, i32 3
  %901 = load ptr, ptr %900, align 8, !tbaa !112
  %902 = getelementptr inbounds %struct.UvElement, ptr %901, i64 0, i32 1
  %903 = load ptr, ptr %902, align 8, !tbaa !158
  %904 = getelementptr inbounds %struct.BMLoop, ptr %903, i64 0, i32 2
  %905 = load ptr, ptr %904, align 8, !tbaa !218
  call fastcc void @_bm_elem_flag_disable(ptr noundef %905) #16
  %906 = load i32, ptr %763, align 8, !tbaa !116
  br label %907

907:                                              ; preds = %899, %889, %875
  %908 = phi i32 [ %906, %899 ], [ %876, %889 ], [ %876, %875 ]
  %909 = add nuw nsw i64 %877, 1
  %910 = sext i32 %908 to i64
  %911 = icmp slt i64 %909, %910
  br i1 %911, label %875, label %912, !llvm.loop !219

912:                                              ; preds = %907, %866, %864
  %913 = load i32, ptr %70, align 8, !tbaa !126
  %914 = icmp sgt i32 %913, 0
  br i1 %914, label %915, label %1094

915:                                              ; preds = %912
  %916 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  br label %917

917:                                              ; preds = %915, %936
  %918 = phi i32 [ %913, %915 ], [ %937, %936 ]
  %919 = phi i64 [ 0, %915 ], [ %938, %936 ]
  %920 = load ptr, ptr %916, align 8, !tbaa !127
  %921 = getelementptr inbounds ptr, ptr %920, i64 %919
  %922 = load ptr, ptr %921, align 8, !tbaa !72
  %923 = getelementptr inbounds %struct.UvElement, ptr %922, i64 0, i32 5
  %924 = load i16, ptr %923, align 4, !tbaa !144
  %925 = zext i16 %924 to i64
  %926 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %925, i32 9
  %927 = load i8, ptr %926, align 2, !tbaa !216
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %929, label %936

929:                                              ; preds = %917
  %930 = getelementptr inbounds %struct.UvElement, ptr %922, i64 0, i32 4
  %931 = load i8, ptr %930, align 1, !tbaa !168
  %932 = and i8 %931, 2
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %936, label %934

934:                                              ; preds = %929
  call fastcc void @stitch_island_calculate_vert_rotation(ptr noundef nonnull %922, ptr noundef nonnull %0, ptr noundef nonnull %67) #16
  %935 = load i32, ptr %70, align 8, !tbaa !126
  br label %936

936:                                              ; preds = %929, %934, %917
  %937 = phi i32 [ %918, %929 ], [ %935, %934 ], [ %918, %917 ]
  %938 = add nuw nsw i64 %919, 1
  %939 = sext i32 %937 to i64
  %940 = icmp slt i64 %938, %939
  br i1 %940, label %917, label %1058, !llvm.loop !220

941:                                              ; preds = %994
  %942 = load i32, ptr %70, align 8, !tbaa !126
  br label %943

943:                                              ; preds = %941, %750
  %944 = phi i32 [ %942, %941 ], [ %719, %750 ]
  %945 = icmp sgt i32 %944, 0
  br i1 %945, label %946, label %1025

946:                                              ; preds = %943
  %947 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %948 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  br label %999

949:                                              ; preds = %754, %994
  %950 = phi i32 [ %752, %754 ], [ %995, %994 ]
  %951 = phi i64 [ 0, %754 ], [ %996, %994 ]
  %952 = load ptr, ptr %755, align 8, !tbaa !95
  %953 = getelementptr inbounds ptr, ptr %952, i64 %951
  %954 = load ptr, ptr %953, align 8, !tbaa !72
  %955 = getelementptr inbounds %struct.UvElement, ptr %954, i64 0, i32 4
  %956 = load i8, ptr %955, align 1, !tbaa !168
  %957 = and i8 %956, 2
  %958 = icmp eq i8 %957, 0
  br i1 %958, label %994, label %959

959:                                              ; preds = %949
  %960 = getelementptr inbounds %struct.UvElement, ptr %954, i64 0, i32 1
  %961 = load ptr, ptr %960, align 8, !tbaa !158
  %962 = load ptr, ptr %961, align 8, !tbaa !167
  %963 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %756, ptr noundef %962, i32 noundef 16) #15
  %964 = getelementptr inbounds %struct.UVVertAverage, ptr %498, i64 %951
  %965 = load float, ptr %964, align 4, !tbaa !86
  %966 = load float, ptr %963, align 4, !tbaa !86
  %967 = fsub float %965, %966
  %968 = getelementptr inbounds %struct.UvElement, ptr %954, i64 0, i32 5
  %969 = load i16, ptr %968, align 4, !tbaa !144
  %970 = zext i16 %969 to i64
  %971 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %970, i32 2
  %972 = load float, ptr %971, align 4, !tbaa !86
  %973 = fadd float %967, %972
  store float %973, ptr %971, align 4, !tbaa !86
  %974 = getelementptr inbounds [2 x float], ptr %964, i64 0, i64 1
  %975 = load float, ptr %974, align 4, !tbaa !86
  %976 = getelementptr inbounds [2 x float], ptr %963, i64 0, i64 1
  %977 = load float, ptr %976, align 4, !tbaa !86
  %978 = fsub float %975, %977
  %979 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %970, i32 2, i64 1
  %980 = load float, ptr %979, align 4, !tbaa !86
  %981 = fadd float %980, %978
  store float %981, ptr %979, align 4, !tbaa !86
  %982 = load float, ptr %963, align 4, !tbaa !86
  %983 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %970, i32 3
  %984 = load float, ptr %983, align 4, !tbaa !86
  %985 = fadd float %982, %984
  store float %985, ptr %983, align 4, !tbaa !86
  %986 = load float, ptr %976, align 4, !tbaa !86
  %987 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %970, i32 3, i64 1
  %988 = load float, ptr %987, align 4, !tbaa !86
  %989 = fadd float %986, %988
  store float %989, ptr %987, align 4, !tbaa !86
  %990 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %970, i32 4
  %991 = load i32, ptr %990, align 4, !tbaa !214
  %992 = add nsw i32 %991, 1
  store i32 %992, ptr %990, align 4, !tbaa !214
  %993 = load i32, ptr %751, align 4, !tbaa !97
  br label %994

994:                                              ; preds = %959, %949
  %995 = phi i32 [ %993, %959 ], [ %950, %949 ]
  %996 = add nuw nsw i64 %951, 1
  %997 = sext i32 %995 to i64
  %998 = icmp slt i64 %996, %997
  br i1 %998, label %949, label %941, !llvm.loop !221

999:                                              ; preds = %946, %1020
  %1000 = phi i32 [ %944, %946 ], [ %1021, %1020 ]
  %1001 = phi i64 [ 0, %946 ], [ %1022, %1020 ]
  %1002 = load ptr, ptr %947, align 8, !tbaa !127
  %1003 = getelementptr inbounds ptr, ptr %1002, i64 %1001
  %1004 = load ptr, ptr %1003, align 8, !tbaa !72
  %1005 = getelementptr inbounds %struct.UvEdge, ptr %1004, i64 0, i32 2
  %1006 = load i8, ptr %1005, align 8, !tbaa !110
  %1007 = and i8 %1006, 2
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1020, label %1009

1009:                                             ; preds = %999
  call fastcc void @stitch_island_calculate_edge_rotation(ptr noundef nonnull %1004, ptr noundef nonnull %0, ptr noundef %498, ptr noundef null, ptr noundef %67) #16
  %1010 = load ptr, ptr %948, align 8, !tbaa !95
  %1011 = load i32, ptr %1004, align 8, !tbaa !123
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds ptr, ptr %1010, i64 %1012
  %1014 = load ptr, ptr %1013, align 8, !tbaa !72
  %1015 = getelementptr inbounds %struct.UvElement, ptr %1014, i64 0, i32 5
  %1016 = load i16, ptr %1015, align 4, !tbaa !144
  %1017 = zext i16 %1016 to i64
  %1018 = getelementptr inbounds %struct.IslandStitchData, ptr %67, i64 %1017, i32 9
  store i8 1, ptr %1018, align 2, !tbaa !216
  %1019 = load i32, ptr %70, align 8, !tbaa !126
  br label %1020

1020:                                             ; preds = %1009, %999
  %1021 = phi i32 [ %1019, %1009 ], [ %1000, %999 ]
  %1022 = add nuw nsw i64 %1001, 1
  %1023 = sext i32 %1021 to i64
  %1024 = icmp slt i64 %1022, %1023
  br i1 %1024, label %999, label %1025, !llvm.loop !222

1025:                                             ; preds = %1020, %943
  %1026 = phi i32 [ %944, %943 ], [ %1021, %1020 ]
  br i1 %193, label %1058, label %1027

1027:                                             ; preds = %1025
  %1028 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 6
  %1029 = load i8, ptr %1028, align 8, !tbaa !75
  %1030 = icmp eq i8 %1029, 0
  br i1 %1030, label %1058, label %1031

1031:                                             ; preds = %1027
  %1032 = icmp sgt i32 %1026, 0
  br i1 %1032, label %1033, label %1094

1033:                                             ; preds = %1031
  %1034 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  br label %1035

1035:                                             ; preds = %1033, %1053
  %1036 = phi i32 [ %1026, %1033 ], [ %1054, %1053 ]
  %1037 = phi i64 [ 0, %1033 ], [ %1055, %1053 ]
  %1038 = load ptr, ptr %1034, align 8, !tbaa !127
  %1039 = getelementptr inbounds ptr, ptr %1038, i64 %1037
  %1040 = load ptr, ptr %1039, align 8, !tbaa !72
  %1041 = getelementptr inbounds %struct.UvEdge, ptr %1040, i64 0, i32 2
  %1042 = load i8, ptr %1041, align 8, !tbaa !110
  %1043 = and i8 %1042, 2
  %1044 = icmp eq i8 %1043, 0
  br i1 %1044, label %1053, label %1045

1045:                                             ; preds = %1035
  %1046 = getelementptr inbounds %struct.UvEdge, ptr %1040, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8, !tbaa !112
  %1048 = getelementptr inbounds %struct.UvElement, ptr %1047, i64 0, i32 1
  %1049 = load ptr, ptr %1048, align 8, !tbaa !158
  %1050 = getelementptr inbounds %struct.BMLoop, ptr %1049, i64 0, i32 2
  %1051 = load ptr, ptr %1050, align 8, !tbaa !218
  call fastcc void @_bm_elem_flag_disable(ptr noundef %1051) #16
  %1052 = load i32, ptr %70, align 8, !tbaa !126
  br label %1053

1053:                                             ; preds = %1045, %1035
  %1054 = phi i32 [ %1052, %1045 ], [ %1036, %1035 ]
  %1055 = add nuw nsw i64 %1037, 1
  %1056 = sext i32 %1054 to i64
  %1057 = icmp slt i64 %1055, %1056
  br i1 %1057, label %1035, label %1058, !llvm.loop !223

1058:                                             ; preds = %1053, %936, %745, %1027, %1025, %742
  %1059 = phi i32 [ %1026, %1027 ], [ %1026, %1025 ], [ %719, %742 ], [ %719, %745 ], [ %937, %936 ], [ %1054, %1053 ]
  %1060 = icmp sgt i32 %1059, 0
  br i1 %1060, label %1061, label %1094

1061:                                             ; preds = %1058
  %1062 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 16
  %1063 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 9
  %1064 = trunc i32 %2 to i8
  br label %1065

1065:                                             ; preds = %1061, %1089
  %1066 = phi i64 [ 0, %1061 ], [ %1090, %1089 ]
  %1067 = load i8, ptr %474, align 8, !tbaa !76
  %1068 = icmp eq i8 %1067, 0
  %1069 = load ptr, ptr %1062, align 8, !tbaa !127
  %1070 = getelementptr inbounds ptr, ptr %1069, i64 %1066
  %1071 = load ptr, ptr %1070, align 8, !tbaa !72
  br i1 %1068, label %1072, label %1074

1072:                                             ; preds = %1065
  %1073 = trunc i64 %1066 to i32
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1071, i32 noundef %1073, ptr noundef %23, ptr noundef %498, ptr noundef nonnull %0, i8 noundef zeroext %1064) #16
  br label %1089

1074:                                             ; preds = %1065
  %1075 = load ptr, ptr %1063, align 8, !tbaa !95
  %1076 = load i32, ptr %1071, align 8, !tbaa !123
  %1077 = zext i32 %1076 to i64
  %1078 = getelementptr inbounds ptr, ptr %1075, i64 %1077
  %1079 = load ptr, ptr %1078, align 8, !tbaa !72
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1079, i32 noundef %1076, ptr noundef %23, ptr noundef %498, ptr noundef nonnull %0, i8 noundef zeroext %1064) #16
  %1080 = load ptr, ptr %1063, align 8, !tbaa !95
  %1081 = getelementptr inbounds %struct.UvEdge, ptr %1071, i64 0, i32 1
  %1082 = load i32, ptr %1081, align 4, !tbaa !124
  %1083 = zext i32 %1082 to i64
  %1084 = getelementptr inbounds ptr, ptr %1080, i64 %1083
  %1085 = load ptr, ptr %1084, align 8, !tbaa !72
  call fastcc void @stitch_propagate_uv_final_position(ptr noundef %1, ptr noundef %1085, i32 noundef %1082, ptr noundef %23, ptr noundef %498, ptr noundef nonnull %0, i8 noundef zeroext %1064) #16
  %1086 = getelementptr inbounds %struct.UvEdge, ptr %1071, i64 0, i32 2
  %1087 = load i8, ptr %1086, align 8, !tbaa !110
  %1088 = and i8 %1087, 9
  store i8 %1088, ptr %1086, align 8, !tbaa !110
  br label %1089

1089:                                             ; preds = %1072, %1074
  %1090 = add nuw nsw i64 %1066, 1
  %1091 = load i32, ptr %70, align 8, !tbaa !126
  %1092 = sext i32 %1091 to i64
  %1093 = icmp slt i64 %1090, %1092
  br i1 %1093, label %1065, label %1094, !llvm.loop !224

1094:                                             ; preds = %1089, %912, %1031, %1058
  %1095 = load i8, ptr %146, align 4, !tbaa !50
  %1096 = icmp eq i8 %1095, 0
  br i1 %1096, label %1098, label %1097

1097:                                             ; preds = %1094
  call fastcc void @stitch_calculate_island_snapping(ptr noundef nonnull %0, ptr noundef %23, ptr noundef nonnull %15, ptr noundef %67, i32 noundef %2) #16
  br label %1098

1098:                                             ; preds = %1097, %1094
  %1099 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1099(ptr noundef %498) #15
  %1100 = load i8, ptr %474, align 8, !tbaa !76
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1102, label %1104

1102:                                             ; preds = %1098
  %1103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1103(ptr noundef %497) #15
  br label %1104

1104:                                             ; preds = %1102, %1098
  %1105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1105(ptr noundef %67) #15
  %1106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %1106(ptr noundef %23) #15
  br label %1108

1107:                                             ; preds = %194, %247, %250
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %1108

1108:                                             ; preds = %1107, %59, %3, %1104
  %1109 = phi i32 [ 1, %1104 ], [ 0, %3 ], [ 0, %59 ], [ 0, %1107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i32 %1109
}

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stitch_draw(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call float @UI_GetThemeValuef(i32 noundef 36) #15
  %5 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  tail call void @glPushClientAttrib(i32 noundef 2) #15
  tail call void @glEnableClientState(i32 noundef 32884) #15
  %7 = fmul float %4, 2.000000e+00
  tail call void @glPointSize(float noundef %7) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @UI_ThemeColor4(i32 noundef 155) #15
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  %8 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !201
  %12 = mul i32 %11, 3
  tail call void @glDrawArrays(i32 noundef 4, i32 noundef 0, i32 noundef %12) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !194
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !195
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %32, %19 ]
  %21 = phi i32 [ 0, %17 ], [ %31, %19 ]
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  tail call void @UI_ThemeColor4(i32 noundef 150) #15
  %22 = load ptr, ptr %18, align 8, !tbaa !196
  %23 = getelementptr inbounds i32, ptr %22, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !103
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef %21, i32 noundef %24) #15
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #15
  tail call void @UI_ThemeColor4(i32 noundef 151) #15
  %25 = load ptr, ptr %18, align 8, !tbaa !196
  %26 = getelementptr inbounds i32, ptr %25, i64 %20
  %27 = load i32, ptr %26, align 4, !tbaa !103
  tail call void @glDrawArrays(i32 noundef 9, i32 noundef %21, i32 noundef %27) #15
  %28 = load ptr, ptr %18, align 8, !tbaa !196
  %29 = getelementptr inbounds i32, ptr %28, i64 %20
  %30 = load i32, ptr %29, align 4, !tbaa !103
  %31 = add i32 %30, %21
  %32 = add nuw nsw i64 %20, 1
  %33 = load i32, ptr %14, align 8, !tbaa !195
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %19, label %36, !llvm.loop !225

36:                                               ; preds = %19, %3
  tail call void @glDisable(i32 noundef 3042) #15
  %37 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 20
  %38 = load i8, ptr %37, align 8, !tbaa !76
  %39 = icmp eq i8 %38, 0
  tail call void @UI_ThemeColor4(i32 noundef 153) #15
  %40 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !198
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %41) #15
  %42 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !197
  br i1 %39, label %44, label %49

44:                                               ; preds = %36
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %43) #15
  tail call void @UI_ThemeColor4(i32 noundef 154) #15
  %45 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !199
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %46) #15
  %47 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !186
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %48) #15
  br label %56

49:                                               ; preds = %36
  %50 = shl i32 %43, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %50) #15
  tail call void @UI_ThemeColor4(i32 noundef 154) #15
  %51 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !199
  tail call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %52) #15
  %53 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !186
  %55 = shl i32 %54, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %55) #15
  br label %56

56:                                               ; preds = %49, %44
  tail call void @glPopClientAttrib() #15
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  tail call void @glPointSize(float noundef 1.000000e+00) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_update_header(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #17
  %4 = tail call ptr @CTX_wm_area(ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.1, ptr @.str.4
  %11 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !50
  %13 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %12) #15
  %14 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !49
  %16 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %15) #15
  %17 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !42
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 4, !tbaa !44
  %22 = tail call ptr @WM_bool_as_string(i8 noundef zeroext %21) #15
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @stitch_update_header.str, ptr noundef nonnull %10, ptr noundef %13, ptr noundef %16, double noundef %19, ptr noundef %22) #15
  call void @ED_area_headerprint(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  br label %24

24:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_preview_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !194
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %7(ptr noundef nonnull %4) #15
  store ptr null, ptr %0, align 8, !tbaa !194
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr inbounds %struct.StitchPreviewer, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !196
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %13(ptr noundef nonnull %10) #15
  store ptr null, ptr %9, align 8, !tbaa !196
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.StitchPreviewer, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !198
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %19(ptr noundef nonnull %16) #15
  store ptr null, ptr %15, align 8, !tbaa !198
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.StitchPreviewer, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !199
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %25(ptr noundef nonnull %22) #15
  store ptr null, ptr %21, align 8, !tbaa !199
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.StitchPreviewer, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !200
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %31(ptr noundef nonnull %28) #15
  store ptr null, ptr %27, align 8, !tbaa !200
  br label %32

32:                                               ; preds = %30, %26
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %33(ptr noundef nonnull %0) #15
  br label %34

34:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_ghashutil_uinthash(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !226
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !151
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !151
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !151
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !151
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !151
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !151
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !151
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !151
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !227
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !151
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !119
  tail call void %22(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !229
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !86
  %5 = load float, ptr %2, align 4, !tbaa !86
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !86
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !86
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !86
  %4 = load float, ptr %1, align 4, !tbaa !86
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !86
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !86
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @stitch_preview_init() unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %2 = tail call ptr %1(i64 noundef 72, ptr noundef nonnull @.str.54) #15
  %3 = getelementptr inbounds %struct.StitchPreviewer, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.StitchPreviewer, ptr %2, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.StitchPreviewer, ptr %2, i64 0, i32 9
  store i32 0, ptr %5, align 8, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  ret ptr %2
}

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_uv_stitchability(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 4
  br label %19

19:                                               ; preds = %16, %37
  %20 = phi ptr [ %14, %16 ], [ %38, %37 ]
  %21 = getelementptr inbounds %struct.UvElement, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 2, !tbaa !90
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @stitch_check_uvs_stitchable(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %1) #16, !range !117
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.UvElement, ptr %20, i64 0, i32 5
  %29 = load i16, ptr %28, align 4, !tbaa !144
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %30, i32 8
  store i8 1, ptr %31, align 1, !tbaa !183
  %32 = load i16, ptr %17, align 4, !tbaa !144
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %33, i32 8
  store i8 1, ptr %34, align 1, !tbaa !183
  %35 = load i8, ptr %18, align 1, !tbaa !168
  %36 = or i8 %35, 16
  store i8 %36, ptr %18, align 1, !tbaa !168
  br label %37

37:                                               ; preds = %19, %27, %24
  %38 = load ptr, ptr %20, align 8, !tbaa !72
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !230

40:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_uv_edge_stitchability(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %7, %28
  %11 = phi ptr [ %5, %7 ], [ %30, %28 ]
  %12 = tail call fastcc zeroext i8 @stitch_check_edges_stitchable(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1) #16, !range !117
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.UvEdge, ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.UvElement, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 4, !tbaa !144
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %19, i32 8
  store i8 1, ptr %20, align 1, !tbaa !183
  %21 = load ptr, ptr %8, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.UvElement, ptr %21, i64 0, i32 5
  %23 = load i16, ptr %22, align 4, !tbaa !144
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %24, i32 8
  store i8 1, ptr %25, align 1, !tbaa !183
  %26 = load i8, ptr %9, align 8, !tbaa !110
  %27 = or i8 %26, 16
  store i8 %27, ptr %9, align 8, !tbaa !110
  br label %28

28:                                               ; preds = %10, %14
  %29 = getelementptr inbounds %struct.UvEdge, ptr %11, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !231

32:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_validate_uv_stichability(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 18
  %21 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  br label %22

22:                                               ; preds = %19, %49
  %23 = phi ptr [ %17, %19 ], [ %50, %49 ]
  %24 = getelementptr inbounds %struct.UvElement, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 2, !tbaa !90
  %26 = icmp eq i8 %25, 0
  %27 = icmp eq ptr %23, %0
  %28 = or i1 %27, %26
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc zeroext i8 @stitch_check_uvs_state_stitchable(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %1) #16, !range !117
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.UvElement, ptr %23, i64 0, i32 5
  %34 = load i16, ptr %33, align 4, !tbaa !144
  %35 = zext i16 %34 to i32
  %36 = load i32, ptr %20, align 4, !tbaa !45
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i16, ptr %21, align 4, !tbaa !144
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 4
  %44 = load i8, ptr %43, align 1, !tbaa !168
  %45 = or i8 %44, 2
  store i8 %45, ptr %43, align 1, !tbaa !168
  %46 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !197
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 8, !tbaa !197
  tail call fastcc void @stitch_setup_face_preview_for_uv_group(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  br label %61

49:                                               ; preds = %22, %38, %29
  %50 = load ptr, ptr %23, align 8, !tbaa !72
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %22, !llvm.loop !232

52:                                               ; preds = %49, %4
  %53 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 4
  %54 = load i8, ptr %53, align 1, !tbaa !168
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.StitchPreviewer, ptr %6, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !186
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !186
  br label %61

61:                                               ; preds = %52, %57, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_validate_edge_stichability(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = load ptr, ptr %5, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 18
  %12 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %10, %52
  %14 = phi ptr [ %8, %10 ], [ %54, %52 ]
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @stitch_check_edges_state_stitchable(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %1) #16, !range !117
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.UvEdge, ptr %14, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.UvElement, ptr %21, i64 0, i32 5
  %23 = load i16, ptr %22, align 4, !tbaa !144
  %24 = zext i16 %23 to i32
  %25 = load i32, ptr %11, align 4, !tbaa !45
  %26 = icmp eq i32 %25, %24
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %12, align 8, !tbaa !112
  %29 = getelementptr inbounds %struct.UvElement, ptr %28, i64 0, i32 5
  %30 = load i16, ptr %29, align 4, !tbaa !144
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %19
  %34 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 2
  %35 = load i8, ptr %34, align 8, !tbaa !110
  %36 = or i8 %35, 2
  store i8 %36, ptr %34, align 8, !tbaa !110
  %37 = getelementptr inbounds %struct.StitchPreviewer, ptr %7, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !197
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !197
  %40 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = load i32, ptr %0, align 8, !tbaa !123
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  tail call fastcc void @stitch_setup_face_preview_for_uv_group(ptr noundef %45, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  %46 = load ptr, ptr %40, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !124
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  tail call fastcc void @stitch_setup_face_preview_for_uv_group(ptr noundef %51, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  br label %65

52:                                               ; preds = %16, %27, %13
  %53 = getelementptr inbounds %struct.UvEdge, ptr %14, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %13, !llvm.loop !233

56:                                               ; preds = %52, %4
  %57 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 2
  %58 = load i8, ptr %57, align 8, !tbaa !110
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.StitchPreviewer, ptr %7, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !186
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !186
  br label %65

65:                                               ; preds = %56, %61, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @getNumOfIslandUvs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !47
  %5 = add nsw i32 %4, -1
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.UvElementMap, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !190
  %16 = sext i32 %1 to i64
  %17 = getelementptr i32, ptr %15, i64 %16
  %18 = getelementptr i32, ptr %17, i64 1
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi ptr [ %17, %13 ], [ %12, %7 ]
  %21 = phi ptr [ %18, %13 ], [ %8, %7 ]
  %22 = load i32, ptr %21, align 4, !tbaa !103
  %23 = load i32, ptr %20, align 4, !tbaa !103
  %24 = sub nsw i32 %22, %23
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @stitch_set_face_preview_buffer_position(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #16
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.PreviewPosition, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !177
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.StitchPreviewer, ptr %1, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !193
  %12 = shl i32 %11, 1
  store i32 %12, ptr %6, align 4, !tbaa !177
  %13 = getelementptr inbounds %struct.StitchPreviewer, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !195
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !195
  %16 = getelementptr inbounds %struct.PreviewPosition, ptr %2, i64 %5, i32 1
  store i32 %14, ptr %16, align 4, !tbaa !202
  %17 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !134
  %19 = add i32 %18, %11
  store i32 %19, ptr %10, align 8, !tbaa !193
  br label %20

20:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !86
  store float %3, ptr %0, align 4, !tbaa !86
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !86
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stitch_check_uvs_state_stitchable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 3
  %5 = load i8, ptr %4, align 4, !tbaa !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %9 = load i16, ptr %8, align 4, !tbaa !144
  %10 = getelementptr inbounds %struct.UvElement, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 4, !tbaa !144
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !49
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %19 = load i16, ptr %18, align 4, !tbaa !144
  %20 = getelementptr inbounds %struct.UvElement, ptr %1, i64 0, i32 5
  %21 = load i16, ptr %20, align 4, !tbaa !144
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %17, %13
  %24 = tail call fastcc zeroext i8 @stitch_check_uvs_stitchable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16, !range !117
  br label %25

25:                                               ; preds = %7, %17, %23
  %26 = phi i8 [ %24, %23 ], [ 0, %17 ], [ 0, %7 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stitch_check_edges_state_stitchable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 3
  %5 = load i8, ptr %4, align 4, !tbaa !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.UvElement, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 4, !tbaa !144
  %12 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  %14 = getelementptr inbounds %struct.UvElement, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 4, !tbaa !144
  %16 = icmp eq i16 %11, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %7, %3
  %18 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 4
  %19 = load i8, ptr %18, align 1, !tbaa !49
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.UvElement, ptr %23, i64 0, i32 5
  %25 = load i16, ptr %24, align 4, !tbaa !144
  %26 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = getelementptr inbounds %struct.UvElement, ptr %27, i64 0, i32 5
  %29 = load i16, ptr %28, align 4, !tbaa !144
  %30 = icmp eq i16 %25, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %21, %17
  %32 = tail call fastcc zeroext i8 @stitch_check_edges_stitchable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16, !range !117
  br label %33

33:                                               ; preds = %7, %21, %31
  %34 = phi i8 [ %32, %31 ], [ 0, %21 ], [ 0, %7 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_island_calculate_edge_rotation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %11 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = load i32, ptr %0, align 8, !tbaa !123
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !124
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %12, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %23 = getelementptr inbounds %struct.UvElement, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %22, ptr noundef %25, i32 noundef 16) #15
  %27 = getelementptr inbounds %struct.UvElement, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !158
  %29 = load ptr, ptr %28, align 8, !tbaa !167
  %30 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %22, ptr noundef %29, i32 noundef 16) #15
  %31 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 20
  %32 = load i8, ptr %31, align 8, !tbaa !76
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.UvElementMap, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = ptrtoint ptr %16 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 24
  %43 = getelementptr inbounds i32, ptr %3, i64 %42
  %44 = ptrtoint ptr %21 to i64
  %45 = sub i64 %44, %40
  %46 = sdiv exact i64 %45, 24
  %47 = getelementptr inbounds i32, ptr %3, i64 %46
  br label %48

48:                                               ; preds = %5, %34
  %49 = phi ptr [ %47, %34 ], [ %17, %5 ]
  %50 = phi ptr [ %43, %34 ], [ %0, %5 ]
  %51 = load i32, ptr %50, align 4, !tbaa !103
  %52 = load i32, ptr %49, align 4, !tbaa !103
  %53 = load float, ptr %30, align 4, !tbaa !86
  %54 = load float, ptr %26, align 4, !tbaa !86
  %55 = fsub float %53, %54
  store float %55, ptr %6, align 4, !tbaa !86
  %56 = getelementptr inbounds [2 x float], ptr %30, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !86
  %58 = getelementptr inbounds [2 x float], ptr %26, i64 0, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !86
  %60 = fsub float %57, %59
  %61 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %62 = load float, ptr %1, align 8, !tbaa !87
  %63 = fdiv float %60, %62
  store float %63, ptr %61, align 4, !tbaa !86
  %64 = sext i32 %52 to i64
  %65 = getelementptr inbounds %struct.UVVertAverage, ptr %2, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !86
  %67 = sext i32 %51 to i64
  %68 = getelementptr inbounds %struct.UVVertAverage, ptr %2, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !86
  %70 = fsub float %66, %69
  store float %70, ptr %7, align 4, !tbaa !86
  %71 = getelementptr inbounds [2 x float], ptr %65, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !86
  %73 = getelementptr inbounds [2 x float], ptr %68, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !86
  %75 = fsub float %72, %74
  %76 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %77 = fdiv float %75, %62
  store float %77, ptr %76, align 4, !tbaa !86
  call fastcc void @normalize_v2(ptr noundef nonnull %6) #16
  call fastcc void @normalize_v2(ptr noundef nonnull %7) #16
  %78 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %79 = call fastcc float @cross_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %80 = tail call fastcc float @min_ff(float noundef %78) #16
  %81 = tail call fastcc float @max_ff(float noundef %80) #16
  %82 = tail call float @acosf(float noundef %81) #15
  %83 = fcmp ogt float %79, 0.000000e+00
  %84 = getelementptr inbounds %struct.UvElement, ptr %16, i64 0, i32 5
  %85 = load i16, ptr %84, align 4, !tbaa !144
  %86 = zext i16 %85 to i64
  br i1 %83, label %87, label %92

87:                                               ; preds = %48
  %88 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %86, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !234
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 4, !tbaa !234
  %91 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %86
  br label %97

92:                                               ; preds = %48
  %93 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %86, i32 6
  %94 = load i32, ptr %93, align 4, !tbaa !235
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %93, align 4, !tbaa !235
  %96 = getelementptr inbounds %struct.IslandStitchData, ptr %4, i64 %86, i32 1
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi ptr [ %96, %92 ], [ %91, %87 ]
  %99 = load float, ptr %98, align 4, !tbaa !86
  %100 = fadd float %82, %99
  store float %100, ptr %98, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !150
  %4 = and i8 %3, -5
  store i8 %4, ptr %2, align 1, !tbaa !150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_island_calculate_vert_rotation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 4, !tbaa !144
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 18
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, %7
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !49
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %129, label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !158
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = icmp eq ptr %26, null
  br i1 %27, label %107, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 4
  %30 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 10
  %31 = ptrtoint ptr %0 to i64
  %32 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 11
  br label %33

33:                                               ; preds = %28, %99
  %34 = phi ptr [ %26, %28 ], [ %103, %99 ]
  %35 = phi i32 [ 0, %28 ], [ %101, %99 ]
  %36 = phi i32 [ 0, %28 ], [ %100, %99 ]
  %37 = phi <2 x float> [ zeroinitializer, %28 ], [ %102, %99 ]
  %38 = getelementptr inbounds %struct.UvElement, ptr %34, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !90
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %99, label %41

41:                                               ; preds = %33
  %42 = tail call fastcc zeroext i8 @stitch_check_uvs_state_stitchable(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %1) #16, !range !117
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %99, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %45 = load i8, ptr %29, align 1, !tbaa !49
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.UvElement, ptr %34, i64 0, i32 5
  %49 = load i16, ptr %48, align 4, !tbaa !144
  %50 = zext i16 %49 to i32
  %51 = load i32, ptr %8, align 4, !tbaa !45
  %52 = icmp eq i32 %51, %50
  br i1 %52, label %53, label %95

53:                                               ; preds = %47, %44
  %54 = load ptr, ptr %21, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.UvElementMap, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !89
  %57 = ptrtoint ptr %34 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 24
  %61 = load ptr, ptr %30, align 8, !tbaa !98
  %62 = shl i64 %60, 32
  %63 = ashr exact i64 %62, 32
  %64 = getelementptr inbounds i32, ptr %61, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = sub i64 %31, %58
  %67 = sdiv exact i64 %66, 24
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds i32, ptr %61, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !103
  %72 = load ptr, ptr %32, align 8, !tbaa !96
  %73 = shl nsw i32 %71, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, ptr %72, i64 %74
  call fastcc void @negate_v2_v2(ptr noundef nonnull %4, ptr noundef %75) #16
  %76 = shl nsw i32 %65, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %72, i64 %77
  %79 = call fastcc float @dot_v2v2(ptr noundef nonnull %4, ptr noundef %78) #16
  %80 = call fastcc float @cross_v2v2(ptr noundef nonnull %4, ptr noundef %78) #16
  %81 = fcmp ogt float %80, 0.000000e+00
  %82 = tail call fastcc float @min_ff(float noundef %79) #16
  %83 = tail call fastcc float @max_ff(float noundef %82) #16
  %84 = tail call float @acosf(float noundef %83) #15
  br i1 %81, label %85, label %90

85:                                               ; preds = %53
  %86 = extractelement <2 x float> %37, i64 0
  %87 = fadd float %86, %84
  %88 = add nsw i32 %36, 1
  %89 = insertelement <2 x float> %37, float %87, i64 0
  br label %95

90:                                               ; preds = %53
  %91 = extractelement <2 x float> %37, i64 1
  %92 = fadd float %91, %84
  %93 = add nsw i32 %35, 1
  %94 = insertelement <2 x float> %37, float %92, i64 1
  br label %95

95:                                               ; preds = %85, %90, %47
  %96 = phi i32 [ %36, %47 ], [ %88, %85 ], [ %36, %90 ]
  %97 = phi i32 [ %35, %47 ], [ %35, %85 ], [ %93, %90 ]
  %98 = phi <2 x float> [ %37, %47 ], [ %89, %85 ], [ %94, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %99

99:                                               ; preds = %95, %33, %41
  %100 = phi i32 [ %96, %95 ], [ %36, %41 ], [ %36, %33 ]
  %101 = phi i32 [ %97, %95 ], [ %35, %41 ], [ %35, %33 ]
  %102 = phi <2 x float> [ %98, %95 ], [ %37, %41 ], [ %37, %33 ]
  %103 = load ptr, ptr %34, align 8, !tbaa !72
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %33, !llvm.loop !236

105:                                              ; preds = %99
  %106 = load i16, ptr %5, align 4, !tbaa !144
  br label %107

107:                                              ; preds = %105, %15
  %108 = phi i16 [ %6, %15 ], [ %106, %105 ]
  %109 = phi i32 [ 0, %15 ], [ %100, %105 ]
  %110 = phi i32 [ 0, %15 ], [ %101, %105 ]
  %111 = phi <2 x float> [ zeroinitializer, %15 ], [ %102, %105 ]
  %112 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 4
  %113 = load i8, ptr %112, align 1, !tbaa !49
  %114 = icmp eq i8 %113, 0
  %115 = fmul <2 x float> %111, <float 5.000000e-01, float 5.000000e-01>
  %116 = zext i16 %108 to i64
  %117 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %116, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !234
  %119 = add nsw i32 %118, %109
  store i32 %119, ptr %117, align 4, !tbaa !234
  %120 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %116
  %121 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %116, i32 6
  %122 = load i32, ptr %121, align 4, !tbaa !235
  %123 = add nsw i32 %122, %110
  store i32 %123, ptr %121, align 4, !tbaa !235
  %124 = insertelement <2 x i1> poison, i1 %114, i64 0
  %125 = shufflevector <2 x i1> %124, <2 x i1> poison, <2 x i32> zeroinitializer
  %126 = select <2 x i1> %125, <2 x float> %111, <2 x float> %115
  %127 = load <2 x float>, ptr %120, align 4, !tbaa !86
  %128 = fadd <2 x float> %126, %127
  store <2 x float> %128, ptr %120, align 4, !tbaa !86
  br label %129

129:                                              ; preds = %11, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_propagate_uv_final_position(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 16) #15
  %15 = getelementptr inbounds %struct.UvElement, ptr %1, i64 0, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !168
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %7
  %20 = icmp eq i8 %6, 0
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds %struct.UVVertAverage, ptr %4, i64 %21
  %23 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 3
  %24 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 4
  %25 = getelementptr inbounds %struct.StitchState, ptr %5, i64 0, i32 18
  br label %26

26:                                               ; preds = %19, %73
  %27 = phi ptr [ %71, %73 ], [ %1, %19 ]
  %28 = getelementptr inbounds %struct.UvElement, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !158
  %30 = load ptr, ptr %29, align 8, !tbaa !167
  %31 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %13, ptr noundef %30, i32 noundef 16) #15
  %32 = getelementptr inbounds %struct.UvElement, ptr %27, i64 0, i32 4
  %33 = load i8, ptr %32, align 1, !tbaa !168
  %34 = or i8 %33, 4
  store i8 %34, ptr %32, align 1, !tbaa !168
  br i1 %20, label %37, label %35

35:                                               ; preds = %26
  tail call fastcc void @copy_v2_v2(ptr noundef %31, ptr noundef %22) #16
  %36 = load ptr, ptr %8, align 8, !tbaa !74
  tail call void @uvedit_uv_select_enable(ptr noundef %36, ptr noundef %0, ptr noundef nonnull %29, i8 noundef zeroext 0, i32 noundef %14) #15
  br label %55

37:                                               ; preds = %26
  %38 = load ptr, ptr %28, align 8, !tbaa !158
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %40) #16
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.PreviewPosition, ptr %3, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !177
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %55, label %46

46:                                               ; preds = %37
  %47 = load ptr, ptr %12, align 8, !tbaa !194
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds float, ptr %47, i64 %48
  %50 = getelementptr inbounds %struct.UvElement, ptr %27, i64 0, i32 2
  %51 = load i16, ptr %50, align 8, !tbaa !237
  %52 = zext i16 %51 to i64
  %53 = shl nuw nsw i64 %52, 1
  %54 = getelementptr inbounds float, ptr %49, i64 %53
  tail call fastcc void @copy_v2_v2(ptr noundef %54, ptr noundef %22) #16
  br label %55

55:                                               ; preds = %37, %46, %35
  %56 = load i8, ptr %23, align 4, !tbaa !50
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr %24, align 1, !tbaa !49
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.UvElement, ptr %27, i64 0, i32 5
  %63 = load i16, ptr %62, align 4, !tbaa !144
  %64 = zext i16 %63 to i32
  %65 = load i32, ptr %25, align 4, !tbaa !45
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %55
  %68 = load i8, ptr %32, align 1, !tbaa !168
  %69 = and i8 %68, 1
  store i8 %69, ptr %32, align 1, !tbaa !168
  br label %70

70:                                               ; preds = %67, %61, %58
  %71 = load ptr, ptr %27, align 8, !tbaa !164
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.UvElement, ptr %71, i64 0, i32 3
  %75 = load i8, ptr %74, align 2, !tbaa !90
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %26, label %77, !llvm.loop !238

77:                                               ; preds = %73, %70, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_calculate_island_snapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x [2 x float]], align 16
  %7 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.UvElementMap, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %157

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.StitchState, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 26
  %17 = icmp eq i32 %4, 0
  br label %18

18:                                               ; preds = %12, %150
  %19 = phi ptr [ %8, %12 ], [ %151, %150 ]
  %20 = phi i64 [ 0, %12 ], [ %152, %150 ]
  %21 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20
  %22 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 7
  %23 = load i8, ptr %22, align 4, !tbaa !189
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %150, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !235
  %28 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !234
  %30 = add nsw i32 %29, %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %31 = icmp sgt i32 %29, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = sitofp i32 %29 to float
  %34 = load float, ptr %21, align 4, !tbaa !239
  %35 = fdiv float %34, %33
  store float %35, ptr %21, align 4, !tbaa !239
  br label %36

36:                                               ; preds = %32, %25
  %37 = icmp sgt i32 %27, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = sitofp i32 %27 to float
  %40 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 1
  %41 = load float, ptr %40, align 4, !tbaa !240
  %42 = fdiv float %41, %39
  store float %42, ptr %40, align 4, !tbaa !240
  br label %43

43:                                               ; preds = %38, %36
  %44 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 4
  %45 = load i32, ptr %44, align 4, !tbaa !214
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !86
  br label %58

50:                                               ; preds = %43
  %51 = sitofp i32 %45 to float
  %52 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 2
  %53 = load <4 x float>, ptr %52, align 4, !tbaa !86
  %54 = insertelement <4 x float> poison, float %51, i64 0
  %55 = shufflevector <4 x float> %54, <4 x float> poison, <4 x i32> zeroinitializer
  %56 = fdiv <4 x float> %53, %55
  store <4 x float> %56, ptr %52, align 4, !tbaa !86
  %57 = extractelement <4 x float> %56, i64 3
  br label %58

58:                                               ; preds = %47, %50
  %59 = phi float [ %49, %47 ], [ %57, %50 ]
  %60 = load float, ptr %0, align 8, !tbaa !87
  %61 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 3
  %62 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 3, i64 1
  %63 = fdiv float %59, %60
  store float %63, ptr %62, align 4, !tbaa !86
  %64 = load float, ptr %21, align 4, !tbaa !239
  %65 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !240
  %67 = fadd float %64, %66
  %68 = fcmp olt float %67, 0x3FF921FB60000000
  %69 = icmp eq i32 %29, 0
  %70 = or i1 %69, %68
  %71 = icmp eq i32 %27, 0
  %72 = select i1 %70, i1 true, i1 %71
  %73 = sitofp i32 %29 to float
  %74 = sitofp i32 %30 to float
  br i1 %72, label %75, label %79

75:                                               ; preds = %58
  %76 = sitofp i32 %27 to float
  %77 = fneg float %66
  %78 = fmul float %76, %77
  br label %83

79:                                               ; preds = %58
  %80 = fsub float 0x401921FB60000000, %66
  %81 = sitofp i32 %27 to float
  %82 = fmul float %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi float [ %82, %79 ], [ %78, %75 ]
  %85 = call float @llvm.fmuladd.f32(float %64, float %73, float %84)
  %86 = fdiv float %85, %74
  call void @rotate_m2(ptr noundef nonnull %6, float noundef %86) #15
  %87 = load ptr, ptr %7, align 8, !tbaa !46
  %88 = trunc i64 %20 to i32
  %89 = call fastcc i32 @getNumOfIslandUvs(ptr noundef %87, i32 noundef %88) #16
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.UvElementMap, ptr %87, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !89
  %94 = getelementptr inbounds %struct.UvElementMap, ptr %87, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !190
  %96 = getelementptr inbounds i32, ptr %95, i64 %20
  %97 = load i32, ptr %96, align 4, !tbaa !103
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.UvElement, ptr %93, i64 %98
  %100 = getelementptr inbounds %struct.IslandStitchData, ptr %3, i64 %20, i32 2
  br label %101

101:                                              ; preds = %91, %140
  %102 = phi ptr [ %99, %91 ], [ %144, %140 ]
  %103 = phi i32 [ 0, %91 ], [ %143, %140 ]
  %104 = getelementptr inbounds %struct.UvElement, ptr %102, i64 0, i32 4
  %105 = load i8, ptr %104, align 1, !tbaa !168
  %106 = and i8 %105, 4
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.UvElement, ptr %102, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !158
  %111 = load ptr, ptr %110, align 8, !tbaa !167
  %112 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %16, ptr noundef %111, i32 noundef 16) #15
  br i1 %17, label %115, label %113

113:                                              ; preds = %108
  %114 = load float, ptr %0, align 8, !tbaa !87
  call fastcc void @stitch_uv_rotate(ptr noundef nonnull %6, ptr noundef nonnull %61, ptr noundef %112, float noundef %114) #16
  br label %138

115:                                              ; preds = %108
  %116 = load ptr, ptr %109, align 8, !tbaa !158
  %117 = getelementptr inbounds %struct.BMLoop, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !161
  %119 = call fastcc i32 @_bm_elem_index_get(ptr noundef %118) #16
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.PreviewPosition, ptr %1, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !177
  %123 = load ptr, ptr %2, align 8, !tbaa !194
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds float, ptr %123, i64 %124
  %126 = getelementptr inbounds %struct.UvElement, ptr %102, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !237
  %128 = zext i16 %127 to i64
  %129 = shl nuw nsw i64 %128, 1
  %130 = getelementptr inbounds float, ptr %125, i64 %129
  %131 = load float, ptr %0, align 8, !tbaa !87
  call fastcc void @stitch_uv_rotate(ptr noundef nonnull %6, ptr noundef nonnull %61, ptr noundef %130, float noundef %131) #16
  %132 = load ptr, ptr %2, align 8, !tbaa !194
  %133 = getelementptr inbounds float, ptr %132, i64 %124
  %134 = load i16, ptr %126, align 8, !tbaa !237
  %135 = zext i16 %134 to i64
  %136 = shl nuw nsw i64 %135, 1
  %137 = getelementptr inbounds float, ptr %133, i64 %136
  br label %138

138:                                              ; preds = %115, %113
  %139 = phi ptr [ %112, %113 ], [ %137, %115 ]
  call fastcc void @add_v2_v2(ptr noundef %139, ptr noundef nonnull %100) #16
  br label %140

140:                                              ; preds = %138, %101
  %141 = load i8, ptr %104, align 1, !tbaa !168
  %142 = and i8 %141, 1
  store i8 %142, ptr %104, align 1, !tbaa !168
  %143 = add nuw nsw i32 %103, 1
  %144 = getelementptr inbounds %struct.UvElement, ptr %102, i64 1
  %145 = icmp eq i32 %143, %89
  br i1 %145, label %146, label %101, !llvm.loop !241

146:                                              ; preds = %140
  %147 = load ptr, ptr %7, align 8, !tbaa !46
  br label %148

148:                                              ; preds = %146, %83
  %149 = phi ptr [ %147, %146 ], [ %87, %83 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %150

150:                                              ; preds = %18, %148
  %151 = phi ptr [ %19, %18 ], [ %149, %148 ]
  %152 = add nuw nsw i64 %20, 1
  %153 = getelementptr inbounds %struct.UvElementMap, ptr %151, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !47
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %18, label %157, !llvm.loop !242

157:                                              ; preds = %150, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stitch_check_uvs_stitchable(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %18 = load ptr, ptr %16, align 8, !tbaa !167
  %19 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %17, ptr noundef %18, i32 noundef 16) #15
  %20 = getelementptr inbounds %struct.UvElement, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !158
  %22 = load ptr, ptr %21, align 8, !tbaa !167
  %23 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %17, ptr noundef %22, i32 noundef 16) #15
  %24 = load float, ptr %19, align 4, !tbaa !86
  %25 = load float, ptr %23, align 4, !tbaa !86
  %26 = fsub float %24, %25
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp olt float %27, %10
  br i1 %28, label %29, label %37

29:                                               ; preds = %14
  %30 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !86
  %32 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !86
  %34 = fsub float %31, %33
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = fcmp olt float %35, %10
  br i1 %36, label %38, label %37

37:                                               ; preds = %29, %14
  br label %38

38:                                               ; preds = %8, %37, %29, %3
  %39 = phi i8 [ 0, %3 ], [ 0, %37 ], [ 1, %29 ], [ 1, %8 ]
  ret i8 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stitch_check_edges_stitchable(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %83, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.StitchState, ptr %2, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = load i32, ptr %0, align 8, !tbaa !123
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.UvElement, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !158
  %23 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %24 = load ptr, ptr %22, align 8, !tbaa !167
  %25 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %24, i32 noundef 16) #15
  %26 = load ptr, ptr %15, align 8, !tbaa !95
  %27 = load i32, ptr %1, align 8, !tbaa !123
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.UvElement, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !158
  %33 = load ptr, ptr %32, align 8, !tbaa !167
  %34 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %33, i32 noundef 16) #15
  %35 = load ptr, ptr %15, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.UvEdge, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !124
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.UvElement, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !158
  %43 = load ptr, ptr %42, align 8, !tbaa !167
  %44 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %43, i32 noundef 16) #15
  %45 = load ptr, ptr %15, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.UvEdge, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !124
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.UvElement, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !158
  %53 = load ptr, ptr %52, align 8, !tbaa !167
  %54 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %23, ptr noundef %53, i32 noundef 16) #15
  %55 = load float, ptr %25, align 4, !tbaa !86
  %56 = load float, ptr %34, align 4, !tbaa !86
  %57 = fsub float %55, %56
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fcmp olt float %58, %10
  br i1 %59, label %60, label %82

60:                                               ; preds = %14
  %61 = getelementptr inbounds [2 x float], ptr %25, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !86
  %63 = getelementptr inbounds [2 x float], ptr %34, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !86
  %65 = fsub float %62, %64
  %66 = tail call float @llvm.fabs.f32(float %65)
  %67 = fcmp olt float %66, %10
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load float, ptr %44, align 4, !tbaa !86
  %70 = load float, ptr %54, align 4, !tbaa !86
  %71 = fsub float %69, %70
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fcmp olt float %72, %10
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = getelementptr inbounds [2 x float], ptr %44, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !86
  %77 = getelementptr inbounds [2 x float], ptr %54, i64 0, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !86
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stitch_setup_face_preview_for_uv_group(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 3
  %8 = load i8, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 4
  %12 = load i8, ptr %11, align 1, !tbaa !49
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 4, !tbaa !144
  br label %24

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.StitchState, ptr %1, i64 0, i32 18
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = getelementptr inbounds %struct.UvElement, ptr %0, i64 0, i32 5
  %21 = load i16, ptr %20, align 4, !tbaa !144
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %14, %17
  %25 = phi i16 [ %16, %14 ], [ %21, %17 ]
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.IslandStitchData, ptr %2, i64 %26, i32 7
  store i8 1, ptr %27, align 4, !tbaa !189
  br label %28

28:                                               ; preds = %4, %24
  br label %29

29:                                               ; preds = %28, %37
  %30 = phi ptr [ %35, %37 ], [ %0, %28 ]
  %31 = getelementptr inbounds %struct.UvElement, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !158
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !161
  tail call fastcc void @stitch_set_face_preview_buffer_position(ptr noundef %34, ptr noundef %6, ptr noundef %3) #16
  %35 = load ptr, ptr %30, align 8, !tbaa !164
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.UvElement, ptr %35, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !90
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %29, label %41, !llvm.loop !243

41:                                               ; preds = %37, %29, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !86
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = load float, ptr %1, align 4, !tbaa !86
  %9 = fneg float %7
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  ret float %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #12 {
  %2 = fcmp olt float %0, -1.000000e+00
  %3 = select i1 %2, float -1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #12 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !86
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !86
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !86
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare void @uvedit_uv_select_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rotate_m2(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_uv_rotate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = fdiv float %7, %3
  store float %8, ptr %6, align 4, !tbaa !86
  tail call fastcc void @sub_v2_v2(ptr noundef %2, ptr noundef %1) #16
  call void @mul_v2_m2v2(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %2) #15
  call fastcc void @add_v2_v2v2(ptr noundef %2, ptr noundef nonnull %5, ptr noundef %1) #16
  %9 = load float, ptr %6, align 4, !tbaa !86
  %10 = fmul float %9, %3
  store float %10, ptr %6, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !86
  %4 = load float, ptr %0, align 4, !tbaa !86
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !86
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !86
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !86
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare void @mul_v2_m2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !86
  %5 = load float, ptr %2, align 4, !tbaa !86
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !86
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !86
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !86
  ret void
}

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushClientAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopClientAttrib() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_select(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.NearestHit, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !103
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !103
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %9, float noundef %12, float noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %16) #15
  %17 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 20
  %18 = load i8, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  br i1 %19, label %22, label %31

22:                                               ; preds = %4
  call void @uv_find_nearest_vert(ptr noundef %1, ptr noundef %8, ptr noundef %21, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #15
  %23 = load ptr, ptr %6, align 8, !tbaa !244
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.StitchState, ptr %3, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.NearestHit, ptr %6, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !246
  %30 = call ptr @BM_uv_element_get(ptr noundef %27, ptr noundef nonnull %23, ptr noundef %29) #15
  call fastcc void @stitch_select_uv(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 0) #16
  br label %38

31:                                               ; preds = %4
  call void @uv_find_nearest_edge(ptr noundef %1, ptr noundef %8, ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %32 = load ptr, ptr %6, align 8, !tbaa !244
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.NearestHit, ptr %6, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !246
  %37 = call fastcc ptr @uv_edge_get(ptr noundef %36, ptr noundef nonnull %3) #16
  call fastcc void @stitch_select_edge(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 0) #16
  br label %38

38:                                               ; preds = %31, %34, %22, %25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stitch_exit(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %70, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 2
  %16 = load float, ptr %15, align 8, !tbaa !42
  tail call void @RNA_float_set(ptr noundef %14, ptr noundef nonnull @.str.14, float noundef %16) #15
  %17 = load ptr, ptr %13, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !44
  %20 = zext i8 %19 to i32
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %20) #15
  %21 = load ptr, ptr %13, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 3
  %23 = load i8, ptr %22, align 4, !tbaa !50
  %24 = zext i8 %23 to i32
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef %24) #15
  %25 = load ptr, ptr %13, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 18
  %27 = load i32, ptr %26, align 4, !tbaa !45
  tail call void @RNA_int_set(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %27) #15
  %28 = load ptr, ptr %13, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 4
  %30 = load i8, ptr %29, align 1, !tbaa !49
  %31 = zext i8 %30 to i32
  tail call void @RNA_boolean_set(ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %31) #15
  %32 = load ptr, ptr %13, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 20
  %34 = load i8, ptr %33, align 8, !tbaa !76
  %35 = zext i8 %34 to i32
  tail call void @RNA_enum_set(ptr noundef %32, ptr noundef nonnull @.str.26, i32 noundef %35) #15
  %36 = load ptr, ptr %13, align 8, !tbaa !73
  %37 = load i8, ptr %33, align 8, !tbaa !76
  %38 = zext i8 %37 to i32
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.29, i32 noundef %38) #15
  %39 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 17
  %40 = load i32, ptr %39, align 8, !tbaa !126
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 16
  br label %44

44:                                               ; preds = %42, %53
  %45 = phi i64 [ 0, %42 ], [ %65, %53 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %46 = load i8, ptr %33, align 8, !tbaa !76
  %47 = icmp eq i8 %46, 0
  %48 = load ptr, ptr %43, align 8, !tbaa !127
  %49 = getelementptr inbounds ptr, ptr %48, i64 %45
  br i1 %47, label %53, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %49, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct.UvEdge, ptr %51, i64 0, i32 3
  br label %53

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %52, %50 ], [ %49, %44 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = load ptr, ptr %13, align 8, !tbaa !73
  call void @RNA_collection_add(ptr noundef %56, ptr noundef nonnull @.str.31, ptr noundef nonnull %4) #15
  %57 = getelementptr inbounds %struct.UvElement, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !158
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !161
  %61 = call fastcc i32 @_bm_elem_index_get(ptr noundef %60) #16
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.41, i32 noundef %61) #15
  %62 = getelementptr inbounds %struct.UvElement, ptr %55, i64 0, i32 2
  %63 = load i16, ptr %62, align 8, !tbaa !237
  %64 = zext i16 %63 to i32
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.42, i32 noundef %64) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  %65 = add nuw nsw i64 %45, 1
  %66 = load i32, ptr %39, align 8, !tbaa !126
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %44, label %69, !llvm.loop !247

69:                                               ; preds = %53, %12
  call void @uvedit_live_unwrap_update(ptr noundef %8, ptr noundef %6, ptr noundef %7) #15
  br label %70

70:                                               ; preds = %69, %3
  %71 = icmp eq ptr %5, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  call void @ED_area_headerprint(ptr noundef nonnull %5, ptr noundef null) #15
  br label %73

73:                                               ; preds = %72, %70
  %74 = call ptr @CTX_wm_region(ptr noundef %0) #15
  %75 = getelementptr inbounds %struct.ARegion, ptr %74, i64 0, i32 20
  %76 = load ptr, ptr %75, align 8, !tbaa !146
  %77 = getelementptr inbounds %struct.StitchState, ptr %10, i64 0, i32 21
  %78 = load ptr, ptr %77, align 8, !tbaa !149
  call void @ED_region_draw_cb_exit(ptr noundef %76, ptr noundef %78) #15
  %79 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  call void @DAG_id_tag_update(ptr noundef %80, i16 noundef signext 0) #15
  %81 = load ptr, ptr %79, align 8, !tbaa !23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %81) #15
  call fastcc void @state_delete(ptr noundef %10) #16
  store ptr null, ptr %9, align 8, !tbaa !30
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uv_find_nearest_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uv_find_nearest_edge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uvedit_live_unwrap_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !12, i64 184}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 32}
!19 = !{!6, !7, i64 56}
!20 = !{!6, !7, i64 72}
!21 = !{!6, !7, i64 88}
!22 = !{i32 0, i32 2}
!23 = !{!24, !7, i64 296}
!24 = !{!"Object", !25, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !26, i64 140, !26, i64 144, !26, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !27, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !26, i64 432, !26, i64 436, !7, i64 440, !7, i64 448, !26, i64 456, !26, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !28, i64 616, !28, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !26, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !26, i64 968, !26, i64 972, !26, i64 976, !26, i64 980, !26, i64 984, !28, i64 988, !28, i64 992, !28, i64 996, !28, i64 1000, !28, i64 1004, !28, i64 1008, !28, i64 1012, !28, i64 1016, !28, i64 1020, !28, i64 1024, !28, i64 1028, !28, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !28, i64 1048, !28, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !28, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !26, i64 1144, !26, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !28, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !29, i64 1304, !29, i64 1312, !26, i64 1320, !26, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!25 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !26, i64 100, !26, i64 104, !26, i64 108, !7, i64 112}
!26 = !{!"int", !8, i64 0}
!27 = !{!"bAnimVizSettings", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44}
!28 = !{!"float", !8, i64 0}
!29 = !{!"long", !8, i64 0}
!30 = !{!31, !7, i64 96}
!31 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!32 = !{!33, !12, i64 16}
!33 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !26, i64 20, !26, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !26, i64 48, !26, i64 52, !34, i64 56, !26, i64 64, !26, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !26, i64 108, !7, i64 112}
!34 = !{!"double", !8, i64 0}
!35 = !{!33, !12, i64 72}
!36 = !{!37, !26, i64 8}
!37 = !{!"UserDef", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !26, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !26, i64 8484, !26, i64 8488, !26, i64 8492, !12, i64 8496, !12, i64 8498, !26, i64 8500, !26, i64 8504, !26, i64 8508, !26, i64 8512, !26, i64 8516, !26, i64 8520, !26, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !26, i64 8912, !26, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !28, i64 8956, !28, i64 8960, !26, i64 8964, !12, i64 8968, !12, i64 8970, !28, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !38, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !26, i64 10896, !26, i64 10900, !28, i64 10904, !28, i64 10908, !26, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !39, i64 10928}
!38 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!39 = !{!"WalkNavigation", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !12, i64 24, !8, i64 26}
!40 = !{!33, !12, i64 18}
!41 = !{!33, !12, i64 76}
!42 = !{!43, !28, i64 8}
!43 = !{!"StitchState", !28, i64 0, !8, i64 4, !28, i64 8, !8, i64 12, !8, i64 13, !7, i64 16, !8, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !26, i64 88, !26, i64 92, !7, i64 96, !26, i64 104, !26, i64 108, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136}
!44 = !{!43, !8, i64 4}
!45 = !{!43, !26, i64 108}
!46 = !{!43, !7, i64 32}
!47 = !{!48, !26, i64 20}
!48 = !{!"UvElementMap", !7, i64 0, !7, i64 8, !26, i64 16, !26, i64 20, !7, i64 24}
!49 = !{!43, !8, i64 13}
!50 = !{!43, !8, i64 12}
!51 = !{!52, !7, i64 264}
!52 = !{!"Scene", !25, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !26, i64 232, !26, i64 236, !26, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !53, i64 280, !62, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !26, i64 4380, !10, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !7, i64 4608, !68, i64 4616, !7, i64 4640, !29, i64 4648, !29, i64 4656, !55, i64 4664, !56, i64 4824, !69, i64 4888, !7, i64 4952}
!53 = !{!"RenderData", !54, i64 0, !7, i64 248, !7, i64 256, !57, i64 264, !58, i64 328, !26, i64 400, !26, i64 404, !26, i64 408, !28, i64 412, !26, i64 416, !26, i64 420, !26, i64 424, !26, i64 428, !12, i64 432, !12, i64 434, !28, i64 436, !28, i64 440, !28, i64 444, !28, i64 448, !28, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !26, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !26, i64 484, !26, i64 488, !12, i64 492, !12, i64 494, !26, i64 496, !26, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !26, i64 516, !26, i64 520, !26, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !59, i64 544, !59, i64 560, !60, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !28, i64 612, !28, i64 616, !28, i64 620, !28, i64 624, !26, i64 628, !28, i64 632, !28, i64 636, !28, i64 640, !28, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !28, i64 660, !28, i64 664, !12, i64 668, !12, i64 670, !28, i64 672, !28, i64 676, !8, i64 680, !26, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !26, i64 2520, !12, i64 2524, !12, i64 2526, !28, i64 2528, !28, i64 2532, !12, i64 2536, !12, i64 2538, !28, i64 2540, !12, i64 2544, !12, i64 2546, !26, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !28, i64 2560, !28, i64 2564, !7, i64 2568, !26, i64 2576, !28, i64 2580, !8, i64 2584, !61, i64 2616, !26, i64 3976, !26, i64 3980}
!54 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !28, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !55, i64 24, !56, i64 184}
!55 = !{!"ColorManagedViewSettings", !26, i64 0, !26, i64 4, !8, i64 8, !8, i64 72, !28, i64 136, !28, i64 140, !7, i64 144, !7, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!57 = !{!"QuicktimeCodecSettings", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !12, i64 48, !12, i64 50, !26, i64 52, !26, i64 56, !26, i64 60}
!58 = !{!"FFMpegCodecData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !28, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !7, i64 64}
!59 = !{!"rctf", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!60 = !{!"rcti", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!61 = !{!"BakeData", !54, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !28, i64 1280, !28, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!62 = !{!"AudioData", !26, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !26, i64 16, !12, i64 20, !12, i64 22, !28, i64 24, !28, i64 28}
!63 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!64 = !{!"GameData", !63, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !65, i64 40, !12, i64 64, !12, i64 66, !28, i64 68, !66, i64 72, !28, i64 128, !28, i64 132, !26, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !28, i64 164, !28, i64 168, !28, i64 172, !28, i64 176, !28, i64 180}
!65 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !28, i64 8, !28, i64 12, !7, i64 16}
!66 = !{!"RecastData", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !26, i64 40, !28, i64 44, !28, i64 48, !12, i64 52, !12, i64 54}
!67 = !{!"UnitSettings", !28, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!68 = !{!"PhysicsSettings", !8, i64 0, !26, i64 12, !26, i64 16, !26, i64 20}
!69 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!70 = !{!71, !7, i64 0}
!71 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !26, i64 16, !7, i64 24, !26, i64 32, !7, i64 40, !7, i64 48, !29, i64 56, !7, i64 64, !26, i64 72, !7, i64 80, !26, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !26, i64 104}
!72 = !{!7, !7, i64 0}
!73 = !{!31, !7, i64 112}
!74 = !{!43, !7, i64 16}
!75 = !{!43, !8, i64 24}
!76 = !{!43, !8, i64 120}
!77 = !{!78, !8, i64 50}
!78 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !28, i64 32, !28, i64 36, !28, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !28, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !79, i64 64, !81, i64 168, !28, i64 336, !28, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !28, i64 352, !28, i64 356, !28, i64 360, !28, i64 364, !28, i64 368, !28, i64 372, !28, i64 376, !28, i64 380, !28, i64 384, !28, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !26, i64 448, !26, i64 452, !26, i64 456, !26, i64 460, !12, i64 464, !12, i64 466, !26, i64 468, !28, i64 472, !28, i64 476, !82, i64 480, !83, i64 608}
!79 = !{!"ImagePaintSettings", !80, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !26, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !28, i64 100}
!80 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !26, i64 28, !26, i64 32, !26, i64 36}
!81 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !28, i64 128, !28, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !7, i64 152, !7, i64 160}
!82 = !{!"UnifiedPaintSettings", !26, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !8, i64 16, !8, i64 28, !26, i64 40, !8, i64 44, !28, i64 52, !26, i64 56, !26, i64 60, !8, i64 64, !8, i64 65, !28, i64 72, !8, i64 76, !26, i64 84, !28, i64 88, !8, i64 92, !8, i64 100, !26, i64 108, !7, i64 112, !28, i64 120, !26, i64 124}
!83 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !8, i64 20, !8, i64 21, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36}
!84 = !{!78, !12, i64 46}
!85 = !{!78, !8, i64 51}
!86 = !{!28, !28, i64 0}
!87 = !{!43, !28, i64 0}
!88 = !{!48, !26, i64 16}
!89 = !{!48, !7, i64 8}
!90 = !{!91, !8, i64 18}
!91 = !{!"UvElement", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 18, !8, i64 19, !12, i64 20}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!43, !7, i64 136}
!95 = !{!43, !7, i64 48}
!96 = !{!43, !7, i64 64}
!97 = !{!43, !26, i64 92}
!98 = !{!43, !7, i64 56}
!99 = !{!100, !26, i64 0}
!100 = !{!"BMesh", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !26, i64 88, !26, i64 92, !26, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !26, i64 128, !7, i64 136, !101, i64 144, !101, i64 344, !101, i64 544, !101, i64 744, !12, i64 944, !26, i64 948, !26, i64 952, !26, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!101 = !{!"CustomData", !7, i64 0, !8, i64 8, !26, i64 172, !26, i64 176, !26, i64 180, !7, i64 184, !7, i64 192}
!102 = !{!48, !7, i64 0}
!103 = !{!26, !26, i64 0}
!104 = distinct !{!104, !93}
!105 = distinct !{!105, !93}
!106 = !{i8 0, i8 3}
!107 = !{!108, !7, i64 56}
!108 = !{!"BMLoop", !109, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!109 = !{!"BMHeader", !7, i64 0, !26, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!110 = !{!111, !8, i64 8}
!111 = !{!"UvEdge", !26, i64 0, !26, i64 4, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!112 = !{!111, !7, i64 16}
!113 = distinct !{!113, !93}
!114 = distinct !{!114, !93}
!115 = !{!43, !7, i64 72}
!116 = !{!43, !26, i64 88}
!117 = !{i8 0, i8 2}
!118 = !{i64 0, i64 4, !103, i64 4, i64 4, !103, i64 8, i64 1, !119, i64 16, i64 8, !72, i64 24, i64 8, !72, i64 32, i64 8, !72}
!119 = !{!8, !8, i64 0}
!120 = distinct !{!120, !93}
!121 = !{!43, !7, i64 80}
!122 = distinct !{!122, !93}
!123 = !{!111, !26, i64 0}
!124 = !{!111, !26, i64 4}
!125 = distinct !{!125, !93}
!126 = !{!43, !26, i64 104}
!127 = !{!43, !7, i64 96}
!128 = !{!129, !26, i64 128}
!129 = !{!"CollectionPropertyIterator", !130, i64 0, !130, i64 24, !7, i64 48, !8, i64 56, !26, i64 96, !26, i64 100, !130, i64 104, !26, i64 128}
!130 = !{!"PointerRNA", !131, i64 0, !7, i64 8, !7, i64 16}
!131 = !{!"", !7, i64 0}
!132 = !{i64 0, i64 8, !72, i64 8, i64 8, !72, i64 16, i64 8, !72}
!133 = distinct !{!133, !93}
!134 = !{!135, !26, i64 32}
!135 = !{!"BMFace", !109, i64 0, !7, i64 16, !7, i64 24, !26, i64 32, !8, i64 36, !12, i64 48}
!136 = distinct !{!136, !93}
!137 = distinct !{!137, !93}
!138 = distinct !{!138, !93}
!139 = distinct !{!139, !93}
!140 = distinct !{!140, !93}
!141 = !{!43, !7, i64 112}
!142 = distinct !{!142, !93}
!143 = !{!135, !7, i64 24}
!144 = !{!91, !12, i64 20}
!145 = distinct !{!145, !93}
!146 = !{!147, !7, i64 240}
!147 = !{!"ARegion", !7, i64 0, !7, i64 8, !148, i64 16, !60, i64 176, !60, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !28, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!148 = !{!"View2D", !59, i64 0, !59, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !8, i64 80, !8, i64 88, !28, i64 96, !28, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!149 = !{!43, !7, i64 128}
!150 = !{!109, !8, i64 13}
!151 = !{!152, !7, i64 48}
!152 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !26, i64 56, !8, i64 60}
!153 = !{!154, !7, i64 8}
!154 = !{!"GHashIterator", !7, i64 0, !7, i64 8, !26, i64 16}
!155 = !{!156, !7, i64 8}
!156 = !{!"_gh_Entry", !7, i64 0, !7, i64 8, !7, i64 16}
!157 = !{!111, !7, i64 32}
!158 = !{!91, !7, i64 8}
!159 = !{!108, !7, i64 16}
!160 = !{!108, !7, i64 64}
!161 = !{!108, !7, i64 32}
!162 = !{!111, !7, i64 24}
!163 = distinct !{!163, !93}
!164 = !{!91, !7, i64 0}
!165 = distinct !{!165, !93}
!166 = distinct !{!166, !93}
!167 = !{!108, !7, i64 0}
!168 = !{!91, !8, i64 19}
!169 = distinct !{!169, !93}
!170 = distinct !{!170, !93}
!171 = distinct !{!171, !93}
!172 = distinct !{!172, !93}
!173 = distinct !{!173, !93}
!174 = distinct !{!174, !93}
!175 = distinct !{!175, !93}
!176 = !{!100, !26, i64 12}
!177 = !{!178, !26, i64 0}
!178 = !{!"PreviewPosition", !26, i64 0, !26, i64 4}
!179 = distinct !{!179, !93, !180, !181}
!180 = !{!"llvm.loop.isvectorized", i32 1}
!181 = !{!"llvm.loop.unroll.runtime.disable"}
!182 = distinct !{!182, !93}
!183 = !{!184, !8, i64 37}
!184 = !{!"IslandStitchData", !28, i64 0, !28, i64 4, !8, i64 8, !8, i64 16, !26, i64 24, !26, i64 28, !26, i64 32, !8, i64 36, !8, i64 37, !8, i64 38}
!185 = distinct !{!185, !93}
!186 = !{!187, !26, i64 44}
!187 = !{!"StitchPreviewer", !7, i64 0, !7, i64 8, !26, i64 16, !7, i64 24, !7, i64 32, !26, i64 40, !26, i64 44, !26, i64 48, !7, i64 56, !26, i64 64}
!188 = distinct !{!188, !93}
!189 = !{!184, !8, i64 36}
!190 = !{!48, !7, i64 24}
!191 = distinct !{!191, !93}
!192 = distinct !{!192, !93}
!193 = !{!187, !26, i64 48}
!194 = !{!187, !7, i64 0}
!195 = !{!187, !26, i64 16}
!196 = !{!187, !7, i64 8}
!197 = !{!187, !26, i64 40}
!198 = !{!187, !7, i64 24}
!199 = !{!187, !7, i64 32}
!200 = !{!187, !7, i64 56}
!201 = !{!187, !26, i64 64}
!202 = !{!178, !26, i64 4}
!203 = distinct !{!203, !93}
!204 = distinct !{!204, !93}
!205 = distinct !{!205, !93}
!206 = distinct !{!206, !93}
!207 = distinct !{!207, !93}
!208 = !{!209, !12, i64 8}
!209 = !{!"UVVertAverage", !8, i64 0, !12, i64 8}
!210 = distinct !{!210, !93}
!211 = distinct !{!211, !93}
!212 = distinct !{!212, !93}
!213 = distinct !{!213, !93}
!214 = !{!184, !26, i64 24}
!215 = distinct !{!215, !93}
!216 = !{!184, !8, i64 38}
!217 = distinct !{!217, !93}
!218 = !{!108, !7, i64 24}
!219 = distinct !{!219, !93}
!220 = distinct !{!220, !93}
!221 = distinct !{!221, !93}
!222 = distinct !{!222, !93}
!223 = distinct !{!223, !93}
!224 = distinct !{!224, !93}
!225 = distinct !{!225, !93}
!226 = !{!152, !8, i64 60}
!227 = !{!152, !7, i64 40}
!228 = !{!100, !7, i64 56}
!229 = !{!109, !26, i64 8}
!230 = distinct !{!230, !93}
!231 = distinct !{!231, !93}
!232 = distinct !{!232, !93}
!233 = distinct !{!233, !93}
!234 = !{!184, !26, i64 28}
!235 = !{!184, !26, i64 32}
!236 = distinct !{!236, !93}
!237 = !{!91, !12, i64 16}
!238 = distinct !{!238, !93}
!239 = !{!184, !28, i64 0}
!240 = !{!184, !28, i64 4}
!241 = distinct !{!241, !93}
!242 = distinct !{!242, !93}
!243 = distinct !{!243, !93}
!244 = !{!245, !7, i64 0}
!245 = !{!"NearestHit", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !26, i64 40}
!246 = !{!245, !7, i64 16}
!247 = distinct !{!247, !93}
