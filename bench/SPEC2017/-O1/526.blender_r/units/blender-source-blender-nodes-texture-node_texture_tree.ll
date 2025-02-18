; ModuleID = 'blender/source/blender/nodes/texture/node_texture_tree.c'
source_filename = "blender/source/blender/nodes/texture/node_texture_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeExecContext = type { ptr }
%struct.bNodeThreadStack = type { ptr, ptr, ptr, i8 }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.TexCallData = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i16, i32, ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"texture node tree type\00", align 1
@ntreeType_Texture = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"TextureNodeTree\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Texture nodes\00", align 1
@RNA_TextureNodeTree = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"thread stack array\00", align 1
@NODE_INSTANCE_KEY_BASE = external local_unnamed_addr constant %struct.bNodeInstanceKey, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Textures\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Convertor\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Distort\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Layout\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_tree_type_tex() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 512, ptr noundef nonnull @.str) #4
  store ptr %2, ptr @ntreeType_Texture, align 8, !tbaa !34
  store i32 2, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false) #4
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 2
  store i64 28554821438563668, ptr %4, align 1
  %5 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %6, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false) #4
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 7
  store ptr @foreach_nodeclass, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 13
  store ptr @update, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 10
  store ptr @localize, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 11
  store ptr @local_sync, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 12
  store ptr @local_merge, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 9
  store ptr @texture_get_from_context, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 16, i32 1
  store ptr @RNA_TextureNodeTree, ptr %13, align 8, !tbaa !49
  tail call void @ntreeTypeAdd(ptr noundef nonnull %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @foreach_nodeclass(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void %2(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.5) #4
  tail call void %2(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.6) #4
  tail call void %2(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.7) #4
  tail call void %2(ptr noundef %1, i32 noundef 12, ptr noundef nonnull @.str.8) #4
  tail call void %2(ptr noundef %1, i32 noundef 13, ptr noundef nonnull @.str.9) #4
  tail call void %2(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.10) #4
  tail call void %2(ptr noundef %1, i32 noundef 10, ptr noundef nonnull @.str.11) #4
  tail call void %2(ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.12) #4
  tail call void %2(ptr noundef %1, i32 noundef 33, ptr noundef nonnull @.str.13) #4
  tail call void %2(ptr noundef %1, i32 noundef 100, ptr noundef nonnull @.str.14) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update(ptr noundef %0) #0 {
  tail call void @ntree_update_reroute_nodes(ptr noundef %0) #4
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_node_preview_remove_unused(ptr noundef %0) #4
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @localize(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %8, %18 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !62
  %16 = icmp eq i16 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %6
  tail call void @nodeInternalRelink(ptr noundef %0, ptr noundef nonnull %7) #4
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %7) #4
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %6, !llvm.loop !63

20:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_sync(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_sync_tree(ptr noundef %1, ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_merge(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_merge_tree(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @texture_get_from_context(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 23
  %17 = load i16, ptr %16, align 8, !tbaa !87
  switch i16 %17, label %79 [
    i16 0, label %18
    i16 1, label %37
    i16 2, label %45
    i16 3, label %69
  ]

18:                                               ; preds = %14
  %19 = icmp eq ptr %15, null
  br i1 %19, label %79, label %20

20:                                               ; preds = %18
  %21 = tail call ptr @give_current_object_texture(ptr noundef nonnull %15) #4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !90
  %26 = icmp eq i16 %25, 10
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  br label %35

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 32
  %32 = load i32, ptr %31, align 4, !tbaa !94
  %33 = trunc i32 %32 to i16
  %34 = tail call ptr @give_current_material(ptr noundef nonnull %15, i16 noundef signext %33) #4
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi ptr [ %34, %30 ], [ %29, %27 ]
  store ptr %36, ptr %4, align 8, !tbaa !34
  br label %75

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %37
  store ptr %39, ptr %4, align 8, !tbaa !34
  %42 = load ptr, ptr %38, align 8, !tbaa !95
  %43 = tail call ptr @give_current_world_texture(ptr noundef %42) #4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %79, label %75

45:                                               ; preds = %14
  %46 = icmp eq ptr %15, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 27
  %49 = load i32, ptr %48, align 8, !tbaa !96
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = getelementptr inbounds %struct.ToolSettings, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !98
  %57 = tail call ptr @BKE_paint_brush(ptr noundef %56) #4
  br label %63

58:                                               ; preds = %47, %45
  %59 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !97
  %61 = getelementptr inbounds %struct.ToolSettings, ptr %60, i64 0, i32 17
  %62 = tail call ptr @BKE_paint_brush(ptr noundef nonnull %61) #4
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi ptr [ %57, %52 ], [ %62, %58 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  store ptr %64, ptr %4, align 8, !tbaa !34
  %67 = tail call ptr @give_current_brush_texture(ptr noundef nonnull %64) #4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %75

69:                                               ; preds = %14
  %70 = tail call ptr @BKE_linestyle_active_from_scene(ptr noundef %7) #4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  store ptr %70, ptr %4, align 8, !tbaa !34
  %73 = tail call ptr @give_current_linestyle_texture(ptr noundef nonnull %70) #4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %66, %41, %35
  %76 = phi ptr [ %21, %35 ], [ %43, %41 ], [ %67, %66 ], [ %73, %72 ]
  store ptr %76, ptr %3, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.Tex, ptr %76, i64 0, i32 52
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  store ptr %78, ptr %2, align 8, !tbaa !34
  br label %79

79:                                               ; preds = %75, %69, %72, %14, %63, %66, %41, %37, %18, %20
  ret void
}

declare void @ntreeTypeAdd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ntreeTexTagAnimated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %10 = load i16, ptr %9, align 4, !tbaa !62
  switch i16 %10, label %17 [
    i16 413, label %11
    i16 2, label %12
  ]

11:                                               ; preds = %7
  tail call void @nodeUpdate(ptr noundef nonnull %0, ptr noundef nonnull %8) #4
  br label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = tail call i32 @ntreeTexTagAnimated(ptr noundef %14), !range !109
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !110

20:                                               ; preds = %12, %17, %3, %1, %11
  %21 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %3 ], [ 0, %17 ], [ 1, %12 ]
  ret i32 %21
}

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeTexBeginExecTree_internal(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ntree_exec_begin(ptr noundef %0, ptr noundef %1, i32 %2) #4
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.4) #4
  %7 = getelementptr inbounds %struct.bNodeTreeExec, ptr %4, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !111
  %8 = load ptr, ptr %4, align 8, !tbaa !113
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 37
  store i16 1, ptr %14, align 4, !tbaa !114
  %15 = load ptr, ptr %13, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !115

17:                                               ; preds = %12, %3
  ret ptr %4
}

declare ptr @ntree_exec_begin(ptr noundef, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeTexBeginExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bNodeExecContext, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  store ptr %8, ptr %2, align 8, !tbaa !118
  %9 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  %10 = call ptr @ntree_exec_begin(ptr noundef nonnull %2, ptr noundef %0, i32 %9) #4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.4) #4
  %13 = getelementptr inbounds %struct.bNodeTreeExec, ptr %10, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !111
  %14 = load ptr, ptr %10, align 8, !tbaa !113
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %6 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 37
  store i16 1, ptr %20, align 4, !tbaa !114
  %21 = load ptr, ptr %19, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !115

23:                                               ; preds = %18, %6
  store ptr %10, ptr %3, align 8, !tbaa !116
  br label %24

24:                                               ; preds = %1, %23
  %25 = phi ptr [ %10, %23 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeTexEndExecTree_internal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 3
  br label %13

10:                                               ; preds = %32, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13, !llvm.loop !120

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %6, %8 ], [ %11, %10 ]
  %15 = load i32, ptr %9, align 8, !tbaa !121
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %10

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeThreadStack, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %17, %32
  %21 = phi i32 [ %33, %32 ], [ 0, %17 ]
  %22 = phi ptr [ %34, %32 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 0, i32 8
  %28 = load i16, ptr %27, align 8, !tbaa !126
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %24) #4
  br label %32

32:                                               ; preds = %30, %26, %20
  %33 = add nuw nsw i32 %21, 1
  %34 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 1
  %35 = load i32, ptr %9, align 8, !tbaa !121
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %20, label %10, !llvm.loop !127

37:                                               ; preds = %10, %5
  %38 = load ptr, ptr %2, align 8, !tbaa !111
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %49, %48 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.bNodeThreadStack, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !122
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %47(ptr noundef nonnull %44) #4
  br label %48

48:                                               ; preds = %41, %46
  %49 = load ptr, ptr %42, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !128

51:                                               ; preds = %48, %37
  %52 = load ptr, ptr %2, align 8, !tbaa !111
  tail call void @BLI_freelistN(ptr noundef %52) #4
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %54 = load ptr, ptr %2, align 8, !tbaa !111
  tail call void %53(ptr noundef %54) #4
  store ptr null, ptr %2, align 8, !tbaa !111
  br label %55

55:                                               ; preds = %51, %1
  tail call void @ntree_exec_end(ptr noundef %0) #4
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @ntree_exec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeTexEndExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !113
  tail call void @ntreeTexEndExecTree_internal(ptr noundef nonnull %0)
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 27
  store ptr null, ptr %5, align 8, !tbaa !116
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ntreeTexExecTree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i16 noundef signext %6, ptr nocapture noundef readnone %7, i16 noundef signext %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = alloca %struct.bNodeExecContext, align 8
  %15 = alloca %struct.TexCallData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #4
  %16 = getelementptr inbounds %struct.TexResult, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 1
  store ptr %2, ptr %20, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 2
  store ptr %3, ptr %21, align 8, !tbaa !133
  %22 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 3
  store ptr %4, ptr %22, align 8, !tbaa !134
  %23 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 4
  store i32 %5, ptr %23, align 8, !tbaa !135
  store ptr %1, ptr %15, align 8, !tbaa !136
  %24 = trunc i32 %10 to i8
  %25 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 5
  store i8 %24, ptr %25, align 4, !tbaa !137
  %26 = icmp eq ptr %11, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.ShadeInput, ptr %11, i64 0, i32 113
  %29 = load i8, ptr %28, align 1, !tbaa !138
  br label %30

30:                                               ; preds = %13, %27
  %31 = phi i8 [ %29, %27 ], [ 0, %13 ]
  %32 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 6
  store i8 %31, ptr %32, align 1, !tbaa !140
  %33 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 7
  store i16 %6, ptr %33, align 2, !tbaa !141
  %34 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 8
  store i16 %8, ptr %34, align 8, !tbaa !142
  %35 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 9
  store i32 %9, ptr %35, align 4, !tbaa !143
  %36 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 11
  store ptr %12, ptr %36, align 8, !tbaa !144
  %37 = getelementptr inbounds %struct.TexCallData, ptr %15, i64 0, i32 10
  store ptr %11, ptr %37, align 8, !tbaa !145
  %38 = icmp eq ptr %19, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  tail call void @BLI_lock_thread(i32 noundef 6) #4
  %40 = load ptr, ptr %18, align 8, !tbaa !116
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %43 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %44 = load ptr, ptr %43, align 8, !tbaa !117
  store ptr %44, ptr %14, align 8, !tbaa !118
  %45 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  %46 = call ptr @ntree_exec_begin(ptr noundef nonnull %14, ptr noundef %0, i32 %45) #4
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %48 = call ptr %47(i64 noundef 16, ptr noundef nonnull @.str.4) #4
  %49 = getelementptr inbounds %struct.bNodeTreeExec, ptr %46, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !111
  %50 = load ptr, ptr %46, align 8, !tbaa !113
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %42, %54
  %55 = phi ptr [ %57, %54 ], [ %52, %42 ]
  %56 = getelementptr inbounds %struct.bNode, ptr %55, i64 0, i32 37
  store i16 1, ptr %56, align 4, !tbaa !114
  %57 = load ptr, ptr %55, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %54, !llvm.loop !115

59:                                               ; preds = %54, %42
  store ptr %46, ptr %18, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %60

60:                                               ; preds = %59, %39
  call void @BLI_unlock_thread(i32 noundef 6) #4
  %61 = load ptr, ptr %18, align 8, !tbaa !116
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %19, %30 ], [ %61, %60 ]
  %64 = sext i16 %6 to i32
  %65 = call ptr @ntreeGetThreadStack(ptr noundef %63, i32 noundef %64) #4
  %66 = call zeroext i8 @ntreeExecThreadNodes(ptr noundef %63, ptr noundef %65, ptr noundef nonnull %15, i32 noundef %64) #4
  call void @ntreeReleaseThreadStack(ptr noundef %65) #4
  %67 = load ptr, ptr %16, align 8, !tbaa !129
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, i32 1, i32 3
  store ptr %17, ptr %16, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #4
  ret i32 %69
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare ptr @ntreeGetThreadStack(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ntreeExecThreadNodes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ntreeReleaseThreadStack(ptr noundef) local_unnamed_addr #2

declare void @ntree_update_reroute_nodes(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_remove_unused(ptr noundef) local_unnamed_addr #2

declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_sync_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_merge_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_object_texture(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @give_current_world_texture(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_brush_texture(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_linestyle_active_from_scene(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_linestyle_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"bNodeTreeType", !40, i64 0, !36, i64 4, !36, i64 68, !36, i64 132, !40, i64 388, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424, !35, i64 432, !35, i64 440, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !41, i64 480}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!42 = !{!39, !40, i64 388}
!43 = !{!39, !35, i64 408}
!44 = !{!39, !35, i64 456}
!45 = !{!39, !35, i64 432}
!46 = !{!39, !35, i64 440}
!47 = !{!39, !35, i64 448}
!48 = !{!39, !35, i64 424}
!49 = !{!39, !35, i64 488}
!50 = !{!51, !40, i64 272}
!51 = !{!"bNodeTree", !52, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !54, i64 224, !54, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !53, i64 276, !53, i64 278, !40, i64 280, !40, i64 284, !53, i64 288, !53, i64 290, !40, i64 292, !55, i64 296, !54, i64 312, !54, i64 328, !35, i64 344, !57, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!52 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !53, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!53 = !{!"short", !36, i64 0}
!54 = !{!"ListBase", !35, i64 0, !35, i64 8}
!55 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!56 = !{!"float", !36, i64 0}
!57 = !{!"bNodeInstanceKey", !40, i64 0}
!58 = !{!51, !35, i64 224}
!59 = !{!60, !35, i64 0}
!60 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !53, i64 172, !53, i64 174, !53, i64 176, !53, i64 178, !53, i64 180, !53, i64 182, !53, i64 184, !53, i64 186, !36, i64 188, !54, i64 200, !54, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !54, i64 264, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !40, i64 308, !36, i64 312, !53, i64 376, !53, i64 378, !56, i64 380, !56, i64 384, !53, i64 388, !53, i64 390, !35, i64 392, !55, i64 400, !55, i64 416, !55, i64 432, !53, i64 448, !53, i64 450, !40, i64 452, !35, i64 456}
!61 = !{!60, !40, i64 168}
!62 = !{!60, !53, i64 172}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!67, !35, i64 168}
!67 = !{!"Scene", !52, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !54, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !53, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !68, i64 280, !76, i64 4264, !54, i64 4296, !54, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !53, i64 4376, !53, i64 4378, !40, i64 4380, !54, i64 4384, !77, i64 4400, !78, i64 4416, !81, i64 4600, !35, i64 4608, !82, i64 4616, !35, i64 4640, !83, i64 4648, !83, i64 4656, !70, i64 4664, !71, i64 4824, !84, i64 4888, !35, i64 4952}
!68 = !{!"RenderData", !69, i64 0, !35, i64 248, !35, i64 256, !72, i64 264, !73, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !56, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !53, i64 432, !53, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !53, i64 456, !53, i64 458, !53, i64 460, !53, i64 462, !53, i64 464, !53, i64 466, !40, i64 468, !53, i64 472, !53, i64 474, !53, i64 476, !53, i64 478, !53, i64 480, !53, i64 482, !40, i64 484, !40, i64 488, !53, i64 492, !53, i64 494, !40, i64 496, !40, i64 500, !53, i64 504, !53, i64 506, !53, i64 508, !53, i64 510, !53, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !53, i64 528, !53, i64 530, !53, i64 532, !53, i64 534, !53, i64 536, !53, i64 538, !53, i64 540, !53, i64 542, !55, i64 544, !55, i64 560, !74, i64 576, !54, i64 592, !53, i64 608, !53, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !40, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !53, i64 648, !53, i64 650, !53, i64 652, !53, i64 654, !53, i64 656, !53, i64 658, !56, i64 660, !56, i64 664, !53, i64 668, !53, i64 670, !56, i64 672, !56, i64 676, !36, i64 680, !40, i64 1704, !53, i64 1708, !53, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !53, i64 2524, !53, i64 2526, !56, i64 2528, !56, i64 2532, !53, i64 2536, !53, i64 2538, !56, i64 2540, !53, i64 2544, !53, i64 2546, !40, i64 2548, !53, i64 2552, !53, i64 2554, !53, i64 2556, !53, i64 2558, !56, i64 2560, !56, i64 2564, !35, i64 2568, !40, i64 2576, !56, i64 2580, !36, i64 2584, !75, i64 2616, !40, i64 3976, !40, i64 3980}
!69 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !53, i64 8, !53, i64 10, !56, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !70, i64 24, !71, i64 184}
!70 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !56, i64 136, !56, i64 140, !35, i64 144, !35, i64 152}
!71 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!72 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !53, i64 48, !53, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!73 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !56, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!74 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!75 = !{!"BakeData", !69, i64 0, !36, i64 248, !53, i64 1272, !53, i64 1274, !53, i64 1276, !53, i64 1278, !56, i64 1280, !56, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!76 = !{!"AudioData", !40, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !40, i64 16, !53, i64 20, !53, i64 22, !56, i64 24, !56, i64 28}
!77 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!78 = !{!"GameData", !77, i64 0, !53, i64 16, !53, i64 18, !53, i64 20, !53, i64 22, !53, i64 24, !53, i64 26, !53, i64 28, !53, i64 30, !53, i64 32, !36, i64 34, !79, i64 40, !53, i64 64, !53, i64 66, !56, i64 68, !80, i64 72, !56, i64 128, !56, i64 132, !40, i64 136, !53, i64 140, !53, i64 142, !53, i64 144, !53, i64 146, !53, i64 148, !53, i64 150, !53, i64 152, !53, i64 154, !53, i64 156, !53, i64 158, !53, i64 160, !53, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!79 = !{!"GameDome", !53, i64 0, !53, i64 2, !53, i64 4, !53, i64 6, !56, i64 8, !56, i64 12, !35, i64 16}
!80 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !40, i64 40, !56, i64 44, !56, i64 48, !53, i64 52, !53, i64 54}
!81 = !{!"UnitSettings", !56, i64 0, !36, i64 4, !36, i64 5, !53, i64 6}
!82 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!83 = !{!"long", !36, i64 0}
!84 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!85 = !{!86, !35, i64 32}
!86 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !53, i64 28, !53, i64 30, !35, i64 32}
!87 = !{!88, !53, i64 368}
!88 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !54, i64 16, !40, i64 32, !56, i64 36, !36, i64 40, !89, i64 56, !35, i64 216, !35, i64 224, !53, i64 232, !53, i64 234, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !36, i64 256, !54, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !40, i64 360, !40, i64 364, !53, i64 368, !53, i64 370, !53, i64 372, !53, i64 374, !54, i64 376, !35, i64 392}
!89 = !{!"View2D", !55, i64 0, !55, i64 16, !74, i64 32, !74, i64 48, !74, i64 64, !36, i64 80, !36, i64 88, !56, i64 96, !56, i64 100, !53, i64 104, !53, i64 106, !53, i64 108, !53, i64 110, !53, i64 112, !53, i64 114, !53, i64 116, !53, i64 118, !53, i64 120, !53, i64 122, !53, i64 124, !53, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!90 = !{!91, !53, i64 136}
!91 = !{!"Object", !52, i64 0, !35, i64 120, !35, i64 128, !53, i64 136, !53, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !92, i64 312, !35, i64 360, !54, i64 368, !54, i64 384, !54, i64 400, !54, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !56, i64 616, !56, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !53, i64 948, !53, i64 950, !53, i64 952, !53, i64 954, !53, i64 956, !53, i64 958, !53, i64 960, !53, i64 962, !53, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !53, i64 1036, !53, i64 1038, !53, i64 1040, !36, i64 1042, !36, i64 1043, !53, i64 1044, !36, i64 1046, !36, i64 1047, !56, i64 1048, !56, i64 1052, !54, i64 1056, !54, i64 1072, !54, i64 1088, !54, i64 1104, !56, i64 1120, !53, i64 1124, !53, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !53, i64 1162, !36, i64 1164, !54, i64 1176, !54, i64 1192, !54, i64 1208, !54, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !53, i64 1266, !56, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !83, i64 1304, !83, i64 1312, !40, i64 1320, !40, i64 1324, !54, i64 1328, !54, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !54, i64 1400, !35, i64 1416}
!92 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !53, i64 16, !53, i64 18, !53, i64 20, !53, i64 22, !53, i64 24, !53, i64 26, !53, i64 28, !53, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!93 = !{!91, !35, i64 296}
!94 = !{!91, !40, i64 460}
!95 = !{!67, !35, i64 136}
!96 = !{!91, !40, i64 432}
!97 = !{!67, !35, i64 264}
!98 = !{!99, !35, i64 16}
!99 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !56, i64 32, !56, i64 36, !56, i64 40, !53, i64 44, !53, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !56, i64 52, !53, i64 56, !36, i64 58, !36, i64 59, !100, i64 64, !102, i64 168, !56, i64 336, !56, i64 340, !53, i64 344, !53, i64 346, !36, i64 348, !36, i64 349, !53, i64 350, !56, i64 352, !56, i64 356, !56, i64 360, !56, i64 364, !56, i64 368, !56, i64 372, !56, i64 376, !56, i64 380, !56, i64 384, !56, i64 388, !53, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !53, i64 434, !53, i64 436, !53, i64 438, !53, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !53, i64 464, !53, i64 466, !40, i64 468, !56, i64 472, !56, i64 476, !103, i64 480, !104, i64 608}
!100 = !{!"ImagePaintSettings", !101, i64 0, !53, i64 40, !53, i64 42, !53, i64 44, !53, i64 46, !36, i64 48, !40, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !56, i64 100}
!101 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!102 = !{!"ParticleEditSettings", !53, i64 0, !53, i64 2, !53, i64 4, !53, i64 6, !36, i64 8, !35, i64 120, !56, i64 128, !56, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !35, i64 152, !35, i64 160}
!103 = !{!"UnifiedPaintSettings", !40, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !36, i64 16, !36, i64 28, !40, i64 40, !36, i64 44, !56, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !36, i64 65, !56, i64 72, !36, i64 76, !40, i64 84, !56, i64 88, !36, i64 92, !36, i64 100, !40, i64 108, !35, i64 112, !56, i64 120, !40, i64 124}
!104 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !36, i64 20, !36, i64 21, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36}
!105 = !{!106, !35, i64 336}
!106 = !{!"Tex", !52, i64 0, !35, i64 120, !56, i64 128, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !53, i64 216, !53, i64 218, !53, i64 220, !53, i64 222, !53, i64 224, !53, i64 226, !53, i64 228, !53, i64 230, !53, i64 232, !53, i64 234, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !40, i64 252, !40, i64 256, !53, i64 260, !53, i64 262, !53, i64 264, !53, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !107, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!107 = !{!"ImageUser", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !53, i64 28, !53, i64 30, !53, i64 32, !53, i64 34, !40, i64 36}
!108 = !{!60, !35, i64 240}
!109 = !{i32 0, i32 2}
!110 = distinct !{!110, !64, !65}
!111 = !{!112, !35, i64 40}
!112 = !{!"bNodeTreeExec", !35, i64 0, !40, i64 8, !35, i64 16, !40, i64 24, !35, i64 32, !35, i64 40}
!113 = !{!112, !35, i64 0}
!114 = !{!60, !53, i64 388}
!115 = distinct !{!115, !64, !65}
!116 = !{!51, !35, i64 360}
!117 = !{!51, !35, i64 344}
!118 = !{!119, !35, i64 0}
!119 = !{!"bNodeExecContext", !35, i64 0}
!120 = distinct !{!120, !64, !65}
!121 = !{!112, !40, i64 24}
!122 = !{!123, !35, i64 16}
!123 = !{!"bNodeThreadStack", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!124 = !{!125, !35, i64 24}
!125 = !{!"bNodeStack", !36, i64 0, !56, i64 16, !56, i64 20, !35, i64 24, !53, i64 32, !53, i64 34, !53, i64 36, !53, i64 38, !53, i64 40, !53, i64 42, !36, i64 44}
!126 = !{!125, !53, i64 40}
!127 = distinct !{!127, !64, !65}
!128 = distinct !{!128, !64, !65}
!129 = !{!130, !35, i64 24}
!130 = !{!"TexResult", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !40, i64 20, !35, i64 24}
!131 = !{!132, !35, i64 8}
!132 = !{!"TexCallData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !36, i64 37, !53, i64 38, !53, i64 40, !40, i64 44, !35, i64 48, !35, i64 56}
!133 = !{!132, !35, i64 16}
!134 = !{!132, !35, i64 24}
!135 = !{!132, !40, i64 32}
!136 = !{!132, !35, i64 0}
!137 = !{!132, !36, i64 36}
!138 = !{!139, !36, i64 1433}
!139 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !53, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !53, i64 88, !53, i64 90, !53, i64 92, !53, i64 94, !53, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !56, i64 228, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !56, i64 260, !56, i64 264, !56, i64 268, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !56, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !56, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !56, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !56, i64 1256, !56, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !56, i64 1336, !56, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !56, i64 1428, !36, i64 1432, !36, i64 1433, !53, i64 1434, !53, i64 1436, !53, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!140 = !{!132, !36, i64 37}
!141 = !{!132, !53, i64 38}
!142 = !{!132, !53, i64 40}
!143 = !{!132, !40, i64 44}
!144 = !{!132, !35, i64 56}
!145 = !{!132, !35, i64 48}
