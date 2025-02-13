; ModuleID = 'blender/source/blender/editors/mesh/meshtools.c'
source_filename = "blender/source/blender/editors/mesh/meshtools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MirrTopoStore_t = type { ptr, i32, i32, i32 }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
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
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.VertPickData = type { ptr, ptr, ptr, float, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }

@.str = private unnamed_addr constant [31 x i8] c"Cannot join while in edit mode\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Active object is not a mesh\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Active object is not a selected mesh\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"No mesh data to join\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Joining results in %d vertices, limit is %ld\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"join_mesh matar\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"join_mesh matmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"join_shapekey\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"join deformGroup\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.join_mesh_exec = private unnamed_addr constant [15 x i8] c"join_mesh_exec\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"joined_shapekey\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"join obmatar\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"join obmatbits\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Selected meshes must have equal numbers of vertices\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"No additional selected meshes with equal vertex count to join\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MirrKdStore.0 = internal unnamed_addr global ptr null, align 8
@mesh_topo_store = internal global %struct.MirrTopoStore_t { ptr null, i32 -2, i32 -1, i32 0 }, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"MirrorVerts\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"MirrorFaces\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"mirror_facehash gh\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @join_mesh_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.CustomData, align 8
  %6 = alloca %struct.CustomData, align 8
  %7 = alloca %struct.CustomData, align 8
  %8 = alloca %struct.CustomData, align 8
  %9 = alloca %struct.CustomData, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca %struct.ListBase, align 8
  %13 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %15 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #11
  %16 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str) #10
  br label %805

22:                                               ; preds = %2
  %23 = icmp eq ptr %15, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !64
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %22
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %30, i32 noundef 16, ptr noundef nonnull @.str.1) #10
  br label %805

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  %32 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %10) #10
  %33 = load ptr, ptr %10, align 8, !tbaa !67
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @BLI_freelistN(ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  br label %89

36:                                               ; preds = %31, %77
  %37 = phi ptr [ %85, %77 ], [ %33, %31 ]
  %38 = phi i8 [ %84, %77 ], [ 0, %31 ]
  %39 = phi i32 [ %83, %77 ], [ 0, %31 ]
  %40 = phi i32 [ %82, %77 ], [ 0, %31 ]
  %41 = phi i32 [ %81, %77 ], [ 0, %31 ]
  %42 = phi i32 [ %80, %77 ], [ 0, %31 ]
  %43 = phi i32 [ %79, %77 ], [ 0, %31 ]
  %44 = phi i32 [ %78, %77 ], [ 0, %31 ]
  %45 = getelementptr inbounds %struct.CollectionPointerLink, ptr %37, i64 0, i32 2, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.Base, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 3
  %50 = load i16, ptr %49, align 8, !tbaa !64
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %52, label %77

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 26
  %56 = load i32, ptr %55, align 8, !tbaa !75
  %57 = add nsw i32 %56, %42
  %58 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 27
  %59 = load i32, ptr %58, align 4, !tbaa !78
  %60 = add nsw i32 %59, %43
  %61 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 31
  %62 = load i32, ptr %61, align 4, !tbaa !79
  %63 = add nsw i32 %62, %41
  %64 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 30
  %65 = load i32, ptr %64, align 8, !tbaa !80
  %66 = add nsw i32 %65, %40
  %67 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 31
  %68 = load i32, ptr %67, align 8, !tbaa !81
  %69 = add nsw i32 %68, %44
  %70 = icmp eq ptr %48, %15
  %71 = select i1 %70, i8 1, i8 %38
  %72 = getelementptr inbounds %struct.Mesh, ptr %54, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !82
  %74 = icmp ne ptr %73, null
  %75 = zext i1 %74 to i32
  %76 = add nsw i32 %39, %75
  br label %77

77:                                               ; preds = %52, %36
  %78 = phi i32 [ %44, %36 ], [ %69, %52 ]
  %79 = phi i32 [ %43, %36 ], [ %60, %52 ]
  %80 = phi i32 [ %42, %36 ], [ %57, %52 ]
  %81 = phi i32 [ %41, %36 ], [ %63, %52 ]
  %82 = phi i32 [ %40, %36 ], [ %66, %52 ]
  %83 = phi i32 [ %39, %36 ], [ %76, %52 ]
  %84 = phi i8 [ %38, %36 ], [ %71, %52 ]
  %85 = load ptr, ptr %37, align 8, !tbaa !67
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %36, !llvm.loop !83

87:                                               ; preds = %77
  call void @BLI_freelistN(ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  %88 = icmp eq i8 %84, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %35, %87
  %90 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %91, i32 noundef 16, ptr noundef nonnull @.str.2) #10
  br label %805

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !82
  %97 = icmp eq i32 %80, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.Mesh, ptr %94, i64 0, i32 26
  %100 = load i32, ptr %99, align 8, !tbaa !75
  %101 = icmp eq i32 %80, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %92
  %103 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %104, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %805

105:                                              ; preds = %98
  %106 = sext i32 %80 to i64
  %107 = icmp sgt i32 %80, 2000000000
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %110, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %80, i64 noundef 2000000000) #10
  br label %805

111:                                              ; preds = %105
  call void @BKE_mesh_tessface_clear(ptr noundef nonnull %94) #10
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %113 = sext i32 %78 to i64
  %114 = shl nsw i64 %113, 3
  %115 = call ptr %112(i64 noundef %114, ptr noundef nonnull @.str.5) #10
  %116 = icmp eq i32 %78, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %119 = shl nsw i64 %113, 2
  %120 = call ptr %118(i64 noundef %119, ptr noundef nonnull @.str.6) #10
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi ptr [ %120, %117 ], [ null, %111 ]
  %123 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 31
  %124 = load i32, ptr %123, align 8, !tbaa !81
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121, %126
  %127 = phi i64 [ %128, %126 ], [ 0, %121 ]
  %128 = add nuw nsw i64 %127, 1
  %129 = trunc i64 %128 to i16
  %130 = call ptr @give_current_material(ptr noundef nonnull %15, i16 noundef signext %129) #10
  %131 = getelementptr inbounds ptr, ptr %115, i64 %127
  store ptr %130, ptr %131, align 8, !tbaa !67
  call void @id_us_plus(ptr noundef %130) #10
  %132 = load i32, ptr %123, align 8, !tbaa !81
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %128, %133
  br i1 %134, label %126, label %135, !llvm.loop !85

135:                                              ; preds = %126, %121
  %136 = icmp eq ptr %96, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %135
  %138 = call ptr @BKE_key_copy(ptr noundef nonnull %96) #10
  %139 = getelementptr inbounds %struct.Key, ptr %96, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !67
  %141 = icmp eq ptr %140, null
  br i1 %141, label %162, label %142

142:                                              ; preds = %137
  %143 = mul nsw i64 %106, 12
  br label %144

144:                                              ; preds = %142, %151
  %145 = phi ptr [ %140, %142 ], [ %155, %151 ]
  %146 = getelementptr inbounds %struct.KeyBlock, ptr %145, i64 0, i32 10
  %147 = load ptr, ptr %146, align 8, !tbaa !86
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %150(ptr noundef nonnull %147) #10
  br label %151

151:                                              ; preds = %149, %144
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %153 = call ptr %152(i64 noundef %143, ptr noundef nonnull @.str.7) #10
  store ptr %153, ptr %146, align 8, !tbaa !86
  %154 = getelementptr inbounds %struct.KeyBlock, ptr %145, i64 0, i32 8
  store i32 %80, ptr %154, align 8, !tbaa !88
  %155 = load ptr, ptr %145, align 8, !tbaa !67
  %156 = icmp eq ptr %155, null
  br i1 %156, label %162, label %144, !llvm.loop !89

157:                                              ; preds = %135
  %158 = icmp eq i32 %83, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %157
  %160 = call ptr @BKE_key_add(ptr noundef %94) #10
  store ptr %160, ptr %95, align 8, !tbaa !82
  %161 = getelementptr inbounds %struct.Key, ptr %160, i64 0, i32 9
  store i16 1, ptr %161, align 8, !tbaa !90
  br label %162

162:                                              ; preds = %151, %137, %157, %159
  %163 = phi ptr [ %160, %159 ], [ null, %157 ], [ %96, %137 ], [ %96, %151 ]
  %164 = phi ptr [ null, %159 ], [ null, %157 ], [ %138, %137 ], [ %138, %151 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  %165 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %11) #10
  %166 = load ptr, ptr %11, align 8, !tbaa !67
  %167 = icmp eq ptr %166, null
  br i1 %167, label %341, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 25
  %170 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 97
  %171 = icmp ne ptr %163, null
  %172 = getelementptr inbounds %struct.Key, ptr %163, i64 0, i32 6
  %173 = getelementptr inbounds %struct.Key, ptr %163, i64 0, i32 10
  %174 = mul nsw i64 %106, 12
  br label %175

175:                                              ; preds = %168, %337
  %176 = phi ptr [ %166, %168 ], [ %339, %337 ]
  %177 = phi i32 [ %124, %168 ], [ %338, %337 ]
  %178 = getelementptr inbounds %struct.CollectionPointerLink, ptr %176, i64 0, i32 2, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !68
  %180 = getelementptr inbounds %struct.Base, ptr %179, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !72
  %182 = icmp eq ptr %15, %181
  br i1 %182, label %337, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 3
  %185 = load i16, ptr %184, align 8, !tbaa !64
  %186 = icmp eq i16 %185, 1
  br i1 %186, label %187, label %337

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 19
  %189 = load ptr, ptr %188, align 8, !tbaa !74
  %190 = getelementptr inbounds %struct.Object, ptr %181, i64 0, i32 25
  %191 = load ptr, ptr %190, align 8, !tbaa !67
  %192 = icmp eq ptr %191, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %187, %201
  %194 = phi ptr [ %202, %201 ], [ %191, %187 ]
  %195 = getelementptr inbounds %struct.bDeformGroup, ptr %194, i64 0, i32 2
  %196 = call ptr @defgroup_find_name(ptr noundef %15, ptr noundef nonnull %195) #10
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %200 = call ptr %199(i64 noundef 88, ptr noundef nonnull @.str.8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %200, ptr noundef nonnull align 8 dereferenceable(88) %194, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %169, ptr noundef %200) #10
  br label %201

201:                                              ; preds = %193, %198
  %202 = load ptr, ptr %194, align 8, !tbaa !67
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %193, !llvm.loop !92

204:                                              ; preds = %201, %187
  %205 = load ptr, ptr %169, align 8, !tbaa !93
  %206 = icmp eq ptr %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load i16, ptr %170, align 2, !tbaa !94
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i16 1, ptr %170, align 2, !tbaa !94
  br label %211

211:                                              ; preds = %210, %207, %204
  %212 = getelementptr inbounds %struct.Mesh, ptr %189, i64 0, i32 26
  %213 = load i32, ptr %212, align 8, !tbaa !75
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %337, label %215

215:                                              ; preds = %211
  %216 = icmp slt i32 %177, 32766
  br i1 %216, label %217, label %260

217:                                              ; preds = %215
  %218 = load ptr, ptr %180, align 8, !tbaa !72
  %219 = getelementptr inbounds %struct.Object, ptr %218, i64 0, i32 31
  %220 = load i32, ptr %219, align 8, !tbaa !81
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %260, label %228

222:                                              ; preds = %257
  %223 = add nuw nsw i32 %231, 1
  %224 = load ptr, ptr %180, align 8, !tbaa !72
  %225 = getelementptr inbounds %struct.Object, ptr %224, i64 0, i32 31
  %226 = load i32, ptr %225, align 8, !tbaa !81
  %227 = icmp slt i32 %231, %226
  br i1 %227, label %228, label %260, !llvm.loop !95

228:                                              ; preds = %217, %222
  %229 = phi ptr [ %224, %222 ], [ %218, %217 ]
  %230 = phi i32 [ %258, %222 ], [ %177, %217 ]
  %231 = phi i32 [ %223, %222 ], [ 1, %217 ]
  %232 = trunc i32 %231 to i16
  %233 = call ptr @give_current_material(ptr noundef nonnull %229, i16 noundef signext %232) #10
  %234 = icmp sgt i32 %230, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %228
  %236 = zext nneg i32 %230 to i64
  br label %237

237:                                              ; preds = %235, %242
  %238 = phi i64 [ 0, %235 ], [ %243, %242 ]
  %239 = getelementptr inbounds ptr, ptr %115, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !67
  %241 = icmp eq ptr %233, %240
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = add nuw nsw i64 %238, 1
  %244 = icmp eq i64 %243, %236
  br i1 %244, label %250, label %237, !llvm.loop !96

245:                                              ; preds = %237
  %246 = trunc i64 %238 to i32
  br label %247

247:                                              ; preds = %245, %228
  %248 = phi i32 [ 0, %228 ], [ %246, %245 ]
  %249 = icmp eq i32 %248, %230
  br i1 %249, label %250, label %257

250:                                              ; preds = %242, %247
  %251 = zext nneg i32 %230 to i64
  %252 = getelementptr inbounds ptr, ptr %115, i64 %251
  store ptr %233, ptr %252, align 8, !tbaa !67
  %253 = icmp eq ptr %233, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  call void @id_us_plus(ptr noundef nonnull %233) #10
  br label %255

255:                                              ; preds = %254, %250
  %256 = add nsw i32 %230, 1
  br label %257

257:                                              ; preds = %255, %247
  %258 = phi i32 [ %256, %255 ], [ %230, %247 ]
  %259 = icmp sgt i32 %258, 32765
  br i1 %259, label %260, label %222

260:                                              ; preds = %257, %222, %217, %215
  %261 = phi i32 [ %177, %215 ], [ %177, %217 ], [ 32766, %257 ], [ %258, %222 ]
  %262 = getelementptr inbounds %struct.Mesh, ptr %189, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !82
  %264 = icmp ne ptr %263, null
  %265 = select i1 %264, i1 %171, i1 false
  br i1 %265, label %266, label %337

266:                                              ; preds = %260
  %267 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !67
  %268 = getelementptr inbounds %struct.Key, ptr %263, i64 0, i32 10
  %269 = load i16, ptr %268, align 2, !tbaa !97
  %270 = sext i16 %269 to i64
  %271 = shl nsw i64 %270, 2
  %272 = call ptr %267(i64 noundef %271, ptr noundef nonnull @__func__.join_mesh_exec) #10
  %273 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !67
  %274 = load ptr, ptr %262, align 8, !tbaa !82
  %275 = getelementptr inbounds %struct.Key, ptr %274, i64 0, i32 10
  %276 = load i16, ptr %275, align 2, !tbaa !97
  %277 = sext i16 %276 to i64
  %278 = shl nsw i64 %277, 3
  %279 = call ptr %273(i64 noundef %278, ptr noundef nonnull @__func__.join_mesh_exec) #10
  %280 = load ptr, ptr %262, align 8, !tbaa !82
  %281 = getelementptr inbounds %struct.Key, ptr %280, i64 0, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !67
  %283 = icmp eq ptr %282, null
  br i1 %283, label %334, label %284

284:                                              ; preds = %266, %302
  %285 = phi i64 [ %305, %302 ], [ 0, %266 ]
  %286 = phi ptr [ %306, %302 ], [ %282, %266 ]
  %287 = getelementptr inbounds %struct.KeyBlock, ptr %286, i64 0, i32 11
  %288 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %163, ptr noundef nonnull %287) #10
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = call i32 @BLI_findindex(ptr noundef nonnull %172, ptr noundef nonnull %288) #10
  %292 = getelementptr inbounds i32, ptr %272, i64 %285
  store i32 %291, ptr %292, align 4, !tbaa !98
  br label %302

293:                                              ; preds = %284
  %294 = load i16, ptr %173, align 2, !tbaa !97
  %295 = sext i16 %294 to i32
  %296 = getelementptr inbounds i32, ptr %272, i64 %285
  store i32 %295, ptr %296, align 4, !tbaa !98
  %297 = call ptr @BKE_keyblock_add(ptr noundef nonnull %163, ptr noundef nonnull %287) #10
  call void @BKE_keyblock_copy_settings(ptr noundef %297, ptr noundef nonnull %286) #10
  %298 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %299 = call ptr %298(i64 noundef %174, ptr noundef nonnull @.str.9) #10
  %300 = getelementptr inbounds %struct.KeyBlock, ptr %297, i64 0, i32 10
  store ptr %299, ptr %300, align 8, !tbaa !86
  %301 = getelementptr inbounds %struct.KeyBlock, ptr %297, i64 0, i32 8
  store i32 %80, ptr %301, align 8, !tbaa !88
  br label %302

302:                                              ; preds = %293, %290
  %303 = phi ptr [ %288, %290 ], [ %297, %293 ]
  %304 = getelementptr inbounds ptr, ptr %279, i64 %285
  store ptr %303, ptr %304, align 8, !tbaa !67
  %305 = add nuw i64 %285, 1
  %306 = load ptr, ptr %286, align 8, !tbaa !67
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %284, !llvm.loop !99

308:                                              ; preds = %302
  %309 = load ptr, ptr %262, align 8, !tbaa !82
  %310 = getelementptr inbounds %struct.Key, ptr %309, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !67
  %312 = icmp eq ptr %311, null
  br i1 %312, label %334, label %313

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.Key, ptr %309, i64 0, i32 10
  %315 = load i16, ptr %314, align 2, !tbaa !97
  br label %316

316:                                              ; preds = %313, %330
  %317 = phi i64 [ 0, %313 ], [ %331, %330 ]
  %318 = phi ptr [ %311, %313 ], [ %332, %330 ]
  %319 = getelementptr inbounds %struct.KeyBlock, ptr %318, i64 0, i32 6
  %320 = load i16, ptr %319, align 4, !tbaa !100
  %321 = icmp slt i16 %320, %315
  br i1 %321, label %322, label %330

322:                                              ; preds = %316
  %323 = sext i16 %320 to i64
  %324 = getelementptr inbounds i32, ptr %272, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !98
  %326 = trunc i32 %325 to i16
  %327 = getelementptr inbounds ptr, ptr %279, i64 %317
  %328 = load ptr, ptr %327, align 8, !tbaa !67
  %329 = getelementptr inbounds %struct.KeyBlock, ptr %328, i64 0, i32 6
  store i16 %326, ptr %329, align 4, !tbaa !100
  br label %330

330:                                              ; preds = %316, %322
  %331 = add nuw i64 %317, 1
  %332 = load ptr, ptr %318, align 8, !tbaa !67
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %316, !llvm.loop !101

334:                                              ; preds = %330, %266, %308
  %335 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %335(ptr noundef %272) #10
  %336 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %336(ptr noundef %279) #10
  br label %337

337:                                              ; preds = %211, %334, %260, %183, %175
  %338 = phi i32 [ %261, %334 ], [ %261, %260 ], [ %177, %211 ], [ %177, %183 ], [ %177, %175 ]
  %339 = load ptr, ptr %176, align 8, !tbaa !67
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %175, !llvm.loop !102

341:                                              ; preds = %337, %162
  %342 = phi i32 [ %124, %162 ], [ %338, %337 ]
  call void @BLI_freelistN(ptr noundef nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @CustomData_reset(ptr noundef nonnull %5) #10
  call void @CustomData_reset(ptr noundef nonnull %6) #10
  call void @CustomData_reset(ptr noundef nonnull %7) #10
  call void @CustomData_reset(ptr noundef nonnull %8) #10
  call void @CustomData_reset(ptr noundef nonnull %9) #10
  %343 = call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %80) #10
  %344 = call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %79) #10
  %345 = call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %81) #10
  %346 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %82) #10
  %347 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  %348 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %347) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  %349 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %12) #10
  %350 = load ptr, ptr %12, align 8, !tbaa !67
  %351 = icmp eq ptr %350, null
  br i1 %351, label %694, label %352

352:                                              ; preds = %341
  %353 = load i64, ptr @CD_MASK_MESH, align 8
  %354 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 25
  %355 = icmp eq ptr %163, null
  %356 = getelementptr inbounds %struct.Key, ptr %163, i64 0, i32 6
  %357 = icmp eq ptr %164, null
  %358 = icmp sgt i32 %342, 0
  %359 = icmp eq ptr %122, null
  %360 = zext nneg i32 %342 to i64
  br label %361

361:                                              ; preds = %352, %684
  %362 = phi ptr [ %350, %352 ], [ %692, %684 ]
  %363 = phi ptr [ %343, %352 ], [ %690, %684 ]
  %364 = phi ptr [ %344, %352 ], [ %689, %684 ]
  %365 = phi ptr [ %346, %352 ], [ %688, %684 ]
  %366 = phi i32 [ 0, %352 ], [ %687, %684 ]
  %367 = phi i32 [ 0, %352 ], [ %686, %684 ]
  %368 = phi ptr [ %345, %352 ], [ %685, %684 ]
  %369 = phi <2 x i32> [ zeroinitializer, %352 ], [ %691, %684 ]
  %370 = getelementptr inbounds %struct.CollectionPointerLink, ptr %362, i64 0, i32 2, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !68
  %372 = getelementptr inbounds %struct.Base, ptr %371, i64 0, i32 7
  %373 = load ptr, ptr %372, align 8, !tbaa !72
  %374 = getelementptr inbounds %struct.Object, ptr %373, i64 0, i32 3
  %375 = load i16, ptr %374, align 8, !tbaa !64
  %376 = icmp eq i16 %375, 1
  br i1 %376, label %377, label %684

377:                                              ; preds = %361
  %378 = getelementptr inbounds %struct.Object, ptr %373, i64 0, i32 19
  %379 = load ptr, ptr %378, align 8, !tbaa !74
  %380 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 26
  %381 = load i32, ptr %380, align 8, !tbaa !75
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %558, label %383

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 41
  %385 = load i8, ptr %384, align 8, !tbaa !103
  %386 = load ptr, ptr %93, align 8, !tbaa !74
  %387 = getelementptr inbounds %struct.Mesh, ptr %386, i64 0, i32 41
  %388 = load i8, ptr %387, align 8, !tbaa !103
  %389 = or i8 %388, %385
  store i8 %389, ptr %387, align 8, !tbaa !103
  %390 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 21
  %391 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %390, ptr noundef nonnull %5, i64 noundef %353, i32 noundef 2, i32 noundef %80) #10
  %392 = load i32, ptr %380, align 8, !tbaa !75
  %393 = extractelement <2 x i32> %369, i64 0
  call void @CustomData_copy_data_named(ptr noundef nonnull %390, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %393, i32 noundef %392) #10
  %394 = call ptr @CustomData_get(ptr noundef nonnull %5, i32 noundef %393, i32 noundef 2) #10
  %395 = icmp eq ptr %394, null
  br i1 %395, label %445, label %396

396:                                              ; preds = %383
  %397 = load i32, ptr %380, align 8, !tbaa !75
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %445

399:                                              ; preds = %396, %440
  %400 = phi i32 [ %441, %440 ], [ %397, %396 ]
  %401 = phi i64 [ %442, %440 ], [ 0, %396 ]
  %402 = getelementptr inbounds %struct.MDeformVert, ptr %394, i64 %401
  %403 = getelementptr inbounds %struct.MDeformVert, ptr %394, i64 %401, i32 1
  %404 = load i32, ptr %403, align 8, !tbaa !104
  %405 = icmp sgt i32 %404, 0
  br i1 %405, label %406, label %440

406:                                              ; preds = %399, %433
  %407 = phi i64 [ %434, %433 ], [ 0, %399 ]
  %408 = load ptr, ptr %372, align 8, !tbaa !72
  %409 = getelementptr inbounds %struct.Object, ptr %408, i64 0, i32 25
  %410 = load ptr, ptr %402, align 8, !tbaa !106
  %411 = getelementptr inbounds %struct.MDeformWeight, ptr %410, i64 %407
  %412 = load i32, ptr %411, align 4, !tbaa !107
  %413 = call ptr @BLI_findlink(ptr noundef nonnull %409, i32 noundef %412) #10
  %414 = icmp eq ptr %413, null
  br i1 %414, label %433, label %415

415:                                              ; preds = %406
  %416 = load ptr, ptr %354, align 8, !tbaa !67
  %417 = icmp eq ptr %416, null
  br i1 %417, label %433, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.bDeformGroup, ptr %413, i64 0, i32 2
  br label %420

420:                                              ; preds = %418, %429
  %421 = phi ptr [ %416, %418 ], [ %431, %429 ]
  %422 = phi i32 [ 0, %418 ], [ %430, %429 ]
  %423 = getelementptr inbounds %struct.bDeformGroup, ptr %421, i64 0, i32 2
  %424 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %423, ptr noundef nonnull dereferenceable(1) %419) #12
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %420
  %427 = load ptr, ptr %402, align 8, !tbaa !106
  %428 = getelementptr inbounds %struct.MDeformWeight, ptr %427, i64 %407
  store i32 %422, ptr %428, align 4, !tbaa !107
  br label %433

429:                                              ; preds = %420
  %430 = add nuw nsw i32 %422, 1
  %431 = load ptr, ptr %421, align 8, !tbaa !67
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %420, !llvm.loop !109

433:                                              ; preds = %429, %415, %406, %426
  %434 = add nuw nsw i64 %407, 1
  %435 = load i32, ptr %403, align 8, !tbaa !104
  %436 = sext i32 %435 to i64
  %437 = icmp slt i64 %434, %436
  br i1 %437, label %406, label %438, !llvm.loop !110

438:                                              ; preds = %433
  %439 = load i32, ptr %380, align 8, !tbaa !75
  br label %440

440:                                              ; preds = %438, %399
  %441 = phi i32 [ %439, %438 ], [ %400, %399 ]
  %442 = add nuw nsw i64 %401, 1
  %443 = sext i32 %441 to i64
  %444 = icmp slt i64 %442, %443
  br i1 %444, label %399, label %445, !llvm.loop !111

445:                                              ; preds = %440, %396, %383
  %446 = load ptr, ptr %372, align 8, !tbaa !72
  %447 = icmp eq ptr %446, %15
  br i1 %447, label %508, label %448

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.Object, ptr %446, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %449) #10
  %450 = load i32, ptr %380, align 8, !tbaa !75
  %451 = icmp sgt i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %448, %452
  %453 = phi ptr [ %456, %452 ], [ %363, %448 ]
  %454 = phi i32 [ %455, %452 ], [ 0, %448 ]
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %453) #10
  %455 = add nuw nsw i32 %454, 1
  %456 = getelementptr inbounds %struct.MVert, ptr %453, i64 1
  %457 = load i32, ptr %380, align 8, !tbaa !75
  %458 = icmp slt i32 %455, %457
  br i1 %458, label %452, label %459, !llvm.loop !112

459:                                              ; preds = %452, %448
  br i1 %355, label %554, label %460

460:                                              ; preds = %459
  %461 = load ptr, ptr %356, align 8, !tbaa !67
  %462 = icmp eq ptr %461, null
  br i1 %462, label %554, label %463

463:                                              ; preds = %460
  %464 = mul nsw i32 %393, 3
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 4
  br label %467

467:                                              ; preds = %463, %505
  %468 = phi ptr [ %461, %463 ], [ %506, %505 ]
  %469 = getelementptr inbounds %struct.KeyBlock, ptr %468, i64 0, i32 10
  %470 = load ptr, ptr %469, align 8, !tbaa !86
  %471 = getelementptr inbounds float, ptr %470, i64 %465
  %472 = load ptr, ptr %466, align 8, !tbaa !82
  %473 = icmp eq ptr %472, null
  br i1 %473, label %478, label %474

474:                                              ; preds = %467
  %475 = getelementptr inbounds %struct.KeyBlock, ptr %468, i64 0, i32 11
  %476 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %472, ptr noundef nonnull %475) #10
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %467, %474
  %479 = load i32, ptr %380, align 8, !tbaa !75
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %496, label %505

481:                                              ; preds = %474
  %482 = load i32, ptr %380, align 8, !tbaa !75
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %505

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.KeyBlock, ptr %476, i64 0, i32 10
  %486 = load ptr, ptr %485, align 8, !tbaa !86
  br label %487

487:                                              ; preds = %484, %487
  %488 = phi i32 [ %491, %487 ], [ 0, %484 ]
  %489 = phi ptr [ %493, %487 ], [ %486, %484 ]
  %490 = phi ptr [ %492, %487 ], [ %471, %484 ]
  call fastcc void @copy_v3_v3(ptr noundef %490, ptr noundef %489) #13
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %490) #10
  %491 = add nuw nsw i32 %488, 1
  %492 = getelementptr inbounds float, ptr %490, i64 3
  %493 = getelementptr inbounds float, ptr %489, i64 3
  %494 = load i32, ptr %380, align 8, !tbaa !75
  %495 = icmp slt i32 %491, %494
  br i1 %495, label %487, label %505, !llvm.loop !113

496:                                              ; preds = %478, %496
  %497 = phi ptr [ %502, %496 ], [ %363, %478 ]
  %498 = phi i32 [ %500, %496 ], [ 0, %478 ]
  %499 = phi ptr [ %501, %496 ], [ %471, %478 ]
  call fastcc void @copy_v3_v3(ptr noundef %499, ptr noundef %497) #13
  %500 = add nuw nsw i32 %498, 1
  %501 = getelementptr inbounds float, ptr %499, i64 3
  %502 = getelementptr inbounds %struct.MVert, ptr %497, i64 1
  %503 = load i32, ptr %380, align 8, !tbaa !75
  %504 = icmp slt i32 %500, %503
  br i1 %504, label %496, label %505, !llvm.loop !114

505:                                              ; preds = %487, %496, %481, %478
  %506 = load ptr, ptr %468, align 8, !tbaa !67
  %507 = icmp eq ptr %506, null
  br i1 %507, label %554, label %467, !llvm.loop !115

508:                                              ; preds = %445
  br i1 %355, label %554, label %509

509:                                              ; preds = %508
  %510 = load ptr, ptr %356, align 8, !tbaa !67
  %511 = icmp eq ptr %510, null
  br i1 %511, label %554, label %512

512:                                              ; preds = %509
  %513 = mul nsw i32 %393, 3
  %514 = sext i32 %513 to i64
  br label %515

515:                                              ; preds = %512, %551
  %516 = phi ptr [ %510, %512 ], [ %552, %551 ]
  %517 = getelementptr inbounds %struct.KeyBlock, ptr %516, i64 0, i32 10
  %518 = load ptr, ptr %517, align 8, !tbaa !86
  %519 = getelementptr inbounds float, ptr %518, i64 %514
  br i1 %357, label %524, label %520

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.KeyBlock, ptr %516, i64 0, i32 11
  %522 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %164, ptr noundef nonnull %521) #10
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %515, %520
  %525 = load i32, ptr %380, align 8, !tbaa !75
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %542, label %551

527:                                              ; preds = %520
  %528 = load i32, ptr %380, align 8, !tbaa !75
  %529 = icmp sgt i32 %528, 0
  br i1 %529, label %530, label %551

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.KeyBlock, ptr %522, i64 0, i32 10
  %532 = load ptr, ptr %531, align 8, !tbaa !86
  br label %533

533:                                              ; preds = %530, %533
  %534 = phi i32 [ %537, %533 ], [ 0, %530 ]
  %535 = phi ptr [ %539, %533 ], [ %532, %530 ]
  %536 = phi ptr [ %538, %533 ], [ %519, %530 ]
  call fastcc void @copy_v3_v3(ptr noundef %536, ptr noundef %535) #13
  %537 = add nuw nsw i32 %534, 1
  %538 = getelementptr inbounds float, ptr %536, i64 3
  %539 = getelementptr inbounds float, ptr %535, i64 3
  %540 = load i32, ptr %380, align 8, !tbaa !75
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %533, label %551, !llvm.loop !116

542:                                              ; preds = %524, %542
  %543 = phi ptr [ %548, %542 ], [ %363, %524 ]
  %544 = phi i32 [ %546, %542 ], [ 0, %524 ]
  %545 = phi ptr [ %547, %542 ], [ %519, %524 ]
  call fastcc void @copy_v3_v3(ptr noundef %545, ptr noundef %543) #13
  %546 = add nuw nsw i32 %544, 1
  %547 = getelementptr inbounds float, ptr %545, i64 3
  %548 = getelementptr inbounds %struct.MVert, ptr %543, i64 1
  %549 = load i32, ptr %380, align 8, !tbaa !75
  %550 = icmp slt i32 %546, %549
  br i1 %550, label %542, label %551, !llvm.loop !117

551:                                              ; preds = %533, %542, %527, %524
  %552 = load ptr, ptr %516, align 8, !tbaa !67
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %515, !llvm.loop !118

554:                                              ; preds = %505, %551, %460, %509, %508, %459
  %555 = load i32, ptr %380, align 8, !tbaa !75
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.MVert, ptr %363, i64 %556
  br label %558

558:                                              ; preds = %554, %377
  %559 = phi ptr [ %557, %554 ], [ %363, %377 ]
  %560 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 27
  %561 = load i32, ptr %560, align 4, !tbaa !78
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %580, label %563

563:                                              ; preds = %558
  %564 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 22
  %565 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %564, ptr noundef nonnull %6, i64 noundef %353, i32 noundef 2, i32 noundef %79) #10
  %566 = load i32, ptr %560, align 4, !tbaa !78
  %567 = extractelement <2 x i32> %369, i64 1
  call void @CustomData_copy_data_named(ptr noundef nonnull %564, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %567, i32 noundef %566) #10
  %568 = load i32, ptr %560, align 4, !tbaa !78
  %569 = icmp sgt i32 %568, 0
  br i1 %569, label %570, label %580

570:                                              ; preds = %563
  %571 = shufflevector <2 x i32> %369, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %572

572:                                              ; preds = %570, %572
  %573 = phi ptr [ %578, %572 ], [ %364, %570 ]
  %574 = phi i32 [ %577, %572 ], [ 0, %570 ]
  %575 = load <2 x i32>, ptr %573, align 4, !tbaa !98
  %576 = add <2 x i32> %575, %571
  store <2 x i32> %576, ptr %573, align 4, !tbaa !98
  %577 = add nuw nsw i32 %574, 1
  %578 = getelementptr inbounds %struct.MEdge, ptr %573, i64 1
  %579 = icmp eq i32 %577, %568
  br i1 %579, label %580, label %572, !llvm.loop !119

580:                                              ; preds = %572, %563, %558
  %581 = phi ptr [ %364, %558 ], [ %364, %563 ], [ %578, %572 ]
  %582 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 31
  %583 = load i32, ptr %582, align 4, !tbaa !79
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %610, label %585

585:                                              ; preds = %580
  %586 = load ptr, ptr %372, align 8, !tbaa !72
  %587 = icmp eq ptr %586, %15
  br i1 %587, label %596, label %588

588:                                              ; preds = %585
  call void @multiresModifier_prepare_join(ptr noundef %14, ptr noundef %586, ptr noundef %15) #10
  %589 = load ptr, ptr %372, align 8, !tbaa !72
  %590 = call ptr @get_multires_modifier(ptr noundef %14, ptr noundef %589, i8 noundef zeroext 1) #10
  %591 = icmp eq ptr %590, null
  br i1 %591, label %596, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr %372, align 8, !tbaa !72
  %594 = getelementptr inbounds %struct.MultiresModifierData, ptr %590, i64 0, i32 4
  %595 = call zeroext i8 @ED_object_iter_other(ptr noundef %13, ptr noundef %593, i8 noundef zeroext 1, ptr noundef nonnull @ED_object_multires_update_totlevels_cb, ptr noundef nonnull %594) #10
  br label %596

596:                                              ; preds = %588, %592, %585
  %597 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 25
  %598 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %597, ptr noundef nonnull %8, i64 noundef %353, i32 noundef 2, i32 noundef %81) #10
  %599 = load i32, ptr %582, align 4, !tbaa !79
  call void @CustomData_copy_data_named(ptr noundef nonnull %597, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %367, i32 noundef %599) #10
  %600 = load i32, ptr %582, align 4, !tbaa !79
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %602, label %610

602:                                              ; preds = %596, %602
  %603 = phi i32 [ %607, %602 ], [ 0, %596 ]
  %604 = phi ptr [ %608, %602 ], [ %368, %596 ]
  %605 = load <2 x i32>, ptr %604, align 4, !tbaa !98
  %606 = add <2 x i32> %605, %369
  store <2 x i32> %606, ptr %604, align 4, !tbaa !98
  %607 = add nuw nsw i32 %603, 1
  %608 = getelementptr inbounds %struct.MLoop, ptr %604, i64 1
  %609 = icmp eq i32 %607, %600
  br i1 %609, label %610, label %602, !llvm.loop !120

610:                                              ; preds = %602, %596, %580
  %611 = phi i32 [ 0, %580 ], [ %600, %596 ], [ %600, %602 ]
  %612 = phi ptr [ %368, %580 ], [ %368, %596 ], [ %608, %602 ]
  %613 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 30
  %614 = load i32, ptr %613, align 8, !tbaa !80
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %674, label %616

616:                                              ; preds = %610
  br i1 %116, label %646, label %617

617:                                              ; preds = %616
  %618 = load ptr, ptr %372, align 8, !tbaa !72
  %619 = getelementptr inbounds %struct.Object, ptr %618, i64 0, i32 31
  %620 = load i32, ptr %619, align 8, !tbaa !81
  %621 = icmp slt i32 %620, 1
  br i1 %621, label %646, label %622

622:                                              ; preds = %617, %639
  %623 = phi i64 [ %640, %639 ], [ 1, %617 ]
  %624 = phi ptr [ %641, %639 ], [ %618, %617 ]
  %625 = trunc i64 %623 to i16
  %626 = call ptr @give_current_material(ptr noundef nonnull %624, i16 noundef signext %625) #10
  br i1 %358, label %627, label %639

627:                                              ; preds = %622, %636
  %628 = phi i64 [ %637, %636 ], [ 0, %622 ]
  %629 = getelementptr inbounds ptr, ptr %115, i64 %628
  %630 = load ptr, ptr %629, align 8, !tbaa !67
  %631 = icmp eq ptr %626, %630
  br i1 %631, label %632, label %636

632:                                              ; preds = %627
  %633 = trunc i64 %628 to i32
  %634 = add nsw i64 %623, -1
  %635 = getelementptr inbounds i32, ptr %122, i64 %634
  store i32 %633, ptr %635, align 4, !tbaa !98
  br label %639

636:                                              ; preds = %627
  %637 = add nuw nsw i64 %628, 1
  %638 = icmp eq i64 %637, %360
  br i1 %638, label %639, label %627, !llvm.loop !121

639:                                              ; preds = %636, %622, %632
  %640 = add nuw nsw i64 %623, 1
  %641 = load ptr, ptr %372, align 8, !tbaa !72
  %642 = getelementptr inbounds %struct.Object, ptr %641, i64 0, i32 31
  %643 = load i32, ptr %642, align 8, !tbaa !81
  %644 = sext i32 %643 to i64
  %645 = icmp slt i64 %623, %644
  br i1 %645, label %622, label %646, !llvm.loop !122

646:                                              ; preds = %639, %617, %616
  %647 = getelementptr inbounds %struct.Mesh, ptr %379, i64 0, i32 24
  %648 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %647, ptr noundef nonnull %9, i64 noundef %353, i32 noundef 2, i32 noundef %82) #10
  %649 = load i32, ptr %613, align 8, !tbaa !80
  call void @CustomData_copy_data_named(ptr noundef nonnull %647, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %366, i32 noundef %649) #10
  %650 = load i32, ptr %613, align 8, !tbaa !80
  %651 = icmp sgt i32 %650, 0
  br i1 %651, label %652, label %670

652:                                              ; preds = %646, %663
  %653 = phi ptr [ %668, %663 ], [ %365, %646 ]
  %654 = phi i32 [ %667, %663 ], [ 0, %646 ]
  %655 = load i32, ptr %653, align 4, !tbaa !123
  %656 = add nsw i32 %655, %367
  store i32 %656, ptr %653, align 4, !tbaa !123
  br i1 %359, label %663, label %657

657:                                              ; preds = %652
  %658 = getelementptr inbounds %struct.MPoly, ptr %653, i64 0, i32 2
  %659 = load i16, ptr %658, align 4, !tbaa !125
  %660 = sext i16 %659 to i64
  %661 = getelementptr inbounds i32, ptr %122, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !98
  br label %663

663:                                              ; preds = %652, %657
  %664 = phi i32 [ %662, %657 ], [ 0, %652 ]
  %665 = trunc i32 %664 to i16
  %666 = getelementptr inbounds %struct.MPoly, ptr %653, i64 0, i32 2
  store i16 %665, ptr %666, align 4, !tbaa !125
  %667 = add nuw nsw i32 %654, 1
  %668 = getelementptr inbounds %struct.MPoly, ptr %653, i64 1
  %669 = icmp eq i32 %667, %650
  br i1 %669, label %670, label %652, !llvm.loop !126

670:                                              ; preds = %663, %646
  %671 = phi ptr [ %365, %646 ], [ %668, %663 ]
  %672 = add nsw i32 %650, %366
  %673 = load i32, ptr %582, align 4, !tbaa !79
  br label %674

674:                                              ; preds = %670, %610
  %675 = phi i32 [ %673, %670 ], [ %611, %610 ]
  %676 = phi i32 [ %672, %670 ], [ %366, %610 ]
  %677 = phi ptr [ %671, %670 ], [ %365, %610 ]
  %678 = load <2 x i32>, ptr %380, align 8, !tbaa !98
  %679 = add nsw <2 x i32> %678, %369
  %680 = add nsw i32 %675, %367
  %681 = load ptr, ptr %372, align 8, !tbaa !72
  %682 = icmp eq ptr %681, %15
  br i1 %682, label %684, label %683

683:                                              ; preds = %674
  call void @ED_base_object_free_and_unlink(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %371) #10
  br label %684

684:                                              ; preds = %674, %683, %361
  %685 = phi ptr [ %612, %683 ], [ %612, %674 ], [ %368, %361 ]
  %686 = phi i32 [ %680, %683 ], [ %680, %674 ], [ %367, %361 ]
  %687 = phi i32 [ %676, %683 ], [ %676, %674 ], [ %366, %361 ]
  %688 = phi ptr [ %677, %683 ], [ %677, %674 ], [ %365, %361 ]
  %689 = phi ptr [ %581, %683 ], [ %581, %674 ], [ %364, %361 ]
  %690 = phi ptr [ %559, %683 ], [ %559, %674 ], [ %363, %361 ]
  %691 = phi <2 x i32> [ %679, %683 ], [ %679, %674 ], [ %369, %361 ]
  %692 = load ptr, ptr %362, align 8, !tbaa !67
  %693 = icmp eq ptr %692, null
  br i1 %693, label %694, label %361, !llvm.loop !127

694:                                              ; preds = %684, %341
  call void @BLI_freelistN(ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  %695 = load ptr, ptr %93, align 8, !tbaa !74
  %696 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 21
  %697 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 26
  %698 = load i32, ptr %697, align 8, !tbaa !75
  call void @CustomData_free(ptr noundef nonnull %696, i32 noundef %698) #10
  %699 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 22
  %700 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 27
  %701 = load i32, ptr %700, align 4, !tbaa !78
  call void @CustomData_free(ptr noundef nonnull %699, i32 noundef %701) #10
  %702 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 25
  %703 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 31
  %704 = load i32, ptr %703, align 4, !tbaa !79
  call void @CustomData_free(ptr noundef nonnull %702, i32 noundef %704) #10
  %705 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 24
  %706 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 30
  %707 = load i32, ptr %706, align 8, !tbaa !80
  call void @CustomData_free(ptr noundef nonnull %705, i32 noundef %707) #10
  store i32 %80, ptr %697, align 8, !tbaa !75
  store i32 %79, ptr %700, align 4, !tbaa !78
  store i32 %81, ptr %703, align 4, !tbaa !79
  store i32 %82, ptr %706, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %696, ptr noundef nonnull align 8 dereferenceable(200) %5, i64 200, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %699, ptr noundef nonnull align 8 dereferenceable(200) %6, i64 200, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %702, ptr noundef nonnull align 8 dereferenceable(200) %8, i64 200, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %705, ptr noundef nonnull align 8 dereferenceable(200) %9, i64 200, i1 false), !tbaa.struct !128
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %695, i8 noundef zeroext 0) #10
  call void @BKE_mesh_calc_normals(ptr noundef %695) #10
  %708 = load i32, ptr %123, align 8, !tbaa !81
  %709 = icmp slt i32 %708, 1
  br i1 %709, label %716, label %710

710:                                              ; preds = %694
  %711 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 29
  %712 = load ptr, ptr %711, align 8, !tbaa !130
  %713 = getelementptr ptr, ptr %712, i64 -1
  %714 = add nuw i32 %708, 1
  %715 = zext i32 %714 to i64
  br label %726

716:                                              ; preds = %735, %694
  %717 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 47
  %718 = load i16, ptr %717, align 2, !tbaa !131
  %719 = icmp slt i16 %718, 1
  br i1 %719, label %750, label %720

720:                                              ; preds = %716
  %721 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 5
  %722 = load ptr, ptr %721, align 8, !tbaa !132
  %723 = getelementptr ptr, ptr %722, i64 -1
  %724 = add nuw i16 %718, 1
  %725 = zext i16 %724 to i64
  br label %738

726:                                              ; preds = %710, %735
  %727 = phi i64 [ 1, %710 ], [ %736, %735 ]
  %728 = getelementptr ptr, ptr %713, i64 %727
  %729 = load ptr, ptr %728, align 8, !tbaa !67
  %730 = icmp eq ptr %729, null
  br i1 %730, label %735, label %731

731:                                              ; preds = %726
  %732 = getelementptr inbounds %struct.ID, ptr %729, i64 0, i32 6
  %733 = load i32, ptr %732, align 4, !tbaa !133
  %734 = add nsw i32 %733, -1
  store i32 %734, ptr %732, align 4, !tbaa !133
  br label %735

735:                                              ; preds = %726, %731
  %736 = add nuw nsw i64 %727, 1
  %737 = icmp eq i64 %736, %715
  br i1 %737, label %716, label %726, !llvm.loop !137

738:                                              ; preds = %720, %747
  %739 = phi i64 [ 1, %720 ], [ %748, %747 ]
  %740 = getelementptr ptr, ptr %723, i64 %739
  %741 = load ptr, ptr %740, align 8, !tbaa !67
  %742 = icmp eq ptr %741, null
  br i1 %742, label %747, label %743

743:                                              ; preds = %738
  %744 = getelementptr inbounds %struct.ID, ptr %741, i64 0, i32 6
  %745 = load i32, ptr %744, align 4, !tbaa !133
  %746 = add nsw i32 %745, -1
  store i32 %746, ptr %744, align 4, !tbaa !133
  br label %747

747:                                              ; preds = %738, %743
  %748 = add nuw nsw i64 %739, 1
  %749 = icmp eq i64 %748, %725
  br i1 %749, label %750, label %738, !llvm.loop !138

750:                                              ; preds = %747, %716
  %751 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 29
  %752 = load ptr, ptr %751, align 8, !tbaa !130
  %753 = icmp eq ptr %752, null
  br i1 %753, label %756, label %754

754:                                              ; preds = %750
  %755 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %755(ptr noundef nonnull %752) #10
  br label %756

756:                                              ; preds = %754, %750
  %757 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 30
  %758 = load ptr, ptr %757, align 8, !tbaa !139
  %759 = icmp eq ptr %758, null
  br i1 %759, label %762, label %760

760:                                              ; preds = %756
  %761 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %761(ptr noundef nonnull %758) #10
  br label %762

762:                                              ; preds = %760, %756
  %763 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 5
  %764 = load ptr, ptr %763, align 8, !tbaa !132
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766

766:                                              ; preds = %762
  %767 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %767(ptr noundef nonnull %764) #10
  br label %768

768:                                              ; preds = %766, %762
  store ptr null, ptr %763, align 8, !tbaa !132
  %769 = icmp eq i32 %342, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %751, i8 0, i64 16, i1 false)
  br i1 %769, label %777, label %770

770:                                              ; preds = %768
  store ptr %115, ptr %763, align 8, !tbaa !132
  %771 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %772 = sext i32 %342 to i64
  %773 = shl nsw i64 %772, 3
  %774 = call ptr %771(i64 noundef %773, ptr noundef nonnull @.str.10) #10
  store ptr %774, ptr %751, align 8, !tbaa !130
  %775 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %776 = call ptr %775(i64 noundef %772, ptr noundef nonnull @.str.11) #10
  store ptr %776, ptr %757, align 8, !tbaa !139
  br label %779

777:                                              ; preds = %768
  %778 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %778(ptr noundef %115) #10
  br label %779

779:                                              ; preds = %777, %770
  %780 = trunc i32 %342 to i16
  store i16 %780, ptr %717, align 2, !tbaa !131
  %781 = shl i32 %342, 16
  %782 = ashr exact i32 %781, 16
  store i32 %782, ptr %123, align 8, !tbaa !81
  %783 = icmp eq ptr %122, null
  br i1 %783, label %786, label %784

784:                                              ; preds = %779
  %785 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %785(ptr noundef nonnull %122) #10
  br label %786

786:                                              ; preds = %784, %779
  call void @test_object_materials(ptr noundef %13, ptr noundef nonnull %695) #10
  %787 = icmp eq ptr %164, null
  br i1 %787, label %791, label %788

788:                                              ; preds = %786
  call void @BKE_key_free(ptr noundef nonnull %164) #10
  %789 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 24
  call void @BLI_remlink(ptr noundef nonnull %789, ptr noundef nonnull %164) #10
  %790 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %790(ptr noundef nonnull %164) #10
  br label %791

791:                                              ; preds = %788, %786
  %792 = icmp eq ptr %163, null
  br i1 %792, label %798, label %793

793:                                              ; preds = %791
  %794 = getelementptr inbounds %struct.Key, ptr %163, i64 0, i32 9
  %795 = load i16, ptr %794, align 8, !tbaa !90
  %796 = icmp eq i16 %795, 1
  br i1 %796, label %798, label %797

797:                                              ; preds = %793
  call void @BKE_key_sort(ptr noundef nonnull %163) #10
  br label %798

798:                                              ; preds = %797, %793, %791
  call void @DAG_relations_tag_update(ptr noundef %13) #10
  %799 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 20
  %800 = load ptr, ptr %799, align 8, !tbaa !140
  call void @EDBM_mesh_make(ptr noundef %800, ptr noundef nonnull %15) #10
  call void @EDBM_mesh_load(ptr noundef nonnull %15) #10
  %801 = getelementptr inbounds %struct.Mesh, ptr %695, i64 0, i32 20
  %802 = load ptr, ptr %801, align 8, !tbaa !141
  call void @EDBM_mesh_free(ptr noundef %802) #10
  %803 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  %804 = load ptr, ptr %801, align 8, !tbaa !141
  call void %803(ptr noundef %804) #10
  store ptr null, ptr %801, align 8, !tbaa !141
  call void @DAG_id_tag_update(ptr noundef nonnull %15, i16 noundef signext 3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %14) #10
  br label %805

805:                                              ; preds = %798, %108, %102, %89, %28, %19
  %806 = phi i32 [ 2, %19 ], [ 2, %28 ], [ 2, %89 ], [ 2, %102 ], [ 2, %108 ], [ 4, %798 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %806
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_keyblock_copy_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy_data_named(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !142 {
  %3 = load float, ptr %1, align 4, !tbaa !143
  store float %3, ptr %0, align 4, !tbaa !143
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !143
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !143
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !143
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !143
  ret void
}

; Function Attrs: optsize
declare void @multiresModifier_prepare_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_iter_other(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_multires_update_totlevels_cb(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @join_mesh_shapes_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %11 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #10
  %12 = load ptr, ptr %3, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %51

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  br label %17

17:                                               ; preds = %15, %39
  %18 = phi ptr [ %12, %15 ], [ %42, %39 ]
  %19 = phi i8 [ 0, %15 ], [ %41, %39 ]
  %20 = phi i8 [ 0, %15 ], [ %40, %39 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = icmp eq ptr %24, %6
  br i1 %25, label %39, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !64
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds %struct.Mesh, ptr %32, i64 0, i32 26
  %34 = load i32, ptr %33, align 8, !tbaa !75
  %35 = load i32, ptr %16, align 8, !tbaa !75
  %36 = icmp eq i32 %34, %35
  %37 = select i1 %36, i8 1, i8 %20
  %38 = select i1 %36, i8 %19, i8 1
  br label %39

39:                                               ; preds = %26, %30, %17
  %40 = phi i8 [ %20, %17 ], [ %20, %26 ], [ %37, %30 ]
  %41 = phi i8 [ %19, %17 ], [ %19, %26 ], [ %38, %30 ]
  %42 = load ptr, ptr %18, align 8, !tbaa !67
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %17, !llvm.loop !144

44:                                               ; preds = %39
  %45 = icmp eq i8 %40, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = icmp eq i8 %41, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %50, i32 noundef 16, ptr noundef nonnull @.str.12) #10
  br label %99

51:                                               ; preds = %14, %46
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %53, i32 noundef 16, ptr noundef nonnull @.str.13) #10
  br label %99

54:                                               ; preds = %44
  %55 = icmp eq ptr %10, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = call ptr @BKE_key_add(ptr noundef %8) #10
  store ptr %57, ptr %9, align 8, !tbaa !82
  %58 = getelementptr inbounds %struct.Key, ptr %57, i64 0, i32 9
  store i16 1, ptr %58, align 8, !tbaa !90
  %59 = call ptr @BKE_keyblock_add(ptr noundef %57, ptr noundef null) #10
  call void @BKE_key_convert_from_mesh(ptr noundef %8, ptr noundef %59) #10
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi ptr [ %57, %56 ], [ %10, %54 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %62 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #10
  %63 = load ptr, ptr %4, align 8, !tbaa !67
  %64 = icmp eq ptr %63, null
  br i1 %64, label %98, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  %67 = load i64, ptr @CD_MASK_BAREMESH, align 8
  br label %68

68:                                               ; preds = %65, %95
  %69 = phi ptr [ %63, %65 ], [ %96, %95 ]
  %70 = getelementptr inbounds %struct.CollectionPointerLink, ptr %69, i64 0, i32 2, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  %72 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = icmp eq ptr %73, %6
  br i1 %74, label %95, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 3
  %77 = load i16, ptr %76, align 8, !tbaa !64
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 19
  %81 = load ptr, ptr %80, align 8, !tbaa !74
  %82 = getelementptr inbounds %struct.Mesh, ptr %81, i64 0, i32 26
  %83 = load i32, ptr %82, align 8, !tbaa !75
  %84 = load i32, ptr %66, align 8, !tbaa !75
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = call ptr @mesh_get_derived_deform(ptr noundef %5, ptr noundef nonnull %73, i64 noundef %67) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %72, align 8, !tbaa !72
  %91 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 4, i64 2
  %92 = call ptr @BKE_keyblock_add(ptr noundef %61, ptr noundef nonnull %91) #10
  call void @DM_to_meshkey(ptr noundef nonnull %87, ptr noundef nonnull %8, ptr noundef %92) #10
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !145
  call void %94(ptr noundef nonnull %87) #10
  br label %95

95:                                               ; preds = %75, %89, %79, %86, %68
  %96 = load ptr, ptr %69, align 8, !tbaa !67
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %68, !llvm.loop !147

98:                                               ; preds = %95, %60
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %5) #10
  br label %99

99:                                               ; preds = %48, %51, %98
  %100 = phi i32 [ 4, %98 ], [ 2, %51 ], [ 2, %48 ]
  ret i32 %100
}

; Function Attrs: optsize
declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_to_meshkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.KDTreeNearest, align 4
  %6 = alloca %struct.BMIter, align 8
  switch i8 %3, label %81 [
    i8 117, label %7
    i8 115, label %23
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 115) #13
  %12 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %7, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %16 = call i32 @BLI_kdtree_find_nearest(ptr noundef nonnull %15, ptr noundef %2, ptr noundef nonnull %5) #10
  %17 = icmp eq i32 %16, -1
  %18 = getelementptr inbounds %struct.KDTreeNearest, ptr %5, i64 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = fcmp uge float %19, 0x3EF4F8B580000000
  %21 = select i1 %17, i1 true, i1 %20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  br i1 %21, label %22, label %87

22:                                               ; preds = %14, %10
  br label %87

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 101) #13
  br label %30

30:                                               ; preds = %28, %23
  %31 = icmp eq ptr %1, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  %34 = load i32, ptr %33, align 8, !tbaa !98
  %35 = tail call ptr @BLI_kdtree_new(i32 noundef %34) #10
  store ptr %35, ptr @MirrKdStore.0, align 8, !tbaa !148
  br label %64

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 8, !tbaa !149
  br label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ]
  %46 = load i32, ptr %45, align 8, !tbaa !98
  %47 = tail call ptr @BLI_kdtree_new(i32 noundef %46) #10
  store ptr %47, ptr @MirrKdStore.0, align 8, !tbaa !148
  %48 = load ptr, ptr %37, align 8, !tbaa !141
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %51 = load ptr, ptr %1, align 8, !tbaa !149
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %51, i8 noundef zeroext 1) #10
  %52 = load ptr, ptr %1, align 8, !tbaa !149
  %53 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %52) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50, %55
  %56 = phi i32 [ %61, %55 ], [ 0, %50 ]
  %57 = phi ptr [ %60, %55 ], [ %53, %50 ]
  %58 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  %59 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  call void @BLI_kdtree_insert(ptr noundef %58, i32 noundef %56, ptr noundef nonnull %59) #10
  %60 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #13
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %55, !llvm.loop !151

63:                                               ; preds = %55, %50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %79

64:                                               ; preds = %32, %44
  %65 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  %66 = load i32, ptr %65, align 8, !tbaa !75
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 15
  %70 = load ptr, ptr %69, align 8, !tbaa !152
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi i32 [ %75, %71 ], [ 0, %68 ]
  %73 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %74 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  tail call void @BLI_kdtree_insert(ptr noundef %74, i32 noundef %72, ptr noundef %73) #10
  %75 = add nuw nsw i32 %72, 1
  %76 = getelementptr inbounds %struct.MVert, ptr %73, i64 1
  %77 = load i32, ptr %65, align 8, !tbaa !75
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %71, label %79, !llvm.loop !153

79:                                               ; preds = %71, %64, %63
  %80 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !148
  call void @BLI_kdtree_balance(ptr noundef %80) #10
  br label %87

81:                                               ; preds = %4
  %82 = icmp eq i8 %3, 101
  %83 = load ptr, ptr @MirrKdStore.0, align 8
  %84 = icmp ne ptr %83, null
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void @BLI_kdtree_free(ptr noundef nonnull %83) #10
  store ptr null, ptr @MirrKdStore.0, align 8, !tbaa !148
  br label %87

87:                                               ; preds = %14, %86, %81, %79, %22
  %88 = phi i32 [ %16, %14 ], [ -1, %22 ], [ 0, %79 ], [ 0, %81 ], [ 0, %86 ]
  ret i32 %88
}

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !154 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_mesh_mirror_topo_table(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  br label %5

5:                                                ; preds = %7, %2
  %6 = phi i8 [ %1, %2 ], [ 115, %7 ]
  switch i8 %6, label %16 [
    i8 117, label %7
    i8 115, label %12
    i8 101, label %15
  ]

7:                                                ; preds = %5
  %8 = load ptr, ptr %3, align 8, !tbaa !74
  %9 = load i32, ptr %4, align 8, !tbaa !158
  %10 = tail call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @mesh_topo_store) #10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %5

12:                                               ; preds = %5
  %13 = load ptr, ptr %3, align 8, !tbaa !74
  %14 = load i32, ptr %4, align 8, !tbaa !158
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #10
  br label %16

15:                                               ; preds = %5
  tail call void @ED_mesh_mirrtopo_free(ptr noundef nonnull @mesh_topo_store) #10
  br label %16

16:                                               ; preds = %5, %7, %12, %15
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mesh_mirrtopo_init(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mesh_mirrtopo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @mesh_get_x_mirror_vert_topo(ptr noundef %0, i32 noundef %1) #13
  br label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @mesh_get_x_mirror_vert_spatial(ptr noundef %0, i32 noundef %1) #13
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mesh_get_x_mirror_vert_topo(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef %0, i8 noundef zeroext 117) #13
  %4 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !160
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i64, ptr %4, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !162
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mesh_get_x_mirror_vert_spatial(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !163 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MVert, ptr %7, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !143
  %11 = fneg float %10
  store float %11, ptr %3, align 4, !tbaa !143
  %12 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !143
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !143
  %15 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !143
  %17 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %16, ptr %17, align 4, !tbaa !143
  %18 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 117) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @editbmesh_get_x_mirror_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc ptr @editbmesh_get_x_mirror_vert_topo(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  br label %12

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @editbmesh_get_x_mirror_vert_spatial(ptr noundef %0, ptr noundef %1, ptr noundef %3) #13
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @editbmesh_get_x_mirror_vert_topo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !164 {
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef %0, i8 noundef zeroext 117) #13
  %7 = icmp eq i32 %3, -1
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %9 = load ptr, ptr %1, align 8, !tbaa !149
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %9) #13
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, %2
  %13 = or i1 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %8, %14
  %15 = phi i32 [ %16, %14 ], [ 0, %8 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #13
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %2
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %14, !llvm.loop !165

21:                                               ; preds = %14, %8
  %22 = phi i32 [ 0, %8 ], [ %16, %14 ]
  %23 = load ptr, ptr %1, align 8, !tbaa !149
  %24 = load i32, ptr %23, align 8, !tbaa !166
  %25 = icmp eq i32 %22, %24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %4
  %27 = phi i32 [ %22, %21 ], [ %3, %4 ]
  %28 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !160
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i64, ptr %28, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !162
  %32 = icmp eq i64 %31, -1
  %33 = inttoptr i64 %31 to ptr
  %34 = select i1 %32, ptr null, ptr %33
  br label %35

35:                                               ; preds = %26, %21
  %36 = phi ptr [ null, %21 ], [ %34, %26 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @editbmesh_get_x_mirror_vert_spatial(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !168 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %5 = load float, ptr %2, align 4, !tbaa !143
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ueq float %6, 0x7FF0000000000000
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !143
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fcmp ueq float %11, 0x7FF0000000000000
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !143
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = fcmp ueq float %16, 0x7FF0000000000000
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = fneg float %5
  store float %19, ptr %4, align 4, !tbaa !143
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %10, ptr %20, align 4, !tbaa !143
  %21 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %15, ptr %21, align 4, !tbaa !143
  %22 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 117) #13
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %1, align 8, !tbaa !149
  %26 = call ptr @BM_vert_at_index(ptr noundef %25, i32 noundef %22) #10
  br label %27

27:                                               ; preds = %18, %3, %8, %13, %24
  %28 = phi ptr [ %26, %24 ], [ null, %13 ], [ null, %8 ], [ null, %3 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_mesh_mirror_get_vert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 46
  %8 = load i8, ptr %7, align 1, !tbaa !169
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  %11 = icmp eq ptr %6, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !149
  %14 = tail call ptr @BM_vert_at_index(ptr noundef %13, i32 noundef %1) #10
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = tail call ptr @editbmesh_get_x_mirror_vert(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %14, ptr noundef nonnull %15, i32 noundef %1, i8 noundef zeroext %10) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %16) #13
  br label %22

20:                                               ; preds = %2
  %21 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %10) #13
  br label %22

22:                                               ; preds = %18, %12, %20
  %23 = phi i32 [ %21, %20 ], [ %19, %18 ], [ -1, %12 ]
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !170 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !171
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @mesh_get_x_mirror_faces(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MFace, align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !169
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr %12(i64 noundef %16, ptr noundef nonnull @.str.14) #10
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 28
  %20 = load i32, ptr %19, align 8, !tbaa !174
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.15) #10
  %24 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 115) #13
  %25 = load i32, ptr %13, align 8, !tbaa !75
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2, %27
  %28 = phi i64 [ %32, %27 ], [ 0, %2 ]
  %29 = trunc i64 %28 to i32
  %30 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %29, i8 noundef zeroext %11) #13
  %31 = getelementptr inbounds i32, ptr %17, i64 %28
  store i32 %30, ptr %31, align 4, !tbaa !98
  %32 = add nuw nsw i64 %28, 1
  %33 = load i32, ptr %13, align 8, !tbaa !75
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %27, label %36, !llvm.loop !175

36:                                               ; preds = %27, %2
  %37 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 101) #13
  %38 = load i32, ptr %19, align 8, !tbaa !174
  %39 = tail call ptr @BLI_ghash_new_ex(ptr noundef nonnull @mirror_facehash, ptr noundef nonnull @mirror_facecmp, ptr noundef nonnull @.str.16, i32 noundef %38) #10
  %40 = load i32, ptr %19, align 8, !tbaa !174
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %49, label %107

42:                                               ; preds = %49
  %43 = icmp sgt i32 %54, 0
  br i1 %43, label %44, label %107

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 1
  %46 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 2
  %47 = getelementptr inbounds %struct.MFace, ptr %3, i64 0, i32 3
  %48 = ptrtoint ptr %7 to i64
  br label %56

49:                                               ; preds = %36, %49
  %50 = phi ptr [ %53, %49 ], [ %7, %36 ]
  %51 = phi i32 [ %52, %49 ], [ 0, %36 ]
  tail call void @BLI_ghash_insert(ptr noundef %39, ptr noundef %50, ptr noundef %50) #10
  %52 = add nuw nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.MFace, ptr %50, i64 1
  %54 = load i32, ptr %19, align 8, !tbaa !174
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %49, label %42, !llvm.loop !176

56:                                               ; preds = %44, %98
  %57 = phi i64 [ 0, %44 ], [ %102, %98 ]
  %58 = phi ptr [ %7, %44 ], [ %103, %98 ]
  %59 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !177
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %17, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !98
  store i32 %63, ptr %3, align 4, !tbaa !179
  %64 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !180
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %17, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !98
  store i32 %68, ptr %45, align 4, !tbaa !180
  %69 = load i32, ptr %58, align 4, !tbaa !179
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %17, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !98
  store i32 %72, ptr %46, align 4, !tbaa !177
  %73 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !181
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %56
  %77 = zext i32 %74 to i64
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !98
  store i32 %79, ptr %47, align 4, !tbaa !181
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  store i32 %72, ptr %3, align 4, !tbaa !179
  store i32 %63, ptr %46, align 4, !tbaa !177
  store i32 0, ptr %45, align 4, !tbaa !180
  br label %82

82:                                               ; preds = %56, %81
  %83 = phi i32 [ %68, %81 ], [ 0, %56 ]
  store i32 %83, ptr %47, align 4, !tbaa !181
  br label %84

84:                                               ; preds = %82, %76
  %85 = call ptr @BLI_ghash_lookup(ptr noundef %39, ptr noundef nonnull %3) #10
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = ptrtoint ptr %85 to i64
  %89 = sub i64 %88, %48
  %90 = sdiv exact i64 %89, 20
  %91 = trunc i64 %90 to i32
  %92 = shl nuw nsw i64 %57, 1
  %93 = getelementptr inbounds i32, ptr %23, i64 %92
  store i32 %91, ptr %93, align 4, !tbaa !98
  %94 = call fastcc i32 @mirror_facerotation(ptr noundef nonnull %3, ptr noundef nonnull %85) #13, !range !182
  %95 = or disjoint i64 %92, 1
  br label %98

96:                                               ; preds = %84
  %97 = shl nuw nsw i64 %57, 1
  br label %98

98:                                               ; preds = %87, %96
  %99 = phi i64 [ %95, %87 ], [ %97, %96 ]
  %100 = phi i32 [ %94, %87 ], [ -1, %96 ]
  %101 = getelementptr inbounds i32, ptr %23, i64 %99
  store i32 %100, ptr %101, align 4, !tbaa !98
  %102 = add nuw nsw i64 %57, 1
  %103 = getelementptr inbounds %struct.MFace, ptr %58, i64 1
  %104 = load i32, ptr %19, align 8, !tbaa !174
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %56, label %107, !llvm.loop !183

107:                                              ; preds = %98, %36, %42
  call void @BLI_ghash_free(ptr noundef %39, ptr noundef null, ptr noundef null) #10
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %108(ptr noundef %17) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @mirror_facehash(ptr nocapture noundef readonly %0) #6 !PGOFuncName !184 {
  %2 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !181
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr %0, align 4, !tbaa !179
  %6 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !180
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !177
  br i1 %4, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @llvm.umin.i32(i32 %10, i32 %3)
  %13 = tail call i32 @llvm.umin.i32(i32 %8, i32 %12)
  %14 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %15 = tail call i32 @llvm.umax.i32(i32 %10, i32 %3)
  %16 = tail call i32 @llvm.umax.i32(i32 %14, i32 %15)
  br label %21

17:                                               ; preds = %1
  %18 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %19 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %10)
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %13, %11 ], [ %18, %17 ]
  %23 = phi i32 [ %16, %11 ], [ %20, %17 ]
  %24 = mul i32 %22, 39
  %25 = mul i32 %23, 31
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @mirror_facecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !185 {
  %3 = tail call fastcc i32 @mirror_facerotation(ptr noundef %0, ptr noundef %1) #13, !range !182
  %4 = icmp eq i32 %3, -1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @mirror_facerotation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !181
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %0, align 4, !tbaa !179
  %7 = load i32, ptr %1, align 4, !tbaa !179
  %8 = icmp eq i32 %6, %7
  br i1 %5, label %74, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %26

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !180
  %13 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !180
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !177
  %19 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !177
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !181
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %114, label %26

26:                                               ; preds = %22, %16, %10, %9
  %27 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !181
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !180
  %33 = icmp eq i32 %6, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !180
  %37 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !177
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !177
  %43 = icmp eq i32 %42, %4
  br i1 %43, label %114, label %44

44:                                               ; preds = %40, %34, %30, %26
  %45 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !177
  %47 = icmp eq i32 %46, %7
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !180
  %51 = icmp eq i32 %28, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !177
  %55 = icmp eq i32 %6, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !180
  %59 = icmp eq i32 %58, %4
  br i1 %59, label %114, label %60

60:                                               ; preds = %56, %52, %48, %44
  %61 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !180
  %63 = icmp eq i32 %62, %7
  br i1 %63, label %64, label %113

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !180
  %67 = icmp eq i32 %46, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !177
  %71 = icmp eq i32 %28, %70
  %72 = icmp eq i32 %6, %4
  %73 = and i1 %72, %71
  br i1 %73, label %114, label %113

74:                                               ; preds = %2
  br i1 %8, label %75, label %87

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !180
  %78 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !180
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !177
  %84 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !177
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %114, label %87

87:                                               ; preds = %81, %75, %74
  %88 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !177
  %90 = icmp eq i32 %89, %7
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !180
  %94 = icmp eq i32 %6, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !180
  %98 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !177
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %114, label %101

101:                                              ; preds = %95, %91, %87
  %102 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !180
  %104 = icmp eq i32 %103, %7
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !180
  %108 = icmp eq i32 %89, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !177
  %112 = icmp eq i32 %6, %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %101, %105, %109, %68, %64, %60
  br label %114

114:                                              ; preds = %68, %109, %95, %81, %56, %40, %22, %113
  %115 = phi i32 [ -1, %113 ], [ 0, %22 ], [ 1, %40 ], [ 2, %56 ], [ 0, %81 ], [ 1, %95 ], [ 2, %109 ], [ 3, %68 ]
  ret i32 %115
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !80
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #10
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %18 = load i32, ptr %12, align 8, !tbaa !80
  %19 = add nsw i32 %18, 1
  %20 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %6, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef %19, ptr noundef nonnull %7, i16 noundef signext 0, ptr noundef null, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %26

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4, !tbaa !98
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !98
  %25 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %6, i32 noundef %22, i32 noundef %24) #10
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %25, %21 ], [ %20, %17 ]
  store i32 %27, ptr %3, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %12, align 8, !tbaa !80
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = add i32 %27, -1
  store i32 %33, ptr %3, align 4, !tbaa !98
  br label %34

34:                                               ; preds = %26, %29, %5, %11, %32
  %35 = phi i8 [ 1, %32 ], [ 0, %11 ], [ 0, %5 ], [ 0, %29 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret i8 %35
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @view3d_sample_backbuf_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_face_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x float], align 8
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = call zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4) #13, !range !187
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %5
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %16 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %17 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !162
  %18 = or i64 %17, 128
  %19 = tail call ptr @mesh_get_derived_final(ptr noundef %15, ptr noundef nonnull %1, i64 noundef %18) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 -1, ptr %7, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %20 = load <2 x i32>, ptr %2, align 4, !tbaa !98
  %21 = sitofp <2 x i32> %20 to <2 x float>
  store <2 x float> %21, ptr %8, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store float 0x47EFFFFFE0000000, ptr %9, align 4, !tbaa !143
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 35
  %23 = load ptr, ptr %22, align 8, !tbaa !188
  %24 = tail call ptr %23(ptr noundef %19) #10
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 34
  %26 = load ptr, ptr %25, align 8, !tbaa !189
  %27 = tail call ptr %26(ptr noundef %19) #10
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 27
  %29 = load ptr, ptr %28, align 8, !tbaa !190
  %30 = tail call i32 %29(ptr noundef %19) #10
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 54
  %32 = load ptr, ptr %31, align 8, !tbaa !191
  %33 = tail call ptr %32(ptr noundef %19, i32 noundef 7) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %14
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %35
  %38 = load i32, ptr %6, align 4, !tbaa !98
  %39 = zext i32 %30 to i64
  br label %40

40:                                               ; preds = %37, %47
  %41 = phi i64 [ 0, %37 ], [ %48, %47 ]
  %42 = getelementptr inbounds i32, ptr %33, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !98
  %44 = icmp eq i32 %43, %38
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %41
  call fastcc void @ed_mesh_pick_face_vert__mpoly_find(ptr noundef %16, ptr noundef nonnull %8, ptr noundef %19, ptr noundef %46, ptr noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  br label %47

47:                                               ; preds = %40, %45
  %48 = add nuw nsw i64 %41, 1
  %49 = icmp eq i64 %48, %39
  br i1 %49, label %56, label %40, !llvm.loop !192

50:                                               ; preds = %14
  %51 = load i32, ptr %6, align 4, !tbaa !98
  %52 = icmp ult i32 %51, %30
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = zext i32 %51 to i64
  %55 = getelementptr inbounds %struct.MPoly, ptr %24, i64 %54
  call fastcc void @ed_mesh_pick_face_vert__mpoly_find(ptr noundef %16, ptr noundef nonnull %8, ptr noundef nonnull %19, ptr noundef %55, ptr noundef %27, ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  br label %56

56:                                               ; preds = %47, %35, %50, %53
  %57 = load i32, ptr %7, align 4, !tbaa !98
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %61 = load ptr, ptr %60, align 8, !tbaa !145
  tail call void %61(ptr noundef %19) #10
  br label %83

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 50
  %64 = load ptr, ptr %63, align 8, !tbaa !193
  %65 = tail call ptr %64(ptr noundef %19, i32 noundef 7) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %69 = load ptr, ptr %68, align 8, !tbaa !145
  tail call void %69(ptr noundef nonnull %19) #10
  br label %77

70:                                               ; preds = %62
  %71 = sext i32 %57 to i64
  %72 = getelementptr inbounds i32, ptr %65, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !98
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %75 = load ptr, ptr %74, align 8, !tbaa !145
  tail call void %75(ptr noundef nonnull %19) #10
  %76 = icmp eq i32 %73, -1
  br i1 %76, label %83, label %77

77:                                               ; preds = %67, %70
  %78 = phi i32 [ %57, %67 ], [ %73, %70 ]
  %79 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 26
  %80 = load i32, ptr %79, align 8, !tbaa !75
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 %78, ptr %3, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %84

83:                                               ; preds = %59, %70, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %84

84:                                               ; preds = %5, %83, %82
  %85 = phi i8 [ 1, %82 ], [ 0, %83 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i8 %85
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_mesh_pick_face_vert__mpoly_find(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !194 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = getelementptr inbounds %struct.MPoly, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !195
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %3, align 4, !tbaa !123
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.MLoop, ptr %4, i64 %15
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 76
  br label %18

18:                                               ; preds = %13, %31
  %19 = phi i32 [ %11, %13 ], [ %21, %31 ]
  %20 = phi ptr [ %16, %13 ], [ %32, %31 ]
  %21 = add nsw i32 %19, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %22 = load i32, ptr %20, align 4, !tbaa !196
  %23 = load ptr, ptr %17, align 8, !tbaa !198
  call void %23(ptr noundef %2, i32 noundef %22, ptr noundef nonnull %8) #10
  %24 = call i32 @ED_view3d_project_float_object(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = call fastcc float @len_manhattan_v2v2(ptr noundef %1, ptr noundef nonnull %9) #13
  %28 = load float, ptr %5, align 4, !tbaa !143
  %29 = fcmp olt float %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store float %27, ptr %5, align 4, !tbaa !143
  store i32 %22, ptr %6, align 4, !tbaa !98
  br label %31

31:                                               ; preds = %26, %30, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  %32 = getelementptr inbounds %struct.MLoop, ptr %20, i64 1
  %33 = icmp eq i32 %21, 0
  br i1 %33, label %34, label %18, !llvm.loop !199

34:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ViewContext, align 8
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca %struct.VertPickData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !75
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %14
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #10
  %19 = icmp eq i8 %5, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %18
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %23 = load i32, ptr %15, align 8, !tbaa !75
  %24 = add nsw i32 %23, 1
  %25 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %7, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef %24, ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef null, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %31

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4, !tbaa !98
  %28 = getelementptr inbounds i32, ptr %2, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !98
  %30 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %7, i32 noundef %27, i32 noundef %29) #10
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %25, %22 ], [ %30, %26 ]
  store i32 %32, ptr %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %15, align 8, !tbaa !75
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = add i32 %32, -1
  store i32 %38, ptr %3, align 4, !tbaa !98
  br label %65

39:                                               ; preds = %18
  %40 = load ptr, ptr %7, align 8, !tbaa !200
  %41 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !162
  %42 = call ptr @mesh_get_derived_final(ptr noundef %40, ptr noundef nonnull %1, i64 noundef %41) #10
  %43 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !202
  %45 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %47 = load <2 x i32>, ptr %2, align 4, !tbaa !98
  %48 = sitofp <2 x i32> %47 to <2 x float>
  store <2 x float> %48, ptr %9, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @ED_view3d_init_mats_rv3d(ptr noundef nonnull %1, ptr noundef %46) #10
  %49 = icmp eq ptr %42, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !152
  store ptr %52, ptr %10, align 8, !tbaa !206
  %53 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 2
  store ptr %44, ptr %53, align 8, !tbaa !208
  %54 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 1
  store ptr %9, ptr %54, align 8, !tbaa !209
  %55 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %55, align 8, !tbaa !210
  %56 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 4
  store i32 -1, ptr %56, align 4, !tbaa !211
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 71
  %58 = load ptr, ptr %57, align 8, !tbaa !212
  call void %58(ptr noundef nonnull %42, ptr noundef nonnull @ed_mesh_pick_vert__mapFunc, ptr noundef nonnull %10, i32 noundef 0) #10
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 95
  %60 = load ptr, ptr %59, align 8, !tbaa !145
  call void %60(ptr noundef nonnull %42) #10
  %61 = load i32, ptr %56, align 4, !tbaa !211
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  store i32 %61, ptr %3, align 4, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %65

64:                                               ; preds = %50, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %65

65:                                               ; preds = %37, %63, %64, %31, %34, %6, %14
  %66 = phi i8 [ 0, %64 ], [ 0, %14 ], [ 0, %6 ], [ 0, %34 ], [ 0, %31 ], [ 1, %63 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret i8 %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ed_mesh_pick_vert__mapFunc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !213 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !206
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MVert, ptr %7, i64 %8, i32 2
  %10 = load i8, ptr %9, align 2, !tbaa !214
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %14 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !208
  %16 = call i32 @ED_view3d_project_float_object(ptr noundef %15, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 7) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  %21 = call fastcc float @len_manhattan_v2v2(ptr noundef %20, ptr noundef nonnull %6) #13
  %22 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 3
  %23 = load float, ptr %22, align 8, !tbaa !210
  %24 = fcmp olt float %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  store float %21, ptr %22, align 8, !tbaa !210
  %26 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 4
  store i32 %1, ptr %26, align 4, !tbaa !211
  br label %27

27:                                               ; preds = %18, %25, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %28

28:                                               ; preds = %27, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mesh_active_dvert_get_em(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !158
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !64
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !141
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 24
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 2) #10
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @BM_mesh_active_vert_get(ptr noundef %20) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %1, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store ptr %25, ptr %1, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %27, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !216
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  br label %37

34:                                               ; preds = %24, %15, %11, %7, %2
  %35 = icmp eq ptr %1, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  store ptr null, ptr %1, align 8, !tbaa !67
  br label %37

37:                                               ; preds = %30, %34, %36
  %38 = phi ptr [ null, %36 ], [ null, %34 ], [ %33, %30 ]
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mesh_active_dvert_get_ob(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @BKE_mesh_mselect_active_get(ptr noundef %4, i32 noundef 0) #10
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i32 %5, ptr %1, align 4, !tbaa !98
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq i32 %5, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !218
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %struct.MDeformVert, ptr %12, i64 %15
  br label %17

17:                                               ; preds = %8, %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %8 ]
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @BKE_mesh_mselect_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_mesh_active_dvert_get_only(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !158
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @ED_mesh_active_dvert_get_em(ptr noundef nonnull %0, ptr noundef null) #13
  br label %14

12:                                               ; preds = %5
  %13 = tail call ptr @ED_mesh_active_dvert_get_ob(ptr noundef nonnull %0, ptr noundef null) #13
  br label %14

14:                                               ; preds = %1, %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !219 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !220
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !156
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  store ptr %7, ptr %0, align 8, !tbaa !129
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !223 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #13
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !224 {
  %4 = load float, ptr %1, align 4, !tbaa !143
  %5 = load float, ptr %2, align 4, !tbaa !143
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !143
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !143
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !143
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !225 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !143
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { optsize }

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
!34 = !{!35, !37, i64 176}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!63, !37, i64 120}
!63 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!64 = !{!65, !40, i64 136}
!65 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !66, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!66 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!67 = !{!37, !37, i64 0}
!68 = !{!69, !37, i64 32}
!69 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !70, i64 16}
!70 = !{!"PointerRNA", !71, i64 0, !37, i64 8, !37, i64 16}
!71 = !{!"", !37, i64 0}
!72 = !{!73, !37, i64 32}
!73 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!74 = !{!65, !37, i64 296}
!75 = !{!76, !41, i64 1280}
!76 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !77, i64 280, !77, i64 480, !77, i64 680, !77, i64 880, !77, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !45, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!77 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!78 = !{!76, !41, i64 1284}
!79 = !{!76, !41, i64 1300}
!80 = !{!76, !41, i64 1296}
!81 = !{!65, !41, i64 456}
!82 = !{!76, !37, i64 144}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = !{!87, !37, i64 40}
!87 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !45, i64 16, !45, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !45, i64 176, !45, i64 180}
!88 = !{!87, !41, i64 32}
!89 = distinct !{!89, !84}
!90 = !{!91, !40, i64 208}
!91 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !45, i64 216, !41, i64 220}
!92 = distinct !{!92, !84}
!93 = !{!65, !37, i64 400}
!94 = !{!65, !40, i64 1126}
!95 = distinct !{!95, !84}
!96 = distinct !{!96, !84}
!97 = !{!91, !40, i64 210}
!98 = !{!41, !41, i64 0}
!99 = distinct !{!99, !84}
!100 = !{!87, !40, i64 28}
!101 = distinct !{!101, !84}
!102 = distinct !{!102, !84}
!103 = !{!76, !38, i64 1360}
!104 = !{!105, !41, i64 8}
!105 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!106 = !{!105, !37, i64 0}
!107 = !{!108, !41, i64 0}
!108 = !{!"MDeformWeight", !41, i64 0, !45, i64 4}
!109 = distinct !{!109, !84}
!110 = distinct !{!110, !84}
!111 = distinct !{!111, !84}
!112 = distinct !{!112, !84}
!113 = distinct !{!113, !84}
!114 = distinct !{!114, !84}
!115 = distinct !{!115, !84}
!116 = distinct !{!116, !84}
!117 = distinct !{!117, !84}
!118 = distinct !{!118, !84}
!119 = distinct !{!119, !84}
!120 = distinct !{!120, !84}
!121 = distinct !{!121, !84}
!122 = distinct !{!122, !84}
!123 = !{!124, !41, i64 0}
!124 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!125 = !{!124, !40, i64 8}
!126 = distinct !{!126, !84}
!127 = distinct !{!127, !84}
!128 = !{i64 0, i64 8, !67, i64 8, i64 164, !129, i64 172, i64 4, !98, i64 176, i64 4, !98, i64 180, i64 4, !98, i64 184, i64 8, !67, i64 192, i64 8, !67}
!129 = !{!38, !38, i64 0}
!130 = !{!65, !37, i64 440}
!131 = !{!76, !40, i64 1366}
!132 = !{!76, !37, i64 152}
!133 = !{!134, !41, i64 100}
!134 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !135, i64 224, !136, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !45, i64 364, !45, i64 368, !40, i64 372, !40, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !38, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !45, i64 556, !45, i64 560, !38, i64 564, !45, i64 580, !45, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !45, i64 616, !45, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!135 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!136 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!137 = distinct !{!137, !84}
!138 = distinct !{!138, !84}
!139 = !{!65, !37, i64 448}
!140 = !{!35, !37, i64 264}
!141 = !{!76, !37, i64 272}
!142 = !{!"meshtools.c:copy_v3_v3"}
!143 = !{!45, !45, i64 0}
!144 = distinct !{!144, !84}
!145 = !{!146, !37, i64 1680}
!146 = !{!"DerivedMesh", !77, i64 0, !77, i64 200, !77, i64 400, !77, i64 600, !77, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!147 = distinct !{!147, !84}
!148 = !{!71, !37, i64 0}
!149 = !{!150, !37, i64 0}
!150 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !60, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!151 = distinct !{!151, !84}
!152 = !{!76, !37, i64 232}
!153 = distinct !{!153, !84}
!154 = !{!"meshtools.c:BM_iter_new"}
!155 = !{!"meshtools.c:BM_iter_step"}
!156 = !{!157, !37, i64 48}
!157 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!158 = !{!65, !41, i64 432}
!159 = !{!"meshtools.c:mesh_get_x_mirror_vert_topo"}
!160 = !{!161, !37, i64 0}
!161 = !{!"MirrTopoStore_t", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!162 = !{!60, !60, i64 0}
!163 = !{!"meshtools.c:mesh_get_x_mirror_vert_spatial"}
!164 = !{!"meshtools.c:editbmesh_get_x_mirror_vert_topo"}
!165 = distinct !{!165, !84}
!166 = !{!167, !41, i64 0}
!167 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !77, i64 144, !77, i64 344, !77, i64 544, !77, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!168 = !{!"meshtools.c:editbmesh_get_x_mirror_vert_spatial"}
!169 = !{!76, !38, i64 1365}
!170 = !{!"meshtools.c:_bm_elem_index_get"}
!171 = !{!172, !41, i64 8}
!172 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!173 = !{!76, !37, i64 208}
!174 = !{!76, !41, i64 1288}
!175 = distinct !{!175, !84}
!176 = distinct !{!176, !84}
!177 = !{!178, !41, i64 8}
!178 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!179 = !{!178, !41, i64 0}
!180 = !{!178, !41, i64 4}
!181 = !{!178, !41, i64 12}
!182 = !{i32 -1, i32 4}
!183 = distinct !{!183, !84}
!184 = !{!"meshtools.c:mirror_facehash"}
!185 = !{!"meshtools.c:mirror_facecmp"}
!186 = !{!"meshtools.c:mirror_facerotation"}
!187 = !{i8 0, i8 2}
!188 = !{!146, !37, i64 1200}
!189 = !{!146, !37, i64 1192}
!190 = !{!146, !37, i64 1136}
!191 = !{!146, !37, i64 1352}
!192 = distinct !{!192, !84}
!193 = !{!146, !37, i64 1320}
!194 = !{!"meshtools.c:ed_mesh_pick_face_vert__mpoly_find"}
!195 = !{!124, !41, i64 4}
!196 = !{!197, !41, i64 0}
!197 = !{!"MLoop", !41, i64 0, !41, i64 4}
!198 = !{!146, !37, i64 1528}
!199 = distinct !{!199, !84}
!200 = !{!201, !37, i64 0}
!201 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!202 = !{!201, !37, i64 24}
!203 = !{!204, !37, i64 376}
!204 = !{!"ARegion", !37, i64 0, !37, i64 8, !205, i64 16, !51, i64 176, !51, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !45, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!205 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!206 = !{!207, !37, i64 0}
!207 = !{!"VertPickData", !37, i64 0, !37, i64 8, !37, i64 16, !45, i64 24, !41, i64 28}
!208 = !{!207, !37, i64 16}
!209 = !{!207, !37, i64 8}
!210 = !{!207, !45, i64 24}
!211 = !{!207, !41, i64 28}
!212 = !{!146, !37, i64 1488}
!213 = !{!"meshtools.c:ed_mesh_pick_vert__mapFunc"}
!214 = !{!215, !38, i64 18}
!215 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!216 = !{!217, !37, i64 0}
!217 = !{!"BMVert", !172, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!218 = !{!76, !37, i64 248}
!219 = !{!"meshtools.c:BM_iter_init"}
!220 = !{!157, !38, i64 60}
!221 = !{!157, !37, i64 40}
!222 = !{!167, !37, i64 32}
!223 = !{!"meshtools.c:len_manhattan_v2v2"}
!224 = !{!"meshtools.c:sub_v2_v2v2"}
!225 = !{!"meshtools.c:len_manhattan_v2"}
