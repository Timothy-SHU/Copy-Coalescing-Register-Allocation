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
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_uv_loop_reset_ex(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %9, i32 noundef 16, i32 noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !44
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %11, i8 noundef zeroext 3, ptr noundef null) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %7, %19
  %15 = phi ptr [ %20, %19 ], [ %12, %7 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15) #12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call fastcc void @mesh_uv_reset_bmface(ptr noundef nonnull %15, i32 noundef %10) #12
  br label %19

19:                                               ; preds = %14, %18
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %14, !llvm.loop !47

22:                                               ; preds = %19, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %39

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %25 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %24, i32 noundef 16, i32 noundef %1) #10
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !49
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %35, %31 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %32
  tail call fastcc void @mesh_uv_reset_mface(ptr noundef %34, ptr noundef %25) #12
  %35 = add nuw nsw i64 %32, 1
  %36 = load i32, ptr %26, align 8, !tbaa !49
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !51

39:                                               ; preds = %31, %23, %22
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !52 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #12
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !54
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_uv_reset_bmface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %20, %13 ]
  %15 = phi ptr [ %9, %11 ], [ %19, %13 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds i8, ptr %16, i64 %12
  %18 = getelementptr inbounds ptr, ptr %8, i64 %14
  store ptr %17, ptr %18, align 8, !tbaa !61
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %20 = add nuw i64 %14, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %13, !llvm.loop !62

22:                                               ; preds = %13, %2
  %23 = load i32, ptr %4, align 8, !tbaa !57
  call fastcc void @mesh_uv_reset_array(ptr noundef nonnull %8, i32 noundef %23) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc void @mesh_uv_reset_mface(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !67
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 4, !tbaa !69
  %11 = sext i32 %10 to i64
  %12 = getelementptr %struct.MLoopUV, ptr %1, i64 %11
  %13 = zext nneg i32 %4 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 4294967294
  %16 = add nsw i64 %13, -1
  %17 = insertelement <2 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %33, %9
  %20 = phi i64 [ 0, %9 ], [ %34, %33 ]
  %21 = phi <2 x i64> [ <i64 0, i64 1>, %9 ], [ %35, %33 ]
  %22 = icmp ule <2 x i64> %21, %18
  %23 = extractelement <2 x i1> %22, i64 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds ptr, ptr %7, i64 %20
  %26 = getelementptr %struct.MLoopUV, ptr %12, i64 %20
  store ptr %26, ptr %25, align 16, !tbaa !61
  br label %27

27:                                               ; preds = %24, %19
  %28 = extractelement <2 x i1> %22, i64 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = or disjoint i64 %20, 1
  %31 = getelementptr inbounds ptr, ptr %7, i64 %30
  %32 = getelementptr %struct.MLoopUV, ptr %12, i64 %30
  store ptr %32, ptr %31, align 8, !tbaa !61
  br label %33

33:                                               ; preds = %29, %27
  %34 = add i64 %20, 2
  %35 = add <2 x i64> %21, <i64 2, i64 2>
  %36 = icmp eq i64 %34, %15
  br i1 %36, label %37, label %19, !llvm.loop !70

37:                                               ; preds = %33, %2
  call fastcc void @mesh_uv_reset_array(ptr noundef nonnull %7, i32 noundef %4) #12
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %12, i32 noundef 15) #10
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef nonnull %1, i32 noundef %13) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %1) #10
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_mesh_uv_texture_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 27
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 15) #10
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %96, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 15, ptr noundef %1) #10
  %15 = icmp eq i32 %10, 0
  %16 = load ptr, ptr %5, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 27
  br i1 %15, label %40, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %17, i32 noundef 15) #10
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 15, i32 noundef %19, i32 noundef %10) #10
  %22 = icmp eq i8 %2, 0
  %23 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %22, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %23, ptr noundef nonnull %25, i32 noundef 16, ptr noundef %1) #10
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 26
  %28 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %27, i32 noundef 16) #10
  %29 = load ptr, ptr %5, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %29, ptr noundef nonnull %30, i32 noundef 16, i32 noundef %28, i32 noundef %10) #10
  br label %94

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 27
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %32, i32 noundef 15, i32 noundef %10) #10
  %33 = load ptr, ptr %5, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %33, ptr noundef nonnull %34, i32 noundef 16, ptr noundef %1) #10
  %35 = load ptr, ptr %5, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 26
  %37 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %36, i32 noundef 16) #10
  %38 = load ptr, ptr %5, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %38, ptr noundef nonnull %39, i32 noundef 16, i32 noundef %37, i32 noundef %10) #10
  br label %43

40:                                               ; preds = %12
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %17, i32 noundef 15, i32 noundef 0) #10
  %41 = load ptr, ptr %5, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %41, ptr noundef nonnull %42, i32 noundef 16, ptr noundef %1) #10
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi i8 [ 1, %31 ], [ 0, %40 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.BMesh, ptr %45, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %46, i32 noundef 16, i32 noundef %10) #10
  br label %89

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %49 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %48, i32 noundef 15) #10
  %50 = icmp sgt i32 %49, 7
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !73
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %56 = load i32, ptr %55, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br i1 %54, label %71, label %58

58:                                               ; preds = %51
  %59 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %48, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %53, i32 noundef %56, ptr noundef %1) #10
  %60 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %63 = load i32, ptr %62, align 4, !tbaa !75
  %64 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %57, i32 noundef 16, i32 noundef 4, ptr noundef %61, i32 noundef %63, ptr noundef %1) #10
  %65 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %66 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %69 = load i32, ptr %68, align 8, !tbaa !77
  %70 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %65, i32 noundef 5, i32 noundef 4, ptr noundef %67, i32 noundef %69, ptr noundef %1) #10
  br label %80

71:                                               ; preds = %51
  %72 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %48, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %56, ptr noundef %1) #10
  %73 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %74 = load i32, ptr %73, align 4, !tbaa !75
  %75 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %57, i32 noundef 16, i32 noundef 2, ptr noundef null, i32 noundef %74, ptr noundef %1) #10
  %76 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %78 = load i32, ptr %77, align 8, !tbaa !77
  %79 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %76, i32 noundef 5, i32 noundef 2, ptr noundef null, i32 noundef %78, ptr noundef %1) #10
  br label %80

80:                                               ; preds = %71, %58
  %81 = phi i8 [ 1, %58 ], [ 0, %71 ]
  %82 = icmp ne i8 %2, 0
  %83 = icmp eq i32 %49, 0
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %48, i32 noundef 15, i32 noundef %49) #10
  %86 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %86, i32 noundef 16, i32 noundef %49) #10
  %87 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %87, i32 noundef 5, i32 noundef %49) #10
  br label %88

88:                                               ; preds = %80, %85
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %89

89:                                               ; preds = %43, %88
  %90 = phi i8 [ %44, %43 ], [ %81, %88 ]
  %91 = phi i32 [ %10, %43 ], [ %49, %88 ]
  %92 = icmp eq i8 %90, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef nonnull %0, i32 noundef %91) #12
  br label %94

94:                                               ; preds = %24, %93, %89
  %95 = phi i32 [ %91, %93 ], [ %91, %89 ], [ %10, %24 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #10
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #10
  br label %96

96:                                               ; preds = %47, %7, %94
  %97 = phi i32 [ %95, %94 ], [ -1, %7 ], [ -1, %47 ]
  ret i32 %97
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_set_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %8, %6 ], [ %11, %10 ]
  %15 = phi ptr [ %9, %6 ], [ %12, %10 ]
  %16 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %14, i32 noundef 15, i32 noundef %1) #10
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !78
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %20
  br label %22

22:                                               ; preds = %13, %18
  %23 = phi ptr [ %21, %18 ], [ null, %13 ]
  %24 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %15, i32 noundef 16, i32 noundef %1) #10
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !78
  %28 = icmp ne ptr %23, null
  %29 = icmp ne ptr %27, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = sext i32 %24 to i64
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %27, i64 %32
  tail call fastcc void @delete_customdata_layer(ptr noundef nonnull %0, ptr noundef nonnull %23) #12
  tail call fastcc void @delete_customdata_layer(ptr noundef nonnull %0, ptr noundef nonnull %33) #12
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #10
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #10
  br label %34

34:                                               ; preds = %22, %26, %31
  %35 = phi i8 [ 1, %31 ], [ 0, %26 ], [ 0, %22 ]
  ret i8 %35
}

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr %1, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 16
  %7 = select i1 %6, i8 4, i8 8
  %8 = call fastcc ptr @mesh_customdata_get_type(ptr noundef %0, i8 noundef zeroext %7, ptr noundef nonnull %3) #12
  %9 = tail call i32 @CustomData_get_layer_index(ptr noundef %8, i32 noundef %4) #10
  %10 = load ptr, ptr %8, align 8, !tbaa !78
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 104
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %19, align 8, !tbaa !44
  tail call void @BM_data_layer_free_n(ptr noundef %22, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %17) #10
  br label %27

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4, !tbaa !82
  %25 = add nsw i32 %9, %17
  %26 = tail call zeroext i8 @CustomData_free_layer(ptr noundef nonnull %8, i32 noundef %4, i32 noundef %24, i32 noundef %25) #10
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %27

27:                                               ; preds = %23, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %11, i32 noundef 15) #10
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef nonnull %0, i32 noundef %12) #12, !range !83
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %12, i32 noundef 15, ptr noundef %1) #10
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef nonnull %0, i32 noundef %13) #12, !range !83
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %11 ]
  ret i8 %18
}

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_mesh_color_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 17) #10
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %58, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 17, ptr noundef %1) #10
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %18, i32 noundef 17) #10
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 17, i32 noundef %10, i32 noundef %19) #10
  %22 = icmp eq i8 %2, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %12, %16
  %24 = load ptr, ptr %5, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 26
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %25, i32 noundef 17, i32 noundef %10) #10
  br label %56

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %28 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %27, i32 noundef 17) #10
  %29 = icmp sgt i32 %28, 7
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br i1 %33, label %44, label %37

37:                                               ; preds = %30
  %38 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %27, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %32, i32 noundef %35, ptr noundef %1) #10
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %42 = load i32, ptr %41, align 8, !tbaa !77
  %43 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %36, i32 noundef 6, i32 noundef 4, ptr noundef %40, i32 noundef %42, ptr noundef %1) #10
  br label %49

44:                                               ; preds = %30
  %45 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %27, i32 noundef 17, i32 noundef 2, ptr noundef null, i32 noundef %35, ptr noundef %1) #10
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %36, i32 noundef 6, i32 noundef 2, ptr noundef null, i32 noundef %47, ptr noundef %1) #10
  br label %49

49:                                               ; preds = %44, %37
  %50 = icmp ne i8 %2, 0
  %51 = icmp eq i32 %28, 0
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %27, i32 noundef 17, i32 noundef %28) #10
  %54 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %54, i32 noundef 6, i32 noundef %28) #10
  br label %55

55:                                               ; preds = %49, %53
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %56

56:                                               ; preds = %23, %16, %55
  %57 = phi i32 [ %10, %23 ], [ %10, %16 ], [ %28, %55 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #10
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #10
  br label %58

58:                                               ; preds = %26, %7, %56
  %59 = phi i32 [ %57, %56 ], [ -1, %7 ], [ -1, %26 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %12, i32 noundef 17, i32 noundef %1) #10
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 8, !tbaa !78
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds %struct.CustomDataLayer, ptr %16, i64 %19
  tail call fastcc void @delete_customdata_layer(ptr noundef nonnull %0, ptr noundef nonnull %20) #12
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #10
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #10
  br label %21

21:                                               ; preds = %11, %15, %18
  %22 = phi i8 [ 1, %18 ], [ 0, %15 ], [ 0, %11 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %11, i32 noundef 17) #10
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @ED_mesh_color_remove_index(ptr noundef nonnull %0, i32 noundef %12) #12, !range !83
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = tail call i32 @CustomData_get_named_layer(ptr noundef nonnull %12, i32 noundef 17, ptr noundef %1) #10
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @ED_mesh_color_remove_index(ptr noundef nonnull %0, i32 noundef %13) #12, !range !83
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %11 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uv_texture_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @layers_poll(ptr noundef %0) #0 !PGOFuncName !95 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !100
  %13 = icmp eq i16 %12, 1
  %14 = icmp ne ptr %6, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = icmp eq ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %10, %4
  %22 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_uv_texture_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !102 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = tail call i32 @ED_mesh_uv_texture_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1) #12, !range !103
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !104
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %15 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %14, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #10
  br label %16

16:                                               ; preds = %8, %13, %2
  %17 = phi i32 [ 2, %2 ], [ 4, %13 ], [ 4, %8 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_drop_named_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_named_image_invoke, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !106
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @drop_named_image_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !107 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.44) #10
  br label %65

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !100
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.45) #10
  br label %65

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !112
  %29 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %28, ptr noundef nonnull @.str.9) #10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  %32 = load ptr, ptr %27, align 8, !tbaa !112
  call void @RNA_string_get(ptr noundef %32, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #10
  %33 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  br label %37

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %35 = load ptr, ptr %27, align 8, !tbaa !112
  call void @RNA_string_get(ptr noundef %35, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #10
  %36 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %33, %31 ], [ %36, %34 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  br label %65

43:                                               ; preds = %37
  %44 = load ptr, ptr %18, align 8, !tbaa !110
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !96
  %47 = getelementptr inbounds %struct.Mesh, ptr %46, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !113
  call void @EDBM_mesh_make(ptr noundef %52, ptr noundef nonnull %44) #10
  %53 = load ptr, ptr %47, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %56

55:                                               ; preds = %43
  call void @ED_uvedit_assign_image(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %44, ptr noundef nonnull %38, ptr noundef null) #10
  br label %60

56:                                               ; preds = %50
  call void @ED_uvedit_assign_image(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %44, ptr noundef nonnull %38, ptr noundef null) #10
  call void @EDBM_mesh_load(ptr noundef nonnull %44) #10
  %57 = load ptr, ptr %47, align 8, !tbaa !34
  call void @EDBM_mesh_free(ptr noundef %57) #10
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  %59 = load ptr, ptr %47, align 8, !tbaa !34
  call void %58(ptr noundef %59) #10
  store ptr null, ptr %47, align 8, !tbaa !34
  call void @DAG_id_tag_update(ptr noundef nonnull %46, i16 noundef signext 0) #10
  br label %60

60:                                               ; preds = %55, %56
  %61 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 29
  %62 = load i16, ptr %61, align 2, !tbaa !132
  %63 = or i16 %62, 8
  store i16 %63, ptr %61, align 2, !tbaa !132
  %64 = load ptr, ptr %45, align 8, !tbaa !96
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %64) #10
  br label %65

65:                                               ; preds = %50, %60, %40, %23, %10
  %66 = phi i32 [ 2, %10 ], [ 2, %23 ], [ 4, %60 ], [ 2, %40 ], [ 2, %50 ]
  ret i32 %66
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uv_texture_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_uv_texture_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !134 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = tail call zeroext i8 @ED_mesh_uv_texture_remove_active(ptr noundef %5) #12, !range !83
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !104
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %15 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %14, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68091904, ptr noundef null) #10
  br label %16

16:                                               ; preds = %8, %13, %2
  %17 = phi i32 [ 2, %2 ], [ 4, %13 ], [ 4, %8 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vertex_color_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_vertex_color_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !135 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = tail call i32 @ED_mesh_color_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1) #12, !range !103
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vertex_color_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_vertex_color_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !136 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !96
  %6 = tail call zeroext i8 @ED_mesh_color_remove_active(ptr noundef %5) #12, !range !83
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_customdata_clear_mask(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_mask_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !137 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 34) #12, !range !138
  %4 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 35) #12, !range !138
  %5 = icmp eq i32 %3, 4
  %6 = icmp eq i32 %4, 4
  %7 = or i1 %5, %6
  %8 = select i1 %7, i32 4, i32 2
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_customdata_clear_mask_poll(ptr noundef %0) #0 !PGOFuncName !139 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !104
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %45

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
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 34) #10
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
  %42 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %41, i32 noundef 35) #10
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %28, %8, %1, %4, %15
  %46 = phi i32 [ 0, %15 ], [ 0, %4 ], [ 0, %1 ], [ 1, %28 ], [ 0, %8 ], [ %44, %40 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_customdata_clear_skin(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !86
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_skin_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !141 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 36) #12, !range !138
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_skin_poll(ptr noundef %0) #0 !PGOFuncName !142 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !140
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
  %25 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %24, i32 noundef 36) #10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %8
  br label %28

28:                                               ; preds = %1, %4, %27, %23
  %29 = phi i32 [ 1, %23 ], [ 0, %27 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef nonnull %0) #10
  br label %13

13:                                               ; preds = %12, %8, %4
  %14 = phi i1 [ false, %12 ], [ true, %8 ], [ true, %4 ]
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 8, !tbaa !77
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !143
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %13
  %28 = trunc i32 %2 to i8
  tail call void @BKE_mesh_calc_edges(ptr noundef nonnull %0, i8 noundef zeroext %28, i8 noundef zeroext 1) #10
  br label %29

29:                                               ; preds = %27, %23, %20
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  br i1 %14, label %32, label %34

32:                                               ; preds = %31
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %0) #10
  br label %34

33:                                               ; preds = %29
  tail call void @BKE_mesh_tessface_clear(ptr noundef nonnull %0) #10
  br label %34

34:                                               ; preds = %31, %32, %33
  tail call void @BKE_mesh_calc_normals(ptr noundef nonnull %0) #10
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #10
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 274399232, ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_convert_mfaces_to_mpolys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_edges(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_tessfaces_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.27) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.28) #10
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @mesh_add_tessfaces(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_add_tessfaces(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !144 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !77
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 4) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !77
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !146
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !148
  %22 = load i32, ptr %6, align 8, !tbaa !77
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MFace, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 6
  store i8 2, ptr %28, align 1, !tbaa !149
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MFace, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !151

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !77
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_edges_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.29) #10
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @mesh_add_edges(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_add_edges(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !152 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 4, !tbaa !143
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 4, !tbaa !143
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 3) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 4, !tbaa !143
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !146
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = load i32, ptr %6, align 4, !tbaa !143
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MEdge, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MEdge, ptr %26, i64 0, i32 4
  store i16 35, ptr %28, align 2, !tbaa !154
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MEdge, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !156

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 4, !tbaa !143
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_vertices_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.30) #10
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @mesh_add_verts(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_add_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !157 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !158
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !158
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 0) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !158
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !146
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = load i32, ptr %6, align 8, !tbaa !158
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MVert, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %32, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 2
  %29 = load i8, ptr %28, align 2, !tbaa !160
  %30 = or i8 %29, 1
  store i8 %30, ptr %28, align 2, !tbaa !160
  %31 = add nuw nsw i32 %27, 1
  %32 = getelementptr inbounds %struct.MVert, ptr %26, i64 1
  %33 = icmp eq i32 %31, %1
  br i1 %33, label %34, label %25, !llvm.loop !162

34:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !158
  br label %35

35:                                               ; preds = %2, %34
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_faces_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !77
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.32) #10
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @mesh_remove_faces(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_remove_faces(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 8, !tbaa !77
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_edges_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.33) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %10 = load i32, ptr %9, align 4, !tbaa !143
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.34) #10
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @mesh_remove_edges(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_remove_edges(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !164 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !143
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 4, !tbaa !143
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_vertices_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.35) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !158
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.36) #10
  br label %14

13:                                               ; preds = %8
  tail call fastcc void @mesh_remove_verts(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_remove_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !165 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !158
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 8, !tbaa !158
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_loops_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.37) #10
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @mesh_add_loops(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_add_loops(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !166 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %7 = load i32, ptr %6, align 4, !tbaa !75
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 4, !tbaa !75
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 26) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 4, !tbaa !75
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !146
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  store i32 %8, ptr %6, align 4, !tbaa !75
  br label %18

18:                                               ; preds = %2, %16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_polys_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.38) #10
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @mesh_add_polys(ptr noundef nonnull %0, i32 noundef %2) #12
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_add_polys(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !167 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !145
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !49
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 25) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !49
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !146
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  %22 = load i32, ptr %6, align 8, !tbaa !49
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MPoly, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MPoly, ptr %26, i64 0, i32 3
  store i8 2, ptr %28, align 2, !tbaa !168
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MPoly, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !169

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !49
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_calc_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %3) #10
  br label %7

6:                                                ; preds = %1
  tail call void @BKE_mesh_tessface_calc(ptr noundef nonnull %0) #10
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  br i1 %12, label %16, label %15

15:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %1, ptr noundef nonnull %11, i32 noundef %2) #10
  br label %17

16:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %14, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %1, ptr noundef nonnull %11) #10
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_report_mirror(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @ED_mesh_report_mirror_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext 1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !170 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !171
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !64
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !64
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !64
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !64
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !64
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !64
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !64
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !172
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !64
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !147
  tail call void %22(ptr noundef nonnull %0) #10
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

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc void @mesh_uv_reset_array(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !175 {
  switch i32 %1, label %17 [
    i32 3, label %3
    i32 4, label %9
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr %0, align 8, !tbaa !61
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !176
  %5 = getelementptr inbounds ptr, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %6, align 4, !tbaa !176
  %7 = getelementptr inbounds ptr, ptr %0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  store float 1.000000e+00, ptr %8, align 4, !tbaa !176
  br label %38

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !61
  store <2 x float> zeroinitializer, ptr %10, align 4, !tbaa !176
  %11 = getelementptr inbounds ptr, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %12, align 4, !tbaa !176
  %13 = getelementptr inbounds ptr, ptr %0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 4, !tbaa !176
  %15 = getelementptr inbounds ptr, ptr %0, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  store float 0.000000e+00, ptr %16, align 4, !tbaa !176
  br label %38

17:                                               ; preds = %2
  %18 = icmp sgt i32 %1, 2
  br i1 %18, label %19, label %41

19:                                               ; preds = %17
  %20 = sitofp i32 %1 to float
  %21 = fdiv float 1.000000e+00, %20
  %22 = fmul float %21, 0x401921FB60000000
  %23 = zext nneg i32 %1 to i64
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %36, %24 ]
  %26 = phi float [ 0.000000e+00, %19 ], [ %35, %24 ]
  %27 = tail call float @sinf(float noundef %26) #10
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 5.000000e-01, float 5.000000e-01)
  %29 = getelementptr inbounds ptr, ptr %0, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  store float %28, ptr %30, align 4, !tbaa !176
  %31 = tail call float @cosf(float noundef %26) #10
  %32 = tail call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float 5.000000e-01)
  %33 = load ptr, ptr %29, align 8, !tbaa !61
  %34 = getelementptr inbounds float, ptr %33, i64 1
  store float %32, ptr %34, align 4, !tbaa !176
  %35 = fadd float %22, %26
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %41, label %24, !llvm.loop !177

38:                                               ; preds = %3, %9
  %39 = phi ptr [ %16, %9 ], [ %8, %3 ]
  %40 = getelementptr inbounds float, ptr %39, i64 1
  store float 1.000000e+00, ptr %40, align 4, !tbaa !176
  br label %41

41:                                               ; preds = %24, %38, %17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @mesh_customdata_get_type(ptr noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !178 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !44
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  switch i8 %1, label %50 [
    i8 1, label %11
    i8 2, label %20
    i8 4, label %30
    i8 8, label %40
  ]

11:                                               ; preds = %9
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 24
  %15 = load i32, ptr %10, align 8, !tbaa !179
  br label %50

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !158
  br label %50

20:                                               ; preds = %9
  %21 = icmp eq ptr %10, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 25
  %24 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !180
  br label %50

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %29 = load i32, ptr %28, align 4, !tbaa !143
  br label %50

30:                                               ; preds = %9
  %31 = icmp eq ptr %10, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %34 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !181
  br label %50

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !75
  br label %50

40:                                               ; preds = %9
  %41 = icmp eq ptr %10, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %44 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !182
  br label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %49 = load i32, ptr %48, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %9, %42, %46, %32, %36, %22, %26, %13, %16
  %51 = phi ptr [ %43, %42 ], [ %47, %46 ], [ %33, %32 ], [ %37, %36 ], [ %23, %22 ], [ %27, %26 ], [ %14, %13 ], [ %17, %16 ], [ null, %9 ]
  %52 = phi i32 [ %45, %42 ], [ %49, %46 ], [ %35, %32 ], [ %39, %36 ], [ %25, %22 ], [ %29, %26 ], [ %15, %13 ], [ %19, %16 ], [ 0, %9 ]
  store i32 %52, ptr %2, align 4, !tbaa !82
  ret ptr %51
}

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_uvedit_assign_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !183 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %8 = call fastcc ptr @mesh_customdata_get_type(ptr noundef %7, i8 noundef zeroext %1, ptr noundef nonnull %4) #12
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %8, i32 noundef %2) #10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void @BM_data_layer_free(ptr noundef %16, ptr noundef %8, i32 noundef %2) #10
  br label %19

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !tbaa !82
  tail call void @CustomData_free_layers(ptr noundef %8, i32 noundef %2, i32 noundef %18) #10
  br label %19

19:                                               ; preds = %17, %15
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 0) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %7) #10
  br label %20

20:                                               ; preds = %3, %19
  %21 = phi i32 [ 4, %19 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %21
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @CustomData_free_elem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!35, !41, i64 1296}
!50 = !{!35, !37, i64 168}
!51 = distinct !{!51, !48}
!52 = !{!"mesh_data.c:BM_iter_new"}
!53 = !{!"mesh_data.c:_bm_elem_flag_test"}
!54 = !{!55, !38, i64 13}
!55 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!56 = !{!"mesh_data.c:mesh_uv_reset_bmface"}
!57 = !{!58, !41, i64 32}
!58 = !{!"BMFace", !55, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!59 = !{!60, !37, i64 0}
!60 = !{!"BMLoop", !55, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!61 = !{!37, !37, i64 0}
!62 = distinct !{!62, !48}
!63 = !{!"mesh_data.c:BM_iter_step"}
!64 = !{!65, !37, i64 48}
!65 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!66 = !{!"mesh_data.c:mesh_uv_reset_mface"}
!67 = !{!68, !41, i64 4}
!68 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!69 = !{!68, !41, i64 0}
!70 = distinct !{!70, !48, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!35, !37, i64 176}
!74 = !{!35, !37, i64 192}
!75 = !{!35, !41, i64 1300}
!76 = !{!35, !37, i64 216}
!77 = !{!35, !41, i64 1288}
!78 = !{!42, !37, i64 0}
!79 = !{!"mesh_data.c:delete_customdata_layer"}
!80 = !{!81, !41, i64 0}
!81 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96}
!82 = !{!41, !41, i64 0}
!83 = !{i8 0, i8 2}
!84 = !{!35, !37, i64 200}
!85 = !{!35, !37, i64 256}
!86 = !{!87, !37, i64 0}
!87 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !88, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !89, i64 152, !40, i64 184}
!88 = !{!"ListBase", !37, i64 0, !37, i64 8}
!89 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!90 = !{!87, !37, i64 24}
!91 = !{!87, !37, i64 8}
!92 = !{!87, !37, i64 72}
!93 = !{!87, !37, i64 32}
!94 = !{!87, !40, i64 184}
!95 = !{!"mesh_data.c:layers_poll"}
!96 = !{!97, !37, i64 296}
!97 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !98, i64 312, !37, i64 360, !88, i64 368, !88, i64 384, !88, i64 400, !88, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !43, i64 616, !43, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !43, i64 1048, !43, i64 1052, !88, i64 1056, !88, i64 1072, !88, i64 1088, !88, i64 1104, !43, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !88, i64 1176, !88, i64 1192, !88, i64 1208, !88, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !43, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !46, i64 1304, !46, i64 1312, !41, i64 1320, !41, i64 1324, !88, i64 1328, !88, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !88, i64 1400, !37, i64 1416}
!98 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!99 = !{!97, !37, i64 24}
!100 = !{!97, !40, i64 136}
!101 = !{!36, !37, i64 24}
!102 = !{!"mesh_data.c:mesh_uv_texture_add_exec"}
!103 = !{i32 -2147483648, i32 8}
!104 = !{!97, !41, i64 432}
!105 = !{!87, !37, i64 48}
!106 = !{!87, !37, i64 88}
!107 = !{!"mesh_data.c:drop_named_image_invoke"}
!108 = !{!109, !37, i64 120}
!109 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !88, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!110 = !{!111, !37, i64 32}
!111 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!112 = !{!109, !37, i64 112}
!113 = !{!114, !37, i64 264}
!114 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !88, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !115, i64 280, !124, i64 4264, !88, i64 4296, !88, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !88, i64 4384, !125, i64 4400, !126, i64 4416, !129, i64 4600, !37, i64 4608, !130, i64 4616, !37, i64 4640, !46, i64 4648, !46, i64 4656, !117, i64 4664, !118, i64 4824, !131, i64 4888, !37, i64 4952}
!115 = !{!"RenderData", !116, i64 0, !37, i64 248, !37, i64 256, !119, i64 264, !120, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !43, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !121, i64 544, !121, i64 560, !122, i64 576, !88, i64 592, !40, i64 608, !40, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !41, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !43, i64 660, !43, i64 664, !40, i64 668, !40, i64 670, !43, i64 672, !43, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !43, i64 2528, !43, i64 2532, !40, i64 2536, !40, i64 2538, !43, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !43, i64 2560, !43, i64 2564, !37, i64 2568, !41, i64 2576, !43, i64 2580, !38, i64 2584, !123, i64 2616, !41, i64 3976, !41, i64 3980}
!116 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !43, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !117, i64 24, !118, i64 184}
!117 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !43, i64 136, !43, i64 140, !37, i64 144, !37, i64 152}
!118 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!119 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!120 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !43, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!121 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!122 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!123 = !{!"BakeData", !116, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !43, i64 1280, !43, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!124 = !{!"AudioData", !41, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !43, i64 24, !43, i64 28}
!125 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!126 = !{!"GameData", !125, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !127, i64 40, !40, i64 64, !40, i64 66, !43, i64 68, !128, i64 72, !43, i64 128, !43, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!127 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !43, i64 8, !43, i64 12, !37, i64 16}
!128 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !41, i64 40, !43, i64 44, !43, i64 48, !40, i64 52, !40, i64 54}
!129 = !{!"UnitSettings", !43, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!130 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!131 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!132 = !{!133, !40, i64 242}
!133 = !{!"View3D", !37, i64 0, !37, i64 8, !88, i64 16, !41, i64 32, !43, i64 36, !38, i64 40, !38, i64 56, !43, i64 72, !43, i64 76, !38, i64 80, !38, i64 81, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !37, i64 104, !121, i64 112, !88, i64 128, !37, i64 144, !37, i64 152, !38, i64 160, !41, i64 224, !41, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !38, i64 260, !38, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !38, i64 290, !38, i64 291, !38, i64 292, !38, i64 293, !38, i64 294, !88, i64 296, !88, i64 312, !88, i64 328, !38, i64 344, !38, i64 345, !38, i64 346, !38, i64 347, !37, i64 352, !37, i64 360, !37, i64 368}
!134 = !{!"mesh_data.c:mesh_uv_texture_remove_exec"}
!135 = !{!"mesh_data.c:mesh_vertex_color_add_exec"}
!136 = !{!"mesh_data.c:mesh_vertex_color_remove_exec"}
!137 = !{!"mesh_data.c:mesh_customdata_clear_mask_exec"}
!138 = !{i32 2, i32 5}
!139 = !{!"mesh_data.c:mesh_customdata_clear_mask_poll"}
!140 = !{!35, !37, i64 24}
!141 = !{!"mesh_data.c:mesh_customdata_clear_skin_exec"}
!142 = !{!"mesh_data.c:mesh_customdata_clear_skin_poll"}
!143 = !{!35, !41, i64 1284}
!144 = !{!"mesh_data.c:mesh_add_tessfaces"}
!145 = !{!46, !46, i64 0}
!146 = !{i64 0, i64 8, !61, i64 8, i64 164, !147, i64 172, i64 4, !82, i64 176, i64 4, !82, i64 180, i64 4, !82, i64 184, i64 8, !61, i64 192, i64 8, !61}
!147 = !{!38, !38, i64 0}
!148 = !{!35, !37, i64 208}
!149 = !{!150, !38, i64 19}
!150 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!151 = distinct !{!151, !48}
!152 = !{!"mesh_data.c:mesh_add_edges"}
!153 = !{!35, !37, i64 240}
!154 = !{!155, !40, i64 10}
!155 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!156 = distinct !{!156, !48}
!157 = !{!"mesh_data.c:mesh_add_verts"}
!158 = !{!35, !41, i64 1280}
!159 = !{!35, !37, i64 232}
!160 = !{!161, !38, i64 18}
!161 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!162 = distinct !{!162, !48}
!163 = !{!"mesh_data.c:mesh_remove_faces"}
!164 = !{!"mesh_data.c:mesh_remove_edges"}
!165 = !{!"mesh_data.c:mesh_remove_verts"}
!166 = !{!"mesh_data.c:mesh_add_loops"}
!167 = !{!"mesh_data.c:mesh_add_polys"}
!168 = !{!68, !38, i64 10}
!169 = distinct !{!169, !48}
!170 = !{!"mesh_data.c:BM_iter_init"}
!171 = !{!65, !38, i64 60}
!172 = !{!65, !37, i64 40}
!173 = !{!174, !37, i64 56}
!174 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !42, i64 144, !42, i64 344, !42, i64 544, !42, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !88, i64 960, !37, i64 976, !88, i64 984, !37, i64 1000}
!175 = !{!"mesh_data.c:mesh_uv_reset_array"}
!176 = !{!43, !43, i64 0}
!177 = distinct !{!177, !48}
!178 = !{!"mesh_data.c:mesh_customdata_get_type"}
!179 = !{!174, !41, i64 0}
!180 = !{!174, !41, i64 4}
!181 = !{!174, !41, i64 8}
!182 = !{!174, !41, i64 12}
!183 = !{!"mesh_data.c:mesh_customdata_clear_exec__internal"}
