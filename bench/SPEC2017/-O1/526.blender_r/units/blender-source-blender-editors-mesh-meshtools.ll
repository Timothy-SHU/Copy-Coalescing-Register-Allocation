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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.VertPickData = type { ptr, ptr, ptr, float, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }

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

; Function Attrs: nounwind uwtable
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
  %13 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %15 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #9
  %16 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str) #9
  br label %842

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
  tail call void @BKE_report(ptr noundef %30, i32 noundef 16, ptr noundef nonnull @.str.1) #9
  br label %842

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %32 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %10) #9
  %33 = load ptr, ptr %10, align 8, !tbaa !67
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %31, %76
  %36 = phi ptr [ %84, %76 ], [ %33, %31 ]
  %37 = phi i8 [ %83, %76 ], [ 0, %31 ]
  %38 = phi i32 [ %82, %76 ], [ 0, %31 ]
  %39 = phi i32 [ %81, %76 ], [ 0, %31 ]
  %40 = phi i32 [ %80, %76 ], [ 0, %31 ]
  %41 = phi i32 [ %79, %76 ], [ 0, %31 ]
  %42 = phi i32 [ %78, %76 ], [ 0, %31 ]
  %43 = phi i32 [ %77, %76 ], [ 0, %31 ]
  %44 = getelementptr inbounds %struct.CollectionPointerLink, ptr %36, i64 0, i32 2, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.Base, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !72
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !64
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %51, label %76

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 26
  %55 = load i32, ptr %54, align 8, !tbaa !75
  %56 = add nsw i32 %55, %41
  %57 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 27
  %58 = load i32, ptr %57, align 4, !tbaa !78
  %59 = add nsw i32 %58, %42
  %60 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 31
  %61 = load i32, ptr %60, align 4, !tbaa !79
  %62 = add nsw i32 %61, %40
  %63 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 30
  %64 = load i32, ptr %63, align 8, !tbaa !80
  %65 = add nsw i32 %64, %39
  %66 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 31
  %67 = load i32, ptr %66, align 8, !tbaa !81
  %68 = add nsw i32 %67, %43
  %69 = icmp eq ptr %47, %15
  %70 = select i1 %69, i8 1, i8 %37
  %71 = getelementptr inbounds %struct.Mesh, ptr %53, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !82
  %73 = icmp ne ptr %72, null
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %38, %74
  br label %76

76:                                               ; preds = %51, %35
  %77 = phi i32 [ %43, %35 ], [ %68, %51 ]
  %78 = phi i32 [ %42, %35 ], [ %59, %51 ]
  %79 = phi i32 [ %41, %35 ], [ %56, %51 ]
  %80 = phi i32 [ %40, %35 ], [ %62, %51 ]
  %81 = phi i32 [ %39, %35 ], [ %65, %51 ]
  %82 = phi i32 [ %38, %35 ], [ %75, %51 ]
  %83 = phi i8 [ %37, %35 ], [ %70, %51 ]
  %84 = load ptr, ptr %36, align 8, !tbaa !67
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %35, !llvm.loop !83

86:                                               ; preds = %76, %31
  %87 = phi i32 [ 0, %31 ], [ %77, %76 ]
  %88 = phi i32 [ 0, %31 ], [ %78, %76 ]
  %89 = phi i32 [ 0, %31 ], [ %79, %76 ]
  %90 = phi i32 [ 0, %31 ], [ %80, %76 ]
  %91 = phi i32 [ 0, %31 ], [ %81, %76 ]
  %92 = phi i32 [ 0, %31 ], [ %82, %76 ]
  %93 = phi i8 [ 0, %31 ], [ %83, %76 ]
  call void @BLI_freelistN(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %97, i32 noundef 16, ptr noundef nonnull @.str.2) #9
  br label %842

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %100 = load ptr, ptr %99, align 8, !tbaa !74
  %101 = getelementptr inbounds %struct.Mesh, ptr %100, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !82
  %103 = icmp eq i32 %89, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.Mesh, ptr %100, i64 0, i32 26
  %106 = load i32, ptr %105, align 8, !tbaa !75
  %107 = icmp eq i32 %89, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %98
  %109 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  call void @BKE_report(ptr noundef %110, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %842

111:                                              ; preds = %104
  %112 = sext i32 %89 to i64
  %113 = icmp sgt i32 %89, 2000000000
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %116, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %89, i64 noundef 2000000000) #9
  br label %842

117:                                              ; preds = %111
  call void @BKE_mesh_tessface_clear(ptr noundef %100) #9
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %119 = sext i32 %87 to i64
  %120 = shl nsw i64 %119, 3
  %121 = call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.5) #9
  %122 = icmp eq i32 %87, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %125 = shl nsw i64 %119, 2
  %126 = call ptr %124(i64 noundef %125, ptr noundef nonnull @.str.6) #9
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi ptr [ %126, %123 ], [ null, %117 ]
  %129 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 31
  %130 = load i32, ptr %129, align 8, !tbaa !81
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127, %132
  %133 = phi i64 [ %134, %132 ], [ 0, %127 ]
  %134 = add nuw nsw i64 %133, 1
  %135 = trunc i64 %134 to i16
  %136 = call ptr @give_current_material(ptr noundef %15, i16 noundef signext %135) #9
  %137 = getelementptr inbounds ptr, ptr %121, i64 %133
  store ptr %136, ptr %137, align 8, !tbaa !67
  call void @id_us_plus(ptr noundef %136) #9
  %138 = load i32, ptr %129, align 8, !tbaa !81
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %134, %139
  br i1 %140, label %132, label %141, !llvm.loop !86

141:                                              ; preds = %132, %127
  %142 = icmp eq ptr %102, null
  br i1 %142, label %163, label %143

143:                                              ; preds = %141
  %144 = call ptr @BKE_key_copy(ptr noundef nonnull %102) #9
  %145 = getelementptr inbounds %struct.Key, ptr %102, i64 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !67
  %147 = icmp eq ptr %146, null
  br i1 %147, label %168, label %148

148:                                              ; preds = %143
  %149 = mul nsw i64 %112, 12
  br label %150

150:                                              ; preds = %148, %157
  %151 = phi ptr [ %146, %148 ], [ %161, %157 ]
  %152 = getelementptr inbounds %struct.KeyBlock, ptr %151, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !87
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %156(ptr noundef nonnull %153) #9
  br label %157

157:                                              ; preds = %155, %150
  %158 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %159 = call ptr %158(i64 noundef %149, ptr noundef nonnull @.str.7) #9
  store ptr %159, ptr %152, align 8, !tbaa !87
  %160 = getelementptr inbounds %struct.KeyBlock, ptr %151, i64 0, i32 8
  store i32 %89, ptr %160, align 8, !tbaa !89
  %161 = load ptr, ptr %151, align 8, !tbaa !67
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %150, !llvm.loop !90

163:                                              ; preds = %141
  %164 = icmp eq i32 %92, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = call ptr @BKE_key_add(ptr noundef %100) #9
  store ptr %166, ptr %101, align 8, !tbaa !82
  %167 = getelementptr inbounds %struct.Key, ptr %166, i64 0, i32 9
  store i16 1, ptr %167, align 8, !tbaa !91
  br label %168

168:                                              ; preds = %157, %143, %163, %165
  %169 = phi ptr [ %166, %165 ], [ null, %163 ], [ %102, %143 ], [ %102, %157 ]
  %170 = phi ptr [ null, %165 ], [ null, %163 ], [ %144, %143 ], [ %144, %157 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %171 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %11) #9
  %172 = load ptr, ptr %11, align 8, !tbaa !67
  %173 = icmp eq ptr %172, null
  br i1 %173, label %348, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 25
  %176 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 25
  %177 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 97
  %178 = icmp ne ptr %169, null
  %179 = getelementptr inbounds %struct.Key, ptr %169, i64 0, i32 6
  %180 = getelementptr inbounds %struct.Key, ptr %169, i64 0, i32 10
  %181 = mul nsw i64 %112, 12
  br label %182

182:                                              ; preds = %174, %344
  %183 = phi ptr [ %172, %174 ], [ %346, %344 ]
  %184 = phi i32 [ %130, %174 ], [ %345, %344 ]
  %185 = getelementptr inbounds %struct.CollectionPointerLink, ptr %183, i64 0, i32 2, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !68
  %187 = getelementptr inbounds %struct.Base, ptr %186, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !72
  %189 = icmp eq ptr %15, %188
  br i1 %189, label %344, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.Object, ptr %188, i64 0, i32 3
  %192 = load i16, ptr %191, align 8, !tbaa !64
  %193 = icmp eq i16 %192, 1
  br i1 %193, label %194, label %344

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.Object, ptr %188, i64 0, i32 19
  %196 = load ptr, ptr %195, align 8, !tbaa !74
  %197 = getelementptr inbounds %struct.Object, ptr %188, i64 0, i32 25
  %198 = load ptr, ptr %197, align 8, !tbaa !67
  %199 = icmp eq ptr %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %194, %208
  %201 = phi ptr [ %209, %208 ], [ %198, %194 ]
  %202 = getelementptr inbounds %struct.bDeformGroup, ptr %201, i64 0, i32 2
  %203 = call ptr @defgroup_find_name(ptr noundef %15, ptr noundef nonnull %202) #9
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %207 = call ptr %206(i64 noundef 88, ptr noundef nonnull @.str.8) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %207, ptr noundef nonnull align 8 dereferenceable(88) %201, i64 88, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %175, ptr noundef %207) #9
  br label %208

208:                                              ; preds = %200, %205
  %209 = load ptr, ptr %201, align 8, !tbaa !67
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %200, !llvm.loop !93

211:                                              ; preds = %208, %194
  %212 = load ptr, ptr %176, align 8, !tbaa !94
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %211
  %215 = load i16, ptr %177, align 2, !tbaa !95
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i16 1, ptr %177, align 2, !tbaa !95
  br label %218

218:                                              ; preds = %217, %214, %211
  %219 = getelementptr inbounds %struct.Mesh, ptr %196, i64 0, i32 26
  %220 = load i32, ptr %219, align 8, !tbaa !75
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %344, label %222

222:                                              ; preds = %218
  %223 = icmp slt i32 %184, 32766
  br i1 %223, label %224, label %267

224:                                              ; preds = %222
  %225 = load ptr, ptr %187, align 8, !tbaa !72
  %226 = getelementptr inbounds %struct.Object, ptr %225, i64 0, i32 31
  %227 = load i32, ptr %226, align 8, !tbaa !81
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %267, label %235

229:                                              ; preds = %264
  %230 = add nuw nsw i32 %238, 1
  %231 = load ptr, ptr %187, align 8, !tbaa !72
  %232 = getelementptr inbounds %struct.Object, ptr %231, i64 0, i32 31
  %233 = load i32, ptr %232, align 8, !tbaa !81
  %234 = icmp slt i32 %238, %233
  br i1 %234, label %235, label %267, !llvm.loop !96

235:                                              ; preds = %224, %229
  %236 = phi ptr [ %231, %229 ], [ %225, %224 ]
  %237 = phi i32 [ %265, %229 ], [ %184, %224 ]
  %238 = phi i32 [ %230, %229 ], [ 1, %224 ]
  %239 = trunc i32 %238 to i16
  %240 = call ptr @give_current_material(ptr noundef %236, i16 noundef signext %239) #9
  %241 = icmp sgt i32 %237, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %235
  %243 = zext nneg i32 %237 to i64
  br label %244

244:                                              ; preds = %242, %249
  %245 = phi i64 [ 0, %242 ], [ %250, %249 ]
  %246 = getelementptr inbounds ptr, ptr %121, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !67
  %248 = icmp eq ptr %240, %247
  br i1 %248, label %252, label %249

249:                                              ; preds = %244
  %250 = add nuw nsw i64 %245, 1
  %251 = icmp eq i64 %250, %243
  br i1 %251, label %254, label %244, !llvm.loop !97

252:                                              ; preds = %244
  %253 = trunc i64 %245 to i32
  br label %254

254:                                              ; preds = %252, %249, %235
  %255 = phi i32 [ 0, %235 ], [ %253, %252 ], [ %237, %249 ]
  %256 = icmp eq i32 %255, %237
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = zext nneg i32 %255 to i64
  %259 = getelementptr inbounds ptr, ptr %121, i64 %258
  store ptr %240, ptr %259, align 8, !tbaa !67
  %260 = icmp eq ptr %240, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %257
  call void @id_us_plus(ptr noundef nonnull %240) #9
  br label %262

262:                                              ; preds = %261, %257
  %263 = add nsw i32 %237, 1
  br label %264

264:                                              ; preds = %262, %254
  %265 = phi i32 [ %263, %262 ], [ %237, %254 ]
  %266 = icmp sgt i32 %265, 32765
  br i1 %266, label %267, label %229

267:                                              ; preds = %264, %229, %224, %222
  %268 = phi i32 [ %184, %222 ], [ %184, %224 ], [ %265, %229 ], [ 32766, %264 ]
  %269 = getelementptr inbounds %struct.Mesh, ptr %196, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !82
  %271 = icmp ne ptr %270, null
  %272 = select i1 %271, i1 %178, i1 false
  br i1 %272, label %273, label %344

273:                                              ; preds = %267
  %274 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !67
  %275 = getelementptr inbounds %struct.Key, ptr %270, i64 0, i32 10
  %276 = load i16, ptr %275, align 2, !tbaa !98
  %277 = sext i16 %276 to i64
  %278 = shl nsw i64 %277, 2
  %279 = call ptr %274(i64 noundef %278, ptr noundef nonnull @__func__.join_mesh_exec) #9
  %280 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !67
  %281 = load ptr, ptr %269, align 8, !tbaa !82
  %282 = getelementptr inbounds %struct.Key, ptr %281, i64 0, i32 10
  %283 = load i16, ptr %282, align 2, !tbaa !98
  %284 = sext i16 %283 to i64
  %285 = shl nsw i64 %284, 3
  %286 = call ptr %280(i64 noundef %285, ptr noundef nonnull @__func__.join_mesh_exec) #9
  %287 = load ptr, ptr %269, align 8, !tbaa !82
  %288 = getelementptr inbounds %struct.Key, ptr %287, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !67
  %290 = icmp eq ptr %289, null
  br i1 %290, label %315, label %291

291:                                              ; preds = %273, %309
  %292 = phi i64 [ %312, %309 ], [ 0, %273 ]
  %293 = phi ptr [ %313, %309 ], [ %289, %273 ]
  %294 = getelementptr inbounds %struct.KeyBlock, ptr %293, i64 0, i32 11
  %295 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %169, ptr noundef nonnull %294) #9
  %296 = icmp eq ptr %295, null
  br i1 %296, label %300, label %297

297:                                              ; preds = %291
  %298 = call i32 @BLI_findindex(ptr noundef nonnull %179, ptr noundef nonnull %295) #9
  %299 = getelementptr inbounds i32, ptr %279, i64 %292
  store i32 %298, ptr %299, align 4, !tbaa !99
  br label %309

300:                                              ; preds = %291
  %301 = load i16, ptr %180, align 2, !tbaa !98
  %302 = sext i16 %301 to i32
  %303 = getelementptr inbounds i32, ptr %279, i64 %292
  store i32 %302, ptr %303, align 4, !tbaa !99
  %304 = call ptr @BKE_keyblock_add(ptr noundef nonnull %169, ptr noundef nonnull %294) #9
  call void @BKE_keyblock_copy_settings(ptr noundef %304, ptr noundef nonnull %293) #9
  %305 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %306 = call ptr %305(i64 noundef %181, ptr noundef nonnull @.str.9) #9
  %307 = getelementptr inbounds %struct.KeyBlock, ptr %304, i64 0, i32 10
  store ptr %306, ptr %307, align 8, !tbaa !87
  %308 = getelementptr inbounds %struct.KeyBlock, ptr %304, i64 0, i32 8
  store i32 %89, ptr %308, align 8, !tbaa !89
  br label %309

309:                                              ; preds = %300, %297
  %310 = phi ptr [ %295, %297 ], [ %304, %300 ]
  %311 = getelementptr inbounds ptr, ptr %286, i64 %292
  store ptr %310, ptr %311, align 8, !tbaa !67
  %312 = add nuw i64 %292, 1
  %313 = load ptr, ptr %293, align 8, !tbaa !67
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %291, !llvm.loop !100

315:                                              ; preds = %309, %273
  %316 = load ptr, ptr %269, align 8, !tbaa !82
  %317 = getelementptr inbounds %struct.Key, ptr %316, i64 0, i32 6
  %318 = load ptr, ptr %317, align 8, !tbaa !67
  %319 = icmp eq ptr %318, null
  br i1 %319, label %341, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.Key, ptr %316, i64 0, i32 10
  %322 = load i16, ptr %321, align 2, !tbaa !98
  br label %323

323:                                              ; preds = %320, %337
  %324 = phi i64 [ 0, %320 ], [ %338, %337 ]
  %325 = phi ptr [ %318, %320 ], [ %339, %337 ]
  %326 = getelementptr inbounds %struct.KeyBlock, ptr %325, i64 0, i32 6
  %327 = load i16, ptr %326, align 4, !tbaa !101
  %328 = icmp slt i16 %327, %322
  br i1 %328, label %329, label %337

329:                                              ; preds = %323
  %330 = sext i16 %327 to i64
  %331 = getelementptr inbounds i32, ptr %279, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !99
  %333 = trunc i32 %332 to i16
  %334 = getelementptr inbounds ptr, ptr %286, i64 %324
  %335 = load ptr, ptr %334, align 8, !tbaa !67
  %336 = getelementptr inbounds %struct.KeyBlock, ptr %335, i64 0, i32 6
  store i16 %333, ptr %336, align 4, !tbaa !101
  br label %337

337:                                              ; preds = %323, %329
  %338 = add nuw i64 %324, 1
  %339 = load ptr, ptr %325, align 8, !tbaa !67
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %323, !llvm.loop !102

341:                                              ; preds = %337, %315
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %342(ptr noundef %279) #9
  %343 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %343(ptr noundef %286) #9
  br label %344

344:                                              ; preds = %218, %341, %267, %190, %182
  %345 = phi i32 [ %268, %341 ], [ %268, %267 ], [ %184, %218 ], [ %184, %190 ], [ %184, %182 ]
  %346 = load ptr, ptr %183, align 8, !tbaa !67
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %182, !llvm.loop !103

348:                                              ; preds = %344, %168
  %349 = phi i32 [ %130, %168 ], [ %345, %344 ]
  call void @BLI_freelistN(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  call void @CustomData_reset(ptr noundef nonnull %5) #9
  call void @CustomData_reset(ptr noundef nonnull %6) #9
  call void @CustomData_reset(ptr noundef nonnull %7) #9
  call void @CustomData_reset(ptr noundef nonnull %8) #9
  call void @CustomData_reset(ptr noundef nonnull %9) #9
  %350 = call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %89) #9
  %351 = call ptr @CustomData_add_layer(ptr noundef nonnull %6, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %88) #9
  %352 = call ptr @CustomData_add_layer(ptr noundef nonnull %8, i32 noundef 26, i32 noundef 1, ptr noundef null, i32 noundef %90) #9
  %353 = call ptr @CustomData_add_layer(ptr noundef nonnull %9, i32 noundef 25, i32 noundef 1, ptr noundef null, i32 noundef %91) #9
  %354 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  %355 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %354) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  %356 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %12) #9
  %357 = load ptr, ptr %12, align 8, !tbaa !67
  %358 = icmp eq ptr %357, null
  br i1 %358, label %730, label %359

359:                                              ; preds = %348
  %360 = load i64, ptr @CD_MASK_MESH, align 8
  %361 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 25
  %362 = icmp eq ptr %169, null
  %363 = getelementptr inbounds %struct.Key, ptr %169, i64 0, i32 6
  %364 = icmp eq ptr %169, null
  %365 = getelementptr inbounds %struct.Key, ptr %169, i64 0, i32 6
  %366 = icmp eq ptr %170, null
  %367 = load i64, ptr @CD_MASK_MESH, align 8
  %368 = icmp sgt i32 %349, 0
  %369 = icmp eq ptr %128, null
  %370 = zext nneg i32 %349 to i64
  br label %371

371:                                              ; preds = %359, %719
  %372 = phi ptr [ %357, %359 ], [ %728, %719 ]
  %373 = phi ptr [ %350, %359 ], [ %727, %719 ]
  %374 = phi ptr [ %351, %359 ], [ %726, %719 ]
  %375 = phi ptr [ %353, %359 ], [ %725, %719 ]
  %376 = phi i32 [ 0, %359 ], [ %724, %719 ]
  %377 = phi i32 [ 0, %359 ], [ %723, %719 ]
  %378 = phi i32 [ 0, %359 ], [ %722, %719 ]
  %379 = phi i32 [ 0, %359 ], [ %721, %719 ]
  %380 = phi ptr [ %352, %359 ], [ %720, %719 ]
  %381 = getelementptr inbounds %struct.CollectionPointerLink, ptr %372, i64 0, i32 2, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !68
  %383 = getelementptr inbounds %struct.Base, ptr %382, i64 0, i32 7
  %384 = load ptr, ptr %383, align 8, !tbaa !72
  %385 = getelementptr inbounds %struct.Object, ptr %384, i64 0, i32 3
  %386 = load i16, ptr %385, align 8, !tbaa !64
  %387 = icmp eq i16 %386, 1
  br i1 %387, label %388, label %719

388:                                              ; preds = %371
  %389 = getelementptr inbounds %struct.Object, ptr %384, i64 0, i32 19
  %390 = load ptr, ptr %389, align 8, !tbaa !74
  %391 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 26
  %392 = load i32, ptr %391, align 8, !tbaa !75
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %590, label %394

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 41
  %396 = load i8, ptr %395, align 8, !tbaa !104
  %397 = load ptr, ptr %99, align 8, !tbaa !74
  %398 = getelementptr inbounds %struct.Mesh, ptr %397, i64 0, i32 41
  %399 = load i8, ptr %398, align 8, !tbaa !104
  %400 = or i8 %399, %396
  store i8 %400, ptr %398, align 8, !tbaa !104
  %401 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 21
  %402 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %401, ptr noundef nonnull %5, i64 noundef %360, i32 noundef 2, i32 noundef %89) #9
  %403 = load i32, ptr %391, align 8, !tbaa !75
  call void @CustomData_copy_data_named(ptr noundef nonnull %401, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %379, i32 noundef %403) #9
  %404 = call ptr @CustomData_get(ptr noundef nonnull %5, i32 noundef %379, i32 noundef 2) #9
  %405 = icmp eq ptr %404, null
  br i1 %405, label %452, label %406

406:                                              ; preds = %394
  %407 = load i32, ptr %391, align 8, !tbaa !75
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %452

409:                                              ; preds = %406, %447
  %410 = phi i64 [ %448, %447 ], [ 0, %406 ]
  %411 = getelementptr inbounds %struct.MDeformVert, ptr %404, i64 %410
  %412 = getelementptr inbounds %struct.MDeformVert, ptr %404, i64 %410, i32 1
  %413 = load i32, ptr %412, align 8, !tbaa !105
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %447

415:                                              ; preds = %409, %442
  %416 = phi i64 [ %443, %442 ], [ 0, %409 ]
  %417 = load ptr, ptr %383, align 8, !tbaa !72
  %418 = getelementptr inbounds %struct.Object, ptr %417, i64 0, i32 25
  %419 = load ptr, ptr %411, align 8, !tbaa !107
  %420 = getelementptr inbounds %struct.MDeformWeight, ptr %419, i64 %416
  %421 = load i32, ptr %420, align 4, !tbaa !108
  %422 = call ptr @BLI_findlink(ptr noundef nonnull %418, i32 noundef %421) #9
  %423 = icmp eq ptr %422, null
  br i1 %423, label %442, label %424

424:                                              ; preds = %415
  %425 = load ptr, ptr %361, align 8, !tbaa !67
  %426 = icmp eq ptr %425, null
  br i1 %426, label %442, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.bDeformGroup, ptr %422, i64 0, i32 2
  br label %429

429:                                              ; preds = %427, %438
  %430 = phi ptr [ %425, %427 ], [ %440, %438 ]
  %431 = phi i32 [ 0, %427 ], [ %439, %438 ]
  %432 = getelementptr inbounds %struct.bDeformGroup, ptr %430, i64 0, i32 2
  %433 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %432, ptr noundef nonnull dereferenceable(1) %428) #10
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %429
  %436 = load ptr, ptr %411, align 8, !tbaa !107
  %437 = getelementptr inbounds %struct.MDeformWeight, ptr %436, i64 %416
  store i32 %431, ptr %437, align 4, !tbaa !108
  br label %442

438:                                              ; preds = %429
  %439 = add nuw nsw i32 %431, 1
  %440 = load ptr, ptr %430, align 8, !tbaa !67
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %429, !llvm.loop !110

442:                                              ; preds = %438, %424, %415, %435
  %443 = add nuw nsw i64 %416, 1
  %444 = load i32, ptr %412, align 8, !tbaa !105
  %445 = sext i32 %444 to i64
  %446 = icmp slt i64 %443, %445
  br i1 %446, label %415, label %447, !llvm.loop !111

447:                                              ; preds = %442, %409
  %448 = add nuw nsw i64 %410, 1
  %449 = load i32, ptr %391, align 8, !tbaa !75
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %409, label %452, !llvm.loop !112

452:                                              ; preds = %447, %406, %394
  %453 = load ptr, ptr %383, align 8, !tbaa !72
  %454 = icmp eq ptr %453, %15
  br i1 %454, label %528, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %456) #9
  %457 = load i32, ptr %391, align 8, !tbaa !75
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %455, %459
  %460 = phi ptr [ %463, %459 ], [ %373, %455 ]
  %461 = phi i32 [ %462, %459 ], [ 0, %455 ]
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %460) #9
  %462 = add nuw nsw i32 %461, 1
  %463 = getelementptr inbounds %struct.MVert, ptr %460, i64 1
  %464 = load i32, ptr %391, align 8, !tbaa !75
  %465 = icmp slt i32 %462, %464
  br i1 %465, label %459, label %466, !llvm.loop !113

466:                                              ; preds = %459, %455
  br i1 %362, label %586, label %467

467:                                              ; preds = %466
  %468 = load ptr, ptr %363, align 8, !tbaa !67
  %469 = icmp eq ptr %468, null
  br i1 %469, label %586, label %470

470:                                              ; preds = %467
  %471 = mul nsw i32 %379, 3
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 4
  br label %474

474:                                              ; preds = %470, %525
  %475 = phi ptr [ %468, %470 ], [ %526, %525 ]
  %476 = getelementptr inbounds %struct.KeyBlock, ptr %475, i64 0, i32 10
  %477 = load ptr, ptr %476, align 8, !tbaa !87
  %478 = getelementptr inbounds float, ptr %477, i64 %472
  %479 = load ptr, ptr %473, align 8, !tbaa !82
  %480 = icmp eq ptr %479, null
  br i1 %480, label %484, label %481

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.KeyBlock, ptr %475, i64 0, i32 11
  %483 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %479, ptr noundef nonnull %482) #9
  br label %484

484:                                              ; preds = %474, %481
  %485 = phi ptr [ %483, %481 ], [ null, %474 ]
  %486 = icmp eq ptr %485, null
  %487 = load i32, ptr %391, align 8, !tbaa !75
  %488 = icmp sgt i32 %487, 0
  br i1 %486, label %489, label %490

489:                                              ; preds = %484
  br i1 %488, label %510, label %525

490:                                              ; preds = %484
  br i1 %488, label %491, label %525

491:                                              ; preds = %490
  %492 = getelementptr inbounds %struct.KeyBlock, ptr %485, i64 0, i32 10
  %493 = load ptr, ptr %492, align 8, !tbaa !87
  br label %494

494:                                              ; preds = %491, %494
  %495 = phi i32 [ %505, %494 ], [ 0, %491 ]
  %496 = phi ptr [ %507, %494 ], [ %493, %491 ]
  %497 = phi ptr [ %506, %494 ], [ %478, %491 ]
  %498 = load float, ptr %496, align 4, !tbaa !114
  store float %498, ptr %497, align 4, !tbaa !114
  %499 = getelementptr inbounds float, ptr %496, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !114
  %501 = getelementptr inbounds float, ptr %497, i64 1
  store float %500, ptr %501, align 4, !tbaa !114
  %502 = getelementptr inbounds float, ptr %496, i64 2
  %503 = load float, ptr %502, align 4, !tbaa !114
  %504 = getelementptr inbounds float, ptr %497, i64 2
  store float %503, ptr %504, align 4, !tbaa !114
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %497) #9
  %505 = add nuw nsw i32 %495, 1
  %506 = getelementptr inbounds float, ptr %497, i64 3
  %507 = getelementptr inbounds float, ptr %496, i64 3
  %508 = load i32, ptr %391, align 8, !tbaa !75
  %509 = icmp slt i32 %505, %508
  br i1 %509, label %494, label %525, !llvm.loop !115

510:                                              ; preds = %489, %510
  %511 = phi ptr [ %523, %510 ], [ %373, %489 ]
  %512 = phi i32 [ %521, %510 ], [ 0, %489 ]
  %513 = phi ptr [ %522, %510 ], [ %478, %489 ]
  %514 = load float, ptr %511, align 4, !tbaa !114
  store float %514, ptr %513, align 4, !tbaa !114
  %515 = getelementptr inbounds float, ptr %511, i64 1
  %516 = load float, ptr %515, align 4, !tbaa !114
  %517 = getelementptr inbounds float, ptr %513, i64 1
  store float %516, ptr %517, align 4, !tbaa !114
  %518 = getelementptr inbounds float, ptr %511, i64 2
  %519 = load float, ptr %518, align 4, !tbaa !114
  %520 = getelementptr inbounds float, ptr %513, i64 2
  store float %519, ptr %520, align 4, !tbaa !114
  %521 = add nuw nsw i32 %512, 1
  %522 = getelementptr inbounds float, ptr %513, i64 3
  %523 = getelementptr inbounds %struct.MVert, ptr %511, i64 1
  %524 = icmp eq i32 %521, %487
  br i1 %524, label %525, label %510, !llvm.loop !116

525:                                              ; preds = %494, %510, %490, %489
  %526 = load ptr, ptr %475, align 8, !tbaa !67
  %527 = icmp eq ptr %526, null
  br i1 %527, label %586, label %474, !llvm.loop !117

528:                                              ; preds = %452
  br i1 %364, label %586, label %529

529:                                              ; preds = %528
  %530 = load ptr, ptr %365, align 8, !tbaa !67
  %531 = icmp eq ptr %530, null
  br i1 %531, label %586, label %532

532:                                              ; preds = %529
  %533 = mul nsw i32 %379, 3
  %534 = sext i32 %533 to i64
  br label %535

535:                                              ; preds = %532, %583
  %536 = phi ptr [ %530, %532 ], [ %584, %583 ]
  %537 = getelementptr inbounds %struct.KeyBlock, ptr %536, i64 0, i32 10
  %538 = load ptr, ptr %537, align 8, !tbaa !87
  %539 = getelementptr inbounds float, ptr %538, i64 %534
  br i1 %366, label %543, label %540

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.KeyBlock, ptr %536, i64 0, i32 11
  %542 = call ptr @BKE_keyblock_find_name(ptr noundef nonnull %170, ptr noundef nonnull %541) #9
  br label %543

543:                                              ; preds = %535, %540
  %544 = phi ptr [ %542, %540 ], [ null, %535 ]
  %545 = icmp eq ptr %544, null
  %546 = load i32, ptr %391, align 8, !tbaa !75
  %547 = icmp sgt i32 %546, 0
  br i1 %545, label %548, label %549

548:                                              ; preds = %543
  br i1 %547, label %568, label %583

549:                                              ; preds = %543
  br i1 %547, label %550, label %583

550:                                              ; preds = %549
  %551 = getelementptr inbounds %struct.KeyBlock, ptr %544, i64 0, i32 10
  %552 = load ptr, ptr %551, align 8, !tbaa !87
  br label %553

553:                                              ; preds = %550, %553
  %554 = phi i32 [ %564, %553 ], [ 0, %550 ]
  %555 = phi ptr [ %566, %553 ], [ %552, %550 ]
  %556 = phi ptr [ %565, %553 ], [ %539, %550 ]
  %557 = load float, ptr %555, align 4, !tbaa !114
  store float %557, ptr %556, align 4, !tbaa !114
  %558 = getelementptr inbounds float, ptr %555, i64 1
  %559 = load float, ptr %558, align 4, !tbaa !114
  %560 = getelementptr inbounds float, ptr %556, i64 1
  store float %559, ptr %560, align 4, !tbaa !114
  %561 = getelementptr inbounds float, ptr %555, i64 2
  %562 = load float, ptr %561, align 4, !tbaa !114
  %563 = getelementptr inbounds float, ptr %556, i64 2
  store float %562, ptr %563, align 4, !tbaa !114
  %564 = add nuw nsw i32 %554, 1
  %565 = getelementptr inbounds float, ptr %556, i64 3
  %566 = getelementptr inbounds float, ptr %555, i64 3
  %567 = icmp eq i32 %564, %546
  br i1 %567, label %583, label %553, !llvm.loop !118

568:                                              ; preds = %548, %568
  %569 = phi ptr [ %581, %568 ], [ %373, %548 ]
  %570 = phi i32 [ %579, %568 ], [ 0, %548 ]
  %571 = phi ptr [ %580, %568 ], [ %539, %548 ]
  %572 = load float, ptr %569, align 4, !tbaa !114
  store float %572, ptr %571, align 4, !tbaa !114
  %573 = getelementptr inbounds float, ptr %569, i64 1
  %574 = load float, ptr %573, align 4, !tbaa !114
  %575 = getelementptr inbounds float, ptr %571, i64 1
  store float %574, ptr %575, align 4, !tbaa !114
  %576 = getelementptr inbounds float, ptr %569, i64 2
  %577 = load float, ptr %576, align 4, !tbaa !114
  %578 = getelementptr inbounds float, ptr %571, i64 2
  store float %577, ptr %578, align 4, !tbaa !114
  %579 = add nuw nsw i32 %570, 1
  %580 = getelementptr inbounds float, ptr %571, i64 3
  %581 = getelementptr inbounds %struct.MVert, ptr %569, i64 1
  %582 = icmp eq i32 %579, %546
  br i1 %582, label %583, label %568, !llvm.loop !119

583:                                              ; preds = %553, %568, %549, %548
  %584 = load ptr, ptr %536, align 8, !tbaa !67
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %535, !llvm.loop !120

586:                                              ; preds = %525, %583, %467, %529, %528, %466
  %587 = load i32, ptr %391, align 8, !tbaa !75
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.MVert, ptr %373, i64 %588
  br label %590

590:                                              ; preds = %586, %388
  %591 = phi ptr [ %589, %586 ], [ %373, %388 ]
  %592 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 27
  %593 = load i32, ptr %592, align 4, !tbaa !78
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %612, label %595

595:                                              ; preds = %590
  %596 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 22
  %597 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %596, ptr noundef nonnull %6, i64 noundef %367, i32 noundef 2, i32 noundef %88) #9
  %598 = load i32, ptr %592, align 4, !tbaa !78
  call void @CustomData_copy_data_named(ptr noundef nonnull %596, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %378, i32 noundef %598) #9
  %599 = load i32, ptr %592, align 4, !tbaa !78
  %600 = icmp sgt i32 %599, 0
  br i1 %600, label %601, label %612

601:                                              ; preds = %595, %601
  %602 = phi ptr [ %610, %601 ], [ %374, %595 ]
  %603 = phi i32 [ %609, %601 ], [ 0, %595 ]
  %604 = load i32, ptr %602, align 4, !tbaa !121
  %605 = add i32 %604, %379
  store i32 %605, ptr %602, align 4, !tbaa !121
  %606 = getelementptr inbounds %struct.MEdge, ptr %602, i64 0, i32 1
  %607 = load i32, ptr %606, align 4, !tbaa !123
  %608 = add i32 %607, %379
  store i32 %608, ptr %606, align 4, !tbaa !123
  %609 = add nuw nsw i32 %603, 1
  %610 = getelementptr inbounds %struct.MEdge, ptr %602, i64 1
  %611 = icmp eq i32 %609, %599
  br i1 %611, label %612, label %601, !llvm.loop !124

612:                                              ; preds = %601, %595, %590
  %613 = phi ptr [ %374, %590 ], [ %374, %595 ], [ %610, %601 ]
  %614 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 31
  %615 = load i32, ptr %614, align 4, !tbaa !79
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %645, label %617

617:                                              ; preds = %612
  %618 = load ptr, ptr %383, align 8, !tbaa !72
  %619 = icmp eq ptr %618, %15
  br i1 %619, label %628, label %620

620:                                              ; preds = %617
  call void @multiresModifier_prepare_join(ptr noundef %14, ptr noundef %618, ptr noundef %15) #9
  %621 = load ptr, ptr %383, align 8, !tbaa !72
  %622 = call ptr @get_multires_modifier(ptr noundef %14, ptr noundef %621, i8 noundef zeroext 1) #9
  %623 = icmp eq ptr %622, null
  br i1 %623, label %628, label %624

624:                                              ; preds = %620
  %625 = load ptr, ptr %383, align 8, !tbaa !72
  %626 = getelementptr inbounds %struct.MultiresModifierData, ptr %622, i64 0, i32 4
  %627 = call zeroext i8 @ED_object_iter_other(ptr noundef %13, ptr noundef %625, i8 noundef zeroext 1, ptr noundef nonnull @ED_object_multires_update_totlevels_cb, ptr noundef nonnull %626) #9
  br label %628

628:                                              ; preds = %620, %624, %617
  %629 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 25
  %630 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %629, ptr noundef nonnull %8, i64 noundef %367, i32 noundef 2, i32 noundef %90) #9
  %631 = load i32, ptr %614, align 4, !tbaa !79
  call void @CustomData_copy_data_named(ptr noundef nonnull %629, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %377, i32 noundef %631) #9
  %632 = load i32, ptr %614, align 4, !tbaa !79
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %634, label %645

634:                                              ; preds = %628, %634
  %635 = phi i32 [ %642, %634 ], [ 0, %628 ]
  %636 = phi ptr [ %643, %634 ], [ %380, %628 ]
  %637 = load i32, ptr %636, align 4, !tbaa !125
  %638 = add i32 %637, %379
  store i32 %638, ptr %636, align 4, !tbaa !125
  %639 = getelementptr inbounds %struct.MLoop, ptr %636, i64 0, i32 1
  %640 = load i32, ptr %639, align 4, !tbaa !127
  %641 = add i32 %640, %378
  store i32 %641, ptr %639, align 4, !tbaa !127
  %642 = add nuw nsw i32 %635, 1
  %643 = getelementptr inbounds %struct.MLoop, ptr %636, i64 1
  %644 = icmp eq i32 %642, %632
  br i1 %644, label %645, label %634, !llvm.loop !128

645:                                              ; preds = %634, %628, %612
  %646 = phi ptr [ %380, %612 ], [ %380, %628 ], [ %643, %634 ]
  %647 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 30
  %648 = load i32, ptr %647, align 8, !tbaa !80
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %707, label %650

650:                                              ; preds = %645
  br i1 %122, label %680, label %651

651:                                              ; preds = %650
  %652 = load ptr, ptr %383, align 8, !tbaa !72
  %653 = getelementptr inbounds %struct.Object, ptr %652, i64 0, i32 31
  %654 = load i32, ptr %653, align 8, !tbaa !81
  %655 = icmp slt i32 %654, 1
  br i1 %655, label %680, label %656

656:                                              ; preds = %651, %673
  %657 = phi i64 [ %674, %673 ], [ 1, %651 ]
  %658 = phi ptr [ %675, %673 ], [ %652, %651 ]
  %659 = trunc i64 %657 to i16
  %660 = call ptr @give_current_material(ptr noundef %658, i16 noundef signext %659) #9
  br i1 %368, label %661, label %673

661:                                              ; preds = %656, %670
  %662 = phi i64 [ %671, %670 ], [ 0, %656 ]
  %663 = getelementptr inbounds ptr, ptr %121, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !67
  %665 = icmp eq ptr %660, %664
  br i1 %665, label %666, label %670

666:                                              ; preds = %661
  %667 = trunc i64 %662 to i32
  %668 = add nsw i64 %657, -1
  %669 = getelementptr inbounds i32, ptr %128, i64 %668
  store i32 %667, ptr %669, align 4, !tbaa !99
  br label %673

670:                                              ; preds = %661
  %671 = add nuw nsw i64 %662, 1
  %672 = icmp eq i64 %671, %370
  br i1 %672, label %673, label %661, !llvm.loop !129

673:                                              ; preds = %670, %656, %666
  %674 = add nuw nsw i64 %657, 1
  %675 = load ptr, ptr %383, align 8, !tbaa !72
  %676 = getelementptr inbounds %struct.Object, ptr %675, i64 0, i32 31
  %677 = load i32, ptr %676, align 8, !tbaa !81
  %678 = sext i32 %677 to i64
  %679 = icmp slt i64 %657, %678
  br i1 %679, label %656, label %680, !llvm.loop !130

680:                                              ; preds = %673, %651, %650
  %681 = getelementptr inbounds %struct.Mesh, ptr %390, i64 0, i32 24
  %682 = call zeroext i8 @CustomData_merge(ptr noundef nonnull %681, ptr noundef nonnull %9, i64 noundef %367, i32 noundef 2, i32 noundef %91) #9
  %683 = load i32, ptr %647, align 8, !tbaa !80
  call void @CustomData_copy_data_named(ptr noundef nonnull %681, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %376, i32 noundef %683) #9
  %684 = load i32, ptr %647, align 8, !tbaa !80
  %685 = icmp sgt i32 %684, 0
  br i1 %685, label %686, label %704

686:                                              ; preds = %680, %697
  %687 = phi ptr [ %702, %697 ], [ %375, %680 ]
  %688 = phi i32 [ %701, %697 ], [ 0, %680 ]
  %689 = load i32, ptr %687, align 4, !tbaa !131
  %690 = add nsw i32 %689, %377
  store i32 %690, ptr %687, align 4, !tbaa !131
  br i1 %369, label %697, label %691

691:                                              ; preds = %686
  %692 = getelementptr inbounds %struct.MPoly, ptr %687, i64 0, i32 2
  %693 = load i16, ptr %692, align 4, !tbaa !133
  %694 = sext i16 %693 to i64
  %695 = getelementptr inbounds i32, ptr %128, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !99
  br label %697

697:                                              ; preds = %686, %691
  %698 = phi i32 [ %696, %691 ], [ 0, %686 ]
  %699 = trunc i32 %698 to i16
  %700 = getelementptr inbounds %struct.MPoly, ptr %687, i64 0, i32 2
  store i16 %699, ptr %700, align 4, !tbaa !133
  %701 = add nuw nsw i32 %688, 1
  %702 = getelementptr inbounds %struct.MPoly, ptr %687, i64 1
  %703 = icmp eq i32 %701, %684
  br i1 %703, label %704, label %686, !llvm.loop !134

704:                                              ; preds = %697, %680
  %705 = phi ptr [ %375, %680 ], [ %702, %697 ]
  %706 = add nsw i32 %684, %376
  br label %707

707:                                              ; preds = %704, %645
  %708 = phi i32 [ %706, %704 ], [ %376, %645 ]
  %709 = phi ptr [ %705, %704 ], [ %375, %645 ]
  %710 = load i32, ptr %391, align 8, !tbaa !75
  %711 = add nsw i32 %710, %379
  %712 = load i32, ptr %592, align 4, !tbaa !78
  %713 = add nsw i32 %712, %378
  %714 = load i32, ptr %614, align 4, !tbaa !79
  %715 = add nsw i32 %714, %377
  %716 = load ptr, ptr %383, align 8, !tbaa !72
  %717 = icmp eq ptr %716, %15
  br i1 %717, label %719, label %718

718:                                              ; preds = %707
  call void @ED_base_object_free_and_unlink(ptr noundef %13, ptr noundef %14, ptr noundef %382) #9
  br label %719

719:                                              ; preds = %707, %718, %371
  %720 = phi ptr [ %646, %718 ], [ %646, %707 ], [ %380, %371 ]
  %721 = phi i32 [ %711, %718 ], [ %711, %707 ], [ %379, %371 ]
  %722 = phi i32 [ %713, %718 ], [ %713, %707 ], [ %378, %371 ]
  %723 = phi i32 [ %715, %718 ], [ %715, %707 ], [ %377, %371 ]
  %724 = phi i32 [ %708, %718 ], [ %708, %707 ], [ %376, %371 ]
  %725 = phi ptr [ %709, %718 ], [ %709, %707 ], [ %375, %371 ]
  %726 = phi ptr [ %613, %718 ], [ %613, %707 ], [ %374, %371 ]
  %727 = phi ptr [ %591, %718 ], [ %591, %707 ], [ %373, %371 ]
  %728 = load ptr, ptr %372, align 8, !tbaa !67
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %371, !llvm.loop !135

730:                                              ; preds = %719, %348
  call void @BLI_freelistN(ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  %731 = load ptr, ptr %99, align 8, !tbaa !74
  %732 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 21
  %733 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 26
  %734 = load i32, ptr %733, align 8, !tbaa !75
  call void @CustomData_free(ptr noundef nonnull %732, i32 noundef %734) #9
  %735 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 22
  %736 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 27
  %737 = load i32, ptr %736, align 4, !tbaa !78
  call void @CustomData_free(ptr noundef nonnull %735, i32 noundef %737) #9
  %738 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 25
  %739 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 31
  %740 = load i32, ptr %739, align 4, !tbaa !79
  call void @CustomData_free(ptr noundef nonnull %738, i32 noundef %740) #9
  %741 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 24
  %742 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 30
  %743 = load i32, ptr %742, align 8, !tbaa !80
  call void @CustomData_free(ptr noundef nonnull %741, i32 noundef %743) #9
  store i32 %89, ptr %733, align 8, !tbaa !75
  store i32 %88, ptr %736, align 4, !tbaa !78
  store i32 %90, ptr %739, align 4, !tbaa !79
  store i32 %91, ptr %742, align 8, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %732, ptr noundef nonnull align 8 dereferenceable(200) %5, i64 200, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %735, ptr noundef nonnull align 8 dereferenceable(200) %6, i64 200, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %738, ptr noundef nonnull align 8 dereferenceable(200) %8, i64 200, i1 false), !tbaa.struct !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %741, ptr noundef nonnull align 8 dereferenceable(200) %9, i64 200, i1 false), !tbaa.struct !136
  call void @BKE_mesh_update_customdata_pointers(ptr noundef %731, i8 noundef zeroext 0) #9
  call void @BKE_mesh_calc_normals(ptr noundef %731) #9
  %744 = load i32, ptr %129, align 8, !tbaa !81
  %745 = icmp slt i32 %744, 1
  br i1 %745, label %752, label %746

746:                                              ; preds = %730
  %747 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 29
  %748 = load ptr, ptr %747, align 8, !tbaa !138
  %749 = getelementptr ptr, ptr %748, i64 -1
  %750 = add nuw i32 %744, 1
  %751 = zext i32 %750 to i64
  br label %762

752:                                              ; preds = %771, %730
  %753 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 47
  %754 = load i16, ptr %753, align 2, !tbaa !139
  %755 = icmp slt i16 %754, 1
  br i1 %755, label %786, label %756

756:                                              ; preds = %752
  %757 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 5
  %758 = load ptr, ptr %757, align 8, !tbaa !140
  %759 = getelementptr ptr, ptr %758, i64 -1
  %760 = add nuw i16 %754, 1
  %761 = zext i16 %760 to i64
  br label %774

762:                                              ; preds = %746, %771
  %763 = phi i64 [ 1, %746 ], [ %772, %771 ]
  %764 = getelementptr ptr, ptr %749, i64 %763
  %765 = load ptr, ptr %764, align 8, !tbaa !67
  %766 = icmp eq ptr %765, null
  br i1 %766, label %771, label %767

767:                                              ; preds = %762
  %768 = getelementptr inbounds %struct.ID, ptr %765, i64 0, i32 6
  %769 = load i32, ptr %768, align 4, !tbaa !141
  %770 = add nsw i32 %769, -1
  store i32 %770, ptr %768, align 4, !tbaa !141
  br label %771

771:                                              ; preds = %762, %767
  %772 = add nuw nsw i64 %763, 1
  %773 = icmp eq i64 %772, %751
  br i1 %773, label %752, label %762, !llvm.loop !145

774:                                              ; preds = %756, %783
  %775 = phi i64 [ 1, %756 ], [ %784, %783 ]
  %776 = getelementptr ptr, ptr %759, i64 %775
  %777 = load ptr, ptr %776, align 8, !tbaa !67
  %778 = icmp eq ptr %777, null
  br i1 %778, label %783, label %779

779:                                              ; preds = %774
  %780 = getelementptr inbounds %struct.ID, ptr %777, i64 0, i32 6
  %781 = load i32, ptr %780, align 4, !tbaa !141
  %782 = add nsw i32 %781, -1
  store i32 %782, ptr %780, align 4, !tbaa !141
  br label %783

783:                                              ; preds = %774, %779
  %784 = add nuw nsw i64 %775, 1
  %785 = icmp eq i64 %784, %761
  br i1 %785, label %786, label %774, !llvm.loop !146

786:                                              ; preds = %783, %752
  %787 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 47
  %788 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 29
  %789 = load ptr, ptr %788, align 8, !tbaa !138
  %790 = icmp eq ptr %789, null
  br i1 %790, label %793, label %791

791:                                              ; preds = %786
  %792 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %792(ptr noundef nonnull %789) #9
  br label %793

793:                                              ; preds = %791, %786
  %794 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 30
  %795 = load ptr, ptr %794, align 8, !tbaa !147
  %796 = icmp eq ptr %795, null
  br i1 %796, label %799, label %797

797:                                              ; preds = %793
  %798 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %798(ptr noundef nonnull %795) #9
  br label %799

799:                                              ; preds = %797, %793
  %800 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 5
  %801 = load ptr, ptr %800, align 8, !tbaa !140
  %802 = icmp eq ptr %801, null
  br i1 %802, label %805, label %803

803:                                              ; preds = %799
  %804 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %804(ptr noundef nonnull %801) #9
  br label %805

805:                                              ; preds = %803, %799
  store ptr null, ptr %800, align 8, !tbaa !140
  %806 = icmp eq i32 %349, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %788, i8 0, i64 16, i1 false)
  br i1 %806, label %814, label %807

807:                                              ; preds = %805
  store ptr %121, ptr %800, align 8, !tbaa !140
  %808 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %809 = sext i32 %349 to i64
  %810 = shl nsw i64 %809, 3
  %811 = call ptr %808(i64 noundef %810, ptr noundef nonnull @.str.10) #9
  store ptr %811, ptr %788, align 8, !tbaa !138
  %812 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %813 = call ptr %812(i64 noundef %809, ptr noundef nonnull @.str.11) #9
  store ptr %813, ptr %794, align 8, !tbaa !147
  br label %816

814:                                              ; preds = %805
  %815 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %815(ptr noundef %121) #9
  br label %816

816:                                              ; preds = %814, %807
  %817 = trunc i32 %349 to i16
  store i16 %817, ptr %787, align 2, !tbaa !139
  %818 = shl i32 %349, 16
  %819 = ashr exact i32 %818, 16
  store i32 %819, ptr %129, align 8, !tbaa !81
  %820 = icmp eq ptr %128, null
  br i1 %820, label %823, label %821

821:                                              ; preds = %816
  %822 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %822(ptr noundef nonnull %128) #9
  br label %823

823:                                              ; preds = %821, %816
  call void @test_object_materials(ptr noundef %13, ptr noundef %731) #9
  %824 = icmp eq ptr %170, null
  br i1 %824, label %828, label %825

825:                                              ; preds = %823
  call void @BKE_key_free(ptr noundef nonnull %170) #9
  %826 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 24
  call void @BLI_remlink(ptr noundef nonnull %826, ptr noundef nonnull %170) #9
  %827 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %827(ptr noundef nonnull %170) #9
  br label %828

828:                                              ; preds = %825, %823
  %829 = icmp eq ptr %169, null
  br i1 %829, label %835, label %830

830:                                              ; preds = %828
  %831 = getelementptr inbounds %struct.Key, ptr %169, i64 0, i32 9
  %832 = load i16, ptr %831, align 8, !tbaa !91
  %833 = icmp eq i16 %832, 1
  br i1 %833, label %835, label %834

834:                                              ; preds = %830
  call void @BKE_key_sort(ptr noundef nonnull %169) #9
  br label %835

835:                                              ; preds = %834, %830, %828
  call void @DAG_relations_tag_update(ptr noundef %13) #9
  %836 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 20
  %837 = load ptr, ptr %836, align 8, !tbaa !148
  call void @EDBM_mesh_make(ptr noundef %837, ptr noundef %15) #9
  call void @EDBM_mesh_load(ptr noundef %15) #9
  %838 = getelementptr inbounds %struct.Mesh, ptr %731, i64 0, i32 20
  %839 = load ptr, ptr %838, align 8, !tbaa !149
  call void @EDBM_mesh_free(ptr noundef %839) #9
  %840 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  %841 = load ptr, ptr %838, align 8, !tbaa !149
  call void %840(ptr noundef %841) #9
  store ptr null, ptr %838, align 8, !tbaa !149
  call void @DAG_id_tag_update(ptr noundef %15, i16 noundef signext 3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %14) #9
  br label %842

842:                                              ; preds = %835, %114, %108, %95, %28, %19
  %843 = phi i32 [ 2, %19 ], [ 2, %28 ], [ 2, %95 ], [ 2, %108 ], [ 2, %114 ], [ 4, %835 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %843
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_mesh_tessface_clear(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #2

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_keyblock_copy_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy_data_named(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multiresModifier_prepare_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_multires_modifier(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_object_iter_other(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_multires_update_totlevels_cb(ptr noundef, ptr noundef) #2

declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals(ptr noundef) local_unnamed_addr #2

declare void @test_object_materials(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_key_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_key_sort(ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @join_mesh_shapes_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %11 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %12 = load ptr, ptr %3, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  br label %16

16:                                               ; preds = %14, %38
  %17 = phi ptr [ %12, %14 ], [ %41, %38 ]
  %18 = phi i8 [ 0, %14 ], [ %40, %38 ]
  %19 = phi i8 [ 0, %14 ], [ %39, %38 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %38, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !64
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %33 = load i32, ptr %32, align 8, !tbaa !75
  %34 = load i32, ptr %15, align 8, !tbaa !75
  %35 = icmp eq i32 %33, %34
  %36 = select i1 %35, i8 1, i8 %19
  %37 = select i1 %35, i8 %18, i8 1
  br label %38

38:                                               ; preds = %25, %29, %16
  %39 = phi i8 [ %19, %16 ], [ %19, %25 ], [ %36, %29 ]
  %40 = phi i8 [ %18, %16 ], [ %18, %25 ], [ %37, %29 ]
  %41 = load ptr, ptr %17, align 8, !tbaa !67
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !150

43:                                               ; preds = %38
  %44 = icmp eq i8 %39, 0
  %45 = icmp eq i8 %40, 0
  br label %46

46:                                               ; preds = %43, %2
  %47 = phi i1 [ true, %2 ], [ %44, %43 ]
  %48 = phi i1 [ true, %2 ], [ %45, %43 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br i1 %47, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  br i1 %48, label %53, label %52

52:                                               ; preds = %49
  call void @BKE_report(ptr noundef %51, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %99

53:                                               ; preds = %49
  call void @BKE_report(ptr noundef %51, i32 noundef 16, ptr noundef nonnull @.str.13) #9
  br label %99

54:                                               ; preds = %46
  %55 = icmp eq ptr %10, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = call ptr @BKE_key_add(ptr noundef %8) #9
  store ptr %57, ptr %9, align 8, !tbaa !82
  %58 = getelementptr inbounds %struct.Key, ptr %57, i64 0, i32 9
  store i16 1, ptr %58, align 8, !tbaa !91
  %59 = call ptr @BKE_keyblock_add(ptr noundef %57, ptr noundef null) #9
  call void @BKE_key_convert_from_mesh(ptr noundef %8, ptr noundef %59) #9
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi ptr [ %57, %56 ], [ %10, %54 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %62 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #9
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
  %87 = call ptr @mesh_get_derived_deform(ptr noundef %5, ptr noundef %73, i64 noundef %67) #9
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %72, align 8, !tbaa !72
  %91 = getelementptr inbounds %struct.ID, ptr %90, i64 0, i32 4, i64 2
  %92 = call ptr @BKE_keyblock_add(ptr noundef %61, ptr noundef nonnull %91) #9
  call void @DM_to_meshkey(ptr noundef nonnull %87, ptr noundef %8, ptr noundef %92) #9
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %87, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !151
  call void %94(ptr noundef nonnull %87) #9
  br label %95

95:                                               ; preds = %75, %89, %79, %86, %68
  %96 = load ptr, ptr %69, align 8, !tbaa !67
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %68, !llvm.loop !153

98:                                               ; preds = %95, %60
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %5) #9
  br label %99

99:                                               ; preds = %52, %53, %98
  %100 = phi i32 [ 4, %98 ], [ 2, %53 ], [ 2, %52 ]
  ret i32 %100
}

declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @DM_to_meshkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_mesh_mirror_spatial_table(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.KDTreeNearest, align 4
  %6 = alloca %struct.BMIter, align 8
  switch i8 %3, label %85 [
    i8 117, label %7
    i8 115, label %23
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !154
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 115)
  br label %12

12:                                               ; preds = %10, %7
  %13 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !154
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %16 = call i32 @BLI_kdtree_find_nearest(ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %5) #9
  %17 = icmp eq i32 %16, -1
  %18 = getelementptr inbounds %struct.KDTreeNearest, ptr %5, i64 0, i32 1
  %19 = load float, ptr %18, align 4
  %20 = fcmp uge float %19, 0x3EF4F8B580000000
  %21 = select i1 %17, i1 true, i1 %20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br i1 %21, label %22, label %91

22:                                               ; preds = %15, %12
  br label %91

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = load ptr, ptr @MirrKdStore.0, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @BLI_kdtree_free(ptr noundef nonnull %26) #9
  store ptr null, ptr @MirrKdStore.0, align 8, !tbaa !154
  br label %29

29:                                               ; preds = %28, %23
  %30 = icmp eq ptr %1, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !149
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %1, align 8, !tbaa !155
  br label %39

37:                                               ; preds = %31, %29
  %38 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = tail call ptr @BLI_kdtree_new(i32 noundef %41) #9
  store ptr %42, ptr @MirrKdStore.0, align 8, !tbaa !154
  br i1 %30, label %68, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !149
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %48 = load ptr, ptr %1, align 8, !tbaa !155
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %48, i8 noundef zeroext 1) #9
  %49 = load ptr, ptr %1, align 8, !tbaa !155
  %50 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 1, ptr %50, align 4, !tbaa !157
  %51 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %51, align 8, !tbaa !159
  %52 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %52, align 8, !tbaa !160
  %53 = getelementptr inbounds %struct.BMesh, ptr %49, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !161
  store ptr %54, ptr %6, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %55 = load ptr, ptr %52, align 8, !tbaa !160
  %56 = call ptr %55(ptr noundef nonnull %6) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %47, %58
  %59 = phi i32 [ %65, %58 ], [ 0, %47 ]
  %60 = phi ptr [ %64, %58 ], [ %56, %47 ]
  %61 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !154
  %62 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  call void @BLI_kdtree_insert(ptr noundef %61, i32 noundef %59, ptr noundef nonnull %62) #9
  %63 = load ptr, ptr %52, align 8, !tbaa !160
  %64 = call ptr %63(ptr noundef nonnull %6) #9
  %65 = add nuw nsw i32 %59, 1
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %58, !llvm.loop !163

67:                                               ; preds = %58, %47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %83

68:                                               ; preds = %43, %39
  %69 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !75
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 15
  %74 = load ptr, ptr %73, align 8, !tbaa !164
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i32 [ %79, %75 ], [ 0, %72 ]
  %77 = phi ptr [ %80, %75 ], [ %74, %72 ]
  %78 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !154
  tail call void @BLI_kdtree_insert(ptr noundef %78, i32 noundef %76, ptr noundef %77) #9
  %79 = add nuw nsw i32 %76, 1
  %80 = getelementptr inbounds %struct.MVert, ptr %77, i64 1
  %81 = load i32, ptr %69, align 8, !tbaa !75
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %75, label %83, !llvm.loop !165

83:                                               ; preds = %75, %68, %67
  %84 = load ptr, ptr @MirrKdStore.0, align 8, !tbaa !154
  call void @BLI_kdtree_balance(ptr noundef %84) #9
  br label %91

85:                                               ; preds = %4
  %86 = icmp eq i8 %3, 101
  %87 = load ptr, ptr @MirrKdStore.0, align 8
  %88 = icmp ne ptr %87, null
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  tail call void @BLI_kdtree_free(ptr noundef nonnull %87) #9
  store ptr null, ptr @MirrKdStore.0, align 8, !tbaa !154
  br label %91

91:                                               ; preds = %15, %90, %85, %83, %22
  %92 = phi i32 [ %16, %15 ], [ -1, %22 ], [ 0, %83 ], [ 0, %85 ], [ 0, %90 ]
  ret i32 %92
}

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #2

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_mesh_mirror_topo_table(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %1, label %19 [
    i8 117, label %3
    i8 115, label %13
    i8 101, label %18
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !166
  %8 = tail call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @mesh_topo_store) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !74
  %12 = load i32, ptr %6, align 8, !tbaa !166
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !166
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %15, i32 noundef %17, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %19

18:                                               ; preds = %2
  tail call void @ED_mesh_mirrtopo_free(ptr noundef nonnull @mesh_topo_store) #9
  br label %19

19:                                               ; preds = %2, %13, %18, %3, %10
  ret i32 0
}

declare zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mesh_mirrtopo_init(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_mesh_mirrtopo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mesh_get_x_mirror_vert(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = icmp eq i8 %2, 0
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  br i1 %5, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !166
  %11 = tail call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %7, i32 noundef %10, ptr noundef nonnull @mesh_topo_store) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %6, align 8, !tbaa !74
  %15 = load i32, ptr %9, align 8, !tbaa !166
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !167
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds i64, ptr %17, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !169
  %21 = trunc i64 %20 to i32
  br label %36

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %23 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !164
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %24, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !114
  %28 = fneg float %27
  store float %28, ptr %4, align 4, !tbaa !114
  %29 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !114
  %31 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %30, ptr %31, align 4, !tbaa !114
  %32 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !114
  %34 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %33, ptr %34, align 4, !tbaa !114
  %35 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, i8 noundef zeroext 117)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %36

36:                                               ; preds = %22, %16
  %37 = phi i32 [ %21, %16 ], [ %35, %22 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local ptr @editbmesh_get_x_mirror_vert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = icmp eq i8 %5, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !166
  %15 = tail call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %12, i32 noundef %14, ptr noundef nonnull @mesh_topo_store) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !74
  %19 = load i32, ptr %13, align 8, !tbaa !166
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %20

20:                                               ; preds = %10, %17
  %21 = icmp eq i32 %4, -1
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %23 = load ptr, ptr %1, align 8, !tbaa !155
  %24 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %24, align 4, !tbaa !157
  %25 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !160
  %27 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  store ptr %28, ptr %8, align 8, !tbaa !137
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %29 = load ptr, ptr %26, align 8, !tbaa !160
  %30 = call ptr %29(ptr noundef nonnull %8) #9
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %2
  %33 = or i1 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %22, %34
  %35 = phi i32 [ %36, %34 ], [ 0, %22 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = load ptr, ptr %26, align 8, !tbaa !160
  %38 = call ptr %37(ptr noundef nonnull %8) #9
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %2
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %34, !llvm.loop !170

42:                                               ; preds = %34, %22
  %43 = phi i32 [ 0, %22 ], [ %36, %34 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !155
  %45 = load i32, ptr %44, align 8, !tbaa !171
  %46 = icmp eq i32 %43, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br i1 %46, label %81, label %47

47:                                               ; preds = %42, %20
  %48 = phi i32 [ %43, %42 ], [ %4, %20 ]
  %49 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !167
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i64, ptr %49, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !169
  %53 = icmp eq i64 %52, -1
  %54 = inttoptr i64 %52 to ptr
  %55 = select i1 %53, ptr null, ptr %54
  br label %81

56:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %57 = load float, ptr %3, align 4, !tbaa !114
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fcmp ueq float %58, 0x7FF0000000000000
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds float, ptr %3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !114
  %63 = tail call float @llvm.fabs.f32(float %62)
  %64 = fcmp ueq float %63, 0x7FF0000000000000
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds float, ptr %3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !114
  %68 = tail call float @llvm.fabs.f32(float %67)
  %69 = fcmp ueq float %68, 0x7FF0000000000000
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = fneg float %57
  store float %71, ptr %7, align 4, !tbaa !114
  %72 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %62, ptr %72, align 4, !tbaa !114
  %73 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %67, ptr %73, align 4, !tbaa !114
  %74 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 117)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %1, align 8, !tbaa !155
  %78 = call ptr @BM_vert_at_index(ptr noundef %77, i32 noundef %74) #9
  br label %79

79:                                               ; preds = %56, %60, %65, %70, %76
  %80 = phi ptr [ %78, %76 ], [ null, %65 ], [ null, %60 ], [ null, %56 ], [ null, %70 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %81

81:                                               ; preds = %47, %42, %79
  %82 = phi ptr [ %80, %79 ], [ null, %42 ], [ %55, %47 ]
  ret ptr %82
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_mesh_mirror_get_vert(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !172
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = icmp eq ptr %7, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 8, !tbaa !155
  %15 = tail call ptr @BM_vert_at_index(ptr noundef %14, i32 noundef %1) #9
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = tail call ptr @editbmesh_get_x_mirror_vert(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %15, ptr noundef nonnull %16, i32 noundef %1, i8 noundef zeroext %11)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !173
  br label %52

22:                                               ; preds = %2
  %23 = icmp eq i8 %11, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %26 = load i32, ptr %25, align 8, !tbaa !166
  %27 = tail call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %5, i32 noundef %26, ptr noundef nonnull @mesh_topo_store) #9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !74
  %31 = load i32, ptr %25, align 8, !tbaa !166
  tail call void @ED_mesh_mirrtopo_init(ptr noundef %30, i32 noundef %31, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %32

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !167
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds i64, ptr %33, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !169
  %37 = trunc i64 %36 to i32
  br label %52

38:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %39 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !164
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.MVert, ptr %40, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !114
  %44 = fneg float %43
  store float %44, ptr %3, align 4, !tbaa !114
  %45 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !114
  %47 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %46, ptr %47, align 4, !tbaa !114
  %48 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !114
  %50 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %49, ptr %50, align 4, !tbaa !114
  %51 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 117)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %52

52:                                               ; preds = %38, %32, %19, %13
  %53 = phi i32 [ %21, %19 ], [ -1, %13 ], [ %37, %32 ], [ %51, %38 ]
  ret i32 %53
}

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mesh_get_x_mirror_faces(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.MFace, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 46
  %10 = load i8, ptr %9, align 1, !tbaa !172
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call ptr %11(i64 noundef %15, ptr noundef nonnull @.str.14) #9
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 28
  %19 = load i32, ptr %18, align 8, !tbaa !176
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call ptr %17(i64 noundef %21, ptr noundef nonnull @.str.15) #9
  %23 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 115)
  %24 = load i32, ptr %12, align 8, !tbaa !75
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %2
  %27 = and i8 %10, 16
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %30 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %32

32:                                               ; preds = %26, %58
  %33 = phi i64 [ 0, %26 ], [ %61, %58 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !74
  br i1 %28, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %29, align 8, !tbaa !166
  %37 = call zeroext i8 @ED_mesh_mirrtopo_recalc_check(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @mesh_topo_store) #9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %5, align 8, !tbaa !74
  %41 = load i32, ptr %29, align 8, !tbaa !166
  call void @ED_mesh_mirrtopo_init(ptr noundef %40, i32 noundef %41, ptr noundef nonnull @mesh_topo_store, i8 noundef zeroext 0) #9
  br label %42

42:                                               ; preds = %39, %35
  %43 = load ptr, ptr @mesh_topo_store, align 8, !tbaa !167
  %44 = getelementptr inbounds i64, ptr %43, i64 %33
  %45 = load i64, ptr %44, align 8, !tbaa !169
  %46 = trunc i64 %45 to i32
  br label %58

47:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %48 = getelementptr inbounds %struct.Mesh, ptr %34, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !164
  %50 = getelementptr inbounds %struct.MVert, ptr %49, i64 %33
  %51 = load float, ptr %50, align 4, !tbaa !114
  %52 = fneg float %51
  store float %52, ptr %3, align 4, !tbaa !114
  %53 = getelementptr inbounds [3 x float], ptr %50, i64 0, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !114
  store float %54, ptr %30, align 4, !tbaa !114
  %55 = getelementptr inbounds [3 x float], ptr %50, i64 0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !114
  store float %56, ptr %31, align 4, !tbaa !114
  %57 = call i32 @ED_mesh_mirror_spatial_table(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 117)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %58

58:                                               ; preds = %42, %47
  %59 = phi i32 [ %46, %42 ], [ %57, %47 ]
  %60 = getelementptr inbounds i32, ptr %16, i64 %33
  store i32 %59, ptr %60, align 4, !tbaa !99
  %61 = add nuw nsw i64 %33, 1
  %62 = load i32, ptr %12, align 8, !tbaa !75
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %32, label %65, !llvm.loop !177

65:                                               ; preds = %58, %2
  %66 = load ptr, ptr @MirrKdStore.0, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @BLI_kdtree_free(ptr noundef nonnull %66) #9
  store ptr null, ptr @MirrKdStore.0, align 8, !tbaa !154
  br label %69

69:                                               ; preds = %65, %68
  %70 = load i32, ptr %18, align 8, !tbaa !176
  %71 = call ptr @BLI_ghash_new_ex(ptr noundef nonnull @mirror_facehash, ptr noundef nonnull @mirror_facecmp, ptr noundef nonnull @.str.16, i32 noundef %70) #9
  %72 = load i32, ptr %18, align 8, !tbaa !176
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %82, %69
  %75 = load i32, ptr %18, align 8, !tbaa !176
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %143

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.MFace, ptr %4, i64 0, i32 1
  %79 = getelementptr inbounds %struct.MFace, ptr %4, i64 0, i32 2
  %80 = getelementptr inbounds %struct.MFace, ptr %4, i64 0, i32 3
  %81 = ptrtoint ptr %8 to i64
  br label %89

82:                                               ; preds = %69, %82
  %83 = phi ptr [ %86, %82 ], [ %8, %69 ]
  %84 = phi i32 [ %85, %82 ], [ 0, %69 ]
  call void @BLI_ghash_insert(ptr noundef %71, ptr noundef %83, ptr noundef %83) #9
  %85 = add nuw nsw i32 %84, 1
  %86 = getelementptr inbounds %struct.MFace, ptr %83, i64 1
  %87 = load i32, ptr %18, align 8, !tbaa !176
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %82, label %74, !llvm.loop !178

89:                                               ; preds = %77, %134
  %90 = phi i64 [ 0, %77 ], [ %138, %134 ]
  %91 = phi ptr [ %8, %77 ], [ %139, %134 ]
  %92 = getelementptr inbounds %struct.MFace, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !179
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %16, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !99
  store i32 %96, ptr %4, align 4, !tbaa !181
  %97 = getelementptr inbounds %struct.MFace, ptr %91, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !182
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %16, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !99
  store i32 %101, ptr %78, align 4, !tbaa !182
  %102 = load i32, ptr %91, align 4, !tbaa !181
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %16, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !99
  store i32 %105, ptr %79, align 4, !tbaa !179
  %106 = getelementptr inbounds %struct.MFace, ptr %91, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !183
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %89
  %110 = zext i32 %107 to i64
  %111 = getelementptr inbounds i32, ptr %16, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !99
  br label %113

113:                                              ; preds = %89, %109
  %114 = phi i32 [ %112, %109 ], [ 0, %89 ]
  store i32 %114, ptr %80, align 4, !tbaa !183
  %115 = load i32, ptr %106, align 4, !tbaa !183
  %116 = icmp ne i32 %115, 0
  %117 = icmp eq i32 %114, 0
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 %105, ptr %4, align 4, !tbaa !181
  store i32 %96, ptr %79, align 4, !tbaa !179
  store i32 %114, ptr %78, align 4, !tbaa !182
  store i32 %101, ptr %80, align 4, !tbaa !183
  br label %120

120:                                              ; preds = %119, %113
  %121 = call ptr @BLI_ghash_lookup(ptr noundef %71, ptr noundef nonnull %4) #9
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = ptrtoint ptr %121 to i64
  %125 = sub i64 %124, %81
  %126 = sdiv exact i64 %125, 20
  %127 = trunc i64 %126 to i32
  %128 = shl nuw nsw i64 %90, 1
  %129 = getelementptr inbounds i32, ptr %22, i64 %128
  store i32 %127, ptr %129, align 4, !tbaa !99
  %130 = call fastcc i32 @mirror_facerotation(ptr noundef nonnull %4, ptr noundef nonnull %121), !range !184
  %131 = or disjoint i64 %128, 1
  br label %134

132:                                              ; preds = %120
  %133 = shl nuw nsw i64 %90, 1
  br label %134

134:                                              ; preds = %123, %132
  %135 = phi i64 [ %131, %123 ], [ %133, %132 ]
  %136 = phi i32 [ %130, %123 ], [ -1, %132 ]
  %137 = getelementptr inbounds i32, ptr %22, i64 %135
  store i32 %136, ptr %137, align 4, !tbaa !99
  %138 = add nuw nsw i64 %90, 1
  %139 = getelementptr inbounds %struct.MFace, ptr %91, i64 1
  %140 = load i32, ptr %18, align 8, !tbaa !176
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %89, label %143, !llvm.loop !185

143:                                              ; preds = %134, %74
  call void @BLI_ghash_free(ptr noundef %71, ptr noundef null, ptr noundef null) #9
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  call void %144(ptr noundef %16) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret ptr %22
}

declare ptr @BLI_ghash_new_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mirror_facehash(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !183
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr %0, align 4, !tbaa !181
  %6 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !182
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !179
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i8 @mirror_facecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = tail call fastcc i32 @mirror_facerotation(ptr noundef %0, ptr noundef %1), !range !184
  %4 = icmp eq i32 %3, -1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @mirror_facerotation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !183
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %0, align 4, !tbaa !181
  %7 = load i32, ptr %1, align 4, !tbaa !181
  %8 = icmp eq i32 %6, %7
  br i1 %5, label %74, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %26

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !182
  %13 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !182
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !179
  %19 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !179
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !183
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %114, label %26

26:                                               ; preds = %22, %16, %10, %9
  %27 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !183
  %29 = icmp eq i32 %28, %7
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !182
  %33 = icmp eq i32 %6, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !182
  %37 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !179
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !179
  %43 = icmp eq i32 %42, %4
  br i1 %43, label %114, label %44

44:                                               ; preds = %40, %34, %30, %26
  %45 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !179
  %47 = icmp eq i32 %46, %7
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !182
  %51 = icmp eq i32 %28, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !179
  %55 = icmp eq i32 %6, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !182
  %59 = icmp eq i32 %58, %4
  br i1 %59, label %114, label %60

60:                                               ; preds = %56, %52, %48, %44
  %61 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !182
  %63 = icmp eq i32 %62, %7
  br i1 %63, label %64, label %113

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !182
  %67 = icmp eq i32 %46, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !179
  %71 = icmp eq i32 %28, %70
  %72 = icmp eq i32 %6, %4
  %73 = and i1 %72, %71
  br i1 %73, label %114, label %113

74:                                               ; preds = %2
  br i1 %8, label %75, label %87

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !182
  %78 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !182
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !179
  %84 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !179
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %114, label %87

87:                                               ; preds = %81, %75, %74
  %88 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !179
  %90 = icmp eq i32 %89, %7
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !182
  %94 = icmp eq i32 %6, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !182
  %98 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !179
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %114, label %101

101:                                              ; preds = %95, %91, %87
  %102 = getelementptr inbounds %struct.MFace, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !182
  %104 = icmp eq i32 %103, %7
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !182
  %108 = icmp eq i32 %89, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.MFace, ptr %1, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !179
  %112 = icmp eq i32 %6, %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %101, %105, %109, %68, %64, %60
  br label %114

114:                                              ; preds = %68, %109, %95, %81, %56, %40, %22, %113
  %115 = phi i32 [ -1, %113 ], [ 0, %22 ], [ 1, %40 ], [ 2, %56 ], [ 0, %81 ], [ 1, %95 ], [ 2, %109 ], [ 3, %68 ]
  ret i32 %115
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
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
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #9
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %18 = load i32, ptr %12, align 8, !tbaa !80
  %19 = add nsw i32 %18, 1
  %20 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %6, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef %19, ptr noundef nonnull %7, i16 noundef signext 0, ptr noundef null, ptr noundef null) #9
  store i32 %20, ptr %3, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %26

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4, !tbaa !99
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !99
  %25 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %6, i32 noundef %22, i32 noundef %24) #9
  store i32 %25, ptr %3, align 4, !tbaa !99
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, ptr %3, align 4, !tbaa !99
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %12, align 8, !tbaa !80
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = add i32 %27, -1
  store i32 %33, ptr %3, align 4, !tbaa !99
  br label %34

34:                                               ; preds = %26, %29, %5, %11, %32
  %35 = phi i8 [ 1, %32 ], [ 0, %11 ], [ 0, %5 ], [ 0, %29 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i8 %35
}

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @view3d_sample_backbuf_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_face_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca %struct.ViewContext, align 8
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 30
  %17 = load i32, ptr %16, align 8, !tbaa !80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %10) #9
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  %22 = load i32, ptr %16, align 8, !tbaa !80
  %23 = add nsw i32 %22, 1
  %24 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %10, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef %23, ptr noundef nonnull %11, i16 noundef signext 0, ptr noundef null, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %30

25:                                               ; preds = %19
  %26 = load i32, ptr %2, align 4, !tbaa !99
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %10, i32 noundef %26, i32 noundef %28) #9
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %29, %25 ], [ %24, %21 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %16, align 8, !tbaa !80
  %35 = icmp ule i32 %31, %34
  %36 = sext i1 %35 to i32
  %37 = add i32 %31, %36
  %38 = xor i1 %35, true
  br label %39

39:                                               ; preds = %33, %5, %15, %30
  %40 = phi i32 [ undef, %5 ], [ undef, %15 ], [ %31, %30 ], [ %37, %33 ]
  %41 = phi i1 [ true, %5 ], [ true, %15 ], [ true, %30 ], [ %38, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br i1 %41, label %179, label %42

42:                                               ; preds = %39
  %43 = call ptr @CTX_data_scene(ptr noundef %0) #9
  %44 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %45 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !169
  %46 = or i64 %45, 128
  %47 = call ptr @mesh_get_derived_final(ptr noundef %43, ptr noundef %1, i64 noundef %46) #9
  %48 = load i32, ptr %2, align 4, !tbaa !99
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds i32, ptr %2, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !99
  %52 = sitofp i32 %51 to float
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 35
  %54 = load ptr, ptr %53, align 8, !tbaa !186
  %55 = call ptr %54(ptr noundef %47) #9
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 34
  %57 = load ptr, ptr %56, align 8, !tbaa !187
  %58 = call ptr %57(ptr noundef %47) #9
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 27
  %60 = load ptr, ptr %59, align 8, !tbaa !188
  %61 = call i32 %60(ptr noundef %47) #9
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 54
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = call ptr %63(ptr noundef %47, i32 noundef 7) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %118, label %66

66:                                               ; preds = %42
  %67 = icmp eq i32 %61, 0
  br i1 %67, label %157, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 76
  %70 = getelementptr inbounds float, ptr %9, i64 1
  %71 = zext i32 %61 to i64
  br label %72

72:                                               ; preds = %68, %113
  %73 = phi i64 [ 0, %68 ], [ %116, %113 ]
  %74 = phi float [ 0x47EFFFFFE0000000, %68 ], [ %115, %113 ]
  %75 = phi i32 [ -1, %68 ], [ %114, %113 ]
  %76 = getelementptr inbounds i32, ptr %64, i64 %73
  %77 = load i32, ptr %76, align 4, !tbaa !99
  %78 = icmp eq i32 %77, %40
  br i1 %78, label %79, label %113

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.MPoly, ptr %55, i64 %73, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !190
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MPoly, ptr %55, i64 %73
  %85 = load i32, ptr %84, align 4, !tbaa !131
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.MLoop, ptr %58, i64 %86
  br label %88

88:                                               ; preds = %108, %83
  %89 = phi i32 [ %75, %83 ], [ %109, %108 ]
  %90 = phi float [ %74, %83 ], [ %110, %108 ]
  %91 = phi i32 [ %81, %83 ], [ %93, %108 ]
  %92 = phi ptr [ %87, %83 ], [ %111, %108 ]
  %93 = add nsw i32 %91, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %94 = load i32, ptr %92, align 4, !tbaa !125
  %95 = load ptr, ptr %69, align 8, !tbaa !191
  call void %95(ptr noundef %47, i32 noundef %94, ptr noundef nonnull %8) #9
  %96 = call i32 @ED_view3d_project_float_object(ptr noundef %44, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #9
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load float, ptr %9, align 4, !tbaa !114
  %100 = fsub float %99, %49
  %101 = load float, ptr %70, align 4, !tbaa !114
  %102 = fsub float %101, %52
  %103 = call float @llvm.fabs.f32(float %100)
  %104 = call float @llvm.fabs.f32(float %102)
  %105 = fadd float %103, %104
  %106 = fcmp olt float %105, %90
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %98, %88
  %109 = phi i32 [ %94, %107 ], [ %89, %98 ], [ %89, %88 ]
  %110 = phi float [ %105, %107 ], [ %90, %98 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  %111 = getelementptr inbounds %struct.MLoop, ptr %92, i64 1
  %112 = icmp eq i32 %93, 0
  br i1 %112, label %113, label %88, !llvm.loop !192

113:                                              ; preds = %108, %79, %72
  %114 = phi i32 [ %75, %72 ], [ %75, %79 ], [ %109, %108 ]
  %115 = phi float [ %74, %72 ], [ %74, %79 ], [ %110, %108 ]
  %116 = add nuw nsw i64 %73, 1
  %117 = icmp eq i64 %116, %71
  br i1 %117, label %157, label %72, !llvm.loop !193

118:                                              ; preds = %42
  %119 = icmp ult i32 %40, %61
  br i1 %119, label %120, label %157

120:                                              ; preds = %118
  %121 = zext i32 %40 to i64
  %122 = getelementptr inbounds %struct.MPoly, ptr %55, i64 %121, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !190
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.MPoly, ptr %55, i64 %121
  %127 = load i32, ptr %126, align 4, !tbaa !131
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MLoop, ptr %58, i64 %128
  %130 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 76
  %131 = getelementptr inbounds float, ptr %7, i64 1
  br label %132

132:                                              ; preds = %152, %125
  %133 = phi i32 [ -1, %125 ], [ %153, %152 ]
  %134 = phi float [ 0x47EFFFFFE0000000, %125 ], [ %154, %152 ]
  %135 = phi i32 [ %123, %125 ], [ %137, %152 ]
  %136 = phi ptr [ %129, %125 ], [ %155, %152 ]
  %137 = add nsw i32 %135, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %138 = load i32, ptr %136, align 4, !tbaa !125
  %139 = load ptr, ptr %130, align 8, !tbaa !191
  call void %139(ptr noundef %47, i32 noundef %138, ptr noundef nonnull %6) #9
  %140 = call i32 @ED_view3d_project_float_object(ptr noundef %44, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %132
  %143 = load float, ptr %7, align 4, !tbaa !114
  %144 = fsub float %143, %49
  %145 = load float, ptr %131, align 4, !tbaa !114
  %146 = fsub float %145, %52
  %147 = call float @llvm.fabs.f32(float %144)
  %148 = call float @llvm.fabs.f32(float %146)
  %149 = fadd float %147, %148
  %150 = fcmp olt float %149, %134
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %142, %132
  %153 = phi i32 [ %138, %151 ], [ %133, %142 ], [ %133, %132 ]
  %154 = phi float [ %149, %151 ], [ %134, %142 ], [ %134, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  %155 = getelementptr inbounds %struct.MLoop, ptr %136, i64 1
  %156 = icmp eq i32 %137, 0
  br i1 %156, label %157, label %132, !llvm.loop !192

157:                                              ; preds = %113, %152, %66, %120, %118
  %158 = phi i32 [ -1, %118 ], [ -1, %120 ], [ -1, %66 ], [ %153, %152 ], [ %114, %113 ]
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 50
  %162 = load ptr, ptr %161, align 8, !tbaa !194
  %163 = call ptr %162(ptr noundef %47, i32 noundef 7) #9
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = sext i32 %158 to i64
  %167 = getelementptr inbounds i32, ptr %163, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !99
  br label %169

169:                                              ; preds = %160, %165, %157
  %170 = phi i32 [ %158, %157 ], [ %158, %160 ], [ %168, %165 ]
  %171 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 95
  %172 = load ptr, ptr %171, align 8, !tbaa !151
  call void %172(ptr noundef %47) #9
  %173 = icmp eq i32 %170, -1
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 26
  %176 = load i32, ptr %175, align 8, !tbaa !75
  %177 = icmp slt i32 %170, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 %170, ptr %3, align 4, !tbaa !99
  br label %179

179:                                              ; preds = %174, %169, %39, %178
  %180 = phi i8 [ 1, %178 ], [ 0, %39 ], [ 0, %169 ], [ 0, %174 ]
  ret i8 %180
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ViewContext, align 8
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca %struct.VertPickData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !75
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #9
  %19 = icmp eq i8 %5, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %18
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %23 = load i32, ptr %15, align 8, !tbaa !75
  %24 = add nsw i32 %23, 1
  %25 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %7, ptr noundef %2, i32 noundef %4, i32 noundef 1, i32 noundef %24, ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef null, ptr noundef null) #9
  store i32 %25, ptr %3, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %31

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4, !tbaa !99
  %28 = getelementptr inbounds i32, ptr %2, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !99
  %30 = call i32 @view3d_sample_backbuf(ptr noundef nonnull %7, i32 noundef %27, i32 noundef %29) #9
  store i32 %30, ptr %3, align 4, !tbaa !99
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, ptr %3, align 4, !tbaa !99
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %69, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %15, align 8, !tbaa !75
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = add i32 %32, -1
  store i32 %38, ptr %3, align 4, !tbaa !99
  br label %69

39:                                               ; preds = %18
  %40 = load ptr, ptr %7, align 8, !tbaa !195
  %41 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !169
  %42 = call ptr @mesh_get_derived_final(ptr noundef %40, ptr noundef %1, i64 noundef %41) #9
  %43 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !197
  %45 = getelementptr inbounds %struct.ARegion, ptr %44, i64 0, i32 30
  %46 = load ptr, ptr %45, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %47 = load i32, ptr %2, align 4, !tbaa !99
  %48 = sitofp i32 %47 to float
  store float %48, ptr %9, align 4, !tbaa !114
  %49 = getelementptr inbounds float, ptr %9, i64 1
  %50 = getelementptr inbounds i32, ptr %2, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !99
  %52 = sitofp i32 %51 to float
  store float %52, ptr %49, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @ED_view3d_init_mats_rv3d(ptr noundef %1, ptr noundef %46) #9
  %53 = icmp eq ptr %42, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !164
  store ptr %56, ptr %10, align 8, !tbaa !201
  %57 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 2
  store ptr %44, ptr %57, align 8, !tbaa !203
  %58 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 1
  store ptr %9, ptr %58, align 8, !tbaa !204
  %59 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %59, align 8, !tbaa !205
  %60 = getelementptr inbounds %struct.VertPickData, ptr %10, i64 0, i32 4
  store i32 -1, ptr %60, align 4, !tbaa !206
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 71
  %62 = load ptr, ptr %61, align 8, !tbaa !207
  call void %62(ptr noundef nonnull %42, ptr noundef nonnull @ed_mesh_pick_vert__mapFunc, ptr noundef nonnull %10, i32 noundef 0) #9
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 95
  %64 = load ptr, ptr %63, align 8, !tbaa !151
  call void %64(ptr noundef nonnull %42) #9
  %65 = load i32, ptr %60, align 4, !tbaa !206
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %54
  store i32 %65, ptr %3, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %69

68:                                               ; preds = %54, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %69

69:                                               ; preds = %37, %67, %68, %31, %34, %6, %14
  %70 = phi i8 [ 0, %68 ], [ 0, %14 ], [ 0, %6 ], [ 0, %34 ], [ 0, %31 ], [ 1, %67 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret i8 %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ed_mesh_pick_vert__mapFunc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !201
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MVert, ptr %7, i64 %8, i32 2
  %10 = load i8, ptr %9, align 2, !tbaa !208
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %14 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = call i32 @ED_view3d_project_float_object(ptr noundef %15, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 7) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = load float, ptr %6, align 4, !tbaa !114
  %22 = load float, ptr %20, align 4, !tbaa !114
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds float, ptr %6, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !114
  %26 = getelementptr inbounds float, ptr %20, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !114
  %28 = fsub float %25, %27
  %29 = call float @llvm.fabs.f32(float %23)
  %30 = call float @llvm.fabs.f32(float %28)
  %31 = fadd float %29, %30
  %32 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 3
  %33 = load float, ptr %32, align 8, !tbaa !205
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  store float %31, ptr %32, align 8, !tbaa !205
  %36 = getelementptr inbounds %struct.VertPickData, ptr %0, i64 0, i32 4
  store i32 %1, ptr %36, align 4, !tbaa !206
  br label %37

37:                                               ; preds = %18, %35, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %38

38:                                               ; preds = %37, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mesh_active_dvert_get_em(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %4 = load i32, ptr %3, align 8, !tbaa !166
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !64
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 24
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 2) #9
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @BM_mesh_active_vert_get(ptr noundef %20) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %1, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store ptr %25, ptr %1, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %29, %27
  %31 = load ptr, ptr %25, align 8, !tbaa !210
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  br label %34

34:                                               ; preds = %30, %24, %15
  %35 = phi ptr [ undef, %15 ], [ %33, %30 ], [ undef, %24 ]
  %36 = phi i1 [ true, %15 ], [ %26, %30 ], [ %26, %24 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %11, %7, %2
  %38 = icmp eq ptr %1, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  store ptr null, ptr %1, align 8, !tbaa !67
  br label %40

40:                                               ; preds = %37, %39, %34
  %41 = phi ptr [ %35, %34 ], [ null, %39 ], [ null, %37 ]
  ret ptr %41
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mesh_active_dvert_get_ob(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @BKE_mesh_mselect_active_get(ptr noundef %4, i32 noundef 0) #9
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i32 %5, ptr %1, align 4, !tbaa !99
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp eq i32 %5, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !212
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

declare i32 @BKE_mesh_mselect_active_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_mesh_active_dvert_get_only(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !166
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !149
  %19 = load ptr, ptr %18, align 8, !tbaa !155
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 2) #9
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = tail call ptr @BM_mesh_active_vert_get(ptr noundef %19) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !210
  %28 = sext i32 %21 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %23, %14
  %31 = phi ptr [ undef, %14 ], [ %29, %26 ], [ undef, %23 ]
  %32 = phi i1 [ true, %14 ], [ false, %26 ], [ %25, %23 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %10
  br label %46

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = tail call i32 @BKE_mesh_mselect_active_get(ptr noundef %36, i32 noundef 0) #9
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Mesh, ptr %36, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !212
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds %struct.MDeformVert, ptr %41, i64 %44
  br label %46

46:                                               ; preds = %33, %30, %43, %39, %34, %1
  %47 = phi ptr [ null, %1 ], [ %45, %43 ], [ null, %39 ], [ null, %34 ], [ %31, %30 ], [ null, %33 ]
  ret ptr %47
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !84, !85}
!87 = !{!88, !37, i64 40}
!88 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !45, i64 16, !45, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !45, i64 176, !45, i64 180}
!89 = !{!88, !41, i64 32}
!90 = distinct !{!90, !84, !85}
!91 = !{!92, !40, i64 208}
!92 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !45, i64 216, !41, i64 220}
!93 = distinct !{!93, !84, !85}
!94 = !{!65, !37, i64 400}
!95 = !{!65, !40, i64 1126}
!96 = distinct !{!96, !84, !85}
!97 = distinct !{!97, !84, !85}
!98 = !{!92, !40, i64 210}
!99 = !{!41, !41, i64 0}
!100 = distinct !{!100, !84, !85}
!101 = !{!88, !40, i64 28}
!102 = distinct !{!102, !84, !85}
!103 = distinct !{!103, !84, !85}
!104 = !{!76, !38, i64 1360}
!105 = !{!106, !41, i64 8}
!106 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!107 = !{!106, !37, i64 0}
!108 = !{!109, !41, i64 0}
!109 = !{!"MDeformWeight", !41, i64 0, !45, i64 4}
!110 = distinct !{!110, !84, !85}
!111 = distinct !{!111, !84, !85}
!112 = distinct !{!112, !84, !85}
!113 = distinct !{!113, !84, !85}
!114 = !{!45, !45, i64 0}
!115 = distinct !{!115, !84, !85}
!116 = distinct !{!116, !84, !85}
!117 = distinct !{!117, !84, !85}
!118 = distinct !{!118, !84, !85}
!119 = distinct !{!119, !84, !85}
!120 = distinct !{!120, !84, !85}
!121 = !{!122, !41, i64 0}
!122 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!123 = !{!122, !41, i64 4}
!124 = distinct !{!124, !84, !85}
!125 = !{!126, !41, i64 0}
!126 = !{!"MLoop", !41, i64 0, !41, i64 4}
!127 = !{!126, !41, i64 4}
!128 = distinct !{!128, !84, !85}
!129 = distinct !{!129, !84, !85}
!130 = distinct !{!130, !84, !85}
!131 = !{!132, !41, i64 0}
!132 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!133 = !{!132, !40, i64 8}
!134 = distinct !{!134, !84, !85}
!135 = distinct !{!135, !84, !85}
!136 = !{i64 0, i64 8, !67, i64 8, i64 164, !137, i64 172, i64 4, !99, i64 176, i64 4, !99, i64 180, i64 4, !99, i64 184, i64 8, !67, i64 192, i64 8, !67}
!137 = !{!38, !38, i64 0}
!138 = !{!65, !37, i64 440}
!139 = !{!76, !40, i64 1366}
!140 = !{!76, !37, i64 152}
!141 = !{!142, !41, i64 100}
!142 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !143, i64 224, !144, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !45, i64 364, !45, i64 368, !40, i64 372, !40, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !38, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !45, i64 556, !45, i64 560, !38, i64 564, !45, i64 580, !45, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !45, i64 616, !45, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!143 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!144 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!145 = distinct !{!145, !84, !85}
!146 = distinct !{!146, !84, !85}
!147 = !{!65, !37, i64 448}
!148 = !{!35, !37, i64 264}
!149 = !{!76, !37, i64 272}
!150 = distinct !{!150, !84, !85}
!151 = !{!152, !37, i64 1680}
!152 = !{!"DerivedMesh", !77, i64 0, !77, i64 200, !77, i64 400, !77, i64 600, !77, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!153 = distinct !{!153, !84, !85}
!154 = !{!71, !37, i64 0}
!155 = !{!156, !37, i64 0}
!156 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !60, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!157 = !{!158, !38, i64 60}
!158 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!159 = !{!158, !37, i64 40}
!160 = !{!158, !37, i64 48}
!161 = !{!162, !37, i64 32}
!162 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !77, i64 144, !77, i64 344, !77, i64 544, !77, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !42, i64 960, !37, i64 976, !42, i64 984, !37, i64 1000}
!163 = distinct !{!163, !84, !85}
!164 = !{!76, !37, i64 232}
!165 = distinct !{!165, !84, !85}
!166 = !{!65, !41, i64 432}
!167 = !{!168, !37, i64 0}
!168 = !{!"MirrTopoStore_t", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16}
!169 = !{!60, !60, i64 0}
!170 = distinct !{!170, !84, !85}
!171 = !{!162, !41, i64 0}
!172 = !{!76, !38, i64 1365}
!173 = !{!174, !41, i64 8}
!174 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!175 = !{!76, !37, i64 208}
!176 = !{!76, !41, i64 1288}
!177 = distinct !{!177, !84, !85}
!178 = distinct !{!178, !84, !85}
!179 = !{!180, !41, i64 8}
!180 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!181 = !{!180, !41, i64 0}
!182 = !{!180, !41, i64 4}
!183 = !{!180, !41, i64 12}
!184 = !{i32 -1, i32 4}
!185 = distinct !{!185, !84, !85}
!186 = !{!152, !37, i64 1200}
!187 = !{!152, !37, i64 1192}
!188 = !{!152, !37, i64 1136}
!189 = !{!152, !37, i64 1352}
!190 = !{!132, !41, i64 4}
!191 = !{!152, !37, i64 1528}
!192 = distinct !{!192, !84, !85}
!193 = distinct !{!193, !84, !85}
!194 = !{!152, !37, i64 1320}
!195 = !{!196, !37, i64 0}
!196 = !{!"ViewContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !38, i64 56}
!197 = !{!196, !37, i64 24}
!198 = !{!199, !37, i64 376}
!199 = !{!"ARegion", !37, i64 0, !37, i64 8, !200, i64 16, !51, i64 176, !51, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !45, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!200 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!201 = !{!202, !37, i64 0}
!202 = !{!"VertPickData", !37, i64 0, !37, i64 8, !37, i64 16, !45, i64 24, !41, i64 28}
!203 = !{!202, !37, i64 16}
!204 = !{!202, !37, i64 8}
!205 = !{!202, !45, i64 24}
!206 = !{!202, !41, i64 28}
!207 = !{!152, !37, i64 1488}
!208 = !{!209, !38, i64 18}
!209 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!210 = !{!211, !37, i64 0}
!211 = !{!"BMVert", !174, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!212 = !{!76, !37, i64 248}
