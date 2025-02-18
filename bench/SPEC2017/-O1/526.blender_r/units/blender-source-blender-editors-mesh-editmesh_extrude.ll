; ModuleID = 'blender/source/blender/editors/mesh/editmesh_extrude.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_extrude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@.str = private unnamed_addr constant [20 x i8] c"Extrude Repeat Mesh\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Extrude selected vertices, edges or faces repeatedly\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MESH_OT_extrude_repeat\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Steps\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Extrude Region\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"MESH_OT_extrude_region\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Extrude region of faces\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Extrude Only Vertices\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_verts_indiv\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Extrude individual vertices only\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Extrude Only Edges\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_edges_indiv\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Extrude individual edges only\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Extrude Individual Faces\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_faces_indiv\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Extrude individual faces only\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Duplicate or Extrude to Cursor\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MESH_OT_dupli_extrude_cursor\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"Duplicate and extrude selected vertices, edges or faces towards the mouse cursor\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"rotate_source\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Rotate Source\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Rotate initial selection giving better shape\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Spin\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"Extrude selected vertices in a circle around the cursor in indicated viewport\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"MESH_OT_spin\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"dupli\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Dupli\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Make Duplicates\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Center in global view space\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Axis in global view space\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Screw\00", align 1
@.str.41 = private unnamed_addr constant [91 x i8] c"Extrude selected vertices in screw-shaped rotation around the cursor in indicated viewport\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"MESH_OT_screw\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"turns\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Turns\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"translate vec=%v verts=%hv\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"extrude_face_region\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"use_select_history\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"edges_exclude\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Not a valid selection for extrude\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.52 = private unnamed_addr constant [51 x i8] c"extrude_vert_indiv verts=%hv use_select_history=%b\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"extrude_edge_only edges=%he use_select_history=%b\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"extrude_discrete_faces faces=%hf use_select_history=%b\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"rotate verts=%hv cent=%v matrix=%m3\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"translate verts=%hv vec=%v\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"create_vert co=%v\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"vert.out\00", align 1
@.str.62 = private unnamed_addr constant [85 x i8] c"spin geom=%hvef cent=%v axis=%v dvec=%v steps=%i angle=%f space=%m4 use_duplicate=%b\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"geom_last.out\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"You have to select a string of connected vertices too\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_extrude_repeat(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_repeat_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+02) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 180) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_extrude_repeat_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #7
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.6) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !50
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = fmul float %18, %18
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %19)
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !50
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %20)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = tail call float @sqrtf(float noundef %23) #7
  %27 = fdiv float 1.000000e+00, %26
  %28 = load float, ptr %15, align 4, !tbaa !50
  %29 = fmul float %28, %27
  store float %29, ptr %3, align 4, !tbaa !50
  %30 = load float, ptr %17, align 4, !tbaa !50
  %31 = fmul float %27, %30
  %32 = getelementptr inbounds float, ptr %3, i64 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = load float, ptr %21, align 4, !tbaa !50
  %34 = fmul float %27, %33
  br label %37

35:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !50
  %36 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %36, align 4, !tbaa !50
  br label %37

37:                                               ; preds = %25, %35
  %38 = phi float [ %34, %25 ], [ 0.000000e+00, %35 ]
  %39 = getelementptr inbounds float, ptr %3, i64 2
  store float %38, ptr %39, align 4, !tbaa !50
  %40 = load float, ptr %3, align 4, !tbaa !50
  %41 = fmul float %14, %40
  store float %41, ptr %3, align 4, !tbaa !50
  %42 = getelementptr inbounds float, ptr %3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fmul float %14, %43
  store float %44, ptr %42, align 4, !tbaa !50
  %45 = getelementptr inbounds float, ptr %3, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !50
  %47 = fmul float %14, %46
  store float %47, ptr %45, align 4, !tbaa !50
  %48 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %48) #7
  %49 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %50 = icmp sgt i32 %12, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %37, %51
  %52 = phi i16 [ %56, %51 ], [ 0, %37 ]
  %53 = call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %54 = load ptr, ptr %8, align 8, !tbaa !52
  %55 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %54, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull %3, i32 noundef 1) #7
  %56 = add i16 %52, 1
  %57 = sext i16 %56 to i32
  %58 = icmp sgt i32 %12, %57
  br i1 %58, label %51, label %59, !llvm.loop !56

59:                                               ; preds = %51, %37
  call void @EDBM_mesh_normals_update(ptr noundef %8) #7
  call void @EDBM_update_generic(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret i32 4
}

declare i32 @ED_operator_editmesh_view3d(ptr noundef) #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_extrude_region(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_region_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_extrude_region_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [3 x float], align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %11 = getelementptr inbounds float, ptr %7, i64 1
  %12 = getelementptr inbounds float, ptr %7, i64 2
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %10, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %14 = load i16, ptr %13, align 4, !tbaa !59
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %10, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !60
  switch i32 %21, label %23 [
    i32 0, label %41
    i32 1, label %22
  ]

22:                                               ; preds = %18
  br label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !63
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !64
  switch i32 %29, label %31 [
    i32 0, label %41
    i32 1, label %30
  ]

30:                                               ; preds = %27
  br label %41

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %2
  %33 = and i32 %15, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr %10, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !64
  switch i32 %38, label %40 [
    i32 0, label %41
    i32 1, label %39
  ]

39:                                               ; preds = %35
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %32, %40, %39, %35, %31, %30, %27, %23, %22, %18
  %42 = phi i1 [ false, %22 ], [ false, %30 ], [ false, %31 ], [ false, %39 ], [ false, %40 ], [ true, %18 ], [ false, %23 ], [ false, %27 ], [ true, %35 ], [ false, %32 ]
  %43 = phi i1 [ false, %22 ], [ true, %30 ], [ true, %31 ], [ true, %39 ], [ true, %40 ], [ false, %18 ], [ false, %23 ], [ false, %27 ], [ false, %35 ], [ true, %32 ]
  %44 = phi i1 [ true, %22 ], [ false, %30 ], [ false, %31 ], [ false, %39 ], [ false, %40 ], [ false, %18 ], [ true, %23 ], [ false, %27 ], [ false, %35 ], [ false, %32 ]
  %45 = phi i1 [ false, %22 ], [ false, %30 ], [ false, %31 ], [ false, %39 ], [ false, %40 ], [ false, %18 ], [ false, %23 ], [ true, %27 ], [ false, %35 ], [ false, %32 ]
  br i1 %42, label %146, label %46

46:                                               ; preds = %41
  br i1 %43, label %47, label %98

47:                                               ; preds = %46
  %48 = and i16 %14, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %95, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %51 = load ptr, ptr %10, align 8, !tbaa !52
  %52 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %52, align 4, !tbaa !65
  %53 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %53, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %54, align 8, !tbaa !68
  %55 = getelementptr inbounds %struct.BMesh, ptr %51, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  store ptr %56, ptr %6, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #7
  %57 = load ptr, ptr %54, align 8, !tbaa !68
  %58 = call ptr %57(ptr noundef nonnull %6) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %93, label %60

60:                                               ; preds = %50, %89
  %61 = phi ptr [ %91, %89 ], [ %58, %50 ]
  %62 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !71
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %10, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !73
  call void @BM_vert_select_set(ptr noundef %67, ptr noundef %69, i8 noundef zeroext 1) #7
  %70 = load ptr, ptr %10, align 8, !tbaa !52
  %71 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  call void @BM_vert_select_set(ptr noundef %70, ptr noundef %72, i8 noundef zeroext 1) #7
  br label %89

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 3
  %77 = load i8, ptr %76, align 1, !tbaa !71
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !76
  %83 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !71
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %10, align 8, !tbaa !52
  call void @BM_edge_select_set(ptr noundef %88, ptr noundef nonnull %61, i8 noundef zeroext 1) #7
  br label %89

89:                                               ; preds = %87, %80, %73, %66
  %90 = load ptr, ptr %54, align 8, !tbaa !68
  %91 = call ptr %90(ptr noundef nonnull %6) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %60, !llvm.loop !77

93:                                               ; preds = %89, %50
  %94 = call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %121

95:                                               ; preds = %47
  br i1 %43, label %96, label %98

96:                                               ; preds = %95
  %97 = call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %121

98:                                               ; preds = %95, %46
  br i1 %44, label %99, label %108

99:                                               ; preds = %98
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #7
  %100 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %10, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 1) #7
  %101 = load ptr, ptr %10, align 8, !tbaa !52
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %101, ptr noundef nonnull %5, ptr noundef nonnull @.str.53, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %102 = load ptr, ptr %10, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %102, ptr noundef nonnull %5) #7
  %103 = load ptr, ptr %10, align 8, !tbaa !52
  %104 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %103, ptr noundef nonnull %104, ptr noundef nonnull @.str.54, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %105 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #7
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %106, i16 0, i16 103
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #7
  br label %121

108:                                              ; preds = %98
  br i1 %45, label %109, label %119

109:                                              ; preds = %108
  %110 = load ptr, ptr %10, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  %111 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %112 = getelementptr inbounds %struct.BMesh, ptr %110, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %112, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  call void @EDBM_flag_disable_all(ptr noundef nonnull %10, i8 noundef zeroext 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %113 = load ptr, ptr %10, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %113, ptr noundef nonnull %3) #7
  %114 = load ptr, ptr %10, align 8, !tbaa !52
  %115 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %114, ptr noundef nonnull %115, ptr noundef nonnull @.str.50, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %116 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #7
  %117 = icmp eq i8 %116, 0
  %118 = select i1 %117, i16 0, i16 110
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  br label %121

119:                                              ; preds = %108
  %120 = tail call fastcc signext i16 @edbm_extrude_discrete_faces(ptr noundef %10, ptr noundef %1)
  br label %121

121:                                              ; preds = %119, %109, %99, %96, %93
  %122 = phi i16 [ %94, %93 ], [ %97, %96 ], [ %107, %99 ], [ %118, %109 ], [ %120, %119 ]
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !80
  call void @BKE_report(ptr noundef %126, i32 noundef 32, ptr noundef nonnull @.str.51) #7
  br label %146

127:                                              ; preds = %121
  %128 = load ptr, ptr @G, align 8, !tbaa !81
  %129 = getelementptr inbounds %struct.Main, ptr %128, i64 0, i32 46
  %130 = load ptr, ptr %129, align 8, !tbaa !83
  call void @BKE_object_handle_update(ptr noundef %130, ptr noundef %8, ptr noundef %9) #7
  %131 = icmp eq i16 %122, 110
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %133, ptr noundef nonnull %7) #7
  %134 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47, i64 3
  %135 = load float, ptr %7, align 4, !tbaa !50
  %136 = load float, ptr %134, align 4, !tbaa !50
  %137 = fsub float %135, %136
  store float %137, ptr %7, align 4, !tbaa !50
  %138 = load float, ptr %11, align 4, !tbaa !50
  %139 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47, i64 3, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !50
  %141 = fsub float %138, %140
  store float %141, ptr %11, align 4, !tbaa !50
  %142 = load float, ptr %12, align 4, !tbaa !50
  %143 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47, i64 3, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !50
  %145 = fsub float %142, %144
  store float %145, ptr %12, align 4, !tbaa !50
  br label %146

146:                                              ; preds = %41, %124, %127, %132
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @EDBM_mesh_normals_update(ptr noundef %10) #7
  call void @EDBM_update_generic(ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  ret i32 4
}

declare i32 @ED_operator_editmesh(ptr noundef) #1

declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_extrude_verts_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_verts_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_extrude_verts_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 1) #7
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull @.str.53, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %8, ptr noundef nonnull %3) #7
  %9 = load ptr, ptr %5, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.54, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_extrude_edges_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_edges_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_extrude_edges_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  %8 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %10 = load ptr, ptr %6, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %10, ptr noundef nonnull %3) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull @.str.50, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %13 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_extrude_faces_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_faces_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_extrude_faces_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #7
  %5 = tail call fastcc signext i16 @edbm_extrude_discrete_faces(ptr noundef %4, ptr noundef %1)
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_dupli_extrude_cursor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_dupli_extrude_cursor_invoke, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dupli_extrude_cursor_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca %struct.BMOperator, align 8
  %17 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #7
  %18 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  call void @ED_view3d_init_mats_rv3d(ptr noundef %19, ptr noundef %21) #7
  %22 = load ptr, ptr %4, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 54
  %26 = load i16, ptr %25, align 2, !tbaa !110
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 51
  %31 = load i8, ptr %30, align 1, !tbaa !117
  %32 = icmp eq i8 %31, 3
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i1 [ false, %3 ], [ %32, %29 ]
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %35, align 4, !tbaa !50
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0x46293E5940000000, ptr %36, align 4, !tbaa !50
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !50
  %37 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %37, align 4, !tbaa !50
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %38, align 4, !tbaa !50
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !50
  %39 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %42, align 4, !tbaa !65
  %43 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !67
  %44 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !119
  store ptr %46, ptr %5, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #7
  %47 = load ptr, ptr %44, align 8, !tbaa !68
  %48 = call ptr %47(ptr noundef nonnull %5) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %294, label %50

50:                                               ; preds = %33, %59
  %51 = phi ptr [ %62, %59 ], [ %48, %33 ]
  %52 = phi i8 [ %60, %59 ], [ 0, %33 ]
  %53 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !71
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %58) #7
  br label %59

59:                                               ; preds = %50, %57
  %60 = phi i8 [ 1, %57 ], [ %52, %50 ]
  %61 = load ptr, ptr %44, align 8, !tbaa !68
  %62 = call ptr %61(ptr noundef nonnull %5) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %50, !llvm.loop !120

64:                                               ; preds = %59
  %65 = icmp eq i8 %60, 0
  br i1 %65, label %294, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = call i32 @RNA_boolean_get(ptr noundef %68, ptr noundef nonnull @.str.23) #7
  %70 = trunc i32 %69 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %71 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !121
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %75 = load i32, ptr %74, align 4, !tbaa !121
  %76 = sitofp i32 %75 to float
  %77 = load ptr, ptr %39, align 8, !tbaa !118
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  store i8 2, ptr %42, align 4, !tbaa !65
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !67
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !68
  %79 = getelementptr inbounds %struct.BMesh, ptr %78, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !69
  store ptr %80, ptr %5, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #7
  %81 = load ptr, ptr %44, align 8, !tbaa !68
  %82 = call ptr %81(ptr noundef nonnull %5) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %147, label %84

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %86 = getelementptr inbounds float, ptr %13, i64 1
  %87 = getelementptr inbounds float, ptr %12, i64 1
  %88 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %89 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  br label %90

90:                                               ; preds = %84, %140
  %91 = phi ptr [ %82, %84 ], [ %143, %140 ]
  %92 = phi i8 [ 0, %84 ], [ %141, %140 ]
  %93 = getelementptr inbounds %struct.BMHeader, ptr %91, i64 0, i32 3
  %94 = load i8, ptr %93, align 1, !tbaa !71
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %140, label %97

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %98 = load ptr, ptr %85, align 8, !tbaa !122
  %99 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !73
  %101 = getelementptr inbounds %struct.BMVert, ptr %100, i64 0, i32 2
  %102 = call i32 @ED_view3d_project_float_object(ptr noundef %98, ptr noundef nonnull %101, ptr noundef nonnull %12, i32 noundef 0) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %97
  %105 = load ptr, ptr %85, align 8, !tbaa !122
  %106 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !76
  %108 = getelementptr inbounds %struct.BMVert, ptr %107, i64 0, i32 2
  %109 = call i32 @ED_view3d_project_float_object(ptr noundef %105, ptr noundef nonnull %108, ptr noundef nonnull %13, i32 noundef 0) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %104
  %112 = load float, ptr %12, align 4, !tbaa !50
  %113 = fsub float %112, %73
  %114 = load float, ptr %86, align 4, !tbaa !50
  %115 = fsub float %114, %76
  %116 = load float, ptr %13, align 4, !tbaa !50
  %117 = fsub float %116, %73
  %118 = load float, ptr %87, align 4, !tbaa !50
  %119 = fsub float %118, %76
  %120 = fneg float %117
  %121 = fmul float %119, %120
  %122 = call float @llvm.fmuladd.f32(float %113, float %115, float %121)
  %123 = fcmp ult float %122, 0.000000e+00
  %124 = load float, ptr %11, align 4, !tbaa !50
  br i1 %123, label %129, label %125

125:                                              ; preds = %111
  %126 = fsub float %118, %114
  %127 = fadd float %126, %124
  store float %127, ptr %11, align 4, !tbaa !50
  %128 = fsub float %112, %116
  br label %133

129:                                              ; preds = %111
  %130 = fsub float %114, %118
  %131 = fadd float %130, %124
  store float %131, ptr %11, align 4, !tbaa !50
  %132 = fsub float %116, %112
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi ptr [ %88, %125 ], [ %89, %129 ]
  %135 = phi float [ %128, %125 ], [ %132, %129 ]
  %136 = load float, ptr %134, align 4, !tbaa !50
  %137 = fsub float %136, %135
  store float %137, ptr %134, align 4, !tbaa !50
  br label %138

138:                                              ; preds = %133, %104, %97
  %139 = phi i8 [ %92, %104 ], [ %92, %97 ], [ 1, %133 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %140

140:                                              ; preds = %90, %138
  %141 = phi i8 [ %139, %138 ], [ %92, %90 ]
  %142 = load ptr, ptr %44, align 8, !tbaa !68
  %143 = call ptr %142(ptr noundef nonnull %5) #7
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %90, !llvm.loop !123

145:                                              ; preds = %140
  %146 = icmp eq i8 %141, 0
  br label %147

147:                                              ; preds = %145, %66
  %148 = phi i1 [ true, %66 ], [ %146, %145 ]
  br i1 %148, label %207, label %149

149:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #7
  %150 = load ptr, ptr %20, align 8, !tbaa !88
  %151 = getelementptr inbounds %struct.RegionView3D, ptr %150, i64 0, i32 2
  call void @mul_mat3_m4_v3(ptr noundef nonnull %151, ptr noundef nonnull %11) #7
  %152 = load ptr, ptr %18, align 8, !tbaa !86
  %153 = getelementptr inbounds %struct.Object, ptr %152, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %153, ptr noundef nonnull %11) #7
  %154 = load ptr, ptr %20, align 8, !tbaa !88
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %154, i64 0, i32 2, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !50
  store float %156, ptr %14, align 4, !tbaa !50
  %157 = getelementptr inbounds %struct.RegionView3D, ptr %154, i64 0, i32 2, i64 2, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !50
  %159 = getelementptr inbounds float, ptr %14, i64 1
  store float %158, ptr %159, align 4, !tbaa !50
  %160 = getelementptr inbounds %struct.RegionView3D, ptr %154, i64 0, i32 2, i64 2, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !50
  %162 = getelementptr inbounds float, ptr %14, i64 2
  store float %161, ptr %162, align 4, !tbaa !50
  %163 = load ptr, ptr %18, align 8, !tbaa !86
  %164 = getelementptr inbounds %struct.Object, ptr %163, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %164, ptr noundef nonnull %14) #7
  %165 = getelementptr inbounds float, ptr %11, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !50
  %167 = load float, ptr %162, align 4, !tbaa !50
  %168 = getelementptr inbounds float, ptr %11, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !50
  %170 = load float, ptr %159, align 4, !tbaa !50
  %171 = fneg float %169
  %172 = fmul float %170, %171
  %173 = call float @llvm.fmuladd.f32(float %166, float %167, float %172)
  %174 = load float, ptr %14, align 4, !tbaa !50
  %175 = load float, ptr %11, align 4, !tbaa !50
  %176 = fneg float %175
  %177 = fmul float %167, %176
  %178 = call float @llvm.fmuladd.f32(float %169, float %174, float %177)
  %179 = fneg float %166
  %180 = fmul float %174, %179
  %181 = call float @llvm.fmuladd.f32(float %175, float %170, float %180)
  %182 = fneg float %167
  %183 = fmul float %178, %182
  %184 = call float @llvm.fmuladd.f32(float %170, float %181, float %183)
  store float %184, ptr %11, align 4, !tbaa !50
  %185 = fneg float %174
  %186 = fmul float %181, %185
  %187 = call float @llvm.fmuladd.f32(float %167, float %173, float %186)
  store float %187, ptr %165, align 4, !tbaa !50
  %188 = fneg float %170
  %189 = fmul float %173, %188
  %190 = call float @llvm.fmuladd.f32(float %174, float %178, float %189)
  store float %190, ptr %168, align 4, !tbaa !50
  %191 = fmul float %187, %187
  %192 = call float @llvm.fmuladd.f32(float %184, float %184, float %191)
  %193 = call float @llvm.fmuladd.f32(float %190, float %190, float %192)
  %194 = fcmp ogt float %193, 0x38AA95A5C0000000
  br i1 %194, label %195, label %204

195:                                              ; preds = %149
  %196 = call float @sqrtf(float noundef %193) #7
  %197 = fdiv float 1.000000e+00, %196
  %198 = load float, ptr %11, align 4, !tbaa !50
  %199 = fmul float %198, %197
  store float %199, ptr %11, align 4, !tbaa !50
  %200 = load float, ptr %165, align 4, !tbaa !50
  %201 = fmul float %197, %200
  store float %201, ptr %165, align 4, !tbaa !50
  %202 = load float, ptr %168, align 4, !tbaa !50
  %203 = fmul float %197, %202
  br label %205

204:                                              ; preds = %149
  store float 0.000000e+00, ptr %11, align 4, !tbaa !50
  store float 0.000000e+00, ptr %165, align 4, !tbaa !50
  br label %205

205:                                              ; preds = %195, %204
  %206 = phi float [ 0.000000e+00, %204 ], [ %203, %195 ]
  store float %206, ptr %168, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #7
  br label %207

207:                                              ; preds = %205, %147
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %208 = load float, ptr %9, align 4, !tbaa !50
  store float %208, ptr %6, align 4, !tbaa !50
  %209 = getelementptr inbounds float, ptr %9, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !50
  store float %210, ptr %36, align 4, !tbaa !50
  %211 = getelementptr inbounds float, ptr %9, i64 2
  %212 = load float, ptr %211, align 4, !tbaa !50
  store float %212, ptr %35, align 4, !tbaa !50
  %213 = load ptr, ptr %18, align 8, !tbaa !86
  %214 = getelementptr inbounds %struct.Object, ptr %213, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %214, ptr noundef nonnull %6) #7
  %215 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !122
  call void @ED_view3d_win_to_3d_int(ptr noundef %216, ptr noundef nonnull %6, ptr noundef nonnull %71, ptr noundef nonnull %6) #7
  %217 = load ptr, ptr %18, align 8, !tbaa !86
  %218 = getelementptr inbounds %struct.Object, ptr %217, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %218, ptr noundef nonnull %6) #7
  %219 = load float, ptr %9, align 4, !tbaa !50
  %220 = load float, ptr %6, align 4, !tbaa !50
  %221 = fsub float %220, %219
  store float %221, ptr %6, align 4, !tbaa !50
  %222 = load float, ptr %209, align 4, !tbaa !50
  %223 = load float, ptr %36, align 4, !tbaa !50
  %224 = fsub float %223, %222
  store float %224, ptr %36, align 4, !tbaa !50
  %225 = load float, ptr %211, align 4, !tbaa !50
  %226 = load float, ptr %35, align 4, !tbaa !50
  %227 = fsub float %226, %225
  store float %227, ptr %35, align 4, !tbaa !50
  call void @unit_m3(ptr noundef nonnull %10) #7
  br i1 %148, label %278, label %228

228:                                              ; preds = %207
  %229 = load float, ptr %6, align 4, !tbaa !50
  %230 = load float, ptr %36, align 4, !tbaa !50
  %231 = fmul float %230, %230
  %232 = call float @llvm.fmuladd.f32(float %229, float %229, float %231)
  %233 = load float, ptr %35, align 4, !tbaa !50
  %234 = call float @llvm.fmuladd.f32(float %233, float %233, float %232)
  %235 = fcmp ogt float %234, 0x38AA95A5C0000000
  br i1 %235, label %236, label %246

236:                                              ; preds = %228
  %237 = call float @sqrtf(float noundef %234) #7
  %238 = fdiv float 1.000000e+00, %237
  %239 = load float, ptr %6, align 4, !tbaa !50
  %240 = fmul float %239, %238
  store float %240, ptr %8, align 4, !tbaa !50
  %241 = load float, ptr %36, align 4, !tbaa !50
  %242 = fmul float %238, %241
  %243 = getelementptr inbounds float, ptr %8, i64 1
  store float %242, ptr %243, align 4, !tbaa !50
  %244 = load float, ptr %35, align 4, !tbaa !50
  %245 = fmul float %238, %244
  br label %248

246:                                              ; preds = %228
  store float 0.000000e+00, ptr %8, align 4, !tbaa !50
  %247 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %247, align 4, !tbaa !50
  br label %248

248:                                              ; preds = %236, %246
  %249 = phi float [ %245, %236 ], [ 0.000000e+00, %246 ]
  %250 = getelementptr inbounds float, ptr %8, i64 2
  store float %249, ptr %250, align 4, !tbaa !50
  %251 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #7
  %252 = fcmp une float %251, 0.000000e+00
  br i1 %252, label %253, label %278

253:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #7
  %254 = getelementptr inbounds float, ptr %11, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !50
  %256 = getelementptr inbounds float, ptr %8, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !50
  %258 = getelementptr inbounds float, ptr %11, i64 2
  %259 = load float, ptr %258, align 4, !tbaa !50
  %260 = getelementptr inbounds float, ptr %8, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !50
  %262 = fneg float %259
  %263 = fmul float %261, %262
  %264 = call float @llvm.fmuladd.f32(float %255, float %257, float %263)
  store float %264, ptr %15, align 4, !tbaa !50
  %265 = load float, ptr %8, align 4, !tbaa !50
  %266 = load float, ptr %11, align 4, !tbaa !50
  %267 = fneg float %266
  %268 = fmul float %257, %267
  %269 = call float @llvm.fmuladd.f32(float %259, float %265, float %268)
  %270 = getelementptr inbounds float, ptr %15, i64 1
  store float %269, ptr %270, align 4, !tbaa !50
  %271 = fneg float %255
  %272 = fmul float %265, %271
  %273 = call float @llvm.fmuladd.f32(float %266, float %261, float %272)
  %274 = getelementptr inbounds float, ptr %15, i64 2
  store float %273, ptr %274, align 4, !tbaa !50
  %275 = icmp eq i8 %70, 0
  %276 = fmul float %251, 5.000000e-01
  %277 = select i1 %275, float %251, float %276
  call void @axis_angle_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %15, float noundef %277) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #7
  br label %278

278:                                              ; preds = %248, %253, %207
  %279 = icmp eq i8 %70, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %278
  %281 = load ptr, ptr %39, align 8, !tbaa !118
  %282 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %281, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  br i1 %34, label %283, label %286

283:                                              ; preds = %280
  %284 = load ptr, ptr %215, align 8, !tbaa !122
  %285 = load ptr, ptr %39, align 8, !tbaa !118
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %284, ptr noundef %285) #7
  br label %286

286:                                              ; preds = %280, %283, %278
  %287 = load ptr, ptr %18, align 8, !tbaa !86
  %288 = load ptr, ptr %39, align 8, !tbaa !118
  %289 = call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %287, ptr noundef %288, ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %290 = load ptr, ptr %39, align 8, !tbaa !118
  %291 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %290, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  %292 = load ptr, ptr %39, align 8, !tbaa !118
  %293 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %292, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  br label %330

294:                                              ; preds = %33, %64
  %295 = load ptr, ptr %4, align 8, !tbaa !89
  %296 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %297 = load ptr, ptr %296, align 8, !tbaa !124
  %298 = call ptr @ED_view3d_cursor3d_get(ptr noundef %295, ptr noundef %297) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #7
  %299 = load float, ptr %298, align 4, !tbaa !50
  store float %299, ptr %6, align 4, !tbaa !50
  %300 = getelementptr inbounds float, ptr %298, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !50
  store float %301, ptr %36, align 4, !tbaa !50
  %302 = getelementptr inbounds float, ptr %298, i64 2
  %303 = load float, ptr %302, align 4, !tbaa !50
  store float %303, ptr %35, align 4, !tbaa !50
  %304 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !122
  %306 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_view3d_win_to_3d_int(ptr noundef %305, ptr noundef nonnull %6, ptr noundef nonnull %306, ptr noundef nonnull %6) #7
  %307 = load ptr, ptr %18, align 8, !tbaa !86
  %308 = getelementptr inbounds %struct.Object, ptr %307, i64 0, i32 50
  %309 = getelementptr inbounds %struct.Object, ptr %307, i64 0, i32 47
  %310 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %308, ptr noundef nonnull %309) #7
  %311 = load ptr, ptr %18, align 8, !tbaa !86
  %312 = getelementptr inbounds %struct.Object, ptr %311, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %312, ptr noundef nonnull %6) #7
  %313 = load ptr, ptr %39, align 8, !tbaa !118
  %314 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %313, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %6) #7
  %315 = load ptr, ptr %39, align 8, !tbaa !118
  %316 = load ptr, ptr %315, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %316, ptr noundef nonnull %16) #7
  %317 = getelementptr inbounds %struct.BMOperator, ptr %16, i64 0, i32 1
  %318 = call ptr @BMO_iter_new(ptr noundef nonnull %17, ptr noundef nonnull %317, ptr noundef nonnull @.str.61, i8 noundef zeroext 1) #7
  %319 = icmp eq ptr %318, null
  br i1 %319, label %326, label %320

320:                                              ; preds = %294, %320
  %321 = phi ptr [ %324, %320 ], [ %318, %294 ]
  %322 = load ptr, ptr %39, align 8, !tbaa !118
  %323 = load ptr, ptr %322, align 8, !tbaa !52
  call void @BM_vert_select_set(ptr noundef %323, ptr noundef nonnull %321, i8 noundef zeroext 1) #7
  %324 = call ptr @BMO_iter_step(ptr noundef nonnull %17) #7
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %320, !llvm.loop !125

326:                                              ; preds = %320, %294
  %327 = load ptr, ptr %39, align 8, !tbaa !118
  %328 = call zeroext i8 @EDBM_op_finish(ptr noundef %327, ptr noundef nonnull %16, ptr noundef %1, i8 noundef zeroext 1) #7
  %329 = icmp eq i8 %328, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %16) #7
  br i1 %329, label %338, label %330

330:                                              ; preds = %326, %286
  br i1 %34, label %331, label %335

331:                                              ; preds = %330
  %332 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !122
  %334 = load ptr, ptr %39, align 8, !tbaa !118
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %333, ptr noundef %334) #7
  br label %335

335:                                              ; preds = %331, %330
  %336 = load ptr, ptr %39, align 8, !tbaa !118
  call void @EDBM_mesh_normals_update(ptr noundef %336) #7
  %337 = load ptr, ptr %39, align 8, !tbaa !118
  call void @EDBM_update_generic(ptr noundef %337, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %338

338:                                              ; preds = %326, %335
  %339 = phi i32 [ 4, %335 ], [ 2, %326 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret i32 %339
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_spin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_spin_invoke, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_spin_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 2147483647) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #7
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.32, float noundef 0x3FF921FB60000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #7
  tail call void @RNA_def_property_subtype(ptr noundef %14, i32 noundef 327696) #7
  %15 = load ptr, ptr %8, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  %17 = load ptr, ptr %8, align 8, !tbaa !47
  %18 = tail call ptr @RNA_def_float_vector(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_spin_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #7
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 2
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #7
  %12 = tail call i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1), !range !126
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #7
  %12 = load ptr, ptr %10, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull %5) #7
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  %14 = call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.6) #7
  %15 = load ptr, ptr %10, align 8, !tbaa !48
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.32) #7
  %17 = fneg float %16
  %18 = load ptr, ptr %10, align 8, !tbaa !48
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.29) #7
  %20 = fpext float %17 to double
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %22 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %14, double noundef %20, ptr noundef nonnull %21, i32 noundef %19) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %3) #7
  call void @EDBM_flag_disable_all(ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  %25 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %25, ptr noundef nonnull @.str.63, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %26 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #7
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %29

29:                                               ; preds = %24, %2, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %2 ], [ 2, %24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #7
  ret i32 %30
}

declare i32 @EDBM_view3d_poll(ptr noundef) #1

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_screw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_screw_invoke, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_screw_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 256) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef 256) #7
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #7
  %15 = load ptr, ptr %8, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_screw_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #7
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 1
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #7
  %12 = tail call i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1), !range !126
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #7
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.43) #7
  %17 = load ptr, ptr %14, align 8, !tbaa !48
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.6) #7
  %19 = load ptr, ptr %14, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %19, ptr noundef nonnull @.str.34, ptr noundef nonnull %7) #7
  %20 = load ptr, ptr %14, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.37, ptr noundef nonnull %8) #7
  %21 = load ptr, ptr %12, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %22, align 4, !tbaa !65
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %23, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  store ptr %26, ptr %3, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %27 = load ptr, ptr %24, align 8, !tbaa !68
  %28 = call ptr %27(ptr noundef nonnull %3) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %32 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %34

34:                                               ; preds = %30, %59
  %35 = phi ptr [ null, %30 ], [ %61, %59 ]
  %36 = phi ptr [ null, %30 ], [ %60, %59 ]
  %37 = phi ptr [ %28, %30 ], [ %63, %59 ]
  store i8 4, ptr %31, align 4, !tbaa !65
  store ptr @bmiter__edge_of_vert_begin, ptr %32, align 8, !tbaa !67
  store ptr @bmiter__edge_of_vert_step, ptr %33, align 8, !tbaa !68
  store ptr %37, ptr %4, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #7
  %38 = load ptr, ptr %33, align 8, !tbaa !68
  %39 = call ptr %38(ptr noundef nonnull %4) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %34, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %34 ]
  %43 = phi ptr [ %50, %41 ], [ %39, %34 ]
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !71
  %46 = and i8 %45, 1
  %47 = zext nneg i8 %46 to i32
  %48 = add i32 %42, %47
  %49 = load ptr, ptr %33, align 8, !tbaa !68
  %50 = call ptr %49(ptr noundef nonnull %4) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !127

52:                                               ; preds = %41, %34
  %53 = phi i32 [ 0, %34 ], [ %48, %41 ]
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = icmp eq ptr %36, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = icmp eq ptr %35, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %57, %55, %52
  %60 = phi ptr [ %36, %52 ], [ %37, %55 ], [ %36, %57 ]
  %61 = phi ptr [ %35, %52 ], [ %35, %55 ], [ %37, %57 ]
  %62 = load ptr, ptr %24, align 8, !tbaa !68
  %63 = call ptr %62(ptr noundef nonnull %3) #7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %34, !llvm.loop !128

65:                                               ; preds = %59, %57, %2
  %66 = phi ptr [ null, %2 ], [ %61, %59 ], [ %35, %57 ]
  %67 = phi ptr [ null, %2 ], [ %60, %59 ], [ null, %57 ]
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %66, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !80
  call void @BKE_report(ptr noundef %73, i32 noundef 32, ptr noundef nonnull @.str.64) #7
  br label %125

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47
  %76 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !50
  %78 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47, i64 2, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !50
  %80 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 47, i64 2, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %75, ptr noundef nonnull %82) #7
  %83 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %75, ptr noundef nonnull %83) #7
  %84 = load float, ptr %9, align 4, !tbaa !50
  %85 = load float, ptr %10, align 4, !tbaa !50
  %86 = fsub float %84, %85
  store float %86, ptr %6, align 4, !tbaa !50
  %87 = getelementptr inbounds float, ptr %9, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = getelementptr inbounds float, ptr %10, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !50
  %91 = fsub float %88, %90
  %92 = getelementptr inbounds float, ptr %6, i64 1
  store float %91, ptr %92, align 4, !tbaa !50
  %93 = getelementptr inbounds float, ptr %9, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !50
  %95 = getelementptr inbounds float, ptr %10, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !50
  %97 = fsub float %94, %96
  %98 = getelementptr inbounds float, ptr %6, i64 2
  store float %97, ptr %98, align 4, !tbaa !50
  %99 = sitofp i32 %18 to float
  %100 = fdiv float 1.000000e+00, %99
  %101 = fmul float %100, %86
  store float %101, ptr %6, align 4, !tbaa !50
  %102 = fmul float %100, %91
  store float %102, ptr %92, align 4, !tbaa !50
  %103 = fmul float %100, %97
  store float %103, ptr %98, align 4, !tbaa !50
  %104 = fmul float %79, %102
  %105 = call float @llvm.fmuladd.f32(float %77, float %101, float %104)
  %106 = call float @llvm.fmuladd.f32(float %81, float %103, float %105)
  %107 = fcmp ogt float %106, 0.000000e+00
  br i1 %107, label %108, label %112

108:                                              ; preds = %74
  %109 = fneg float %101
  store float %109, ptr %6, align 4, !tbaa !50
  %110 = fneg float %102
  store float %110, ptr %92, align 4, !tbaa !50
  %111 = fneg float %103
  store float %111, ptr %98, align 4, !tbaa !50
  br label %112

112:                                              ; preds = %108, %74
  %113 = mul nsw i32 %18, %16
  %114 = sitofp i32 %16 to float
  %115 = fmul float %114, 3.600000e+02
  %116 = fmul float %115, 0x3F91DF46A0000000
  %117 = fpext float %116 to double
  %118 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef %113, double noundef %117, ptr noundef nonnull %75, i32 noundef 0) #7
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  call void @BMO_op_exec(ptr noundef %13, ptr noundef nonnull %5) #7
  call void @EDBM_flag_disable_all(ptr noundef nonnull %12, i8 noundef zeroext 1) #7
  %121 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %13, ptr noundef nonnull %121, ptr noundef nonnull @.str.63, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %122 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #7
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @EDBM_update_generic(ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %125

125:                                              ; preds = %120, %112, %124, %71
  %126 = phi i32 [ 2, %71 ], [ 4, %124 ], [ 2, %112 ], [ 2, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %126
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BMOIter, align 8
  %12 = alloca %struct.BMOperator, align 8
  %13 = alloca %struct.ListBase, align 8
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %12) #7
  call void @BMO_op_init(ptr noundef %14, ptr noundef nonnull %12, i32 noundef 1, ptr noundef nonnull @.str.46) #7
  call void @BMO_slot_bool_set(ptr noundef nonnull %12, ptr noundef nonnull @.str.47, i8 noundef zeroext %4) #7
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %14, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull @.str.48, i8 noundef zeroext 11, i8 noundef zeroext 1) #7
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %159, label %16

16:                                               ; preds = %5
  %17 = call ptr @BMO_slot_get(ptr noundef nonnull %12, ptr noundef nonnull @.str.49) #7
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %159, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %1, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %24 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %25 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %27 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 10
  %28 = getelementptr inbounds float, ptr %9, i64 1
  %29 = getelementptr inbounds float, ptr %9, i64 2
  %30 = getelementptr inbounds float, ptr %10, i64 1
  %31 = getelementptr inbounds float, ptr %10, i64 2
  br label %32

32:                                               ; preds = %21, %156
  %33 = phi ptr [ %19, %21 ], [ %157, %156 ]
  %34 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !129
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %156

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !131
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %156, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.MirrorModifierData, ptr %33, i64 0, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !132
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %156, label %47

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %48 = getelementptr inbounds %struct.MirrorModifierData, ptr %33, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !134
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %52 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 47
  %53 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %52) #7
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  br label %54

54:                                               ; preds = %51, %47
  store i8 2, ptr %24, align 4, !tbaa !65
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !67
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !68
  %55 = load ptr, ptr %27, align 8, !tbaa !69
  store ptr %55, ptr %6, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #7
  %56 = load ptr, ptr %26, align 8, !tbaa !68
  %57 = call ptr %56(ptr noundef nonnull %6) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %155, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.MirrorModifierData, ptr %33, i64 0, i32 3
  %61 = getelementptr inbounds %struct.MirrorModifierData, ptr %33, i64 0, i32 3
  %62 = getelementptr inbounds %struct.MirrorModifierData, ptr %33, i64 0, i32 3
  br label %63

63:                                               ; preds = %59, %151
  %64 = phi ptr [ %57, %59 ], [ %153, %151 ]
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !71
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %151, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !135
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !136
  %76 = icmp eq ptr %75, %71
  %77 = zext i1 %76 to i8
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i8 [ 0, %69 ], [ %77, %73 ]
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %151, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !138
  %84 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !71
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %151, label %88

88:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #7
  %89 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !73
  %91 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2
  %92 = load float, ptr %91, align 4, !tbaa !50
  store float %92, ptr %9, align 4, !tbaa !50
  %93 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !50
  store float %94, ptr %28, align 4, !tbaa !50
  %95 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !50
  store float %96, ptr %29, align 4, !tbaa !50
  %97 = getelementptr inbounds %struct.BMEdge, ptr %64, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !76
  %99 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2
  %100 = load float, ptr %99, align 4, !tbaa !50
  store float %100, ptr %10, align 4, !tbaa !50
  %101 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !50
  store float %102, ptr %30, align 4, !tbaa !50
  %103 = getelementptr inbounds %struct.BMVert, ptr %98, i64 0, i32 2, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !50
  store float %104, ptr %31, align 4, !tbaa !50
  %105 = load ptr, ptr %48, align 8, !tbaa !134
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %88
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %9) #7
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %10) #7
  br label %108

108:                                              ; preds = %107, %88
  %109 = load i16, ptr %43, align 2, !tbaa !132
  %110 = and i16 %109, 8
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = load float, ptr %9, align 4, !tbaa !50
  %114 = call float @llvm.fabs.f32(float %113)
  %115 = load float, ptr %60, align 4, !tbaa !139
  %116 = fcmp olt float %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load float, ptr %10, align 4, !tbaa !50
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = fcmp olt float %119, %115
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  call void @BMO_slot_map_insert(ptr noundef nonnull %12, ptr noundef %17, ptr noundef nonnull %64, ptr noundef null) #7
  br label %122

122:                                              ; preds = %121, %117, %112, %108
  %123 = load i16, ptr %43, align 2, !tbaa !132
  %124 = and i16 %123, 16
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = load float, ptr %28, align 4, !tbaa !50
  %128 = call float @llvm.fabs.f32(float %127)
  %129 = load float, ptr %61, align 4, !tbaa !139
  %130 = fcmp olt float %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load float, ptr %30, align 4, !tbaa !50
  %133 = call float @llvm.fabs.f32(float %132)
  %134 = fcmp olt float %133, %129
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  call void @BMO_slot_map_insert(ptr noundef nonnull %12, ptr noundef %17, ptr noundef nonnull %64, ptr noundef null) #7
  br label %136

136:                                              ; preds = %135, %131, %126, %122
  %137 = load i16, ptr %43, align 2, !tbaa !132
  %138 = and i16 %137, 32
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %136
  %141 = load float, ptr %29, align 4, !tbaa !50
  %142 = call float @llvm.fabs.f32(float %141)
  %143 = load float, ptr %62, align 4, !tbaa !139
  %144 = fcmp olt float %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load float, ptr %31, align 4, !tbaa !50
  %147 = call float @llvm.fabs.f32(float %146)
  %148 = fcmp olt float %147, %143
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void @BMO_slot_map_insert(ptr noundef nonnull %12, ptr noundef %17, ptr noundef nonnull %64, ptr noundef null) #7
  br label %150

150:                                              ; preds = %149, %145, %140, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  br label %151

151:                                              ; preds = %150, %81, %78, %63
  %152 = load ptr, ptr %26, align 8, !tbaa !68
  %153 = call ptr %152(ptr noundef nonnull %6) #7
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %63, !llvm.loop !140

155:                                              ; preds = %151, %54
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %156

156:                                              ; preds = %155, %42, %37, %32
  %157 = load ptr, ptr %33, align 8, !tbaa !79
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %32, !llvm.loop !141

159:                                              ; preds = %156, %16, %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13)
  %160 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %160, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  call void @EDBM_flag_disable_all(ptr noundef nonnull %1, i8 noundef zeroext 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13)
  call void @BMO_op_exec(ptr noundef %14, ptr noundef nonnull %12) #7
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  %161 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %161, align 4, !tbaa !50
  %162 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %162, align 4, !tbaa !50
  %163 = getelementptr inbounds %struct.BMOperator, ptr %12, i64 0, i32 1
  %164 = call ptr @BMO_iter_new(ptr noundef nonnull %11, ptr noundef nonnull %163, ptr noundef nonnull @.str.50, i8 noundef zeroext 15) #7
  %165 = icmp eq ptr %164, null
  br i1 %165, label %202, label %166

166:                                              ; preds = %159, %199
  %167 = phi ptr [ %200, %199 ], [ %164, %159 ]
  call void @BM_elem_select_set(ptr noundef %14, ptr noundef nonnull %167, i8 noundef zeroext 1) #7
  %168 = getelementptr inbounds %struct.BMHeader, ptr %167, i64 0, i32 2
  %169 = load i8, ptr %168, align 4, !tbaa !142
  %170 = icmp eq i8 %169, 8
  br i1 %170, label %171, label %199

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.BMFace, ptr %167, i64 0, i32 4
  %173 = load float, ptr %2, align 4, !tbaa !50
  %174 = load float, ptr %172, align 4, !tbaa !50
  %175 = load float, ptr %161, align 4, !tbaa !50
  %176 = getelementptr inbounds %struct.BMFace, ptr %167, i64 0, i32 4, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !50
  %178 = fmul float %175, %177
  %179 = call float @llvm.fmuladd.f32(float %173, float %174, float %178)
  %180 = load float, ptr %162, align 4, !tbaa !50
  %181 = getelementptr inbounds %struct.BMFace, ptr %167, i64 0, i32 4, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !50
  %183 = call float @llvm.fmuladd.f32(float %180, float %182, float %179)
  %184 = fcmp olt float %183, 0xBFEFFF2E40000000
  br i1 %184, label %185, label %191

185:                                              ; preds = %171
  %186 = fsub float %173, %174
  store float %186, ptr %2, align 4, !tbaa !50
  %187 = load float, ptr %176, align 4, !tbaa !50
  %188 = fsub float %175, %187
  store float %188, ptr %161, align 4, !tbaa !50
  %189 = load float, ptr %181, align 4, !tbaa !50
  %190 = fsub float %180, %189
  br label %197

191:                                              ; preds = %171
  %192 = fadd float %173, %174
  store float %192, ptr %2, align 4, !tbaa !50
  %193 = load float, ptr %176, align 4, !tbaa !50
  %194 = fadd float %175, %193
  store float %194, ptr %161, align 4, !tbaa !50
  %195 = load float, ptr %181, align 4, !tbaa !50
  %196 = fadd float %180, %195
  br label %197

197:                                              ; preds = %185, %191
  %198 = phi float [ %196, %191 ], [ %190, %185 ]
  store float %198, ptr %162, align 4, !tbaa !50
  br label %199

199:                                              ; preds = %166, %197
  %200 = call ptr @BMO_iter_step(ptr noundef nonnull %11) #7
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %166, !llvm.loop !144

202:                                              ; preds = %199, %159
  %203 = load float, ptr %2, align 4, !tbaa !50
  %204 = load float, ptr %161, align 4, !tbaa !50
  %205 = fmul float %204, %204
  %206 = call float @llvm.fmuladd.f32(float %203, float %203, float %205)
  %207 = load float, ptr %162, align 4, !tbaa !50
  %208 = call float @llvm.fmuladd.f32(float %207, float %207, float %206)
  %209 = fcmp ogt float %208, 0x38AA95A5C0000000
  br i1 %209, label %210, label %219

210:                                              ; preds = %202
  %211 = call float @sqrtf(float noundef %208) #7
  %212 = fdiv float 1.000000e+00, %211
  %213 = load float, ptr %2, align 4, !tbaa !50
  %214 = fmul float %213, %212
  store float %214, ptr %2, align 4, !tbaa !50
  %215 = load float, ptr %161, align 4, !tbaa !50
  %216 = fmul float %212, %215
  store float %216, ptr %161, align 4, !tbaa !50
  %217 = load float, ptr %162, align 4, !tbaa !50
  %218 = fmul float %212, %217
  br label %220

219:                                              ; preds = %202
  store float 0.000000e+00, ptr %2, align 4, !tbaa !50
  store float 0.000000e+00, ptr %161, align 4, !tbaa !50
  br label %220

220:                                              ; preds = %210, %219
  %221 = phi float [ 0.000000e+00, %219 ], [ %218, %210 ]
  store float %221, ptr %162, align 4, !tbaa !50
  call void @BMO_op_finish(ptr noundef %14, ptr noundef nonnull %12) #7
  %222 = load float, ptr %2, align 4, !tbaa !50
  %223 = fcmp oeq float %222, 0.000000e+00
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = load float, ptr %161, align 4, !tbaa !50
  %226 = fcmp oeq float %225, 0.000000e+00
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load float, ptr %162, align 4, !tbaa !50
  %229 = fcmp une float %228, 0.000000e+00
  %230 = select i1 %229, i16 110, i16 103
  br label %231

231:                                              ; preds = %220, %224, %227
  %232 = phi i16 [ 110, %224 ], [ 110, %220 ], [ %230, %227 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #7
  ret i16 %232
}

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BMO_slot_bool_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #1

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

declare void @bmiter__loop_of_face_begin(ptr noundef) #1

declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @edbm_extrude_discrete_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #7
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 1) #7
  call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #7
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %5) #7
  %8 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull @.str.57, i8 noundef zeroext 8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %15

15:                                               ; preds = %11, %38
  %16 = phi ptr [ %9, %11 ], [ %39, %38 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  call void @BM_face_select_set(ptr noundef %17, ptr noundef nonnull %16, i8 noundef zeroext 1) #7
  store i8 11, ptr %12, align 4, !tbaa !65
  store ptr @bmiter__loop_of_face_begin, ptr %13, align 8, !tbaa !67
  store ptr @bmiter__loop_of_face_step, ptr %14, align 8, !tbaa !68
  store ptr %16, ptr %4, align 8, !tbaa !70
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #7
  %18 = load ptr, ptr %14, align 8, !tbaa !68
  %19 = call ptr %18(ptr noundef nonnull %4) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 4, i64 1
  %24 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 4, i64 2
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %19, %21 ], [ %36, %25 ]
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !145
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 3
  %30 = load float, ptr %22, align 4, !tbaa !50
  store float %30, ptr %29, align 4, !tbaa !50
  %31 = load float, ptr %23, align 4, !tbaa !50
  %32 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 3, i64 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = load float, ptr %24, align 4, !tbaa !50
  %34 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 3, i64 2
  store float %33, ptr %34, align 4, !tbaa !50
  %35 = load ptr, ptr %14, align 8, !tbaa !68
  %36 = call ptr %35(ptr noundef nonnull %4) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !146

38:                                               ; preds = %25, %15
  %39 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %15, !llvm.loop !147

41:                                               ; preds = %38, %2
  %42 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #7
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i16 0, i16 115
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret i16 %44
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @unit_m3(ptr noundef) local_unnamed_addr #1

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare zeroext i8 @EDBM_op_callf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @EMBM_project_snap_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !37, i64 0}
!52 = !{!53, !36, i64 0}
!53 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !54, i64 16, !36, i64 24, !54, i64 32, !36, i64 40, !36, i64 48, !55, i64 56, !36, i64 64, !54, i64 72, !36, i64 80, !54, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !54, i64 104}
!54 = !{!"int", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!53, !41, i64 92}
!60 = !{!61, !54, i64 16}
!61 = !{!"BMesh", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !54, i64 88, !54, i64 92, !54, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !54, i64 128, !36, i64 136, !62, i64 144, !62, i64 344, !62, i64 544, !62, i64 744, !41, i64 944, !54, i64 948, !54, i64 952, !54, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!62 = !{!"CustomData", !36, i64 0, !37, i64 8, !54, i64 172, !54, i64 176, !54, i64 180, !36, i64 184, !36, i64 192}
!63 = !{!61, !54, i64 20}
!64 = !{!61, !54, i64 24}
!65 = !{!66, !37, i64 60}
!66 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !54, i64 56, !37, i64 60}
!67 = !{!66, !36, i64 40}
!68 = !{!66, !36, i64 48}
!69 = !{!61, !36, i64 40}
!70 = !{!37, !37, i64 0}
!71 = !{!72, !37, i64 13}
!72 = !{!"BMHeader", !36, i64 0, !54, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!73 = !{!74, !36, i64 24}
!74 = !{!"BMEdge", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!76 = !{!74, !36, i64 32}
!77 = distinct !{!77, !57, !58}
!78 = !{i64 0, i64 8, !79, i64 8, i64 8, !79}
!79 = !{!36, !36, i64 0}
!80 = !{!49, !36, i64 120}
!81 = !{!82, !36, i64 0}
!82 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !54, i64 2096, !54, i64 2100, !37, i64 2104, !54, i64 2108, !54, i64 2112, !37, i64 2116}
!83 = !{!84, !36, i64 1888}
!84 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !55, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!85 = !{!35, !36, i64 48}
!86 = !{!87, !36, i64 16}
!87 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!88 = !{!87, !36, i64 40}
!89 = !{!87, !36, i64 0}
!90 = !{!91, !36, i64 264}
!91 = !{!"Scene", !92, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !54, i64 232, !54, i64 236, !54, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !93, i64 280, !102, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !54, i64 4380, !39, i64 4384, !103, i64 4400, !104, i64 4416, !107, i64 4600, !36, i64 4608, !108, i64 4616, !36, i64 4640, !55, i64 4648, !55, i64 4656, !95, i64 4664, !96, i64 4824, !109, i64 4888, !36, i64 4952}
!92 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!93 = !{!"RenderData", !94, i64 0, !36, i64 248, !36, i64 256, !97, i64 264, !98, i64 328, !54, i64 400, !54, i64 404, !54, i64 408, !51, i64 412, !54, i64 416, !54, i64 420, !54, i64 424, !54, i64 428, !41, i64 432, !41, i64 434, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !54, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !54, i64 484, !54, i64 488, !41, i64 492, !41, i64 494, !54, i64 496, !54, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !54, i64 516, !54, i64 520, !54, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !99, i64 544, !99, i64 560, !100, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !51, i64 612, !51, i64 616, !51, i64 620, !51, i64 624, !54, i64 628, !51, i64 632, !51, i64 636, !51, i64 640, !51, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !51, i64 660, !51, i64 664, !41, i64 668, !41, i64 670, !51, i64 672, !51, i64 676, !37, i64 680, !54, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !54, i64 2520, !41, i64 2524, !41, i64 2526, !51, i64 2528, !51, i64 2532, !41, i64 2536, !41, i64 2538, !51, i64 2540, !41, i64 2544, !41, i64 2546, !54, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !51, i64 2560, !51, i64 2564, !36, i64 2568, !54, i64 2576, !51, i64 2580, !37, i64 2584, !101, i64 2616, !54, i64 3976, !54, i64 3980}
!94 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !51, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !95, i64 24, !96, i64 184}
!95 = !{!"ColorManagedViewSettings", !54, i64 0, !54, i64 4, !37, i64 8, !37, i64 72, !51, i64 136, !51, i64 140, !36, i64 144, !36, i64 152}
!96 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!97 = !{!"QuicktimeCodecSettings", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !41, i64 48, !41, i64 50, !54, i64 52, !54, i64 56, !54, i64 60}
!98 = !{!"FFMpegCodecData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !51, i64 32, !54, i64 36, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !36, i64 64}
!99 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!100 = !{!"rcti", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!101 = !{!"BakeData", !94, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !51, i64 1280, !51, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!102 = !{!"AudioData", !54, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !54, i64 16, !41, i64 20, !41, i64 22, !51, i64 24, !51, i64 28}
!103 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!104 = !{!"GameData", !103, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !105, i64 40, !41, i64 64, !41, i64 66, !51, i64 68, !106, i64 72, !51, i64 128, !51, i64 132, !54, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180}
!105 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !51, i64 8, !51, i64 12, !36, i64 16}
!106 = !{!"RecastData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !54, i64 40, !51, i64 44, !51, i64 48, !41, i64 52, !41, i64 54}
!107 = !{!"UnitSettings", !51, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!108 = !{!"PhysicsSettings", !37, i64 0, !54, i64 12, !54, i64 16, !54, i64 20}
!109 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!110 = !{!111, !41, i64 434}
!111 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !51, i64 32, !51, i64 36, !51, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !51, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !112, i64 64, !114, i64 168, !51, i64 336, !51, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !51, i64 352, !51, i64 356, !51, i64 360, !51, i64 364, !51, i64 368, !51, i64 372, !51, i64 376, !51, i64 380, !51, i64 384, !51, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !54, i64 448, !54, i64 452, !54, i64 456, !54, i64 460, !41, i64 464, !41, i64 466, !54, i64 468, !51, i64 472, !51, i64 476, !115, i64 480, !116, i64 608}
!112 = !{!"ImagePaintSettings", !113, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !54, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !51, i64 100}
!113 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !54, i64 28, !54, i64 32, !54, i64 36}
!114 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !51, i64 128, !51, i64 132, !54, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !36, i64 152, !36, i64 160}
!115 = !{!"UnifiedPaintSettings", !54, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !37, i64 16, !37, i64 28, !54, i64 40, !37, i64 44, !51, i64 52, !54, i64 56, !54, i64 60, !37, i64 64, !37, i64 65, !51, i64 72, !37, i64 76, !54, i64 84, !51, i64 88, !37, i64 92, !37, i64 100, !54, i64 108, !36, i64 112, !51, i64 120, !54, i64 124}
!116 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !37, i64 20, !37, i64 21, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36}
!117 = !{!111, !37, i64 431}
!118 = !{!87, !36, i64 48}
!119 = !{!61, !36, i64 32}
!120 = distinct !{!120, !57, !58}
!121 = !{!54, !54, i64 0}
!122 = !{!87, !36, i64 24}
!123 = distinct !{!123, !57, !58}
!124 = !{!87, !36, i64 32}
!125 = distinct !{!125, !57, !58}
!126 = !{i32 2, i32 5}
!127 = distinct !{!127, !57, !58}
!128 = distinct !{!128, !57, !58}
!129 = !{!130, !54, i64 16}
!130 = !{!"ModifierData", !36, i64 0, !36, i64 8, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!131 = !{!130, !54, i64 20}
!132 = !{!133, !41, i64 114}
!133 = !{!"MirrorModifierData", !130, i64 0, !41, i64 112, !41, i64 114, !51, i64 116, !36, i64 120}
!134 = !{!133, !36, i64 120}
!135 = !{!74, !36, i64 40}
!136 = !{!137, !36, i64 40}
!137 = !{!"BMLoop", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!138 = !{!137, !36, i64 32}
!139 = !{!133, !51, i64 116}
!140 = distinct !{!140, !57, !58}
!141 = distinct !{!141, !57, !58}
!142 = !{!143, !37, i64 12}
!143 = !{!"BMElem", !72, i64 0}
!144 = distinct !{!144, !57, !58}
!145 = !{!137, !36, i64 16}
!146 = distinct !{!146, !57, !58}
!147 = distinct !{!147, !57, !58}
