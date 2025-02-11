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
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
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
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_extrude_repeat(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_repeat_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_view3d, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+02) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !18
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 180) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_repeat_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #12
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.6) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !19
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.3) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4, i64 2
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %15) #14
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %14) #14
  %16 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %16) #12
  %17 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %18 = icmp sgt i32 %12, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2, %19
  %20 = phi i16 [ %24, %19 ], [ 0, %2 ]
  %21 = call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %22 = load ptr, ptr %8, align 8, !tbaa !21
  %23 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull %3, i32 noundef 1) #12
  %24 = add i16 %20, 1
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i32 %12, %25
  br i1 %26, label %19, label %27, !llvm.loop !25

27:                                               ; preds = %19, %2
  call void @EDBM_mesh_normals_update(ptr noundef %8) #12
  call void @EDBM_update_generic(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_view3d(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_extrude_region(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_region_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_region_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #12
  tail call fastcc void @edbm_extrude_mesh(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %1) #14
  tail call void @EDBM_mesh_normals_update(ptr noundef %5) #12
  tail call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #1

; Function Attrs: optsize
declare void @Transform_Properties(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_extrude_verts_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_verts_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_verts_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = tail call fastcc signext i16 @edbm_extrude_verts_indiv(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_extrude_edges_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_edges_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_edges_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = tail call fastcc signext i16 @edbm_extrude_edges_indiv(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_extrude_faces_indiv(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_extrude_faces_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_faces_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  tail call fastcc void @edbm_extrude_discrete_faces(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dupli_extrude_cursor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_dupli_extrude_cursor_invoke, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dupli_extrude_cursor_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x float], align 8
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca %struct.BMOperator, align 8
  %19 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #12
  %20 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  call void @ED_view3d_init_mats_rv3d(ptr noundef %21, ptr noundef %23) #12
  %24 = load ptr, ptr %4, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 54
  %28 = load i16, ptr %27, align 2, !tbaa !53
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 51
  %33 = load i8, ptr %32, align 1, !tbaa !60
  %34 = icmp eq i8 %33, 3
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ false, %3 ], [ %34, %31 ]
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %37, align 8, !tbaa !61
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !61
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %38, align 8, !tbaa !61
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = load ptr, ptr %40, align 8, !tbaa !21
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %41, i8 noundef zeroext 1, ptr noundef null) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %172, label %44

44:                                               ; preds = %35, %54
  %45 = phi ptr [ %56, %54 ], [ %42, %35 ]
  %46 = phi i1 [ false, %54 ], [ true, %35 ]
  br label %47

47:                                               ; preds = %44, %51
  %48 = phi ptr [ %52, %51 ], [ %45, %44 ]
  %49 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %48) #14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %47, !llvm.loop !63

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %55) #12
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %44, !llvm.loop !63

58:                                               ; preds = %51
  br i1 %46, label %172, label %59

59:                                               ; preds = %54, %58
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = call i32 @RNA_boolean_get(ptr noundef %61, ptr noundef nonnull @.str.23) #12
  %63 = trunc i32 %62 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %64 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %65 = load <2 x i32>, ptr %64, align 4, !tbaa !64
  %66 = sitofp <2 x i32> %65 to <2 x float>
  store <2 x float> %66, ptr %12, align 8, !tbaa !61
  %67 = load ptr, ptr %39, align 8, !tbaa !62
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  %69 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %68, i8 noundef zeroext 2, ptr noundef null) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %141, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %73 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %74 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %75 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  br label %76

76:                                               ; preds = %71, %124
  %77 = phi float [ 0.000000e+00, %71 ], [ %125, %124 ]
  %78 = phi float [ 0.000000e+00, %71 ], [ %126, %124 ]
  %79 = phi ptr [ %69, %71 ], [ %128, %124 ]
  %80 = phi i8 [ 0, %71 ], [ %127, %124 ]
  %81 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %79) #14
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %84 = load ptr, ptr %72, align 8, !tbaa !65
  %85 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  %88 = call i32 @ED_view3d_project_float_object(ptr noundef %84, ptr noundef nonnull %87, ptr noundef nonnull %13, i32 noundef 0) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  %91 = load ptr, ptr %72, align 8, !tbaa !65
  %92 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !70
  %94 = getelementptr inbounds %struct.BMVert, ptr %93, i64 0, i32 2
  %95 = call i32 @ED_view3d_project_float_object(ptr noundef %91, ptr noundef nonnull %94, ptr noundef nonnull %14, i32 noundef 0) #12
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = call fastcc float @line_point_side_v2(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #14
  %99 = fcmp ult float %98, 0.000000e+00
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = load float, ptr %73, align 4, !tbaa !61
  %102 = load float, ptr %74, align 4, !tbaa !61
  %103 = fsub float %101, %102
  %104 = fadd float %78, %103
  store float %104, ptr %11, align 4, !tbaa !61
  %105 = load float, ptr %13, align 4, !tbaa !61
  %106 = load float, ptr %14, align 4, !tbaa !61
  %107 = fsub float %105, %106
  br label %116

108:                                              ; preds = %97
  %109 = load float, ptr %74, align 4, !tbaa !61
  %110 = load float, ptr %73, align 4, !tbaa !61
  %111 = fsub float %109, %110
  %112 = fadd float %78, %111
  store float %112, ptr %11, align 4, !tbaa !61
  %113 = load float, ptr %14, align 4, !tbaa !61
  %114 = load float, ptr %13, align 4, !tbaa !61
  %115 = fsub float %113, %114
  br label %116

116:                                              ; preds = %108, %100
  %117 = phi float [ %115, %108 ], [ %107, %100 ]
  %118 = phi float [ %112, %108 ], [ %104, %100 ]
  %119 = fsub float %77, %117
  store float %119, ptr %75, align 4, !tbaa !61
  br label %120

120:                                              ; preds = %116, %90, %83
  %121 = phi float [ %77, %90 ], [ %77, %83 ], [ %119, %116 ]
  %122 = phi float [ %78, %90 ], [ %78, %83 ], [ %118, %116 ]
  %123 = phi i8 [ %80, %90 ], [ %80, %83 ], [ 1, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %124

124:                                              ; preds = %76, %120
  %125 = phi float [ %121, %120 ], [ %77, %76 ]
  %126 = phi float [ %122, %120 ], [ %78, %76 ]
  %127 = phi i8 [ %123, %120 ], [ %80, %76 ]
  %128 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %76, !llvm.loop !71

130:                                              ; preds = %124
  %131 = icmp eq i8 %127, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  %133 = load ptr, ptr %22, align 8, !tbaa !30
  %134 = getelementptr inbounds %struct.RegionView3D, ptr %133, i64 0, i32 2
  call void @mul_mat3_m4_v3(ptr noundef nonnull %134, ptr noundef nonnull %11) #12
  %135 = load ptr, ptr %20, align 8, !tbaa !28
  %136 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %136, ptr noundef nonnull %11) #12
  %137 = load ptr, ptr %22, align 8, !tbaa !30
  %138 = getelementptr inbounds %struct.RegionView3D, ptr %137, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %138) #14
  %139 = load ptr, ptr %20, align 8, !tbaa !28
  %140 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %140, ptr noundef nonnull %15) #12
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %11, ptr noundef nonnull %15) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %16) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  br label %141

141:                                              ; preds = %59, %132, %130
  %142 = phi i1 [ false, %132 ], [ true, %130 ], [ true, %59 ]
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #14
  %143 = load ptr, ptr %20, align 8, !tbaa !28
  %144 = getelementptr inbounds %struct.Object, ptr %143, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %144, ptr noundef nonnull %6) #12
  %145 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !65
  call void @ED_view3d_win_to_3d_int(ptr noundef %146, ptr noundef nonnull %6, ptr noundef nonnull %64, ptr noundef nonnull %6) #12
  %147 = load ptr, ptr %20, align 8, !tbaa !28
  %148 = getelementptr inbounds %struct.Object, ptr %147, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %148, ptr noundef nonnull %6) #12
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #14
  call void @unit_m3(ptr noundef nonnull %10) #12
  br i1 %142, label %156, label %149

149:                                              ; preds = %141
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  %150 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #12
  %151 = fcmp une float %150, 0.000000e+00
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %11, ptr noundef nonnull %8) #14
  %153 = icmp eq i8 %63, 0
  %154 = fmul float %150, 5.000000e-01
  %155 = select i1 %153, float %150, float %154
  call void @axis_angle_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %17, float noundef %155) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  br label %156

156:                                              ; preds = %149, %152, %141
  %157 = icmp eq i8 %63, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %39, align 8, !tbaa !62
  %160 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %159, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  br i1 %36, label %161, label %164

161:                                              ; preds = %158
  %162 = load ptr, ptr %145, align 8, !tbaa !65
  %163 = load ptr, ptr %39, align 8, !tbaa !62
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %162, ptr noundef %163) #12
  br label %164

164:                                              ; preds = %158, %161, %156
  %165 = load ptr, ptr %20, align 8, !tbaa !28
  %166 = load ptr, ptr %39, align 8, !tbaa !62
  %167 = call fastcc signext i16 @edbm_extrude_edge(ptr noundef %165, ptr noundef %166, ptr noundef nonnull %11) #14
  %168 = load ptr, ptr %39, align 8, !tbaa !62
  %169 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %168, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  %170 = load ptr, ptr %39, align 8, !tbaa !62
  %171 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %170, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br label %203

172:                                              ; preds = %35, %58
  %173 = load ptr, ptr %4, align 8, !tbaa !31
  %174 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !72
  %176 = call ptr @ED_view3d_cursor3d_get(ptr noundef %173, ptr noundef %175) #12
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %176) #14
  %177 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !65
  %179 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_view3d_win_to_3d_int(ptr noundef %178, ptr noundef nonnull %6, ptr noundef nonnull %179, ptr noundef nonnull %6) #12
  %180 = load ptr, ptr %20, align 8, !tbaa !28
  %181 = getelementptr inbounds %struct.Object, ptr %180, i64 0, i32 50
  %182 = getelementptr inbounds %struct.Object, ptr %180, i64 0, i32 47
  %183 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %181, ptr noundef nonnull %182) #12
  %184 = load ptr, ptr %20, align 8, !tbaa !28
  %185 = getelementptr inbounds %struct.Object, ptr %184, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %185, ptr noundef nonnull %6) #12
  %186 = load ptr, ptr %39, align 8, !tbaa !62
  %187 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %186, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %6) #12
  %188 = load ptr, ptr %39, align 8, !tbaa !62
  %189 = load ptr, ptr %188, align 8, !tbaa !21
  call void @BMO_op_exec(ptr noundef %189, ptr noundef nonnull %18) #12
  %190 = getelementptr inbounds %struct.BMOperator, ptr %18, i64 0, i32 1
  %191 = call ptr @BMO_iter_new(ptr noundef nonnull %19, ptr noundef nonnull %190, ptr noundef nonnull @.str.61, i8 noundef zeroext 1) #12
  %192 = icmp eq ptr %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %172, %193
  %194 = phi ptr [ %197, %193 ], [ %191, %172 ]
  %195 = load ptr, ptr %39, align 8, !tbaa !62
  %196 = load ptr, ptr %195, align 8, !tbaa !21
  call void @BM_vert_select_set(ptr noundef %196, ptr noundef nonnull %194, i8 noundef zeroext 1) #12
  %197 = call ptr @BMO_iter_step(ptr noundef nonnull %19) #12
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %193, !llvm.loop !73

199:                                              ; preds = %193, %172
  %200 = load ptr, ptr %39, align 8, !tbaa !62
  %201 = call zeroext i8 @EDBM_op_finish(ptr noundef %200, ptr noundef nonnull %18, ptr noundef %1, i8 noundef zeroext 1) #12
  %202 = icmp eq i8 %201, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %18) #13
  br i1 %202, label %211, label %203

203:                                              ; preds = %199, %164
  br i1 %36, label %204, label %208

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !65
  %207 = load ptr, ptr %39, align 8, !tbaa !62
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %206, ptr noundef %207) #12
  br label %208

208:                                              ; preds = %204, %203
  %209 = load ptr, ptr %39, align 8, !tbaa !62
  call void @EDBM_mesh_normals_update(ptr noundef %209) #12
  %210 = load ptr, ptr %39, align 8, !tbaa !62
  call void @EDBM_update_generic(ptr noundef %210, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %211

211:                                              ; preds = %199, %208
  %212 = phi i32 [ 4, %208 ], [ 2, %199 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %212
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_spin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_spin_invoke, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_spin_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 2147483647) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !18
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.32, float noundef 0x3FF921FB60000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #12
  tail call void @RNA_def_property_subtype(ptr noundef %14, i32 noundef 327696) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !18
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  %17 = load ptr, ptr %8, align 8, !tbaa !18
  %18 = tail call ptr @RNA_def_float_vector(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_spin_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #12
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 2
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #12
  %12 = tail call i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1) #14, !range !74
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #12
  %12 = load ptr, ptr %10, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull %5) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !19
  %14 = call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.6) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !19
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.32) #12
  %17 = fneg float %16
  %18 = load ptr, ptr %10, align 8, !tbaa !19
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.29) #12
  %20 = fpext float %17 to double
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %22 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %14, double noundef %20, ptr noundef nonnull %21, i32 noundef %19) #12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %3) #12
  call void @EDBM_flag_disable_all(ptr noundef nonnull %8, i8 noundef zeroext 1) #12
  %25 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %25, ptr noundef nonnull @.str.63, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %26 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %29

29:                                               ; preds = %24, %2, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %2 ], [ 2, %24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @EDBM_view3d_poll(ptr noundef) #1

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_screw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_screw_invoke, ptr %4, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_screw_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 256) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !18
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef 256) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !18
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !18
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_screw_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #12
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 1
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #12
  %12 = tail call i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1) #14, !range !74
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #12
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.43) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.6) #12
  %20 = load ptr, ptr %15, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.34, ptr noundef nonnull %8) #12
  %21 = load ptr, ptr %15, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %21, ptr noundef nonnull @.str.37, ptr noundef nonnull %9) #12
  %22 = load ptr, ptr %13, align 8, !tbaa !21
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %2, %45
  %26 = phi ptr [ %47, %45 ], [ null, %2 ]
  %27 = phi ptr [ %46, %45 ], [ null, %2 ]
  %28 = phi ptr [ %48, %45 ], [ %23, %2 ]
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %28) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %25, %31
  %32 = phi i32 [ %36, %31 ], [ 0, %25 ]
  %33 = phi ptr [ %37, %31 ], [ %29, %25 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33) #14
  %35 = zext nneg i8 %34 to i32
  %36 = add nuw nsw i32 %32, %35
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31, !llvm.loop !75

39:                                               ; preds = %31
  %40 = icmp eq i32 %36, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp eq ptr %27, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = icmp eq ptr %26, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %25, %43, %41, %39
  %46 = phi ptr [ %27, %39 ], [ %28, %41 ], [ %27, %43 ], [ %27, %25 ]
  %47 = phi ptr [ %26, %39 ], [ %26, %41 ], [ %28, %43 ], [ %26, %25 ]
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %25, !llvm.loop !76

50:                                               ; preds = %45
  %51 = icmp eq ptr %46, null
  %52 = icmp eq ptr %47, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43, %2, %50
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !77
  call void @BKE_report(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.64) #12
  br label %80

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  %59 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %59) #14
  %60 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %58, ptr noundef nonnull %60) #12
  %61 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %58, ptr noundef nonnull %61) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %62 = sitofp i32 %19 to float
  %63 = fdiv float 1.000000e+00, %62
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %63) #14
  %64 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %65 = fcmp ogt float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  call fastcc void @negate_v3(ptr noundef nonnull %6) #14
  br label %67

67:                                               ; preds = %66, %57
  %68 = mul nsw i32 %19, %17
  %69 = sitofp i32 %17 to float
  %70 = fmul float %69, 3.600000e+02
  %71 = fmul float %70, 0x3F91DF46A0000000
  %72 = fpext float %71 to double
  %73 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef %68, double noundef %72, ptr noundef nonnull %58, i32 noundef 0) #12
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  call void @BMO_op_exec(ptr noundef %14, ptr noundef nonnull %5) #12
  call void @EDBM_flag_disable_all(ptr noundef nonnull %13, i8 noundef zeroext 1) #12
  %76 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %14, ptr noundef nonnull %76, ptr noundef nonnull @.str.63, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %77 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #12
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void @EDBM_update_generic(ptr noundef nonnull %13, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  br label %80

80:                                               ; preds = %75, %67, %79, %54
  %81 = phi i32 [ 2, %54 ], [ 4, %79 ], [ 2, %67 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %81
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #12
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
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

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca %struct.BMOperator, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #13
  call void @BMO_op_init(ptr noundef %9, ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull @.str.46) #12
  call void @BMO_slot_bool_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.47, i8 noundef zeroext %4) #12
  call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull @.str.48, i8 noundef zeroext 11, i8 noundef zeroext 1) #12
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = call ptr @BMO_slot_get(ptr noundef nonnull %7, ptr noundef nonnull @.str.49) #12
  call fastcc void @edbm_extrude_edge_exclude_mirror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %12) #14
  br label %13

13:                                               ; preds = %11, %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  %14 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !78
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %14) #14
  call void @EDBM_flag_disable_all(ptr noundef nonnull %1, i8 noundef zeroext 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %7) #12
  call fastcc void @zero_v3(ptr noundef %2) #14
  %15 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  %16 = call ptr @BMO_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %15, ptr noundef nonnull @.str.50, i8 noundef zeroext 15) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13, %25
  %19 = phi ptr [ %26, %25 ], [ %16, %13 ]
  call void @BM_elem_select_set(ptr noundef %9, ptr noundef nonnull %19, i8 noundef zeroext 1) #12
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 4, !tbaa !80
  %22 = icmp eq i8 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 4
  call fastcc void @add_normal_aligned(ptr noundef %2, ptr noundef nonnull %24) #14
  br label %25

25:                                               ; preds = %18, %23
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !82

28:                                               ; preds = %25, %13
  call fastcc void @normalize_v3(ptr noundef %2) #14
  call void @BMO_op_finish(ptr noundef %9, ptr noundef nonnull %7) #12
  %29 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #14, !range !83
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i16 110, i16 103
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret i16 %31
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !61
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_slot_bool_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_extrude_edge_exclude_mirror(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = load ptr, ptr %1, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %123, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %16 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  br label %20

20:                                               ; preds = %14, %120
  %21 = phi ptr [ %12, %14 ], [ %121, %120 ]
  %22 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %120

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !86
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.MirrorModifierData, ptr %21, i64 0, i32 2
  %32 = load i16, ptr %31, align 2, !tbaa !87
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %120, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %36 = getelementptr inbounds %struct.MirrorModifierData, ptr %21, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %40 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 47
  %41 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %40) #12
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %42

42:                                               ; preds = %39, %35
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %10, i8 noundef zeroext 2, ptr noundef null) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %119, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MirrorModifierData, ptr %21, i64 0, i32 3
  br label %47

47:                                               ; preds = %45, %116
  %48 = phi ptr [ %43, %45 ], [ %117, %116 ]
  %49 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %48) #14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %116, label %51

51:                                               ; preds = %47
  %52 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %48) #14, !range !83
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %116, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %58) #14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %116, label %61

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %62 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %64) #14
  %65 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %67) #14
  %68 = load ptr, ptr %36, align 8, !tbaa !89
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %9) #12
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i16, ptr %31, align 2, !tbaa !87
  %73 = and i16 %72, 8
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load float, ptr %8, align 4, !tbaa !61
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = load float, ptr %46, align 4, !tbaa !93
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load float, ptr %9, align 4, !tbaa !61
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fcmp olt float %82, %78
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  call fastcc void @BMO_slot_map_empty_insert(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48) #14
  %85 = load i16, ptr %31, align 2, !tbaa !87
  br label %86

86:                                               ; preds = %75, %80, %84, %71
  %87 = phi i16 [ %72, %75 ], [ %72, %80 ], [ %85, %84 ], [ %72, %71 ]
  %88 = and i16 %87, 16
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load float, ptr %16, align 4, !tbaa !61
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = load float, ptr %46, align 4, !tbaa !93
  %94 = fcmp olt float %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load float, ptr %17, align 4, !tbaa !61
  %97 = call float @llvm.fabs.f32(float %96)
  %98 = fcmp olt float %97, %93
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  call fastcc void @BMO_slot_map_empty_insert(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48) #14
  %100 = load i16, ptr %31, align 2, !tbaa !87
  br label %101

101:                                              ; preds = %90, %95, %99, %86
  %102 = phi i16 [ %87, %90 ], [ %87, %95 ], [ %100, %99 ], [ %87, %86 ]
  %103 = and i16 %102, 32
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %18, align 4, !tbaa !61
  %107 = call float @llvm.fabs.f32(float %106)
  %108 = load float, ptr %46, align 4, !tbaa !93
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load float, ptr %19, align 4, !tbaa !61
  %112 = call float @llvm.fabs.f32(float %111)
  %113 = fcmp olt float %112, %108
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  call fastcc void @BMO_slot_map_empty_insert(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48) #14
  br label %115

115:                                              ; preds = %105, %110, %114, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br label %116

116:                                              ; preds = %47, %51, %54, %115
  %117 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %47, !llvm.loop !94

119:                                              ; preds = %116, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %120

120:                                              ; preds = %30, %119, %20, %25
  %121 = load ptr, ptr %21, align 8, !tbaa !79
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %20, !llvm.loop !95

123:                                              ; preds = %120, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_normal_aligned(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #14
  %4 = fcmp olt float %3, 0xBFEFFF2E40000000
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @sub_v3_v3(ptr noundef %0, ptr noundef %1) #14
  br label %7

6:                                                ; preds = %2
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef %1) #14
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load float, ptr %0, align 4, !tbaa !61
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !61
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !96
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
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

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_empty_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !100
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !98
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !98
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !98
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !98
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !98
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !98
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !98
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !101
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !98
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !107
  tail call void %28(ptr noundef nonnull %0) #12
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

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !61
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !61
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

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_extrude_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call fastcc void @zero_v3(ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 12
  %7 = load i16, ptr %6, align 4, !tbaa !108
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !109
  switch i32 %14, label %15 [
    i32 0, label %56
    i32 1, label %38
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !110
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !111
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %31

23:                                               ; preds = %4
  %24 = and i32 %8, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !111
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %23, %26, %19
  %32 = and i16 %7, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call fastcc signext i16 @edbm_extrude_vert(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #14
  br label %48

36:                                               ; preds = %31
  %37 = call fastcc signext i16 @edbm_extrude_edge(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #14
  br label %48

38:                                               ; preds = %11, %15
  %39 = tail call fastcc signext i16 @edbm_extrude_verts_indiv(ptr noundef nonnull %2, ptr noundef %3) #14
  br label %42

40:                                               ; preds = %19
  %41 = tail call fastcc signext i16 @edbm_extrude_edges_indiv(ptr noundef nonnull %2, ptr noundef %3) #14
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i16 [ %39, %38 ], [ %41, %40 ]
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  tail call void @BKE_report(ptr noundef %47, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  br label %56

48:                                               ; preds = %36, %34, %42
  %49 = phi i16 [ %43, %42 ], [ %37, %36 ], [ %35, %34 ]
  %50 = load ptr, ptr @G, align 8, !tbaa !112
  %51 = getelementptr inbounds %struct.Main, ptr %50, i64 0, i32 46
  %52 = load ptr, ptr %51, align 8, !tbaa !114
  tail call void @BKE_object_handle_update(ptr noundef %52, ptr noundef %0, ptr noundef %1) #12
  %53 = icmp eq i16 %49, 110
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %55, ptr noundef nonnull %5) #12
  br label %56

56:                                               ; preds = %26, %11, %45, %54, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_vert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = load ptr, ptr %1, align 8, !tbaa !21
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 2, ptr noundef null) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %3, %31
  %9 = phi ptr [ %32, %31 ], [ %6, %3 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  call void @BM_vert_select_set(ptr noundef %13, ptr noundef %15, i8 noundef zeroext 1) #12
  %16 = load ptr, ptr %1, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  call void @BM_vert_select_set(ptr noundef %16, ptr noundef %18, i8 noundef zeroext 1) #12
  br label %31

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %21) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8, !tbaa !21
  call void @BM_edge_select_set(ptr noundef %30, ptr noundef nonnull %9, i8 noundef zeroext 1) #12
  br label %31

31:                                               ; preds = %12, %29, %24, %19
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %8, !llvm.loop !116

34:                                               ; preds = %31, %3
  %35 = call fastcc signext i16 @edbm_extrude_edge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i16 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  ret i16 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_verts_indiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %4 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 1) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @.str.53, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  call void @BMO_op_exec(ptr noundef %6, ptr noundef nonnull %3) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @.str.54, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %9 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #12
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i16 0, i16 103
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edges_indiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %7 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !78
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #14
  call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  call void @BMO_op_exec(ptr noundef %8, ptr noundef nonnull %3) #12
  %9 = load ptr, ptr %0, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.50, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #12
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i16 0, i16 110
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i16 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_extrude_discrete_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #13
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 1) #12
  call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !21
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %5) #12
  %8 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull @.str.57, i8 noundef zeroext 8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %2, %25
  %12 = phi ptr [ %26, %25 ], [ %9, %2 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !21
  call void @BM_face_select_set(ptr noundef %13, ptr noundef nonnull %12, i8 noundef zeroext 1) #12
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 4
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !117
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %17) #14
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !118

25:                                               ; preds = %18, %11
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !119

28:                                               ; preds = %25, %2
  %29 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #12
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !61
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !61
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !61
  %15 = load float, ptr %8, align 4, !tbaa !61
  %16 = load float, ptr %2, align 4, !tbaa !61
  %17 = load float, ptr %1, align 4, !tbaa !61
  %18 = load float, ptr %6, align 4, !tbaa !61
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !61
  %23 = load float, ptr %1, align 4, !tbaa !61
  %24 = load float, ptr %10, align 4, !tbaa !61
  %25 = load float, ptr %4, align 4, !tbaa !61
  %26 = load float, ptr %2, align 4, !tbaa !61
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d_int(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_callf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EMBM_project_snap_verts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !61
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !61
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { optsize }

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
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!22, !7, i64 0}
!22 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !23, i64 16, !7, i64 24, !23, i64 32, !7, i64 40, !7, i64 48, !24, i64 56, !7, i64 64, !23, i64 72, !7, i64 80, !23, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !23, i64 104}
!23 = !{!"int", !8, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!6, !7, i64 48}
!28 = !{!29, !7, i64 16}
!29 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!30 = !{!29, !7, i64 40}
!31 = !{!29, !7, i64 0}
!32 = !{!33, !7, i64 264}
!33 = !{!"Scene", !34, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !35, i64 280, !45, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !46, i64 4400, !47, i64 4416, !50, i64 4600, !7, i64 4608, !51, i64 4616, !7, i64 4640, !24, i64 4648, !24, i64 4656, !38, i64 4664, !39, i64 4824, !52, i64 4888, !7, i64 4952}
!34 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!35 = !{!"RenderData", !36, i64 0, !7, i64 248, !7, i64 256, !40, i64 264, !41, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !37, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !37, i64 436, !37, i64 440, !37, i64 444, !37, i64 448, !37, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !42, i64 544, !42, i64 560, !43, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !37, i64 612, !37, i64 616, !37, i64 620, !37, i64 624, !23, i64 628, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !37, i64 660, !37, i64 664, !12, i64 668, !12, i64 670, !37, i64 672, !37, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !37, i64 2528, !37, i64 2532, !12, i64 2536, !12, i64 2538, !37, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !37, i64 2560, !37, i64 2564, !7, i64 2568, !23, i64 2576, !37, i64 2580, !8, i64 2584, !44, i64 2616, !23, i64 3976, !23, i64 3980}
!36 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !37, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !38, i64 24, !39, i64 184}
!37 = !{!"float", !8, i64 0}
!38 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !37, i64 136, !37, i64 140, !7, i64 144, !7, i64 152}
!39 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!40 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!41 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !37, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!42 = !{!"rctf", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!43 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!44 = !{!"BakeData", !36, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !37, i64 1280, !37, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!45 = !{!"AudioData", !23, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !37, i64 24, !37, i64 28}
!46 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!47 = !{!"GameData", !46, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !48, i64 40, !12, i64 64, !12, i64 66, !37, i64 68, !49, i64 72, !37, i64 128, !37, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !37, i64 164, !37, i64 168, !37, i64 172, !37, i64 176, !37, i64 180}
!48 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !37, i64 8, !37, i64 12, !7, i64 16}
!49 = !{!"RecastData", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !23, i64 40, !37, i64 44, !37, i64 48, !12, i64 52, !12, i64 54}
!50 = !{!"UnitSettings", !37, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!51 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!52 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!53 = !{!54, !12, i64 434}
!54 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !37, i64 32, !37, i64 36, !37, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !37, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !55, i64 64, !57, i64 168, !37, i64 336, !37, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !37, i64 352, !37, i64 356, !37, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 376, !37, i64 380, !37, i64 384, !37, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !23, i64 448, !23, i64 452, !23, i64 456, !23, i64 460, !12, i64 464, !12, i64 466, !23, i64 468, !37, i64 472, !37, i64 476, !58, i64 480, !59, i64 608}
!55 = !{!"ImagePaintSettings", !56, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !23, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !37, i64 100}
!56 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !23, i64 28, !23, i64 32, !23, i64 36}
!57 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !37, i64 128, !37, i64 132, !23, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !7, i64 152, !7, i64 160}
!58 = !{!"UnifiedPaintSettings", !23, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !8, i64 16, !8, i64 28, !23, i64 40, !8, i64 44, !37, i64 52, !23, i64 56, !23, i64 60, !8, i64 64, !8, i64 65, !37, i64 72, !8, i64 76, !23, i64 84, !37, i64 88, !8, i64 92, !8, i64 100, !23, i64 108, !7, i64 112, !37, i64 120, !23, i64 124}
!59 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !8, i64 20, !8, i64 21, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36}
!60 = !{!54, !8, i64 431}
!61 = !{!37, !37, i64 0}
!62 = !{!29, !7, i64 48}
!63 = distinct !{!63, !26}
!64 = !{!23, !23, i64 0}
!65 = !{!29, !7, i64 24}
!66 = !{!67, !7, i64 24}
!67 = !{!"BMEdge", !68, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !69, i64 48, !69, i64 64}
!68 = !{!"BMHeader", !7, i64 0, !23, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!69 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!70 = !{!67, !7, i64 32}
!71 = distinct !{!71, !26}
!72 = !{!29, !7, i64 32}
!73 = distinct !{!73, !26}
!74 = !{i32 2, i32 5}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = !{!20, !7, i64 120}
!78 = !{i64 0, i64 8, !79, i64 8, i64 8, !79}
!79 = !{!7, !7, i64 0}
!80 = !{!81, !8, i64 12}
!81 = !{!"BMElem", !68, i64 0}
!82 = distinct !{!82, !26}
!83 = !{i8 0, i8 2}
!84 = !{!85, !23, i64 16}
!85 = !{!"ModifierData", !7, i64 0, !7, i64 8, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!86 = !{!85, !23, i64 20}
!87 = !{!88, !12, i64 114}
!88 = !{!"MirrorModifierData", !85, i64 0, !12, i64 112, !12, i64 114, !37, i64 116, !7, i64 120}
!89 = !{!88, !7, i64 120}
!90 = !{!67, !7, i64 40}
!91 = !{!92, !7, i64 32}
!92 = !{!"BMLoop", !68, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!93 = !{!88, !37, i64 116}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = !{!68, !8, i64 13}
!97 = !{!92, !7, i64 40}
!98 = !{!99, !7, i64 48}
!99 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !23, i64 56, !8, i64 60}
!100 = !{!99, !8, i64 60}
!101 = !{!99, !7, i64 40}
!102 = !{!103, !7, i64 32}
!103 = !{!"BMesh", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !23, i64 88, !23, i64 92, !23, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !23, i64 128, !7, i64 136, !104, i64 144, !104, i64 344, !104, i64 544, !104, i64 744, !12, i64 944, !23, i64 948, !23, i64 952, !23, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!104 = !{!"CustomData", !7, i64 0, !8, i64 8, !23, i64 172, !23, i64 176, !23, i64 180, !7, i64 184, !7, i64 192}
!105 = !{!103, !7, i64 40}
!106 = !{!103, !7, i64 56}
!107 = !{!8, !8, i64 0}
!108 = !{!22, !12, i64 92}
!109 = !{!103, !23, i64 16}
!110 = !{!103, !23, i64 20}
!111 = !{!103, !23, i64 24}
!112 = !{!113, !7, i64 0}
!113 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !23, i64 2096, !23, i64 2100, !8, i64 2104, !23, i64 2108, !23, i64 2112, !8, i64 2116}
!114 = !{!115, !7, i64 1888}
!115 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !12, i64 1040, !12, i64 1042, !12, i64 1044, !12, i64 1046, !24, i64 1048, !8, i64 1056, !12, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!116 = distinct !{!116, !26}
!117 = !{!92, !7, i64 16}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !26}
