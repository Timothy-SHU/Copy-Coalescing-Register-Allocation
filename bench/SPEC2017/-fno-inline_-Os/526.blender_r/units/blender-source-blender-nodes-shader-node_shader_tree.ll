; ModuleID = 'blender/source/blender/nodes/shader/node_shader_tree.c'
source_filename = "blender/source/blender/nodes/shader/node_shader_tree.c"
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
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.bNodeExecContext = type { ptr }
%struct.bNodeTreeExec = type { ptr, i32, ptr, i32, ptr, ptr }
%struct.bNodeThreadStack = type { ptr, ptr, ptr, i8 }
%struct.ShaderCallData = type { ptr, ptr }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"shader node tree type\00", align 1
@ntreeType_Shader = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ShaderNodeTree\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Shader\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Shader nodes\00", align 1
@RNA_ShaderNodeTree = external global %struct.StructRNA, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@node_shader_lamp_loop = dso_local local_unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"thread stack array\00", align 1
@NODE_INSTANCE_KEY_BASE = external local_unnamed_addr constant %struct.bNodeInstanceKey, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Convertor\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Layout\00", align 1
@RE_engine_id_BLENDER_RENDER = external local_unnamed_addr global ptr, align 8
@RE_engine_id_BLENDER_GAME = external local_unnamed_addr global ptr, align 8
@RE_engine_id_CYCLES = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_tree_type_sh() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 512, ptr noundef nonnull @.str) #7
  store ptr %2, ptr @ntreeType_Shader, align 8, !tbaa !34
  store i32 0, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false) #7
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #7
  %5 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false) #7
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 7
  store ptr @foreach_nodeclass, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 10
  store ptr @localize, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 11
  store ptr @local_sync, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 12
  store ptr @local_merge, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 13
  store ptr @update, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 8
  store ptr @shader_tree_poll, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 9
  store ptr @shader_get_from_context, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %2, i64 0, i32 16, i32 1
  store ptr @RNA_ShaderNodeTree, ptr %14, align 8, !tbaa !50
  tail call void @ntreeTypeAdd(ptr noundef nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreach_nodeclass(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !51 {
  tail call void %2(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.5) #7
  tail call void %2(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.6) #7
  %4 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %2(ptr noundef %1, i32 noundef 40, ptr noundef nonnull @.str.2) #7
  tail call void %2(ptr noundef %1, i32 noundef 13, ptr noundef nonnull @.str.7) #7
  br label %7

7:                                                ; preds = %6, %3
  tail call void %2(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.8) #7
  tail call void %2(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.9) #7
  tail call void %2(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.10) #7
  tail call void %2(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.11) #7
  tail call void %2(ptr noundef %1, i32 noundef 6, ptr noundef nonnull @.str.12) #7
  tail call void %2(ptr noundef %1, i32 noundef 33, ptr noundef nonnull @.str.13) #7
  tail call void %2(ptr noundef %1, i32 noundef 100, ptr noundef nonnull @.str.14) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @localize(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !52 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %8, %18 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !64
  %16 = icmp eq i16 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %6
  tail call void @nodeInternalRelink(ptr noundef %0, ptr noundef nonnull %7) #7
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %6, !llvm.loop !65

20:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @local_sync(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !67 {
  tail call void @BKE_node_preview_sync_tree(ptr noundef %1, ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @local_merge(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !68 {
  tail call void @BKE_node_preview_merge_tree(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @update(ptr noundef %0) #0 !PGOFuncName !69 {
  tail call void @ntreeSetOutput(ptr noundef %0) #7
  tail call void @ntree_update_reroute_nodes(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !70
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_node_preview_remove_unused(ptr noundef nonnull %0) #7
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shader_tree_poll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !71 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 115
  %5 = load i8, ptr %4, align 8, !tbaa !72
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !34
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @RE_engine_id_BLENDER_GAME, align 8, !tbaa !34
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @RE_engine_id_CYCLES, align 8, !tbaa !34
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %16) #8
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %11, %7, %2
  %21 = phi i32 [ 1, %11 ], [ 1, %7 ], [ 1, %2 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shader_get_from_context(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 !PGOFuncName !73 {
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 24
  %17 = load i16, ptr %16, align 2, !tbaa !95
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %7) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19, %14
  %23 = icmp eq ptr %15, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %22
  store ptr %15, ptr %4, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !98
  %27 = icmp eq i16 %26, 10
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  store ptr %30, ptr %3, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Lamp, ptr %30, i64 0, i32 74
  br label %47

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 32
  %34 = load i32, ptr %33, align 4, !tbaa !102
  %35 = trunc i32 %34 to i16
  %36 = tail call ptr @give_current_material(ptr noundef nonnull %15, i16 noundef signext %35) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  store ptr %36, ptr %3, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.Material, ptr %36, i64 0, i32 103
  br label %47

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !103
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  store ptr null, ptr %4, align 8, !tbaa !34
  %45 = load ptr, ptr %41, align 8, !tbaa !103
  store ptr %45, ptr %3, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.World, ptr %45, i64 0, i32 75
  br label %47

47:                                               ; preds = %28, %44, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %44 ], [ %31, %28 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  store ptr %49, ptr %2, align 8, !tbaa !34
  br label %50

50:                                               ; preds = %47, %32, %40, %22
  ret void
}

; Function Attrs: optsize
declare void @ntreeTypeAdd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeGPUMaterialNodes(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ntreeLocalize(ptr noundef %0) #7
  %5 = tail call ptr @ntreeShaderBeginExecTree(ptr noundef %4) #9
  tail call void @ntreeExecGPUNodes(ptr noundef %5, ptr noundef %1, i32 noundef 1, i16 noundef signext %2) #7
  tail call void @ntreeShaderEndExecTree(ptr noundef %5) #9
  tail call void @ntreeFreeTree_ex(ptr noundef %4, i8 noundef zeroext 0) #7
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef %4) #7
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeShaderBeginExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bNodeExecContext, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  store ptr %8, ptr %2, align 8, !tbaa !106
  %9 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  %10 = call ptr @ntreeShaderBeginExecTree_internal(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 %9) #9
  store ptr %10, ptr %3, align 8, !tbaa !104
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi ptr [ %10, %6 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %12
}

; Function Attrs: optsize
declare void @ntreeExecGPUNodes(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeShaderEndExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !108
  tail call void @ntreeShaderEndExecTree_internal(ptr noundef nonnull %0) #9
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 27
  store ptr null, ptr %5, align 8, !tbaa !104
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_node_shader_lamp_loop(ptr noundef %0) local_unnamed_addr #3 {
  store ptr %0, ptr @node_shader_lamp_loop, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeShaderBeginExecTree_internal(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  tail call void @ntreeSetOutput(ptr noundef %1) #7
  %4 = tail call ptr @ntree_exec_begin(ptr noundef %0, ptr noundef %1, i32 %2) #7
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.4) #7
  %7 = getelementptr inbounds %struct.bNodeTreeExec, ptr %4, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !110
  %8 = load ptr, ptr %4, align 8, !tbaa !108
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 37
  store i16 1, ptr %14, align 4, !tbaa !111
  %15 = load ptr, ptr %13, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !112

17:                                               ; preds = %12, %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @ntreeSetOutput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntree_exec_begin(ptr noundef, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeShaderEndExecTree_internal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.bNodeThreadStack, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #7
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !115

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !110
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi ptr [ %19, %18 ], [ %3, %5 ]
  tail call void @BLI_freelistN(ptr noundef %21) #7
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = load ptr, ptr %2, align 8, !tbaa !110
  tail call void %22(ptr noundef %23) #7
  store ptr null, ptr %2, align 8, !tbaa !110
  br label %24

24:                                               ; preds = %20, %1
  tail call void @ntree_exec_end(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntree_exec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ntreeShaderExecTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ShaderCallData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = load ptr, ptr %1, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  store ptr %1, ptr %4, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.ShaderCallData, ptr %4, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %2, i8 0, i64 212, i1 false)
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  tail call void @BLI_lock_thread(i32 noundef 6) #7
  %11 = load ptr, ptr %6, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call ptr @ntreeShaderBeginExecTree(ptr noundef nonnull %0) #9
  store ptr %14, ptr %6, align 8, !tbaa !104
  br label %15

15:                                               ; preds = %13, %10
  tail call void @BLI_unlock_thread(i32 noundef 6) #7
  %16 = load ptr, ptr %6, align 8, !tbaa !104
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %7, %3 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %20 = load i16, ptr %19, align 2, !tbaa !121
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @ntreeGetThreadStack(ptr noundef %18, i32 noundef %21) #7
  %23 = load i16, ptr %19, align 2, !tbaa !121
  %24 = sext i16 %23 to i32
  %25 = call zeroext i8 @ntreeExecThreadNodes(ptr noundef %18, ptr noundef %22, ptr noundef nonnull %4, i32 noundef %24) #7
  call void @ntreeReleaseThreadStack(ptr noundef %22) #7
  store ptr %5, ptr %1, align 8, !tbaa !116
  %26 = load float, ptr %2, align 4, !tbaa !122
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store float 0.000000e+00, ptr %2, align 4, !tbaa !122
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !122
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store float 0.000000e+00, ptr %30, align 4, !tbaa !122
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !122
  %37 = fcmp olt float %36, 0.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store float 0.000000e+00, ptr %35, align 4, !tbaa !122
  br label %39

39:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i8 %25
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeGetThreadStack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ntreeExecThreadNodes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeReleaseThreadStack(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_preview_sync_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_preview_merge_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntree_update_reroute_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_preview_remove_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize willreturn memory(read) }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!44 = !{!39, !35, i64 432}
!45 = !{!39, !35, i64 440}
!46 = !{!39, !35, i64 448}
!47 = !{!39, !35, i64 456}
!48 = !{!39, !35, i64 416}
!49 = !{!39, !35, i64 424}
!50 = !{!39, !35, i64 488}
!51 = !{!"node_shader_tree.c:foreach_nodeclass"}
!52 = !{!"node_shader_tree.c:localize"}
!53 = !{!54, !35, i64 224}
!54 = !{!"bNodeTree", !55, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !57, i64 224, !57, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !56, i64 276, !56, i64 278, !40, i64 280, !40, i64 284, !56, i64 288, !56, i64 290, !40, i64 292, !58, i64 296, !57, i64 312, !57, i64 328, !35, i64 344, !60, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!55 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !56, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!56 = !{!"short", !36, i64 0}
!57 = !{!"ListBase", !35, i64 0, !35, i64 8}
!58 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!59 = !{!"float", !36, i64 0}
!60 = !{!"bNodeInstanceKey", !40, i64 0}
!61 = !{!62, !35, i64 0}
!62 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !56, i64 172, !56, i64 174, !56, i64 176, !56, i64 178, !56, i64 180, !56, i64 182, !56, i64 184, !56, i64 186, !36, i64 188, !57, i64 200, !57, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !57, i64 264, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !40, i64 308, !36, i64 312, !56, i64 376, !56, i64 378, !59, i64 380, !59, i64 384, !56, i64 388, !56, i64 390, !35, i64 392, !58, i64 400, !58, i64 416, !58, i64 432, !56, i64 448, !56, i64 450, !40, i64 452, !35, i64 456}
!63 = !{!62, !40, i64 168}
!64 = !{!62, !56, i64 172}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"node_shader_tree.c:local_sync"}
!68 = !{!"node_shader_tree.c:local_merge"}
!69 = !{!"node_shader_tree.c:update"}
!70 = !{!54, !40, i64 272}
!71 = !{!"node_shader_tree.c:shader_tree_poll"}
!72 = !{!36, !36, i64 0}
!73 = !{!"node_shader_tree.c:shader_get_from_context"}
!74 = !{!75, !35, i64 168}
!75 = !{!"Scene", !55, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !57, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !56, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !76, i64 280, !84, i64 4264, !57, i64 4296, !57, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !56, i64 4376, !56, i64 4378, !40, i64 4380, !57, i64 4384, !85, i64 4400, !86, i64 4416, !89, i64 4600, !35, i64 4608, !90, i64 4616, !35, i64 4640, !91, i64 4648, !91, i64 4656, !78, i64 4664, !79, i64 4824, !92, i64 4888, !35, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !35, i64 248, !35, i64 256, !80, i64 264, !81, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !59, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !56, i64 432, !56, i64 434, !59, i64 436, !59, i64 440, !59, i64 444, !59, i64 448, !59, i64 452, !56, i64 456, !56, i64 458, !56, i64 460, !56, i64 462, !56, i64 464, !56, i64 466, !40, i64 468, !56, i64 472, !56, i64 474, !56, i64 476, !56, i64 478, !56, i64 480, !56, i64 482, !40, i64 484, !40, i64 488, !56, i64 492, !56, i64 494, !40, i64 496, !40, i64 500, !56, i64 504, !56, i64 506, !56, i64 508, !56, i64 510, !56, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !56, i64 528, !56, i64 530, !56, i64 532, !56, i64 534, !56, i64 536, !56, i64 538, !56, i64 540, !56, i64 542, !58, i64 544, !58, i64 560, !82, i64 576, !57, i64 592, !56, i64 608, !56, i64 610, !59, i64 612, !59, i64 616, !59, i64 620, !59, i64 624, !40, i64 628, !59, i64 632, !59, i64 636, !59, i64 640, !59, i64 644, !56, i64 648, !56, i64 650, !56, i64 652, !56, i64 654, !56, i64 656, !56, i64 658, !59, i64 660, !59, i64 664, !56, i64 668, !56, i64 670, !59, i64 672, !59, i64 676, !36, i64 680, !40, i64 1704, !56, i64 1708, !56, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !56, i64 2524, !56, i64 2526, !59, i64 2528, !59, i64 2532, !56, i64 2536, !56, i64 2538, !59, i64 2540, !56, i64 2544, !56, i64 2546, !40, i64 2548, !56, i64 2552, !56, i64 2554, !56, i64 2556, !56, i64 2558, !59, i64 2560, !59, i64 2564, !35, i64 2568, !40, i64 2576, !59, i64 2580, !36, i64 2584, !83, i64 2616, !40, i64 3976, !40, i64 3980}
!77 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !56, i64 8, !56, i64 10, !59, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !59, i64 136, !59, i64 140, !35, i64 144, !35, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!80 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !56, i64 48, !56, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!81 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !59, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!82 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!83 = !{!"BakeData", !77, i64 0, !36, i64 248, !56, i64 1272, !56, i64 1274, !56, i64 1276, !56, i64 1278, !59, i64 1280, !59, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!84 = !{!"AudioData", !40, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !40, i64 16, !56, i64 20, !56, i64 22, !59, i64 24, !59, i64 28}
!85 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!86 = !{!"GameData", !85, i64 0, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !56, i64 32, !36, i64 34, !87, i64 40, !56, i64 64, !56, i64 66, !59, i64 68, !88, i64 72, !59, i64 128, !59, i64 132, !40, i64 136, !56, i64 140, !56, i64 142, !56, i64 144, !56, i64 146, !56, i64 148, !56, i64 150, !56, i64 152, !56, i64 154, !56, i64 156, !56, i64 158, !56, i64 160, !56, i64 162, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180}
!87 = !{!"GameDome", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !59, i64 8, !59, i64 12, !35, i64 16}
!88 = !{!"RecastData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !40, i64 40, !59, i64 44, !59, i64 48, !56, i64 52, !56, i64 54}
!89 = !{!"UnitSettings", !59, i64 0, !36, i64 4, !36, i64 5, !56, i64 6}
!90 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!91 = !{!"long", !36, i64 0}
!92 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!93 = !{!94, !35, i64 32}
!94 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !56, i64 28, !56, i64 30, !35, i64 32}
!95 = !{!96, !56, i64 370}
!96 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !57, i64 16, !40, i64 32, !59, i64 36, !36, i64 40, !97, i64 56, !35, i64 216, !35, i64 224, !56, i64 232, !56, i64 234, !59, i64 236, !59, i64 240, !59, i64 244, !59, i64 248, !59, i64 252, !36, i64 256, !57, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !40, i64 360, !40, i64 364, !56, i64 368, !56, i64 370, !56, i64 372, !56, i64 374, !57, i64 376, !35, i64 392}
!97 = !{!"View2D", !58, i64 0, !58, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !36, i64 80, !36, i64 88, !59, i64 96, !59, i64 100, !56, i64 104, !56, i64 106, !56, i64 108, !56, i64 110, !56, i64 112, !56, i64 114, !56, i64 116, !56, i64 118, !56, i64 120, !56, i64 122, !56, i64 124, !56, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!98 = !{!99, !56, i64 136}
!99 = !{!"Object", !55, i64 0, !35, i64 120, !35, i64 128, !56, i64 136, !56, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !100, i64 312, !35, i64 360, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !59, i64 616, !59, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !56, i64 948, !56, i64 950, !56, i64 952, !56, i64 954, !56, i64 956, !56, i64 958, !56, i64 960, !56, i64 962, !56, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !59, i64 988, !59, i64 992, !59, i64 996, !59, i64 1000, !59, i64 1004, !59, i64 1008, !59, i64 1012, !59, i64 1016, !59, i64 1020, !59, i64 1024, !59, i64 1028, !59, i64 1032, !56, i64 1036, !56, i64 1038, !56, i64 1040, !36, i64 1042, !36, i64 1043, !56, i64 1044, !36, i64 1046, !36, i64 1047, !59, i64 1048, !59, i64 1052, !57, i64 1056, !57, i64 1072, !57, i64 1088, !57, i64 1104, !59, i64 1120, !56, i64 1124, !56, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !56, i64 1162, !36, i64 1164, !57, i64 1176, !57, i64 1192, !57, i64 1208, !57, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !56, i64 1266, !59, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !91, i64 1304, !91, i64 1312, !40, i64 1320, !40, i64 1324, !57, i64 1328, !57, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !57, i64 1400, !35, i64 1416}
!100 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !56, i64 16, !56, i64 18, !56, i64 20, !56, i64 22, !56, i64 24, !56, i64 26, !56, i64 28, !56, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!101 = !{!99, !35, i64 296}
!102 = !{!99, !40, i64 460}
!103 = !{!75, !35, i64 136}
!104 = !{!54, !35, i64 360}
!105 = !{!54, !35, i64 344}
!106 = !{!107, !35, i64 0}
!107 = !{!"bNodeExecContext", !35, i64 0}
!108 = !{!109, !35, i64 0}
!109 = !{!"bNodeTreeExec", !35, i64 0, !40, i64 8, !35, i64 16, !40, i64 24, !35, i64 32, !35, i64 40}
!110 = !{!109, !35, i64 40}
!111 = !{!62, !56, i64 388}
!112 = distinct !{!112, !66}
!113 = !{!114, !35, i64 16}
!114 = !{!"bNodeThreadStack", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!115 = distinct !{!115, !66}
!116 = !{!117, !35, i64 0}
!117 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !56, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !56, i64 88, !56, i64 90, !56, i64 92, !56, i64 94, !56, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180, !59, i64 184, !59, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !59, i64 228, !59, i64 232, !59, i64 236, !59, i64 240, !59, i64 244, !59, i64 248, !59, i64 252, !59, i64 256, !59, i64 260, !59, i64 264, !59, i64 268, !59, i64 272, !59, i64 276, !59, i64 280, !59, i64 284, !59, i64 288, !59, i64 292, !59, i64 296, !59, i64 300, !59, i64 304, !59, i64 308, !59, i64 312, !59, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !59, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !59, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !59, i64 1256, !59, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !59, i64 1336, !59, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !59, i64 1428, !36, i64 1432, !36, i64 1433, !56, i64 1434, !56, i64 1436, !56, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!118 = !{!119, !35, i64 0}
!119 = !{!"ShaderCallData", !35, i64 0, !35, i64 8}
!120 = !{!119, !35, i64 8}
!121 = !{!117, !56, i64 1434}
!122 = !{!59, !59, i64 0}
