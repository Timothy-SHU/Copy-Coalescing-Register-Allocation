; ModuleID = 'blender/source/blender/editors/mesh/mesh_data.c'
source_filename = "blender/source/blender/editors/mesh/mesh_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
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
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"Add UV Map\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MESH_OT_uv_texture_add\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Drop Image to Mesh UV Map\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Assign Image to active UV Map, or create an UV Map\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"MESH_OT_drop_named_image\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Image name to assign\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Filepath\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Path to image file\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Remove UV Map\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"MESH_OT_uv_texture_remove\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Add Vertex Color\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Add vertex color layer\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"MESH_OT_vertex_color_add\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Remove Vertex Color\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Remove vertex color layer\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"MESH_OT_vertex_color_remove\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Clear Sculpt-Mask Data\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"MESH_OT_customdata_clear_mask\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Clear vertex sculpt masking data from the mesh\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Clear Skin Data\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"MESH_OT_customdata_clear_skin\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Clear vertex skin layer\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Cannot add tessfaces in edit mode\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Cannot add tessfaces to a mesh that already has polygons\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Cannot add edges in edit mode\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Cannot add vertices in edit mode\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Cannot remove faces in edit mode\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Cannot remove more faces than the mesh contains\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Cannot remove edges in edit mode\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Cannot remove more edges than the mesh contains\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Cannot remove vertices in edit mode\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"Cannot remove more vertices than the mesh contains\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Cannot add loops in edit mode\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Cannot add polygons in edit mode\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"vertices\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"%d %s mirrored, %d failed\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"%d %s mirrored\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"No 3D View Available\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Not an object or mesh\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Not an image\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_uv_loop_reset_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %9, i32 noundef 16, i32 noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  store ptr %16, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #8
  %17 = load ptr, ptr %14, align 8, !tbaa !50
  %18 = call ptr %17(ptr noundef nonnull %3) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %7, %27
  %21 = phi ptr [ %29, %27 ], [ %18, %7 ]
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !55
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  call fastcc void @mesh_uv_reset_bmface(ptr noundef nonnull %21, i32 noundef %10)
  br label %27

27:                                               ; preds = %20, %26
  %28 = load ptr, ptr %14, align 8, !tbaa !50
  %29 = call ptr %28(ptr noundef nonnull %3) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !57

31:                                               ; preds = %27, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  br label %48

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %34 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %33, i32 noundef 16, i32 noundef %1) #8
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %36 = load i32, ptr %35, align 8, !tbaa !60
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %44, %40 ]
  %42 = load ptr, ptr %39, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.MPoly, ptr %42, i64 %41
  tail call fastcc void @mesh_uv_reset_mface(ptr noundef %43, ptr noundef %34)
  %44 = add nuw nsw i64 %41, 1
  %45 = load i32, ptr %35, align 8, !tbaa !60
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %40, label %48, !llvm.loop !62

48:                                               ; preds = %40, %32, %31
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_uv_reset_bmface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 11, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !50
  store ptr %0, ptr %3, align 8, !tbaa !54
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #8
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = call ptr %12(ptr noundef nonnull %3) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = sext i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %25, %17 ]
  %19 = phi ptr [ %13, %15 ], [ %24, %17 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = getelementptr inbounds i8, ptr %20, i64 %16
  %22 = getelementptr inbounds ptr, ptr %8, i64 %18
  store ptr %21, ptr %22, align 8, !tbaa !67
  %23 = load ptr, ptr %11, align 8, !tbaa !50
  %24 = call ptr %23(ptr noundef nonnull %3) #8
  %25 = add nuw i64 %18, 1
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %17, !llvm.loop !68

27:                                               ; preds = %17, %2
  %28 = load i32, ptr %4, align 8, !tbaa !63
  switch i32 %28, label %48 [
    i32 3, label %29
    i32 4, label %37
  ]

29:                                               ; preds = %27
  %30 = load ptr, ptr %8, align 16, !tbaa !67
  store float 0.000000e+00, ptr %30, align 4, !tbaa !69
  %31 = getelementptr inbounds float, ptr %30, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !69
  %32 = getelementptr inbounds ptr, ptr %8, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  store float 1.000000e+00, ptr %33, align 4, !tbaa !69
  %34 = getelementptr inbounds float, ptr %33, i64 1
  store float 0.000000e+00, ptr %34, align 4, !tbaa !69
  %35 = getelementptr inbounds ptr, ptr %8, i64 2
  %36 = load ptr, ptr %35, align 16, !tbaa !67
  store float 1.000000e+00, ptr %36, align 4, !tbaa !69
  br label %68

37:                                               ; preds = %27
  %38 = load ptr, ptr %8, align 16, !tbaa !67
  store float 0.000000e+00, ptr %38, align 4, !tbaa !69
  %39 = getelementptr inbounds float, ptr %38, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !69
  %40 = getelementptr inbounds ptr, ptr %8, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  store float 1.000000e+00, ptr %41, align 4, !tbaa !69
  %42 = getelementptr inbounds float, ptr %41, i64 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !69
  %43 = getelementptr inbounds ptr, ptr %8, i64 2
  %44 = load ptr, ptr %43, align 16, !tbaa !67
  store float 1.000000e+00, ptr %44, align 4, !tbaa !69
  %45 = getelementptr inbounds float, ptr %44, i64 1
  store float 1.000000e+00, ptr %45, align 4, !tbaa !69
  %46 = getelementptr inbounds ptr, ptr %8, i64 3
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  store float 0.000000e+00, ptr %47, align 4, !tbaa !69
  br label %68

48:                                               ; preds = %27
  %49 = icmp sgt i32 %28, 2
  br i1 %49, label %50, label %71

50:                                               ; preds = %48
  %51 = sitofp i32 %28 to float
  %52 = fdiv float 1.000000e+00, %51
  %53 = fmul float %52, 0x401921FB60000000
  %54 = zext nneg i32 %28 to i64
  br label %55

55:                                               ; preds = %55, %50
  %56 = phi i64 [ 0, %50 ], [ %66, %55 ]
  %57 = phi float [ 0.000000e+00, %50 ], [ %65, %55 ]
  %58 = call float @sinf(float noundef %57) #8
  %59 = call float @llvm.fmuladd.f32(float %58, float 5.000000e-01, float 5.000000e-01)
  %60 = getelementptr inbounds ptr, ptr %8, i64 %56
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  store float %59, ptr %61, align 4, !tbaa !69
  %62 = call float @cosf(float noundef %57) #8
  %63 = call float @llvm.fmuladd.f32(float %62, float 5.000000e-01, float 5.000000e-01)
  %64 = getelementptr inbounds float, ptr %61, i64 1
  store float %63, ptr %64, align 4, !tbaa !69
  %65 = fadd float %53, %57
  %66 = add nuw nsw i64 %56, 1
  %67 = icmp eq i64 %66, %54
  br i1 %67, label %71, label %55, !llvm.loop !70

68:                                               ; preds = %37, %29
  %69 = phi ptr [ %36, %29 ], [ %47, %37 ]
  %70 = getelementptr inbounds float, ptr %69, i64 1
  store float 1.000000e+00, ptr %70, align 4, !tbaa !69
  br label %71

71:                                               ; preds = %55, %68, %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc void @mesh_uv_reset_mface(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 4, !tbaa !73
  %11 = sext i32 %10 to i64
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr %struct.MLoopUV, ptr %1, i64 %11
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi i64 [ 0, %9 ], [ %18, %14 ]
  %16 = getelementptr %struct.MLoopUV, ptr %13, i64 %15
  %17 = getelementptr inbounds ptr, ptr %7, i64 %15
  store ptr %16, ptr %17, align 8, !tbaa !67
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %20, label %14, !llvm.loop !74

20:                                               ; preds = %14, %2
  switch i32 %4, label %40 [
    i32 3, label %21
    i32 4, label %29
  ]

21:                                               ; preds = %20
  %22 = load ptr, ptr %7, align 16, !tbaa !67
  store float 0.000000e+00, ptr %22, align 4, !tbaa !69
  %23 = getelementptr inbounds float, ptr %22, i64 1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !69
  %24 = getelementptr inbounds ptr, ptr %7, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  store float 1.000000e+00, ptr %25, align 4, !tbaa !69
  %26 = getelementptr inbounds float, ptr %25, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !69
  %27 = getelementptr inbounds ptr, ptr %7, i64 2
  %28 = load ptr, ptr %27, align 16, !tbaa !67
  store float 1.000000e+00, ptr %28, align 4, !tbaa !69
  br label %60

29:                                               ; preds = %20
  %30 = load ptr, ptr %7, align 16, !tbaa !67
  store float 0.000000e+00, ptr %30, align 4, !tbaa !69
  %31 = getelementptr inbounds float, ptr %30, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !69
  %32 = getelementptr inbounds ptr, ptr %7, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  store float 1.000000e+00, ptr %33, align 4, !tbaa !69
  %34 = getelementptr inbounds float, ptr %33, i64 1
  store float 0.000000e+00, ptr %34, align 4, !tbaa !69
  %35 = getelementptr inbounds ptr, ptr %7, i64 2
  %36 = load ptr, ptr %35, align 16, !tbaa !67
  store float 1.000000e+00, ptr %36, align 4, !tbaa !69
  %37 = getelementptr inbounds float, ptr %36, i64 1
  store float 1.000000e+00, ptr %37, align 4, !tbaa !69
  %38 = getelementptr inbounds ptr, ptr %7, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  store float 0.000000e+00, ptr %39, align 4, !tbaa !69
  br label %60

40:                                               ; preds = %20
  %41 = icmp sgt i32 %4, 2
  br i1 %41, label %42, label %63

42:                                               ; preds = %40
  %43 = sitofp i32 %4 to float
  %44 = fdiv float 1.000000e+00, %43
  %45 = fmul float %44, 0x401921FB60000000
  %46 = zext nneg i32 %4 to i64
  br label %47

47:                                               ; preds = %47, %42
  %48 = phi i64 [ 0, %42 ], [ %58, %47 ]
  %49 = phi float [ 0.000000e+00, %42 ], [ %57, %47 ]
  %50 = tail call float @sinf(float noundef %49) #8
  %51 = tail call float @llvm.fmuladd.f32(float %50, float 5.000000e-01, float 5.000000e-01)
  %52 = getelementptr inbounds ptr, ptr %7, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  store float %51, ptr %53, align 4, !tbaa !69
  %54 = tail call float @cosf(float noundef %49) #8
  %55 = tail call float @llvm.fmuladd.f32(float %54, float 5.000000e-01, float 5.000000e-01)
  %56 = getelementptr inbounds float, ptr %53, i64 1
  store float %55, ptr %56, align 4, !tbaa !69
  %57 = fadd float %45, %49
  %58 = add nuw nsw i64 %48, 1
  %59 = icmp eq i64 %58, %46
  br i1 %59, label %63, label %47, !llvm.loop !70

60:                                               ; preds = %29, %21
  %61 = phi ptr [ %28, %21 ], [ %39, %29 ]
  %62 = getelementptr inbounds float, ptr %61, i64 1
  store float 1.000000e+00, ptr %62, align 4, !tbaa !69
  br label %63

63:                                               ; preds = %47, %60, %40
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_uv_loop_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 24
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %12, i32 noundef 15) #8
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef %1, i32 noundef %13)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %1) #8
  ret void
}

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_mesh_uv_texture_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 27
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 15) #8
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %90, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 15, ptr noundef %1) #8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 27
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %18, i32 noundef 15) #8
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 15, i32 noundef %19, i32 noundef %10) #8
  br label %22

22:                                               ; preds = %16, %12
  %23 = icmp ne i8 %2, 0
  %24 = or i1 %23, %15
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 27
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %27, i32 noundef 15, i32 noundef %10) #8
  br label %28

28:                                               ; preds = %22, %25
  %29 = load ptr, ptr %5, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %29, ptr noundef nonnull %30, i32 noundef 16, ptr noundef %1) #8
  br i1 %15, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 26
  %34 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %33, i32 noundef 16) #8
  %35 = load ptr, ptr %5, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %35, ptr noundef nonnull %36, i32 noundef 16, i32 noundef %34, i32 noundef %10) #8
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i8 [ 1, %31 ], [ 0, %28 ]
  br i1 %24, label %39, label %84

39:                                               ; preds = %37
  %40 = load ptr, ptr %5, align 8, !tbaa !44
  %41 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %41, i32 noundef 16, i32 noundef %10) #8
  br label %84

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %44 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %43, i32 noundef 15) #8
  %45 = icmp sgt i32 %44, 7
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !60
  %52 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br i1 %49, label %66, label %53

53:                                               ; preds = %46
  %54 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %43, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %48, i32 noundef %51, ptr noundef %1) #8
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %58 = load i32, ptr %57, align 4, !tbaa !77
  %59 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %52, i32 noundef 16, i32 noundef 4, ptr noundef %56, i32 noundef %58, ptr noundef %1) #8
  %60 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %61 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  %63 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %64 = load i32, ptr %63, align 8, !tbaa !79
  %65 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %60, i32 noundef 5, i32 noundef 4, ptr noundef %62, i32 noundef %64, ptr noundef %1) #8
  br label %75

66:                                               ; preds = %46
  %67 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %43, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %51, ptr noundef %1) #8
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %52, i32 noundef 16, i32 noundef 2, ptr noundef null, i32 noundef %69, ptr noundef %1) #8
  %71 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %72 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %73 = load i32, ptr %72, align 8, !tbaa !79
  %74 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %71, i32 noundef 5, i32 noundef 2, ptr noundef null, i32 noundef %73, ptr noundef %1) #8
  br label %75

75:                                               ; preds = %66, %53
  %76 = phi i8 [ 1, %53 ], [ 0, %66 ]
  %77 = icmp ne i8 %2, 0
  %78 = icmp eq i32 %44, 0
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %43, i32 noundef 15, i32 noundef %44) #8
  %81 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %81, i32 noundef 16, i32 noundef %44) #8
  %82 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %82, i32 noundef 5, i32 noundef %44) #8
  br label %83

83:                                               ; preds = %75, %80
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  br label %84

84:                                               ; preds = %39, %37, %83
  %85 = phi i8 [ %38, %39 ], [ %38, %37 ], [ %76, %83 ]
  %86 = phi i32 [ %10, %39 ], [ %10, %37 ], [ %44, %83 ]
  %87 = icmp eq i8 %85, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef %0, i32 noundef %86)
  br label %89

89:                                               ; preds = %88, %84
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %90

90:                                               ; preds = %42, %7, %89
  %91 = phi i32 [ %86, %89 ], [ -1, %7 ], [ -1, %42 ]
  ret i32 %91
}

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_active_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_set_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  br i1 %5, label %16, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 26
  br label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %15, %13 ], [ %17, %16 ]
  %20 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %12, i32 noundef 15, i32 noundef %1) #8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !80
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %24
  br label %26

26:                                               ; preds = %18, %22
  %27 = phi ptr [ %25, %22 ], [ null, %18 ]
  %28 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %19, i32 noundef 16, i32 noundef %1) #8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %19, align 8, !tbaa !80
  %32 = sext i32 %28 to i64
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %32
  br label %34

34:                                               ; preds = %26, %30
  %35 = phi ptr [ %33, %30 ], [ null, %26 ]
  %36 = icmp ne ptr %27, null
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef nonnull %27)
  tail call fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef nonnull %35)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %40

40:                                               ; preds = %34, %39
  %41 = phi i8 [ 1, %39 ], [ 0, %34 ]
  ret i8 %41
}

declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8, !tbaa !81
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 16
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %5, label %14, label %21

14:                                               ; preds = %11
  br i1 %13, label %18, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 26
  %17 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 2
  br label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  br label %28

21:                                               ; preds = %11
  br i1 %13, label %25, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %24 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 3
  br label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  br label %28

28:                                               ; preds = %15, %18, %22, %25
  %29 = phi ptr [ %23, %22 ], [ %26, %25 ], [ %16, %15 ], [ %19, %18 ]
  %30 = phi ptr [ %24, %22 ], [ %27, %25 ], [ %17, %15 ], [ %20, %18 ]
  %31 = load i32, ptr %30, align 4, !tbaa !83
  %32 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %29, i32 noundef %3) #8
  %33 = load ptr, ptr %29, align 8, !tbaa !80
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %33, i64 %34
  %36 = ptrtoint ptr %1 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 104
  %40 = trunc i64 %39 to i32
  %41 = load ptr, ptr %6, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = load ptr, ptr %41, align 8, !tbaa !44
  tail call void @BM_data_layer_free_n(ptr noundef %44, ptr noundef nonnull %29, i32 noundef %3, i32 noundef %40) #8
  br label %48

45:                                               ; preds = %28
  %46 = add nsw i32 %32, %40
  %47 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %29, i32 noundef %3, i32 noundef %31, i32 noundef %46) #8
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  br label %48

48:                                               ; preds = %45, %43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_uv_texture_remove_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 27
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  %12 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %11, i32 noundef 15) #8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef %0, i32 noundef %12), !range !84
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_uv_texture_remove_named(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %12, i32 noundef 15, ptr noundef %1) #8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef %0, i32 noundef %13), !range !84
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %11 ]
  ret i8 %18
}

declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_mesh_color_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 17) #8
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %60, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 17, ptr noundef %1) #8
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %18, i32 noundef 17) #8
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 17, i32 noundef %10, i32 noundef %19) #8
  br label %22

22:                                               ; preds = %16, %12
  %23 = icmp ne i8 %2, 0
  %24 = or i1 %23, %15
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %27, i32 noundef 17, i32 noundef %10) #8
  br label %58

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %30 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %29, i32 noundef 17) #8
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %60, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %37 = load i32, ptr %36, align 4, !tbaa !77
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br i1 %35, label %46, label %39

39:                                               ; preds = %32
  %40 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %29, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %34, i32 noundef %37, ptr noundef %1) #8
  %41 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %44 = load i32, ptr %43, align 8, !tbaa !79
  %45 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %38, i32 noundef 6, i32 noundef 4, ptr noundef %42, i32 noundef %44, ptr noundef %1) #8
  br label %51

46:                                               ; preds = %32
  %47 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %29, i32 noundef 17, i32 noundef 2, ptr noundef null, i32 noundef %37, ptr noundef %1) #8
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %49 = load i32, ptr %48, align 8, !tbaa !79
  %50 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %38, i32 noundef 6, i32 noundef 2, ptr noundef null, i32 noundef %49, ptr noundef %1) #8
  br label %51

51:                                               ; preds = %46, %39
  %52 = icmp ne i8 %2, 0
  %53 = icmp eq i32 %30, 0
  %54 = or i1 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %29, i32 noundef 17, i32 noundef %30) #8
  %56 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %56, i32 noundef 6, i32 noundef %30) #8
  br label %57

57:                                               ; preds = %51, %55
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  br label %58

58:                                               ; preds = %25, %22, %57
  %59 = phi i32 [ %10, %25 ], [ %10, %22 ], [ %30, %57 ]
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %60

60:                                               ; preds = %28, %7, %58
  %61 = phi i32 [ %59, %58 ], [ -1, %7 ], [ -1, %28 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_color_remove_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %12, i32 noundef 17, i32 noundef %1) #8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 8, !tbaa !80
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %17
  br label %19

19:                                               ; preds = %11, %15
  %20 = phi ptr [ %18, %15 ], [ null, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef nonnull %20)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %23

23:                                               ; preds = %19, %22
  %24 = phi i8 [ 1, %22 ], [ 0, %19 ]
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_color_remove_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  %12 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %11, i32 noundef 17) #8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 26
  br label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %19, %17 ], [ %21, %20 ]
  %24 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %23, i32 noundef 17, i32 noundef %12) #8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %23, align 8, !tbaa !80
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %29, %26 ], [ null, %22 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef nonnull %31)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %34

34:                                               ; preds = %33, %30, %10
  %35 = phi i8 [ 0, %10 ], [ 1, %33 ], [ 0, %30 ]
  ret i8 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_color_remove_named(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %12, i32 noundef 17, ptr noundef %1) #8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 26
  br label %23

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %24, i32 noundef 17, i32 noundef %13) #8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %24, align 8, !tbaa !80
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds %struct.CustomDataLayer, ptr %28, i64 %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi ptr [ %30, %27 ], [ null, %23 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef nonnull %32)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #8
  br label %35

35:                                               ; preds = %34, %31, %11
  %36 = phi i8 [ 0, %11 ], [ 1, %34 ], [ 0, %31 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uv_texture_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_uv_texture_add_exec, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @layers_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %24, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !99
  %16 = icmp eq i16 %15, 1
  %17 = icmp ne ptr %8, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %13, %9, %7
  %25 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 0, %7 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_uv_texture_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call i32 @ED_mesh_uv_texture_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1), !range !101
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !102
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %15 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %14, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #8
  br label %16

16:                                               ; preds = %8, %13, %2
  %17 = phi i32 [ 2, %2 ], [ 4, %13 ], [ 4, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_drop_named_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_named_image_invoke, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !104
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @drop_named_image_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.44) #8
  br label %66

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !99
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.45) #8
  br label %66

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %28, ptr noundef nonnull @.str.9) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #8
  %32 = load ptr, ptr %27, align 8, !tbaa !109
  call void @RNA_string_get(ptr noundef %32, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #8
  %33 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #8
  br label %37

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %35 = load ptr, ptr %27, align 8, !tbaa !109
  call void @RNA_string_get(ptr noundef %35, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #8
  %36 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %33, %31 ], [ %36, %34 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.46) #8
  br label %66

43:                                               ; preds = %37
  %44 = load ptr, ptr %18, align 8, !tbaa !107
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.Mesh, ptr %46, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !110
  call void @EDBM_mesh_make(ptr noundef %52, ptr noundef %44) #8
  br label %53

53:                                               ; preds = %50, %43
  %54 = load ptr, ptr %47, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  call void @ED_uvedit_assign_image(ptr noundef %6, ptr noundef %7, ptr noundef %44, ptr noundef nonnull %38, ptr noundef null) #8
  br i1 %49, label %57, label %61

57:                                               ; preds = %56
  call void @EDBM_mesh_load(ptr noundef %44) #8
  %58 = load ptr, ptr %47, align 8, !tbaa !34
  call void @EDBM_mesh_free(ptr noundef %58) #8
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  %60 = load ptr, ptr %47, align 8, !tbaa !34
  call void %59(ptr noundef %60) #8
  store ptr null, ptr %47, align 8, !tbaa !34
  call void @DAG_id_tag_update(ptr noundef %46, i16 noundef signext 0) #8
  br label %61

61:                                               ; preds = %56, %57
  %62 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 29
  %63 = load i16, ptr %62, align 2, !tbaa !129
  %64 = or i16 %63, 8
  store i16 %64, ptr %62, align 2, !tbaa !129
  %65 = load ptr, ptr %45, align 8, !tbaa !95
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %65) #8
  br label %66

66:                                               ; preds = %53, %61, %40, %23, %10
  %67 = phi i32 [ 2, %10 ], [ 2, %23 ], [ 4, %61 ], [ 2, %40 ], [ 2, %53 ]
  ret i32 %67
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uv_texture_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_uv_texture_remove_exec, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_uv_texture_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 24
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ %13, %12 ]
  %16 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %15, i32 noundef 15) #8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef %5, i32 noundef %16), !range !84
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %28 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %27, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #8
  br label %29

29:                                               ; preds = %14, %21, %26, %18
  %30 = phi i32 [ 2, %18 ], [ 4, %26 ], [ 4, %21 ], [ 2, %14 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vertex_color_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_vertex_color_add_exec, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mesh_vertex_color_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call i32 @ED_mesh_color_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1), !range !101
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vertex_color_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_vertex_color_remove_exec, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_vertex_color_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = tail call zeroext i8 @ED_mesh_color_remove_active(ptr noundef %5), !range !84
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_customdata_clear_mask(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_customdata_clear_mask_exec, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mesh_customdata_clear_mask_poll, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_customdata_clear_mask_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 34), !range !131
  %4 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 35), !range !131
  %5 = icmp eq i32 %3, 4
  %6 = icmp eq i32 %4, 4
  %7 = or i1 %5, %6
  %8 = select i1 %7, i32 4, i32 2
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_customdata_clear_mask_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !99
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !132
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 24
  br label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 21
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi ptr [ %25, %23 ], [ %27, %26 ]
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 34) #8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load ptr, ptr %20, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 26
  br label %40

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 25
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %37, %35 ], [ %39, %38 ]
  %42 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %41, i32 noundef 35) #8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %15
  br label %45

45:                                               ; preds = %28, %8, %40, %44
  %46 = phi i32 [ 1, %44 ], [ 1, %40 ], [ 0, %8 ], [ 1, %28 ]
  %47 = phi i1 [ true, %44 ], [ false, %40 ], [ false, %8 ], [ false, %28 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %4, %1
  br label %49

49:                                               ; preds = %45, %48
  %50 = phi i32 [ 0, %48 ], [ %46, %45 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_customdata_clear_skin(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_customdata_clear_skin_exec, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mesh_customdata_clear_skin_poll, ptr %5, align 8, !tbaa !92
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_customdata_clear_skin_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 36), !range !131
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_customdata_clear_skin_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !99
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  br label %23

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 21
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %24, i32 noundef 36) #8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %8
  br label %28

28:                                               ; preds = %1, %4, %27, %23
  %29 = phi i32 [ 1, %23 ], [ 0, %27 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %12, %8, %4
  %14 = phi i1 [ false, %12 ], [ true, %8 ], [ true, %4 ]
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !60
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 8, !tbaa !79
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !133
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %13
  %28 = trunc i32 %2 to i8
  tail call void @BKE_mesh_calc_edges(ptr noundef %0, i8 noundef zeroext %28, i8 noundef zeroext 1) #8
  br label %29

29:                                               ; preds = %27, %23, %20
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  br i1 %14, label %32, label %34

32:                                               ; preds = %31
  tail call void @BKE_mesh_tessface_calc(ptr noundef %0) #8
  br label %34

33:                                               ; preds = %29
  tail call void @BKE_mesh_tessface_clear(ptr noundef %0) #8
  br label %34

34:                                               ; preds = %31, %32, %33
  tail call void @BKE_mesh_calc_normals(ptr noundef %0) #8
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 274399232, ptr noundef %0) #8
  ret void
}

declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_edges(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_tessfaces_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.27) #8
  br label %45

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.28) #8
  br label %45

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = add nsw i32 %18, %2
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %21 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !134
  call void @CustomData_copy(ptr noundef nonnull %20, ptr noundef nonnull %4, i64 noundef %21, i32 noundef 2, i32 noundef %19) #8
  %22 = load i32, ptr %17, align 8, !tbaa !79
  call void @CustomData_copy_data(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %22) #8
  %23 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 4) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %19) #8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, ptr %17, align 8, !tbaa !79
  call void @CustomData_free(ptr noundef nonnull %20, i32 noundef %28) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %20, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !135
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = load i32, ptr %17, align 8, !tbaa !79
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MFace, ptr %32, i64 %34
  br label %36

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %41, %36 ], [ %35, %30 ]
  %38 = phi i32 [ %40, %36 ], [ 0, %30 ]
  %39 = getelementptr inbounds %struct.MFace, ptr %37, i64 0, i32 6
  store i8 2, ptr %39, align 1, !tbaa !137
  %40 = add nuw nsw i32 %38, 1
  %41 = getelementptr inbounds %struct.MFace, ptr %37, i64 1
  %42 = icmp eq i32 %40, %2
  br i1 %42, label %43, label %36, !llvm.loop !139

43:                                               ; preds = %36, %27
  store i32 %19, ptr %17, align 8, !tbaa !79
  br label %44

44:                                               ; preds = %14, %43
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  br label %45

45:                                               ; preds = %44, %13, %8
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_edges_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.29) #8
  br label %40

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %13 = load i32, ptr %12, align 4, !tbaa !133
  %14 = add nsw i32 %13, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %16 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !134
  call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %4, i64 noundef %16, i32 noundef 2, i32 noundef %14) #8
  %17 = load i32, ptr %12, align 4, !tbaa !133
  call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %17) #8
  %18 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 3) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %14) #8
  br label %22

22:                                               ; preds = %20, %11
  %23 = load i32, ptr %12, align 4, !tbaa !133
  call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %23) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %15, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !135
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 0) #8
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !140
  %28 = load i32, ptr %12, align 4, !tbaa !133
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MEdge, ptr %27, i64 %29
  br label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %36, %31 ], [ %30, %25 ]
  %33 = phi i32 [ %35, %31 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.MEdge, ptr %32, i64 0, i32 4
  store i16 35, ptr %34, align 2, !tbaa !141
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds %struct.MEdge, ptr %32, i64 1
  %37 = icmp eq i32 %35, %2
  br i1 %37, label %38, label %31, !llvm.loop !143

38:                                               ; preds = %31, %22
  store i32 %14, ptr %12, align 4, !tbaa !133
  br label %39

39:                                               ; preds = %9, %38
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  br label %40

40:                                               ; preds = %39, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_vertices_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.30) #8
  br label %42

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !144
  %14 = add nsw i32 %13, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %16 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !134
  call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %4, i64 noundef %16, i32 noundef 2, i32 noundef %14) #8
  %17 = load i32, ptr %12, align 8, !tbaa !144
  call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %17) #8
  %18 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 0) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %14) #8
  br label %22

22:                                               ; preds = %20, %11
  %23 = load i32, ptr %12, align 8, !tbaa !144
  call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %23) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %15, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !135
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 0) #8
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  %28 = load i32, ptr %12, align 8, !tbaa !144
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MVert, ptr %27, i64 %29
  br label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %38, %31 ], [ %30, %25 ]
  %33 = phi i32 [ %37, %31 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.MVert, ptr %32, i64 0, i32 2
  %35 = load i8, ptr %34, align 2, !tbaa !146
  %36 = or i8 %35, 1
  store i8 %36, ptr %34, align 2, !tbaa !146
  %37 = add nuw nsw i32 %33, 1
  %38 = getelementptr inbounds %struct.MVert, ptr %32, i64 1
  %39 = icmp eq i32 %37, %2
  br i1 %39, label %40, label %31, !llvm.loop !148

40:                                               ; preds = %31, %22
  store i32 %14, ptr %12, align 8, !tbaa !144
  br label %41

41:                                               ; preds = %9, %40
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  br label %42

42:                                               ; preds = %41, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_faces_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31) #8
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !79
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.32) #8
  br label %18

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = sub nsw i32 %10, %2
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_free_elem(ptr noundef nonnull %17, i32 noundef %16, i32 noundef %2) #8
  store i32 %16, ptr %9, align 8, !tbaa !79
  br label %18

18:                                               ; preds = %15, %13, %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_edges_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.33) #8
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %10 = load i32, ptr %9, align 4, !tbaa !133
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %18

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = sub nsw i32 %10, %2
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  tail call void @CustomData_free_elem(ptr noundef nonnull %17, i32 noundef %16, i32 noundef %2) #8
  store i32 %16, ptr %9, align 4, !tbaa !133
  br label %18

18:                                               ; preds = %15, %13, %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_vertices_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.35) #8
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !144
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.36) #8
  br label %18

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = sub nsw i32 %10, %2
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  tail call void @CustomData_free_elem(ptr noundef nonnull %17, i32 noundef %16, i32 noundef %2) #8
  store i32 %16, ptr %9, align 8, !tbaa !144
  br label %18

18:                                               ; preds = %15, %13, %12, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_loops_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.37) #8
  br label %25

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 4, !tbaa !77
  %14 = add nsw i32 %13, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %16 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !134
  call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %4, i64 noundef %16, i32 noundef 2, i32 noundef %14) #8
  %17 = load i32, ptr %12, align 4, !tbaa !77
  call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %17) #8
  %18 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 26) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %14) #8
  br label %22

22:                                               ; preds = %20, %11
  %23 = load i32, ptr %12, align 4, !tbaa !77
  call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %23) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %15, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !135
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  store i32 %14, ptr %12, align 4, !tbaa !77
  br label %24

24:                                               ; preds = %9, %22
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  br label %25

25:                                               ; preds = %24, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_polys_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CustomData, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.38) #8
  br label %40

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = add nsw i32 %13, %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %16 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !134
  call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %4, i64 noundef %16, i32 noundef 2, i32 noundef %14) #8
  %17 = load i32, ptr %12, align 8, !tbaa !60
  call void @CustomData_copy_data(ptr noundef nonnull %15, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %17) #8
  %18 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %4, i32 noundef 25) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = call ptr @CustomData_add_layer(ptr noundef nonnull %4, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %14) #8
  br label %22

22:                                               ; preds = %20, %11
  %23 = load i32, ptr %12, align 8, !tbaa !60
  call void @CustomData_free(ptr noundef nonnull %15, i32 noundef %23) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %15, ptr noundef nonnull align 8 dereferenceable(200) %4, i64 200, i1 false), !tbaa.struct !135
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %0, i8 noundef zeroext 1) #8
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = load i32, ptr %12, align 8, !tbaa !60
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.MPoly, ptr %27, i64 %29
  br label %31

31:                                               ; preds = %25, %31
  %32 = phi ptr [ %36, %31 ], [ %30, %25 ]
  %33 = phi i32 [ %35, %31 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.MPoly, ptr %32, i64 0, i32 3
  store i8 2, ptr %34, align 2, !tbaa !149
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds %struct.MPoly, ptr %32, i64 1
  %37 = icmp eq i32 %35, %2
  br i1 %37, label %38, label %31, !llvm.loop !150

38:                                               ; preds = %31, %22
  store i32 %14, ptr %12, align 8, !tbaa !60
  br label %39

39:                                               ; preds = %9, %38
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #8
  br label %40

40:                                               ; preds = %39, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_calc_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %3) #8
  br label %7

6:                                                ; preds = %1
  tail call void @BKE_mesh_tessface_calc(ptr noundef %0) #8
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_report_mirror_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %3 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.41, ptr @.str.40
  %11 = select i1 %7, ptr %10, ptr @.str.39
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  br i1 %12, label %16, label %15

15:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %1, ptr noundef nonnull %11, i32 noundef %2) #8
  br label %17

16:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %1, ptr noundef nonnull %11) #8
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mesh_report_mirror(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  br i1 %4, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %6, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %1, ptr noundef nonnull @.str.39, i32 noundef %2) #8
  br label %9

8:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %6, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %1, ptr noundef nonnull @.str.39) #8
  br label %9

9:                                                ; preds = %7, %8
  ret void
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_assign_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ null, %3 ]
  switch i8 %1, label %53 [
    i8 1, label %14
    i8 2, label %23
    i8 4, label %33
    i8 8, label %43
  ]

14:                                               ; preds = %12
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 24
  %18 = load i32, ptr %13, align 8, !tbaa !151
  br label %53

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 21
  %21 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !144
  br label %53

23:                                               ; preds = %12
  %24 = icmp eq ptr %13, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 25
  %27 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !152
  br label %53

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 22
  %31 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 27
  %32 = load i32, ptr %31, align 4, !tbaa !133
  br label %53

33:                                               ; preds = %12
  %34 = icmp eq ptr %13, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  %37 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !153
  br label %53

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 25
  %41 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 31
  %42 = load i32, ptr %41, align 4, !tbaa !77
  br label %53

43:                                               ; preds = %12
  %44 = icmp eq ptr %13, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  %47 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !154
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 24
  %51 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 30
  %52 = load i32, ptr %51, align 8, !tbaa !60
  br label %53

53:                                               ; preds = %12, %16, %19, %25, %29, %35, %39, %45, %49
  %54 = phi ptr [ %46, %45 ], [ %50, %49 ], [ %36, %35 ], [ %40, %39 ], [ %26, %25 ], [ %30, %29 ], [ %17, %16 ], [ %20, %19 ], [ null, %12 ]
  %55 = phi i32 [ %48, %45 ], [ %52, %49 ], [ %38, %35 ], [ %42, %39 ], [ %28, %25 ], [ %32, %29 ], [ %18, %16 ], [ %22, %19 ], [ 0, %12 ]
  %56 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %54, i32 noundef %2) #8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %7, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %59, align 8, !tbaa !44
  tail call void @BM_data_layer_free(ptr noundef %62, ptr noundef %54, i32 noundef %2) #8
  br label %64

63:                                               ; preds = %58
  tail call void @CustomData_free_layers(ptr noundef %54, i32 noundef %2, i32 noundef %55) #8
  br label %64

64:                                               ; preds = %63, %61
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %6) #8
  br label %65

65:                                               ; preds = %53, %64
  %66 = phi i32 [ 4, %64 ], [ 2, %53 ]
  ret i32 %66
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !37, i64 272}
!35 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !42, i64 280, !42, i64 480, !42, i64 680, !42, i64 880, !42, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !43, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!43 = !{!"float", !38, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !46, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!46 = !{!"long", !38, i64 0}
!47 = !{!48, !38, i64 60}
!48 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!49 = !{!48, !37, i64 40}
!50 = !{!48, !37, i64 48}
!51 = !{!52, !37, i64 56}
!52 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !53, i64 960, !37, i64 976, !53, i64 984, !37, i64 1000}
!53 = !{!"ListBase", !37, i64 0, !37, i64 8}
!54 = !{!38, !38, i64 0}
!55 = !{!56, !38, i64 13}
!56 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!35, !41, i64 1296}
!61 = !{!35, !37, i64 168}
!62 = distinct !{!62, !58, !59}
!63 = !{!64, !41, i64 32}
!64 = !{!"BMFace", !56, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!65 = !{!66, !37, i64 0}
!66 = !{!"BMLoop", !56, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!67 = !{!37, !37, i64 0}
!68 = distinct !{!68, !58, !59}
!69 = !{!43, !43, i64 0}
!70 = distinct !{!70, !58, !59}
!71 = !{!72, !41, i64 4}
!72 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!73 = !{!72, !41, i64 0}
!74 = distinct !{!74, !58, !59}
!75 = !{!35, !37, i64 176}
!76 = !{!35, !37, i64 192}
!77 = !{!35, !41, i64 1300}
!78 = !{!35, !37, i64 216}
!79 = !{!35, !41, i64 1288}
!80 = !{!42, !37, i64 0}
!81 = !{!82, !41, i64 0}
!82 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!83 = !{!41, !41, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{!35, !37, i64 200}
!86 = !{!35, !37, i64 256}
!87 = !{!88, !37, i64 0}
!88 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !53, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !89, i64 152, !40, i64 184}
!89 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!90 = !{!88, !37, i64 24}
!91 = !{!88, !37, i64 8}
!92 = !{!88, !37, i64 72}
!93 = !{!88, !37, i64 32}
!94 = !{!88, !40, i64 184}
!95 = !{!96, !37, i64 296}
!96 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !97, i64 312, !37, i64 360, !53, i64 368, !53, i64 384, !53, i64 400, !53, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !53, i64 1056, !53, i64 1072, !53, i64 1088, !53, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !53, i64 1176, !53, i64 1192, !53, i64 1208, !53, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !46, i64 1304, !46, i64 1312, !41, i64 1320, !41, i64 1324, !53, i64 1328, !53, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !53, i64 1400, !37, i64 1416}
!97 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!98 = !{!96, !37, i64 24}
!99 = !{!96, !40, i64 136}
!100 = !{!36, !37, i64 24}
!101 = !{i32 -2147483648, i32 8}
!102 = !{!96, !41, i64 432}
!103 = !{!88, !37, i64 48}
!104 = !{!88, !37, i64 88}
!105 = !{!106, !37, i64 120}
!106 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !53, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!107 = !{!108, !37, i64 32}
!108 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!109 = !{!106, !37, i64 112}
!110 = !{!111, !37, i64 264}
!111 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !53, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !112, i64 280, !121, i64 4264, !53, i64 4296, !53, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !53, i64 4384, !122, i64 4400, !123, i64 4416, !126, i64 4600, !37, i64 4608, !127, i64 4616, !37, i64 4640, !46, i64 4648, !46, i64 4656, !114, i64 4664, !115, i64 4824, !128, i64 4888, !37, i64 4952}
!112 = !{!"RenderData", !113, i64 0, !37, i64 248, !37, i64 256, !116, i64 264, !117, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !118, i64 544, !118, i64 560, !119, i64 576, !53, i64 592, !40, i64 608, !40, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !41, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !43, i64 660, !43, i64 664, !40, i64 668, !40, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !43, i64 2528, !43, i64 2532, !40, i64 2536, !40, i64 2538, !43, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !41, i64 2576, !43, i64 2580, !38, i64 2584, !120, i64 2616, !41, i64 3976, !41, i64 3980}
!113 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !114, i64 24, !115, i64 184}
!114 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!115 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!116 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!117 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !43, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!118 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!119 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!120 = !{!"BakeData", !113, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!121 = !{!"AudioData", !41, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !43, i64 24, !43, i64 28}
!122 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!123 = !{!"GameData", !122, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !124, i64 40, !40, i64 64, !40, i64 66, !43, i64 68, !125, i64 72, !43, i64 128, !43, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!124 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!125 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !41, i64 40, !43, i64 44, !43, i64 48, !40, i64 52, !40, i64 54}
!126 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!127 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!128 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!129 = !{!130, !40, i64 242}
!130 = !{!"View3D", !37, i64 0, !37, i64 8, !53, i64 16, !41, i64 32, !43, i64 36, !38, i64 40, !38, i64 56, !43, i64 72, !43, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !118, i64 112, !53, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !53, i64 296, !53, i64 312, !53, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!131 = !{i32 2, i32 5}
!132 = !{!35, !37, i64 24}
!133 = !{!35, !41, i64 1284}
!134 = !{!46, !46, i64 0}
!135 = !{i64 0, i64 8, !67, i64 8, i64 164, !54, i64 172, i64 4, !83, i64 176, i64 4, !83, i64 180, i64 4, !83, i64 184, i64 8, !67, i64 192, i64 8, !67}
!136 = !{!35, !37, i64 208}
!137 = !{!138, !38, i64 19}
!138 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!139 = distinct !{!139, !58, !59}
!140 = !{!35, !37, i64 240}
!141 = !{!142, !40, i64 10}
!142 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!143 = distinct !{!143, !58, !59}
!144 = !{!35, !41, i64 1280}
!145 = !{!35, !37, i64 232}
!146 = !{!147, !38, i64 18}
!147 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!148 = distinct !{!148, !58, !59}
!149 = !{!72, !38, i64 10}
!150 = distinct !{!150, !58, !59}
!151 = !{!52, !41, i64 0}
!152 = !{!52, !41, i64 4}
!153 = !{!52, !41, i64 8}
!154 = !{!52, !41, i64 12}
