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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal void @foreach_nodeclass(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
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

; Function Attrs: nounwind uwtable
define internal void @localize(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !51
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
  tail call void @nodeInternalRelink(ptr noundef %0, ptr noundef nonnull %7) #7
  tail call void @nodeFreeNode(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %6, !llvm.loop !63

20:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_sync(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_sync_tree(ptr noundef %1, ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @local_merge(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BKE_node_preview_merge_tree(ptr noundef %1, ptr noundef %0, i8 noundef zeroext 1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update(ptr noundef %0) #0 {
  tail call void @ntreeSetOutput(ptr noundef %0) #7
  tail call void @ntree_update_reroute_nodes(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @BKE_node_preview_remove_unused(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @shader_tree_poll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 115
  %5 = load i8, ptr %4, align 8, !tbaa !67
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

; Function Attrs: nounwind uwtable
define internal void @shader_get_from_context(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 24
  %17 = load i16, ptr %16, align 2, !tbaa !89
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19, %14
  %23 = icmp eq ptr %15, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %22
  store ptr %15, ptr %4, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !92
  %27 = icmp eq i16 %26, 10
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  store ptr %30, ptr %3, align 8, !tbaa !34
  %31 = load ptr, ptr %29, align 8, !tbaa !95
  %32 = getelementptr inbounds %struct.Lamp, ptr %31, i64 0, i32 74
  br label %49

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 32
  %35 = load i32, ptr %34, align 4, !tbaa !96
  %36 = trunc i32 %35 to i16
  %37 = tail call ptr @give_current_material(ptr noundef nonnull %15, i16 noundef signext %36) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  store ptr %37, ptr %3, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.Material, ptr %37, i64 0, i32 103
  br label %49

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  store ptr null, ptr %4, align 8, !tbaa !34
  %46 = load ptr, ptr %42, align 8, !tbaa !97
  store ptr %46, ptr %3, align 8, !tbaa !34
  %47 = load ptr, ptr %42, align 8, !tbaa !97
  %48 = getelementptr inbounds %struct.World, ptr %47, i64 0, i32 75
  br label %49

49:                                               ; preds = %28, %45, %39
  %50 = phi ptr [ %40, %39 ], [ %48, %45 ], [ %32, %28 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  store ptr %51, ptr %2, align 8, !tbaa !34
  br label %52

52:                                               ; preds = %49, %33, %41, %22
  ret void
}

declare void @ntreeTypeAdd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ntreeGPUMaterialNodes(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bNodeExecContext, align 8
  %5 = tail call ptr @ntreeLocalize(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 27
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  store ptr %11, ptr %4, align 8, !tbaa !100
  %12 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  tail call void @ntreeSetOutput(ptr noundef %5) #7
  %13 = call ptr @ntree_exec_begin(ptr noundef nonnull %4, ptr noundef %5, i32 %12) #7
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = call ptr %14(i64 noundef 16, ptr noundef nonnull @.str.4) #7
  %16 = getelementptr inbounds %struct.bNodeTreeExec, ptr %13, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !102
  %17 = load ptr, ptr %13, align 8, !tbaa !104
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %9, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %9 ]
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 37
  store i16 1, ptr %23, align 4, !tbaa !105
  %24 = load ptr, ptr %22, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !106

26:                                               ; preds = %21, %9
  store ptr %13, ptr %6, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %3, %26
  %28 = phi ptr [ %13, %26 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @ntreeExecGPUNodes(ptr noundef nonnull %28, ptr noundef %1, i32 noundef 1, i16 noundef signext %2) #7
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.bNodeTreeExec, ptr %28, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %31, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %33, %43
  %37 = phi ptr [ %44, %43 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.bNodeThreadStack, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %42(ptr noundef nonnull %39) #7
  br label %43

43:                                               ; preds = %41, %36
  %44 = load ptr, ptr %37, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %36, !llvm.loop !109

46:                                               ; preds = %43, %33
  %47 = load ptr, ptr %30, align 8, !tbaa !102
  call void @BLI_freelistN(ptr noundef %47) #7
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %49 = load ptr, ptr %30, align 8, !tbaa !102
  call void %48(ptr noundef %49) #7
  store ptr null, ptr %30, align 8, !tbaa !102
  br label %50

50:                                               ; preds = %27, %46
  call void @ntree_exec_end(ptr noundef nonnull %28) #7
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %29, i64 0, i32 27
  store ptr null, ptr %51, align 8, !tbaa !98
  call void @ntreeFreeTree_ex(ptr noundef %5, i8 noundef zeroext 0) #7
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %52(ptr noundef %5) #7
  ret void
}

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeShaderBeginExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bNodeExecContext, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  store ptr %8, ptr %2, align 8, !tbaa !100
  %9 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  tail call void @ntreeSetOutput(ptr noundef %0) #7
  %10 = call ptr @ntree_exec_begin(ptr noundef nonnull %2, ptr noundef %0, i32 %9) #7
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.4) #7
  %13 = getelementptr inbounds %struct.bNodeTreeExec, ptr %10, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !102
  %14 = load ptr, ptr %10, align 8, !tbaa !104
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %6 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 37
  store i16 1, ptr %20, align 4, !tbaa !105
  %21 = load ptr, ptr %19, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !106

23:                                               ; preds = %18, %6
  store ptr %10, ptr %3, align 8, !tbaa !98
  br label %24

24:                                               ; preds = %1, %23
  %25 = phi ptr [ %10, %23 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret ptr %25
}

declare void @ntreeExecGPUNodes(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeShaderEndExecTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !104
  %5 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.bNodeThreadStack, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #7
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !109

21:                                               ; preds = %18, %8
  %22 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @BLI_freelistN(ptr noundef %22) #7
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void %23(ptr noundef %24) #7
  store ptr null, ptr %5, align 8, !tbaa !102
  br label %25

25:                                               ; preds = %3, %21
  tail call void @ntree_exec_end(ptr noundef nonnull %0) #7
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 27
  store ptr null, ptr %26, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_node_shader_lamp_loop(ptr noundef %0) local_unnamed_addr #3 {
  store ptr %0, ptr @node_shader_lamp_loop, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeShaderBeginExecTree_internal(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 {
  tail call void @ntreeSetOutput(ptr noundef %1) #7
  %4 = tail call ptr @ntree_exec_begin(ptr noundef %0, ptr noundef %1, i32 %2) #7
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 16, ptr noundef nonnull @.str.4) #7
  %7 = getelementptr inbounds %struct.bNodeTreeExec, ptr %4, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !102
  %8 = load ptr, ptr %4, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 37
  store i16 1, ptr %14, align 4, !tbaa !105
  %15 = load ptr, ptr %13, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !106

17:                                               ; preds = %12, %3
  ret ptr %4
}

declare void @ntreeSetOutput(ptr noundef) local_unnamed_addr #2

declare ptr @ntree_exec_begin(ptr noundef, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeShaderEndExecTree_internal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTreeExec, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.bNodeThreadStack, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #7
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !109

18:                                               ; preds = %15, %5
  %19 = load ptr, ptr %2, align 8, !tbaa !102
  tail call void @BLI_freelistN(ptr noundef %19) #7
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = load ptr, ptr %2, align 8, !tbaa !102
  tail call void %20(ptr noundef %21) #7
  store ptr null, ptr %2, align 8, !tbaa !102
  br label %22

22:                                               ; preds = %18, %1
  tail call void @ntree_exec_end(ptr noundef %0) #7
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @ntree_exec_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ntreeShaderExecTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bNodeExecContext, align 8
  %5 = alloca %struct.ShaderCallData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = load ptr, ptr %1, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  store ptr %1, ptr %5, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.ShaderCallData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %2, i8 0, i64 212, i1 false)
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  tail call void @BLI_lock_thread(i32 noundef 6) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %4, align 8, !tbaa !100
  %17 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4
  tail call void @ntreeSetOutput(ptr noundef %0) #7
  %18 = call ptr @ntree_exec_begin(ptr noundef nonnull %4, ptr noundef %0, i32 %17) #7
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = call ptr %19(i64 noundef 16, ptr noundef nonnull @.str.4) #7
  %21 = getelementptr inbounds %struct.bNodeTreeExec, ptr %18, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !102
  %22 = load ptr, ptr %18, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %14, %26
  %27 = phi ptr [ %29, %26 ], [ %24, %14 ]
  %28 = getelementptr inbounds %struct.bNode, ptr %27, i64 0, i32 37
  store i16 1, ptr %28, align 4, !tbaa !105
  %29 = load ptr, ptr %27, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !106

31:                                               ; preds = %26, %14
  store ptr %18, ptr %7, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  store ptr %18, ptr %7, align 8, !tbaa !98
  br label %32

32:                                               ; preds = %31, %11
  call void @BLI_unlock_thread(i32 noundef 6) #7
  %33 = load ptr, ptr %7, align 8, !tbaa !98
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi ptr [ %8, %3 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %1, i64 0, i32 114
  %37 = load i16, ptr %36, align 2, !tbaa !115
  %38 = sext i16 %37 to i32
  %39 = call ptr @ntreeGetThreadStack(ptr noundef %35, i32 noundef %38) #7
  %40 = load i16, ptr %36, align 2, !tbaa !115
  %41 = sext i16 %40 to i32
  %42 = call zeroext i8 @ntreeExecThreadNodes(ptr noundef %35, ptr noundef %39, ptr noundef nonnull %5, i32 noundef %41) #7
  call void @ntreeReleaseThreadStack(ptr noundef %39) #7
  store ptr %6, ptr %1, align 8, !tbaa !110
  %43 = load float, ptr %2, align 4, !tbaa !116
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store float 0.000000e+00, ptr %2, align 4, !tbaa !116
  br label %46

46:                                               ; preds = %45, %34
  %47 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !116
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store float 0.000000e+00, ptr %47, align 4, !tbaa !116
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !116
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store float 0.000000e+00, ptr %52, align 4, !tbaa !116
  br label %56

56:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i8 %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare ptr @ntreeGetThreadStack(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ntreeExecThreadNodes(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ntreeReleaseThreadStack(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_sync_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_merge_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ntree_update_reroute_nodes(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_preview_remove_unused(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!44 = !{!39, !35, i64 432}
!45 = !{!39, !35, i64 440}
!46 = !{!39, !35, i64 448}
!47 = !{!39, !35, i64 456}
!48 = !{!39, !35, i64 416}
!49 = !{!39, !35, i64 424}
!50 = !{!39, !35, i64 488}
!51 = !{!52, !35, i64 224}
!52 = !{!"bNodeTree", !53, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !55, i64 224, !55, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !54, i64 276, !54, i64 278, !40, i64 280, !40, i64 284, !54, i64 288, !54, i64 290, !40, i64 292, !56, i64 296, !55, i64 312, !55, i64 328, !35, i64 344, !58, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!53 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !54, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!54 = !{!"short", !36, i64 0}
!55 = !{!"ListBase", !35, i64 0, !35, i64 8}
!56 = !{!"rctf", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!57 = !{!"float", !36, i64 0}
!58 = !{!"bNodeInstanceKey", !40, i64 0}
!59 = !{!60, !35, i64 0}
!60 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !54, i64 172, !54, i64 174, !54, i64 176, !54, i64 178, !54, i64 180, !54, i64 182, !54, i64 184, !54, i64 186, !36, i64 188, !55, i64 200, !55, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !55, i64 264, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !57, i64 296, !57, i64 300, !57, i64 304, !40, i64 308, !36, i64 312, !54, i64 376, !54, i64 378, !57, i64 380, !57, i64 384, !54, i64 388, !54, i64 390, !35, i64 392, !56, i64 400, !56, i64 416, !56, i64 432, !54, i64 448, !54, i64 450, !40, i64 452, !35, i64 456}
!61 = !{!60, !40, i64 168}
!62 = !{!60, !54, i64 172}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!52, !40, i64 272}
!67 = !{!36, !36, i64 0}
!68 = !{!69, !35, i64 168}
!69 = !{!"Scene", !53, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !55, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !54, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !70, i64 280, !78, i64 4264, !55, i64 4296, !55, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !54, i64 4376, !54, i64 4378, !40, i64 4380, !55, i64 4384, !79, i64 4400, !80, i64 4416, !83, i64 4600, !35, i64 4608, !84, i64 4616, !35, i64 4640, !85, i64 4648, !85, i64 4656, !72, i64 4664, !73, i64 4824, !86, i64 4888, !35, i64 4952}
!70 = !{!"RenderData", !71, i64 0, !35, i64 248, !35, i64 256, !74, i64 264, !75, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !57, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !54, i64 432, !54, i64 434, !57, i64 436, !57, i64 440, !57, i64 444, !57, i64 448, !57, i64 452, !54, i64 456, !54, i64 458, !54, i64 460, !54, i64 462, !54, i64 464, !54, i64 466, !40, i64 468, !54, i64 472, !54, i64 474, !54, i64 476, !54, i64 478, !54, i64 480, !54, i64 482, !40, i64 484, !40, i64 488, !54, i64 492, !54, i64 494, !40, i64 496, !40, i64 500, !54, i64 504, !54, i64 506, !54, i64 508, !54, i64 510, !54, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !54, i64 528, !54, i64 530, !54, i64 532, !54, i64 534, !54, i64 536, !54, i64 538, !54, i64 540, !54, i64 542, !56, i64 544, !56, i64 560, !76, i64 576, !55, i64 592, !54, i64 608, !54, i64 610, !57, i64 612, !57, i64 616, !57, i64 620, !57, i64 624, !40, i64 628, !57, i64 632, !57, i64 636, !57, i64 640, !57, i64 644, !54, i64 648, !54, i64 650, !54, i64 652, !54, i64 654, !54, i64 656, !54, i64 658, !57, i64 660, !57, i64 664, !54, i64 668, !54, i64 670, !57, i64 672, !57, i64 676, !36, i64 680, !40, i64 1704, !54, i64 1708, !54, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !54, i64 2524, !54, i64 2526, !57, i64 2528, !57, i64 2532, !54, i64 2536, !54, i64 2538, !57, i64 2540, !54, i64 2544, !54, i64 2546, !40, i64 2548, !54, i64 2552, !54, i64 2554, !54, i64 2556, !54, i64 2558, !57, i64 2560, !57, i64 2564, !35, i64 2568, !40, i64 2576, !57, i64 2580, !36, i64 2584, !77, i64 2616, !40, i64 3976, !40, i64 3980}
!71 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !54, i64 8, !54, i64 10, !57, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !57, i64 136, !57, i64 140, !35, i64 144, !35, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!74 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !54, i64 48, !54, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!75 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !57, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!76 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!77 = !{!"BakeData", !71, i64 0, !36, i64 248, !54, i64 1272, !54, i64 1274, !54, i64 1276, !54, i64 1278, !57, i64 1280, !57, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!78 = !{!"AudioData", !40, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !40, i64 16, !54, i64 20, !54, i64 22, !57, i64 24, !57, i64 28}
!79 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!80 = !{!"GameData", !79, i64 0, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !54, i64 32, !36, i64 34, !81, i64 40, !54, i64 64, !54, i64 66, !57, i64 68, !82, i64 72, !57, i64 128, !57, i64 132, !40, i64 136, !54, i64 140, !54, i64 142, !54, i64 144, !54, i64 146, !54, i64 148, !54, i64 150, !54, i64 152, !54, i64 154, !54, i64 156, !54, i64 158, !54, i64 160, !54, i64 162, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180}
!81 = !{!"GameDome", !54, i64 0, !54, i64 2, !54, i64 4, !54, i64 6, !57, i64 8, !57, i64 12, !35, i64 16}
!82 = !{!"RecastData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !40, i64 40, !57, i64 44, !57, i64 48, !54, i64 52, !54, i64 54}
!83 = !{!"UnitSettings", !57, i64 0, !36, i64 4, !36, i64 5, !54, i64 6}
!84 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!85 = !{!"long", !36, i64 0}
!86 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!87 = !{!88, !35, i64 32}
!88 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !54, i64 28, !54, i64 30, !35, i64 32}
!89 = !{!90, !54, i64 370}
!90 = !{!"SpaceNode", !35, i64 0, !35, i64 8, !55, i64 16, !40, i64 32, !57, i64 36, !36, i64 40, !91, i64 56, !35, i64 216, !35, i64 224, !54, i64 232, !54, i64 234, !57, i64 236, !57, i64 240, !57, i64 244, !57, i64 248, !57, i64 252, !36, i64 256, !55, i64 264, !35, i64 280, !35, i64 288, !36, i64 296, !40, i64 360, !40, i64 364, !54, i64 368, !54, i64 370, !54, i64 372, !54, i64 374, !55, i64 376, !35, i64 392}
!91 = !{!"View2D", !56, i64 0, !56, i64 16, !76, i64 32, !76, i64 48, !76, i64 64, !36, i64 80, !36, i64 88, !57, i64 96, !57, i64 100, !54, i64 104, !54, i64 106, !54, i64 108, !54, i64 110, !54, i64 112, !54, i64 114, !54, i64 116, !54, i64 118, !54, i64 120, !54, i64 122, !54, i64 124, !54, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!92 = !{!93, !54, i64 136}
!93 = !{!"Object", !53, i64 0, !35, i64 120, !35, i64 128, !54, i64 136, !54, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !94, i64 312, !35, i64 360, !55, i64 368, !55, i64 384, !55, i64 400, !55, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !57, i64 616, !57, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !54, i64 948, !54, i64 950, !54, i64 952, !54, i64 954, !54, i64 956, !54, i64 958, !54, i64 960, !54, i64 962, !54, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !54, i64 1036, !54, i64 1038, !54, i64 1040, !36, i64 1042, !36, i64 1043, !54, i64 1044, !36, i64 1046, !36, i64 1047, !57, i64 1048, !57, i64 1052, !55, i64 1056, !55, i64 1072, !55, i64 1088, !55, i64 1104, !57, i64 1120, !54, i64 1124, !54, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !54, i64 1162, !36, i64 1164, !55, i64 1176, !55, i64 1192, !55, i64 1208, !55, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !54, i64 1266, !57, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !85, i64 1304, !85, i64 1312, !40, i64 1320, !40, i64 1324, !55, i64 1328, !55, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !55, i64 1400, !35, i64 1416}
!94 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!95 = !{!93, !35, i64 296}
!96 = !{!93, !40, i64 460}
!97 = !{!69, !35, i64 136}
!98 = !{!52, !35, i64 360}
!99 = !{!52, !35, i64 344}
!100 = !{!101, !35, i64 0}
!101 = !{!"bNodeExecContext", !35, i64 0}
!102 = !{!103, !35, i64 40}
!103 = !{!"bNodeTreeExec", !35, i64 0, !40, i64 8, !35, i64 16, !40, i64 24, !35, i64 32, !35, i64 40}
!104 = !{!103, !35, i64 0}
!105 = !{!60, !54, i64 388}
!106 = distinct !{!106, !64, !65}
!107 = !{!108, !35, i64 16}
!108 = !{!"bNodeThreadStack", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!109 = distinct !{!109, !64, !65}
!110 = !{!111, !35, i64 0}
!111 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !54, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !54, i64 88, !54, i64 90, !54, i64 92, !54, i64 94, !54, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !57, i64 180, !57, i64 184, !57, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !57, i64 228, !57, i64 232, !57, i64 236, !57, i64 240, !57, i64 244, !57, i64 248, !57, i64 252, !57, i64 256, !57, i64 260, !57, i64 264, !57, i64 268, !57, i64 272, !57, i64 276, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !57, i64 296, !57, i64 300, !57, i64 304, !57, i64 308, !57, i64 312, !57, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !57, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !57, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !57, i64 1256, !57, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !57, i64 1336, !57, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !57, i64 1428, !36, i64 1432, !36, i64 1433, !54, i64 1434, !54, i64 1436, !54, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!112 = !{!113, !35, i64 0}
!113 = !{!"ShaderCallData", !35, i64 0, !35, i64 8}
!114 = !{!113, !35, i64 8}
!115 = !{!111, !54, i64 1434}
!116 = !{!57, !57, i64 0}
