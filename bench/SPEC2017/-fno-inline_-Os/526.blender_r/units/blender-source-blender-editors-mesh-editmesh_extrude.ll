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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.3, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+02) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 180) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_repeat_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !48 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #12
  %9 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.6) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !49
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
  %22 = load ptr, ptr %8, align 8, !tbaa !51
  %23 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull %3, i32 noundef 1) #12
  %24 = add i16 %20, 1
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i32 %12, %25
  br i1 %26, label %19, label %27, !llvm.loop !55

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
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_region_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !57 {
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
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_verts_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !58 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = tail call fastcc signext i16 @edbm_extrude_verts_indiv(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_edges_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !59 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  %5 = tail call fastcc signext i16 @edbm_extrude_edges_indiv(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @Transform_Properties(ptr noundef nonnull %0, i32 noundef 1537) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_extrude_faces_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !60 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #12
  tail call fastcc void @edbm_extrude_discrete_faces(ptr noundef %4, ptr noundef %1) #14
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dupli_extrude_cursor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_dupli_extrude_cursor_invoke, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dupli_extrude_cursor_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !62 {
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
  %21 = load ptr, ptr %20, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  call void @ED_view3d_init_mats_rv3d(ptr noundef %21, ptr noundef %23) #12
  %24 = load ptr, ptr %4, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 54
  %28 = load i16, ptr %27, align 2, !tbaa !88
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 51
  %33 = load i8, ptr %32, align 1, !tbaa !95
  %34 = icmp eq i8 %33, 3
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ false, %3 ], [ %34, %31 ]
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %37, align 8, !tbaa !96
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !96
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %38, align 8, !tbaa !96
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = load ptr, ptr %40, align 8, !tbaa !51
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
  br i1 %53, label %58, label %47, !llvm.loop !98

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %55) #12
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %44, !llvm.loop !98

58:                                               ; preds = %51
  br i1 %46, label %172, label %59

59:                                               ; preds = %54, %58
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = call i32 @RNA_boolean_get(ptr noundef %61, ptr noundef nonnull @.str.23) #12
  %63 = trunc i32 %62 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %64 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %65 = load <2 x i32>, ptr %64, align 4, !tbaa !99
  %66 = sitofp <2 x i32> %65 to <2 x float>
  store <2 x float> %66, ptr %12, align 8, !tbaa !96
  %67 = load ptr, ptr %39, align 8, !tbaa !97
  %68 = load ptr, ptr %67, align 8, !tbaa !51
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
  %84 = load ptr, ptr %72, align 8, !tbaa !100
  %85 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  %88 = call i32 @ED_view3d_project_float_object(ptr noundef %84, ptr noundef nonnull %87, ptr noundef nonnull %13, i32 noundef 0) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  %91 = load ptr, ptr %72, align 8, !tbaa !100
  %92 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !105
  %94 = getelementptr inbounds %struct.BMVert, ptr %93, i64 0, i32 2
  %95 = call i32 @ED_view3d_project_float_object(ptr noundef %91, ptr noundef nonnull %94, ptr noundef nonnull %14, i32 noundef 0) #12
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = call fastcc float @line_point_side_v2(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #14
  %99 = fcmp ult float %98, 0.000000e+00
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = load float, ptr %73, align 4, !tbaa !96
  %102 = load float, ptr %74, align 4, !tbaa !96
  %103 = fsub float %101, %102
  %104 = fadd float %78, %103
  store float %104, ptr %11, align 4, !tbaa !96
  %105 = load float, ptr %13, align 4, !tbaa !96
  %106 = load float, ptr %14, align 4, !tbaa !96
  %107 = fsub float %105, %106
  br label %116

108:                                              ; preds = %97
  %109 = load float, ptr %74, align 4, !tbaa !96
  %110 = load float, ptr %73, align 4, !tbaa !96
  %111 = fsub float %109, %110
  %112 = fadd float %78, %111
  store float %112, ptr %11, align 4, !tbaa !96
  %113 = load float, ptr %14, align 4, !tbaa !96
  %114 = load float, ptr %13, align 4, !tbaa !96
  %115 = fsub float %113, %114
  br label %116

116:                                              ; preds = %108, %100
  %117 = phi float [ %115, %108 ], [ %107, %100 ]
  %118 = phi float [ %112, %108 ], [ %104, %100 ]
  %119 = fsub float %77, %117
  store float %119, ptr %75, align 4, !tbaa !96
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
  br i1 %129, label %130, label %76, !llvm.loop !106

130:                                              ; preds = %124
  %131 = icmp eq i8 %127, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #13
  %133 = load ptr, ptr %22, align 8, !tbaa !65
  %134 = getelementptr inbounds %struct.RegionView3D, ptr %133, i64 0, i32 2
  call void @mul_mat3_m4_v3(ptr noundef nonnull %134, ptr noundef nonnull %11) #12
  %135 = load ptr, ptr %20, align 8, !tbaa !63
  %136 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 50
  call void @mul_mat3_m4_v3(ptr noundef nonnull %136, ptr noundef nonnull %11) #12
  %137 = load ptr, ptr %22, align 8, !tbaa !65
  %138 = getelementptr inbounds %struct.RegionView3D, ptr %137, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %138) #14
  %139 = load ptr, ptr %20, align 8, !tbaa !63
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
  %143 = load ptr, ptr %20, align 8, !tbaa !63
  %144 = getelementptr inbounds %struct.Object, ptr %143, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %144, ptr noundef nonnull %6) #12
  %145 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !100
  call void @ED_view3d_win_to_3d_int(ptr noundef %146, ptr noundef nonnull %6, ptr noundef nonnull %64, ptr noundef nonnull %6) #12
  %147 = load ptr, ptr %20, align 8, !tbaa !63
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
  %159 = load ptr, ptr %39, align 8, !tbaa !97
  %160 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %159, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  br i1 %36, label %161, label %164

161:                                              ; preds = %158
  %162 = load ptr, ptr %145, align 8, !tbaa !100
  %163 = load ptr, ptr %39, align 8, !tbaa !97
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %162, ptr noundef %163) #12
  br label %164

164:                                              ; preds = %158, %161, %156
  %165 = load ptr, ptr %20, align 8, !tbaa !63
  %166 = load ptr, ptr %39, align 8, !tbaa !97
  %167 = call fastcc signext i16 @edbm_extrude_edge(ptr noundef %165, ptr noundef %166, ptr noundef nonnull %11) #14
  %168 = load ptr, ptr %39, align 8, !tbaa !97
  %169 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %168, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  %170 = load ptr, ptr %39, align 8, !tbaa !97
  %171 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %170, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef 1, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  br label %203

172:                                              ; preds = %35, %58
  %173 = load ptr, ptr %4, align 8, !tbaa !66
  %174 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !107
  %176 = call ptr @ED_view3d_cursor3d_get(ptr noundef %173, ptr noundef %175) #12
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %176) #14
  %177 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !100
  %179 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_view3d_win_to_3d_int(ptr noundef %178, ptr noundef nonnull %6, ptr noundef nonnull %179, ptr noundef nonnull %6) #12
  %180 = load ptr, ptr %20, align 8, !tbaa !63
  %181 = getelementptr inbounds %struct.Object, ptr %180, i64 0, i32 50
  %182 = getelementptr inbounds %struct.Object, ptr %180, i64 0, i32 47
  %183 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %181, ptr noundef nonnull %182) #12
  %184 = load ptr, ptr %20, align 8, !tbaa !63
  %185 = getelementptr inbounds %struct.Object, ptr %184, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %185, ptr noundef nonnull %6) #12
  %186 = load ptr, ptr %39, align 8, !tbaa !97
  %187 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %186, ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %6) #12
  %188 = load ptr, ptr %39, align 8, !tbaa !97
  %189 = load ptr, ptr %188, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %189, ptr noundef nonnull %18) #12
  %190 = getelementptr inbounds %struct.BMOperator, ptr %18, i64 0, i32 1
  %191 = call ptr @BMO_iter_new(ptr noundef nonnull %19, ptr noundef nonnull %190, ptr noundef nonnull @.str.61, i8 noundef zeroext 1) #12
  %192 = icmp eq ptr %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %172, %193
  %194 = phi ptr [ %197, %193 ], [ %191, %172 ]
  %195 = load ptr, ptr %39, align 8, !tbaa !97
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  call void @BM_vert_select_set(ptr noundef %196, ptr noundef nonnull %194, i8 noundef zeroext 1) #12
  %197 = call ptr @BMO_iter_step(ptr noundef nonnull %19) #12
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %193, !llvm.loop !108

199:                                              ; preds = %193, %172
  %200 = load ptr, ptr %39, align 8, !tbaa !97
  %201 = call zeroext i8 @EDBM_op_finish(ptr noundef %200, ptr noundef nonnull %18, ptr noundef %1, i8 noundef zeroext 1) #12
  %202 = icmp eq i8 %201, 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %18) #13
  br i1 %202, label %211, label %203

203:                                              ; preds = %199, %164
  br i1 %36, label %204, label %208

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !100
  %207 = load ptr, ptr %39, align 8, !tbaa !97
  call void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %206, ptr noundef %207) #12
  br label %208

208:                                              ; preds = %204, %203
  %209 = load ptr, ptr %39, align 8, !tbaa !97
  call void @EDBM_mesh_normals_update(ptr noundef %209) #12
  %210 = load ptr, ptr %39, align 8, !tbaa !97
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
  store ptr @.str.26, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_spin_invoke, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_spin_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 2147483647) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.32, float noundef 0x3FF921FB60000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #12
  tail call void @RNA_def_property_subtype(ptr noundef %14, i32 noundef 327696) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  %17 = load ptr, ptr %8, align 8, !tbaa !47
  %18 = tail call ptr @RNA_def_float_vector(ptr noundef %17, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_spin_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !109 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #12
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 2
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #12
  %12 = tail call i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1) #14, !range !110
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_spin_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !111 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #12
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %11, ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #12
  %12 = load ptr, ptr %10, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull %5) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !49
  %14 = call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.6) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !49
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.32) #12
  %17 = fneg float %16
  %18 = load ptr, ptr %10, align 8, !tbaa !49
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
  store ptr @.str.40, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_screw_invoke, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_screw_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 256) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef 256) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float_vector(ptr noundef %13, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_float_vector(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, float noundef -1.000000e+00, float noundef 1.000000e+00) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_screw_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !112 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #12
  tail call void @RNA_float_set_array(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %9) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 1
  tail call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef nonnull %11) #12
  %12 = tail call i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1) #14, !range !110
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_screw_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !113 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !51
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
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.43) #12
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.6) #12
  %20 = load ptr, ptr %15, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %20, ptr noundef nonnull @.str.34, ptr noundef nonnull %8) #12
  %21 = load ptr, ptr %15, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %21, ptr noundef nonnull @.str.37, ptr noundef nonnull %9) #12
  %22 = load ptr, ptr %13, align 8, !tbaa !51
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
  br i1 %38, label %39, label %31, !llvm.loop !114

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
  br i1 %49, label %50, label %25, !llvm.loop !115

50:                                               ; preds = %45
  %51 = icmp eq ptr %46, null
  %52 = icmp eq ptr %47, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43, %2, %50
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !116
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
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !117 {
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
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !96
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !96
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !119 {
  %6 = alloca %struct.BMOIter, align 8
  %7 = alloca %struct.BMOperator, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !51
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !120
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %14) #14
  call void @EDBM_flag_disable_all(ptr noundef nonnull %1, i8 noundef zeroext 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !120
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
  %21 = load i8, ptr %20, align 4, !tbaa !122
  %22 = icmp eq i8 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 4
  call fastcc void @add_normal_aligned(ptr noundef %2, ptr noundef nonnull %24) #14
  br label %25

25:                                               ; preds = %18, %23
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %6) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %18, !llvm.loop !124

28:                                               ; preds = %25, %13
  call fastcc void @normalize_v3(ptr noundef %2) #14
  call void @BMO_op_finish(ptr noundef %9, ptr noundef nonnull %7) #12
  %29 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #14, !range !125
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
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !126 {
  %3 = load float, ptr %0, align 4, !tbaa !96
  %4 = load float, ptr %1, align 4, !tbaa !96
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !96
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !96
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !96
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !127 {
  %4 = load float, ptr %1, align 4, !tbaa !96
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !96
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !96
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !96
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !96
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !128 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !96
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !96
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
define internal fastcc void @edbm_extrude_edge_exclude_mirror(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !129 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = load ptr, ptr %1, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !121
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
  %23 = load i32, ptr %22, align 8, !tbaa !130
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %120

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !132
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.MirrorModifierData, ptr %21, i64 0, i32 2
  %32 = load i16, ptr %31, align 2, !tbaa !133
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %120, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %36 = getelementptr inbounds %struct.MirrorModifierData, ptr %21, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !135
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
  %52 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %48) #14, !range !125
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %116, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %58) #14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %116, label %61

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %62 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !101
  %64 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %64) #14
  %65 = getelementptr inbounds %struct.BMEdge, ptr %48, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !105
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %67) #14
  %68 = load ptr, ptr %36, align 8, !tbaa !135
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %8) #12
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %9) #12
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i16, ptr %31, align 2, !tbaa !133
  %73 = and i16 %72, 8
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load float, ptr %8, align 4, !tbaa !96
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = load float, ptr %46, align 4, !tbaa !139
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load float, ptr %9, align 4, !tbaa !96
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fcmp olt float %82, %78
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  call fastcc void @BMO_slot_map_empty_insert(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48) #14
  %85 = load i16, ptr %31, align 2, !tbaa !133
  br label %86

86:                                               ; preds = %75, %80, %84, %71
  %87 = phi i16 [ %72, %75 ], [ %72, %80 ], [ %85, %84 ], [ %72, %71 ]
  %88 = and i16 %87, 16
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load float, ptr %16, align 4, !tbaa !96
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = load float, ptr %46, align 4, !tbaa !139
  %94 = fcmp olt float %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load float, ptr %17, align 4, !tbaa !96
  %97 = call float @llvm.fabs.f32(float %96)
  %98 = fcmp olt float %97, %93
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  call fastcc void @BMO_slot_map_empty_insert(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48) #14
  %100 = load i16, ptr %31, align 2, !tbaa !133
  br label %101

101:                                              ; preds = %90, %95, %99, %86
  %102 = phi i16 [ %87, %90 ], [ %87, %95 ], [ %100, %99 ], [ %87, %86 ]
  %103 = and i16 %102, 32
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = load float, ptr %18, align 4, !tbaa !96
  %107 = call float @llvm.fabs.f32(float %106)
  %108 = load float, ptr %46, align 4, !tbaa !139
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load float, ptr %19, align 4, !tbaa !96
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
  br i1 %118, label %119, label %47, !llvm.loop !140

119:                                              ; preds = %116, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %120

120:                                              ; preds = %30, %119, %20, %25
  %121 = load ptr, ptr %21, align 8, !tbaa !121
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %20, !llvm.loop !141

123:                                              ; preds = %120, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !142 {
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
define internal fastcc void @add_normal_aligned(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !143 {
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
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !144 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !145 {
  %2 = load float, ptr %0, align 4, !tbaa !96
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !96
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !96
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
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !146 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !148
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !151 {
  %3 = load float, ptr %1, align 4, !tbaa !96
  store float %3, ptr %0, align 4, !tbaa !96
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !96
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !96
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_empty_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !152 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !153 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = tail call ptr %3(ptr noundef %0) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !156 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !157
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !154
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !154
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !154
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !154
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !154
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !154
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !154
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !154
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !154
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !154
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !158
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !154
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !164
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
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !165 {
  %3 = load float, ptr %1, align 4, !tbaa !96
  %4 = load float, ptr %0, align 4, !tbaa !96
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !96
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !96
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !96
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !96
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !96
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !96
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !166 {
  %3 = load float, ptr %1, align 4, !tbaa !96
  %4 = load float, ptr %0, align 4, !tbaa !96
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !96
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !96
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !96
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !96
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !96
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !96
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !96
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_extrude_mesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !167 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call fastcc void @zero_v3(ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 12
  %7 = load i16, ptr %6, align 4, !tbaa !168
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !169
  switch i32 %14, label %15 [
    i32 0, label %56
    i32 1, label %38
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !170
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !171
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %31

23:                                               ; preds = %4
  %24 = and i32 %8, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !171
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
  %47 = load ptr, ptr %46, align 8, !tbaa !116
  tail call void @BKE_report(ptr noundef %47, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  br label %56

48:                                               ; preds = %36, %34, %42
  %49 = phi i16 [ %43, %42 ], [ %37, %36 ], [ %35, %34 ]
  %50 = load ptr, ptr @G, align 8, !tbaa !172
  %51 = getelementptr inbounds %struct.Main, ptr %50, i64 0, i32 46
  %52 = load ptr, ptr %51, align 8, !tbaa !174
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
define internal fastcc signext i16 @edbm_extrude_vert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !176 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = load ptr, ptr %1, align 8, !tbaa !51
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 2, ptr noundef null) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %3, %31
  %9 = phi ptr [ %32, %31 ], [ %6, %3 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9) #14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  call void @BM_vert_select_set(ptr noundef %13, ptr noundef %15, i8 noundef zeroext 1) #12
  %16 = load ptr, ptr %1, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  call void @BM_vert_select_set(ptr noundef %16, ptr noundef %18, i8 noundef zeroext 1) #12
  br label %31

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %21) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8, !tbaa !51
  call void @BM_edge_select_set(ptr noundef %30, ptr noundef nonnull %9, i8 noundef zeroext 1) #12
  br label %31

31:                                               ; preds = %12, %29, %24, %19
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %8, !llvm.loop !177

34:                                               ; preds = %31, %3
  %35 = call fastcc signext i16 @edbm_extrude_edge(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i16 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !178 {
  %4 = tail call fastcc signext i16 @edbm_extrude_edge_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  ret i16 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_verts_indiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !179 {
  %3 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %4 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef 1) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @.str.53, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %6, ptr noundef nonnull %3) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull @.str.54, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %9 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #12
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i16 0, i16 103
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i16 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @edbm_extrude_edges_indiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !180 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %7 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !120
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #14
  call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %8, ptr noundef nonnull %3) #12
  %9 = load ptr, ptr %0, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.50, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #12
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i16 0, i16 110
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i16 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_extrude_discrete_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !181 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #13
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef 1) #12
  call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %5) #12
  %8 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  %9 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull @.str.57, i8 noundef zeroext 8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %2, %25
  %12 = phi ptr [ %26, %25 ], [ %9, %2 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !51
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
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %17) #14
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !183

25:                                               ; preds = %18, %11
  %26 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !184

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
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !185 {
  %4 = load float, ptr %1, align 4, !tbaa !96
  %5 = load float, ptr %2, align 4, !tbaa !96
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !96
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !96
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !96
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !96
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !96
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !96
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
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !186 {
  %4 = load float, ptr %0, align 4, !tbaa !96
  %5 = load float, ptr %2, align 4, !tbaa !96
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !96
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !96
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !96
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !187 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !96
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !96
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !96
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !96
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !96
  %15 = load float, ptr %8, align 4, !tbaa !96
  %16 = load float, ptr %2, align 4, !tbaa !96
  %17 = load float, ptr %1, align 4, !tbaa !96
  %18 = load float, ptr %6, align 4, !tbaa !96
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !96
  %23 = load float, ptr %1, align 4, !tbaa !96
  %24 = load float, ptr %10, align 4, !tbaa !96
  %25 = load float, ptr %4, align 4, !tbaa !96
  %26 = load float, ptr %2, align 4, !tbaa !96
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !96
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
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !188 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !96
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !96
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !96
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !96
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
!48 = !{!"editmesh_extrude.c:edbm_extrude_repeat_exec"}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !36, i64 0}
!52 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !53, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !53, i64 72, !36, i64 80, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !53, i64 104}
!53 = !{!"int", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"editmesh_extrude.c:edbm_extrude_region_exec"}
!58 = !{!"editmesh_extrude.c:edbm_extrude_verts_exec"}
!59 = !{!"editmesh_extrude.c:edbm_extrude_edges_exec"}
!60 = !{!"editmesh_extrude.c:edbm_extrude_faces_exec"}
!61 = !{!35, !36, i64 48}
!62 = !{!"editmesh_extrude.c:edbm_dupli_extrude_cursor_invoke"}
!63 = !{!64, !36, i64 16}
!64 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!65 = !{!64, !36, i64 40}
!66 = !{!64, !36, i64 0}
!67 = !{!68, !36, i64 264}
!68 = !{!"Scene", !69, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !70, i64 280, !80, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !81, i64 4400, !82, i64 4416, !85, i64 4600, !36, i64 4608, !86, i64 4616, !36, i64 4640, !54, i64 4648, !54, i64 4656, !73, i64 4664, !74, i64 4824, !87, i64 4888, !36, i64 4952}
!69 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!70 = !{!"RenderData", !71, i64 0, !36, i64 248, !36, i64 256, !75, i64 264, !76, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !72, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !72, i64 436, !72, i64 440, !72, i64 444, !72, i64 448, !72, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !77, i64 544, !77, i64 560, !78, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !72, i64 612, !72, i64 616, !72, i64 620, !72, i64 624, !53, i64 628, !72, i64 632, !72, i64 636, !72, i64 640, !72, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !72, i64 660, !72, i64 664, !41, i64 668, !41, i64 670, !72, i64 672, !72, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !72, i64 2528, !72, i64 2532, !41, i64 2536, !41, i64 2538, !72, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !72, i64 2560, !72, i64 2564, !36, i64 2568, !53, i64 2576, !72, i64 2580, !37, i64 2584, !79, i64 2616, !53, i64 3976, !53, i64 3980}
!71 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !72, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !73, i64 24, !74, i64 184}
!72 = !{!"float", !37, i64 0}
!73 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !72, i64 136, !72, i64 140, !36, i64 144, !36, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!75 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!76 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !72, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!77 = !{!"rctf", !72, i64 0, !72, i64 4, !72, i64 8, !72, i64 12}
!78 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!79 = !{!"BakeData", !71, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !72, i64 1280, !72, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!80 = !{!"AudioData", !53, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !72, i64 24, !72, i64 28}
!81 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!82 = !{!"GameData", !81, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !83, i64 40, !41, i64 64, !41, i64 66, !72, i64 68, !84, i64 72, !72, i64 128, !72, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !72, i64 164, !72, i64 168, !72, i64 172, !72, i64 176, !72, i64 180}
!83 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !72, i64 8, !72, i64 12, !36, i64 16}
!84 = !{!"RecastData", !72, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !72, i64 16, !72, i64 20, !72, i64 24, !72, i64 28, !72, i64 32, !72, i64 36, !53, i64 40, !72, i64 44, !72, i64 48, !41, i64 52, !41, i64 54}
!85 = !{!"UnitSettings", !72, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!86 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!87 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!88 = !{!89, !41, i64 434}
!89 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !72, i64 32, !72, i64 36, !72, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !72, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !90, i64 64, !92, i64 168, !72, i64 336, !72, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !72, i64 352, !72, i64 356, !72, i64 360, !72, i64 364, !72, i64 368, !72, i64 372, !72, i64 376, !72, i64 380, !72, i64 384, !72, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !53, i64 448, !53, i64 452, !53, i64 456, !53, i64 460, !41, i64 464, !41, i64 466, !53, i64 468, !72, i64 472, !72, i64 476, !93, i64 480, !94, i64 608}
!90 = !{!"ImagePaintSettings", !91, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !53, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !72, i64 100}
!91 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!92 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !72, i64 128, !72, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !36, i64 160}
!93 = !{!"UnifiedPaintSettings", !53, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !37, i64 16, !37, i64 28, !53, i64 40, !37, i64 44, !72, i64 52, !53, i64 56, !53, i64 60, !37, i64 64, !37, i64 65, !72, i64 72, !37, i64 76, !53, i64 84, !72, i64 88, !37, i64 92, !37, i64 100, !53, i64 108, !36, i64 112, !72, i64 120, !53, i64 124}
!94 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !72, i64 4, !72, i64 8, !72, i64 12, !72, i64 16, !37, i64 20, !37, i64 21, !72, i64 24, !72, i64 28, !72, i64 32, !72, i64 36}
!95 = !{!89, !37, i64 431}
!96 = !{!72, !72, i64 0}
!97 = !{!64, !36, i64 48}
!98 = distinct !{!98, !56}
!99 = !{!53, !53, i64 0}
!100 = !{!64, !36, i64 24}
!101 = !{!102, !36, i64 24}
!102 = !{!"BMEdge", !103, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !104, i64 48, !104, i64 64}
!103 = !{!"BMHeader", !36, i64 0, !53, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!104 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!105 = !{!102, !36, i64 32}
!106 = distinct !{!106, !56}
!107 = !{!64, !36, i64 32}
!108 = distinct !{!108, !56}
!109 = !{!"editmesh_extrude.c:edbm_spin_invoke"}
!110 = !{i32 2, i32 5}
!111 = !{!"editmesh_extrude.c:edbm_spin_exec"}
!112 = !{!"editmesh_extrude.c:edbm_screw_invoke"}
!113 = !{!"editmesh_extrude.c:edbm_screw_exec"}
!114 = distinct !{!114, !56}
!115 = distinct !{!115, !56}
!116 = !{!50, !36, i64 120}
!117 = !{!"editmesh_extrude.c:normalize_v3_v3"}
!118 = !{!"editmesh_extrude.c:mul_v3_fl"}
!119 = !{!"editmesh_extrude.c:edbm_extrude_edge_ex"}
!120 = !{i64 0, i64 8, !121, i64 8, i64 8, !121}
!121 = !{!36, !36, i64 0}
!122 = !{!123, !37, i64 12}
!123 = !{!"BMElem", !103, i64 0}
!124 = distinct !{!124, !56}
!125 = !{i8 0, i8 2}
!126 = !{!"editmesh_extrude.c:dot_v3v3"}
!127 = !{!"editmesh_extrude.c:mul_v3_v3fl"}
!128 = !{!"editmesh_extrude.c:zero_v3"}
!129 = !{!"editmesh_extrude.c:edbm_extrude_edge_exclude_mirror"}
!130 = !{!131, !53, i64 16}
!131 = !{!"ModifierData", !36, i64 0, !36, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!132 = !{!131, !53, i64 20}
!133 = !{!134, !41, i64 114}
!134 = !{!"MirrorModifierData", !131, i64 0, !41, i64 112, !41, i64 114, !72, i64 116, !36, i64 120}
!135 = !{!134, !36, i64 120}
!136 = !{!102, !36, i64 40}
!137 = !{!138, !36, i64 32}
!138 = !{!"BMLoop", !103, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!139 = !{!134, !72, i64 116}
!140 = distinct !{!140, !56}
!141 = distinct !{!141, !56}
!142 = !{!"editmesh_extrude.c:BLI_listbase_clear"}
!143 = !{!"editmesh_extrude.c:add_normal_aligned"}
!144 = !{!"editmesh_extrude.c:normalize_v3"}
!145 = !{!"editmesh_extrude.c:is_zero_v3"}
!146 = !{!"editmesh_extrude.c:BM_iter_new"}
!147 = !{!"editmesh_extrude.c:_bm_elem_flag_test"}
!148 = !{!103, !37, i64 13}
!149 = !{!"editmesh_extrude.c:BM_edge_is_boundary"}
!150 = !{!138, !36, i64 40}
!151 = !{!"editmesh_extrude.c:copy_v3_v3"}
!152 = !{!"editmesh_extrude.c:BMO_slot_map_empty_insert"}
!153 = !{!"editmesh_extrude.c:BM_iter_step"}
!154 = !{!155, !36, i64 48}
!155 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !53, i64 56, !37, i64 60}
!156 = !{!"editmesh_extrude.c:BM_iter_init"}
!157 = !{!155, !37, i64 60}
!158 = !{!155, !36, i64 40}
!159 = !{!160, !36, i64 32}
!160 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 136, !161, i64 144, !161, i64 344, !161, i64 544, !161, i64 744, !41, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!161 = !{!"CustomData", !36, i64 0, !37, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !36, i64 184, !36, i64 192}
!162 = !{!160, !36, i64 40}
!163 = !{!160, !36, i64 56}
!164 = !{!37, !37, i64 0}
!165 = !{!"editmesh_extrude.c:sub_v3_v3"}
!166 = !{!"editmesh_extrude.c:add_v3_v3"}
!167 = !{!"editmesh_extrude.c:edbm_extrude_mesh"}
!168 = !{!52, !41, i64 92}
!169 = !{!160, !53, i64 16}
!170 = !{!160, !53, i64 20}
!171 = !{!160, !53, i64 24}
!172 = !{!173, !36, i64 0}
!173 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !53, i64 2096, !53, i64 2100, !37, i64 2104, !53, i64 2108, !53, i64 2112, !37, i64 2116}
!174 = !{!175, !36, i64 1888}
!175 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !54, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!176 = !{!"editmesh_extrude.c:edbm_extrude_vert"}
!177 = distinct !{!177, !56}
!178 = !{!"editmesh_extrude.c:edbm_extrude_edge"}
!179 = !{!"editmesh_extrude.c:edbm_extrude_verts_indiv"}
!180 = !{!"editmesh_extrude.c:edbm_extrude_edges_indiv"}
!181 = !{!"editmesh_extrude.c:edbm_extrude_discrete_faces"}
!182 = !{!138, !36, i64 16}
!183 = distinct !{!183, !56}
!184 = distinct !{!184, !56}
!185 = !{!"editmesh_extrude.c:sub_v3_v3v3"}
!186 = !{!"editmesh_extrude.c:line_point_side_v2"}
!187 = !{!"editmesh_extrude.c:cross_v3_v3v3"}
!188 = !{!"editmesh_extrude.c:negate_v3"}
