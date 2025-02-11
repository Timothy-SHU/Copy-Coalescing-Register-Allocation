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
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %9, i32 noundef 16, i32 noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !15
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
  br i1 %21, label %22, label %14, !llvm.loop !18

22:                                               ; preds = %19, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %39

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %25 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %24, i32 noundef 16, i32 noundef %1) #10
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !20
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %35, %31 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.MPoly, ptr %33, i64 %32
  tail call fastcc void @mesh_uv_reset_mface(ptr noundef %34, ptr noundef %25) #12
  %35 = add nuw nsw i64 %32, 1
  %36 = load i32, ptr %26, align 8, !tbaa !20
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !22

39:                                               ; preds = %31, %23, %22
  call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #12
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !23
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_uv_reset_bmface(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !25
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
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds i8, ptr %16, i64 %12
  %18 = getelementptr inbounds ptr, ptr %8, i64 %14
  store ptr %17, ptr %18, align 8, !tbaa !29
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #12
  %20 = add nuw i64 %14, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %13, !llvm.loop !30

22:                                               ; preds = %13, %2
  %23 = load i32, ptr %4, align 8, !tbaa !25
  call fastcc void @mesh_uv_reset_array(ptr noundef nonnull %8, i32 noundef %23) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc void @mesh_uv_reset_mface(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !33
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 4, !tbaa !35
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
  store ptr %26, ptr %25, align 16, !tbaa !29
  br label %27

27:                                               ; preds = %24, %19
  %28 = extractelement <2 x i1> %22, i64 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = or disjoint i64 %20, 1
  %31 = getelementptr inbounds ptr, ptr %7, i64 %30
  %32 = getelementptr %struct.MLoopUV, ptr %12, i64 %30
  store ptr %32, ptr %31, align 8, !tbaa !29
  br label %33

33:                                               ; preds = %29, %27
  %34 = add i64 %20, 2
  %35 = add <2 x i64> %21, <i64 2, i64 2>
  %36 = icmp eq i64 %34, %15
  br i1 %36, label %37, label %19, !llvm.loop !36

37:                                               ; preds = %33, %2
  call fastcc void @mesh_uv_reset_array(ptr noundef nonnull %7, i32 noundef %4) #12
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_uv_loop_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
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
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 27
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 15) #10
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %96, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 15, ptr noundef %1) #10
  %15 = icmp eq i32 %10, 0
  %16 = load ptr, ptr %5, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 27
  br i1 %15, label %40, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %17, i32 noundef 15) #10
  %20 = load ptr, ptr %5, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 15, i32 noundef %19, i32 noundef %10) #10
  %22 = icmp eq i8 %2, 0
  %23 = load ptr, ptr %5, align 8, !tbaa !15
  br i1 %22, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %23, ptr noundef nonnull %25, i32 noundef 16, ptr noundef %1) #10
  %26 = load ptr, ptr %5, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 26
  %28 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %27, i32 noundef 16) #10
  %29 = load ptr, ptr %5, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %29, ptr noundef nonnull %30, i32 noundef 16, i32 noundef %28, i32 noundef %10) #10
  br label %94

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 27
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %32, i32 noundef 15, i32 noundef %10) #10
  %33 = load ptr, ptr %5, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %33, ptr noundef nonnull %34, i32 noundef 16, ptr noundef %1) #10
  %35 = load ptr, ptr %5, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 26
  %37 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %36, i32 noundef 16) #10
  %38 = load ptr, ptr %5, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %38, ptr noundef nonnull %39, i32 noundef 16, i32 noundef %37, i32 noundef %10) #10
  br label %43

40:                                               ; preds = %12
  tail call void @CustomData_set_layer_active(ptr noundef nonnull %17, i32 noundef 15, i32 noundef 0) #10
  %41 = load ptr, ptr %5, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %41, ptr noundef nonnull %42, i32 noundef 16, ptr noundef %1) #10
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi i8 [ 1, %31 ], [ 0, %40 ]
  %45 = load ptr, ptr %5, align 8, !tbaa !15
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
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %56 = load i32, ptr %55, align 8, !tbaa !20
  %57 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  br i1 %54, label %71, label %58

58:                                               ; preds = %51
  %59 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %48, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %53, i32 noundef %56, ptr noundef %1) #10
  %60 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %63 = load i32, ptr %62, align 4, !tbaa !41
  %64 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %57, i32 noundef 16, i32 noundef 4, ptr noundef %61, i32 noundef %63, ptr noundef %1) #10
  %65 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %66 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !42
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %69 = load i32, ptr %68, align 8, !tbaa !43
  %70 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %65, i32 noundef 5, i32 noundef 4, ptr noundef %67, i32 noundef %69, ptr noundef %1) #10
  br label %80

71:                                               ; preds = %51
  %72 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %48, i32 noundef 15, i32 noundef 2, ptr noundef null, i32 noundef %56, ptr noundef %1) #10
  %73 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %74 = load i32, ptr %73, align 4, !tbaa !41
  %75 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %57, i32 noundef 16, i32 noundef 2, ptr noundef null, i32 noundef %74, ptr noundef %1) #10
  %76 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %77 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %78 = load i32, ptr %77, align 8, !tbaa !43
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
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
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
  %19 = load ptr, ptr %14, align 8, !tbaa !44
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.CustomDataLayer, ptr %19, i64 %20
  br label %22

22:                                               ; preds = %13, %18
  %23 = phi ptr [ %21, %18 ], [ null, %13 ]
  %24 = tail call i32 @CustomData_get_layer_index_n(ptr noundef nonnull %15, i32 noundef 16, i32 noundef %1) #10
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8, !tbaa !44
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
define internal fastcc void @delete_customdata_layer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 16
  %7 = select i1 %6, i8 4, i8 8
  %8 = call fastcc ptr @mesh_customdata_get_type(ptr noundef %0, i8 noundef zeroext %7, ptr noundef nonnull %3) #12
  %9 = tail call i32 @CustomData_get_layer_index(ptr noundef %8, i32 noundef %4) #10
  %10 = load ptr, ptr %8, align 8, !tbaa !44
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %10, i64 %11
  %13 = ptrtoint ptr %1 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 104
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %19, align 8, !tbaa !15
  tail call void @BM_data_layer_free_n(ptr noundef %22, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %17) #10
  br label %27

23:                                               ; preds = %2
  %24 = load i32, ptr %3, align 4, !tbaa !47
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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !15
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
  %15 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef nonnull %0, i32 noundef %12) #12, !range !48
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_uv_texture_remove_named(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
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
  %16 = tail call zeroext i8 @ED_mesh_uv_texture_remove_index(ptr noundef nonnull %0, i32 noundef %13) #12, !range !48
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
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %9, i32 noundef 17) #10
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %58, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 26
  tail call void @BM_data_layer_add_named(ptr noundef %13, ptr noundef nonnull %14, i32 noundef 17, ptr noundef %1) #10
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_active_layer(ptr noundef nonnull %18, i32 noundef 17) #10
  %20 = load ptr, ptr %5, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  tail call void @BM_data_layer_copy(ptr noundef %20, ptr noundef nonnull %21, i32 noundef 17, i32 noundef %10, i32 noundef %19) #10
  %22 = icmp eq i8 %2, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %12, %16
  %24 = load ptr, ptr %5, align 8, !tbaa !15
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
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %35 = load i32, ptr %34, align 4, !tbaa !41
  %36 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  br i1 %33, label %44, label %37

37:                                               ; preds = %30
  %38 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %27, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %32, i32 noundef %35, ptr noundef %1) #10
  %39 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %42 = load i32, ptr %41, align 8, !tbaa !43
  %43 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %36, i32 noundef 6, i32 noundef 4, ptr noundef %40, i32 noundef %42, ptr noundef %1) #10
  br label %49

44:                                               ; preds = %30
  %45 = tail call ptr @CustomData_add_layer_named(ptr noundef nonnull %27, i32 noundef 17, i32 noundef 2, ptr noundef null, i32 noundef %35, ptr noundef %1) #10
  %46 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %47 = load i32, ptr %46, align 8, !tbaa !43
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
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
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
  %16 = load ptr, ptr %12, align 8, !tbaa !44
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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !15
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
  %15 = tail call zeroext i8 @ED_mesh_color_remove_index(ptr noundef nonnull %0, i32 noundef %12) #12, !range !48
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i8 [ %15, %14 ], [ 0, %10 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_color_remove_named(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
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
  %16 = tail call zeroext i8 @ED_mesh_color_remove_index(ptr noundef nonnull %0, i32 noundef %13) #12, !range !48
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %11 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uv_texture_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_uv_texture_add_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @layers_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i16 %12, 1
  %14 = icmp ne ptr %6, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = icmp eq ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %10, %4
  %22 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_uv_texture_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call i32 @ED_mesh_uv_texture_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1) #12, !range !66
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !67
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
  store ptr @.str.2, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @drop_named_image_invoke, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !69
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @drop_named_image_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.44) #10
  br label %65

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %15 = tail call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !64
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.45) #10
  br label %65

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %28, ptr noundef nonnull @.str.9) #10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  %32 = load ptr, ptr %27, align 8, !tbaa !74
  call void @RNA_string_get(ptr noundef %32, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #10
  %33 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  br label %37

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %35 = load ptr, ptr %27, align 8, !tbaa !74
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
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  br label %65

43:                                               ; preds = %37
  %44 = load ptr, ptr %18, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.Mesh, ptr %46, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  call void @EDBM_mesh_make(ptr noundef %52, ptr noundef nonnull %44) #10
  %53 = load ptr, ptr %47, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %65, label %56

55:                                               ; preds = %43
  call void @ED_uvedit_assign_image(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %44, ptr noundef nonnull %38, ptr noundef null) #10
  br label %60

56:                                               ; preds = %50
  call void @ED_uvedit_assign_image(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %44, ptr noundef nonnull %38, ptr noundef null) #10
  call void @EDBM_mesh_load(ptr noundef nonnull %44) #10
  %57 = load ptr, ptr %47, align 8, !tbaa !5
  call void @EDBM_mesh_free(ptr noundef %57) #10
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !29
  %59 = load ptr, ptr %47, align 8, !tbaa !5
  call void %58(ptr noundef %59) #10
  store ptr null, ptr %47, align 8, !tbaa !5
  call void @DAG_id_tag_update(ptr noundef nonnull %46, i16 noundef signext 0) #10
  br label %60

60:                                               ; preds = %55, %56
  %61 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 29
  %62 = load i16, ptr %61, align 2, !tbaa !94
  %63 = or i16 %62, 8
  store i16 %63, ptr %61, align 2, !tbaa !94
  %64 = load ptr, ptr %45, align 8, !tbaa !60
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
  store ptr @.str.13, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_uv_texture_remove_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_uv_texture_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call zeroext i8 @ED_mesh_uv_texture_remove_active(ptr noundef %5) #12, !range !48
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !67
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
  store ptr @.str.15, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_vertex_color_add_exec, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_vertex_color_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call i32 @ED_mesh_color_add(ptr noundef %5, ptr noundef null, i8 noundef zeroext 1) #12, !range !66
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vertex_color_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_vertex_color_remove_exec, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @layers_poll, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_vertex_color_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = tail call zeroext i8 @ED_mesh_color_remove_active(ptr noundef %5) #12, !range !48
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 2, i32 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_customdata_clear_mask(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_customdata_clear_mask_exec, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mesh_customdata_clear_mask_poll, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_mask_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 34) #12, !range !96
  %4 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 35) #12, !range !96
  %5 = icmp eq i32 %3, 4
  %6 = icmp eq i32 %4, 4
  %7 = or i1 %5, %6
  %8 = select i1 %7, i32 4, i32 2
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mesh_customdata_clear_mask_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !97
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !15
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
  %33 = load ptr, ptr %20, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !15
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
  store ptr @.str.24, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_customdata_clear_skin_exec, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @mesh_customdata_clear_skin_poll, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_skin_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call fastcc i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 36) #12, !range !96
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_customdata_clear_skin_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !64
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !15
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
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !20
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
  %18 = load i32, ptr %17, align 8, !tbaa !20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 8, !tbaa !43
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %25 = load i32, ptr %24, align 4, !tbaa !98
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
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.27) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !21
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
define internal fastcc void @mesh_add_tessfaces(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !99
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !43
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 4) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !43
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !100
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = load i32, ptr %6, align 8, !tbaa !43
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MFace, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 6
  store i8 2, ptr %28, align 1, !tbaa !103
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MFace, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !105

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_edges_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
define internal fastcc void @mesh_add_edges(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !99
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 4, !tbaa !98
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 3) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 4, !tbaa !98
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !100
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = load i32, ptr %6, align 4, !tbaa !98
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MEdge, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MEdge, ptr %26, i64 0, i32 4
  store i16 35, ptr %28, align 2, !tbaa !107
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MEdge, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !109

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 4, !tbaa !98
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_vertices_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
define internal fastcc void @mesh_add_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !99
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !110
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 0) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !110
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !100
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = load i32, ptr %6, align 8, !tbaa !110
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MVert, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %32, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MVert, ptr %26, i64 0, i32 2
  %29 = load i8, ptr %28, align 2, !tbaa !112
  %30 = or i8 %29, 1
  store i8 %30, ptr %28, align 2, !tbaa !112
  %31 = add nuw nsw i32 %27, 1
  %32 = getelementptr inbounds %struct.MVert, ptr %26, i64 1
  %33 = icmp eq i32 %31, %1
  br i1 %33, label %34, label %25, !llvm.loop !114

34:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !110
  br label %35

35:                                               ; preds = %2, %34
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_faces_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %10 = load i32, ptr %9, align 8, !tbaa !43
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
define internal fastcc void @mesh_remove_faces(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 8, !tbaa !43
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_edges_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.33) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %10 = load i32, ptr %9, align 4, !tbaa !98
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
define internal fastcc void @mesh_remove_edges(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !98
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 4, !tbaa !98
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_vertices_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.35) #10
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !110
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
define internal fastcc void @mesh_remove_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = sub nsw i32 %6, %1
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  tail call void @CustomData_free_elem(ptr noundef nonnull %8, i32 noundef %7, i32 noundef %1) #10
  store i32 %7, ptr %5, align 8, !tbaa !110
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_loops_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
define internal fastcc void @mesh_add_loops(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !99
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 4, !tbaa !41
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 26) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 4, !tbaa !41
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !100
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  store i32 %8, ptr %6, align 4, !tbaa !41
  br label %18

18:                                               ; preds = %2, %16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_polys_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
define internal fastcc void @mesh_add_polys(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.CustomData, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !20
  %8 = add nsw i32 %7, %1
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %10 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !99
  call void @CustomData_copy(ptr noundef nonnull %9, ptr noundef nonnull %3, i64 noundef %10, i32 noundef 2, i32 noundef %8) #10
  %11 = load i32, ptr %6, align 8, !tbaa !20
  call void @CustomData_copy_data(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %11) #10
  %12 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %3, i32 noundef 25) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call ptr @CustomData_add_layer(ptr noundef nonnull %3, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, ptr %6, align 8, !tbaa !20
  call void @CustomData_free(ptr noundef nonnull %9, i32 noundef %17) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef nonnull align 8 dereferenceable(200) %3, i64 200, i1 false), !tbaa.struct !100
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = load i32, ptr %6, align 8, !tbaa !20
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.MPoly, ptr %21, i64 %23
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %30, %25 ], [ %24, %19 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.MPoly, ptr %26, i64 0, i32 3
  store i8 2, ptr %28, align 2, !tbaa !115
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds %struct.MPoly, ptr %26, i64 1
  %31 = icmp eq i32 %29, %1
  br i1 %31, label %32, label %25, !llvm.loop !116

32:                                               ; preds = %25, %16
  store i32 %8, ptr %6, align 8, !tbaa !20
  br label %33

33:                                               ; preds = %2, %32
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mesh_calc_tessface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !5
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
  %14 = load ptr, ptr %13, align 8, !tbaa !70
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
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !117
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  br label %20

11:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !31
  br label %20

12:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !31
  br label %20

13:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !31
  br label %20

14:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !31
  br label %20

15:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !31
  br label %20

16:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !31
  br label %20

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !31
  br label %20

18:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !118
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !31
  br label %20

19:                                               ; preds = %4
  unreachable

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %8
  %21 = phi ptr [ %3, %18 ], [ %3, %17 ], [ %3, %16 ], [ %3, %15 ], [ %3, %14 ], [ %3, %13 ], [ %3, %12 ], [ %3, %11 ], [ %10, %8 ]
  %22 = phi ptr [ @bmiter__loop_of_face_begin, %18 ], [ @bmiter__edge_of_face_begin, %17 ], [ @bmiter__vert_of_face_begin, %16 ], [ @bmiter__face_of_edge_begin, %15 ], [ @bmiter__vert_of_edge_begin, %14 ], [ @bmiter__loop_of_vert_begin, %13 ], [ @bmiter__face_of_vert_begin, %12 ], [ @bmiter__edge_of_vert_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %21, ptr %0, align 8, !tbaa !101
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
define internal fastcc void @mesh_uv_reset_array(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  switch i32 %1, label %17 [
    i32 3, label %3
    i32 4, label %9
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr %0, align 8, !tbaa !29
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !121
  %5 = getelementptr inbounds ptr, ptr %0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %6, align 4, !tbaa !121
  %7 = getelementptr inbounds ptr, ptr %0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  store float 1.000000e+00, ptr %8, align 4, !tbaa !121
  br label %38

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !29
  store <2 x float> zeroinitializer, ptr %10, align 4, !tbaa !121
  %11 = getelementptr inbounds ptr, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %12, align 4, !tbaa !121
  %13 = getelementptr inbounds ptr, ptr %0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %14, align 4, !tbaa !121
  %15 = getelementptr inbounds ptr, ptr %0, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  store float 0.000000e+00, ptr %16, align 4, !tbaa !121
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
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  store float %28, ptr %30, align 4, !tbaa !121
  %31 = tail call float @cosf(float noundef %26) #10
  %32 = tail call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float 5.000000e-01)
  %33 = load ptr, ptr %29, align 8, !tbaa !29
  %34 = getelementptr inbounds float, ptr %33, i64 1
  store float %32, ptr %34, align 4, !tbaa !121
  %35 = fadd float %22, %26
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %41, label %24, !llvm.loop !122

38:                                               ; preds = %3, %9
  %39 = phi ptr [ %16, %9 ], [ %8, %3 ]
  %40 = getelementptr inbounds float, ptr %39, i64 1
  store float 1.000000e+00, ptr %40, align 4, !tbaa !121
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
define internal fastcc ptr @mesh_customdata_get_type(ptr noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !15
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
  %15 = load i32, ptr %10, align 8, !tbaa !123
  br label %50

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !110
  br label %50

20:                                               ; preds = %9
  %21 = icmp eq ptr %10, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 25
  %24 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !124
  br label %50

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %29 = load i32, ptr %28, align 4, !tbaa !98
  br label %50

30:                                               ; preds = %9
  %31 = icmp eq ptr %10, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %34 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !125
  br label %50

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %38 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !41
  br label %50

40:                                               ; preds = %9
  %41 = icmp eq ptr %10, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 27
  %44 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !126
  br label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 24
  %48 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %49 = load i32, ptr %48, align 8, !tbaa !20
  br label %50

50:                                               ; preds = %9, %42, %46, %32, %36, %22, %26, %13, %16
  %51 = phi ptr [ %43, %42 ], [ %47, %46 ], [ %33, %32 ], [ %37, %36 ], [ %23, %22 ], [ %27, %26 ], [ %14, %13 ], [ %17, %16 ], [ null, %9 ]
  %52 = phi i32 [ %45, %42 ], [ %49, %46 ], [ %35, %32 ], [ %39, %36 ], [ %25, %22 ], [ %29, %26 ], [ %15, %13 ], [ %19, %16 ], [ 0, %9 ]
  store i32 %52, ptr %2, align 4, !tbaa !47
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
define internal fastcc noundef i32 @mesh_customdata_clear_exec__internal(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %8 = call fastcc ptr @mesh_customdata_get_type(ptr noundef %7, i8 noundef zeroext %1, ptr noundef nonnull %4) #12
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %8, i32 noundef %2) #10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !15
  tail call void @BM_data_layer_free(ptr noundef %16, ptr noundef %8, i32 noundef %2) #10
  br label %19

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !tbaa !47
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 272}
!6 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !13, i64 280, !13, i64 480, !13, i64 680, !13, i64 880, !13, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !14, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!14 = !{!"float", !9, i64 0}
!15 = !{!16, !8, i64 0}
!16 = !{!"BMEditMesh", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 48, !17, i64 56, !8, i64 64, !12, i64 72, !8, i64 80, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !12, i64 104}
!17 = !{!"long", !9, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !12, i64 1296}
!21 = !{!6, !8, i64 168}
!22 = distinct !{!22, !19}
!23 = !{!24, !9, i64 13}
!24 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!25 = !{!26, !12, i64 32}
!26 = !{!"BMFace", !24, i64 0, !8, i64 16, !8, i64 24, !12, i64 32, !9, i64 36, !11, i64 48}
!27 = !{!28, !8, i64 0}
!28 = !{!"BMLoop", !24, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64}
!29 = !{!8, !8, i64 0}
!30 = distinct !{!30, !19}
!31 = !{!32, !8, i64 48}
!32 = !{!"BMIter", !9, i64 0, !8, i64 40, !8, i64 48, !12, i64 56, !9, i64 60}
!33 = !{!34, !12, i64 4}
!34 = !{!"MPoly", !12, i64 0, !12, i64 4, !11, i64 8, !9, i64 10, !9, i64 11}
!35 = !{!34, !12, i64 0}
!36 = distinct !{!36, !19, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!6, !8, i64 176}
!40 = !{!6, !8, i64 192}
!41 = !{!6, !12, i64 1300}
!42 = !{!6, !8, i64 216}
!43 = !{!6, !12, i64 1288}
!44 = !{!13, !8, i64 0}
!45 = !{!46, !12, i64 0}
!46 = !{!"CustomDataLayer", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !9, i64 32, !8, i64 96}
!47 = !{!12, !12, i64 0}
!48 = !{i8 0, i8 2}
!49 = !{!6, !8, i64 200}
!50 = !{!6, !8, i64 256}
!51 = !{!52, !8, i64 0}
!52 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !53, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !54, i64 152, !11, i64 184}
!53 = !{!"ListBase", !8, i64 0, !8, i64 8}
!54 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!55 = !{!52, !8, i64 24}
!56 = !{!52, !8, i64 8}
!57 = !{!52, !8, i64 72}
!58 = !{!52, !8, i64 32}
!59 = !{!52, !11, i64 184}
!60 = !{!61, !8, i64 296}
!61 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !62, i64 312, !8, i64 360, !53, i64 368, !53, i64 384, !53, i64 400, !53, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !14, i64 616, !14, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !14, i64 988, !14, i64 992, !14, i64 996, !14, i64 1000, !14, i64 1004, !14, i64 1008, !14, i64 1012, !14, i64 1016, !14, i64 1020, !14, i64 1024, !14, i64 1028, !14, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !14, i64 1048, !14, i64 1052, !53, i64 1056, !53, i64 1072, !53, i64 1088, !53, i64 1104, !14, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !53, i64 1176, !53, i64 1192, !53, i64 1208, !53, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !14, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !17, i64 1304, !17, i64 1312, !12, i64 1320, !12, i64 1324, !53, i64 1328, !53, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !53, i64 1400, !8, i64 1416}
!62 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!63 = !{!61, !8, i64 24}
!64 = !{!61, !11, i64 136}
!65 = !{!7, !8, i64 24}
!66 = !{i32 -2147483648, i32 8}
!67 = !{!61, !12, i64 432}
!68 = !{!52, !8, i64 48}
!69 = !{!52, !8, i64 88}
!70 = !{!71, !8, i64 120}
!71 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !53, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!72 = !{!73, !8, i64 32}
!73 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!74 = !{!71, !8, i64 112}
!75 = !{!76, !8, i64 264}
!76 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !53, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !77, i64 280, !86, i64 4264, !53, i64 4296, !53, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !53, i64 4384, !87, i64 4400, !88, i64 4416, !91, i64 4600, !8, i64 4608, !92, i64 4616, !8, i64 4640, !17, i64 4648, !17, i64 4656, !79, i64 4664, !80, i64 4824, !93, i64 4888, !8, i64 4952}
!77 = !{!"RenderData", !78, i64 0, !8, i64 248, !8, i64 256, !81, i64 264, !82, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !14, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !14, i64 436, !14, i64 440, !14, i64 444, !14, i64 448, !14, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !83, i64 544, !83, i64 560, !84, i64 576, !53, i64 592, !11, i64 608, !11, i64 610, !14, i64 612, !14, i64 616, !14, i64 620, !14, i64 624, !12, i64 628, !14, i64 632, !14, i64 636, !14, i64 640, !14, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !14, i64 660, !14, i64 664, !11, i64 668, !11, i64 670, !14, i64 672, !14, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !14, i64 2528, !14, i64 2532, !11, i64 2536, !11, i64 2538, !14, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !14, i64 2560, !14, i64 2564, !8, i64 2568, !12, i64 2576, !14, i64 2580, !9, i64 2584, !85, i64 2616, !12, i64 3976, !12, i64 3980}
!78 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !14, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !79, i64 24, !80, i64 184}
!79 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !14, i64 136, !14, i64 140, !8, i64 144, !8, i64 152}
!80 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!81 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!82 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !14, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!83 = !{!"rctf", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!84 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!85 = !{!"BakeData", !78, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !14, i64 1280, !14, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!86 = !{!"AudioData", !12, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !14, i64 24, !14, i64 28}
!87 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!88 = !{!"GameData", !87, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !89, i64 40, !11, i64 64, !11, i64 66, !14, i64 68, !90, i64 72, !14, i64 128, !14, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !14, i64 164, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180}
!89 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !14, i64 8, !14, i64 12, !8, i64 16}
!90 = !{!"RecastData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !12, i64 40, !14, i64 44, !14, i64 48, !11, i64 52, !11, i64 54}
!91 = !{!"UnitSettings", !14, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!92 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!93 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!94 = !{!95, !11, i64 242}
!95 = !{!"View3D", !8, i64 0, !8, i64 8, !53, i64 16, !12, i64 32, !14, i64 36, !9, i64 40, !9, i64 56, !14, i64 72, !14, i64 76, !9, i64 80, !9, i64 81, !12, i64 84, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !8, i64 104, !83, i64 112, !53, i64 128, !8, i64 144, !8, i64 152, !9, i64 160, !12, i64 224, !12, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !14, i64 244, !14, i64 248, !14, i64 252, !14, i64 256, !9, i64 260, !9, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !9, i64 290, !9, i64 291, !9, i64 292, !9, i64 293, !9, i64 294, !53, i64 296, !53, i64 312, !53, i64 328, !9, i64 344, !9, i64 345, !9, i64 346, !9, i64 347, !8, i64 352, !8, i64 360, !8, i64 368}
!96 = !{i32 2, i32 5}
!97 = !{!6, !8, i64 24}
!98 = !{!6, !12, i64 1284}
!99 = !{!17, !17, i64 0}
!100 = !{i64 0, i64 8, !29, i64 8, i64 164, !101, i64 172, i64 4, !47, i64 176, i64 4, !47, i64 180, i64 4, !47, i64 184, i64 8, !29, i64 192, i64 8, !29}
!101 = !{!9, !9, i64 0}
!102 = !{!6, !8, i64 208}
!103 = !{!104, !9, i64 19}
!104 = !{!"MFace", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !9, i64 18, !9, i64 19}
!105 = distinct !{!105, !19}
!106 = !{!6, !8, i64 240}
!107 = !{!108, !11, i64 10}
!108 = !{!"MEdge", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 9, !11, i64 10}
!109 = distinct !{!109, !19}
!110 = !{!6, !12, i64 1280}
!111 = !{!6, !8, i64 232}
!112 = !{!113, !9, i64 18}
!113 = !{!"MVert", !9, i64 0, !9, i64 12, !9, i64 18, !9, i64 19}
!114 = distinct !{!114, !19}
!115 = !{!34, !9, i64 10}
!116 = distinct !{!116, !19}
!117 = !{!32, !9, i64 60}
!118 = !{!32, !8, i64 40}
!119 = !{!120, !8, i64 56}
!120 = !{!"BMesh", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 29, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !13, i64 144, !13, i64 344, !13, i64 544, !13, i64 744, !11, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !53, i64 960, !8, i64 976, !53, i64 984, !8, i64 1000}
!121 = !{!14, !14, i64 0}
!122 = distinct !{!122, !19}
!123 = !{!120, !12, i64 0}
!124 = !{!120, !12, i64 4}
!125 = !{!120, !12, i64 8}
!126 = !{!120, !12, i64 12}
