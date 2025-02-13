; ModuleID = 'blender/source/blender/editors/space_node/node_draw.c'
source_filename = "blender/source/blender/editors/space_node/node_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.bNodeInstanceKey = type { i32 }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bNodePreview = type { %struct.bNodeInstanceHashEntry, ptr, i16, i16, i32 }
%struct.bNodeInstanceHashEntry = type { %struct.bNodeInstanceKey, i16, i16 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bNodeTreePath = type { ptr, ptr, ptr, %struct.bNodeInstanceKey, i32, [2 x float], [64 x i8] }
%struct.bNodeLinkDrag = type { ptr, ptr, %struct.ListBase, i32 }
%struct.LinkData = type { ptr, ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@RNA_Node = external global %struct.StructRNA, align 1
@NODE_INSTANCE_KEY_NONE = external local_unnamed_addr constant %struct.bNodeInstanceKey, align 4
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@node_circle_draw.si = internal unnamed_addr constant [16 x float] [float 0.000000e+00, float 0x3FD93D2060000000, float 0x3FE73180A0000000, float 0x3FEE0210C0000000, float 0x3FEFF57C40000000, float 0x3FECBAD0A0000000, float 0x3FE4D80B20000000, float 0x3FD328C3E0000000, float 0xBFB9E62AC0000000, float 0xBFDF0F3000000000, float 0xBFE94E08E0000000, float 0xBFEEFA7CE0000000, float 0xBFEFA18860000000, float 0xBFEB281800000000, float 0xBFE247D440000000, float 0xBFC9C42660000000], align 16
@node_circle_draw.co = internal unnamed_addr constant [16 x float] [float 1.000000e+00, float 0x3FED681A40000000, float 0x3FE60C0460000000, float 0x3FD63A3FC0000000, float 0xBFA9EEAFC0000000, float 0xBFDC2F6B00000000, float 0xBFE847BF20000000, float 0xBFEE884F00000000, float 0xBFEFD5F820000000, float 0xBFEBFAA5C0000000, float 0xBFE3965F40000000, float 0xBFD00AB0E0000000, float 0x3FC361FC40000000, float 0x3FE0ED45E0000000, float 0x3FEA43B1C0000000, float 0x3FEF584F20000000], align 16
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NODE_OT_hide_toggle\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"node_previews\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"NODE_OT_preview_toggle\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"NODE_OT_group_edit\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"node buttons %p\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"node tree bounds block\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @ED_node_grid_size() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %2 = sitofp i16 %1 to float
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tree_update(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  tail call void @snode_set_context(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, ptr %9, align 4, !tbaa !50
  br label %13

13:                                               ; preds = %4, %8, %12, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @snode_set_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tag_update_id(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc ptr @node_tree_from_ID(ptr noundef %0) #14
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %2, null
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !54
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %16
  ]

9:                                                ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !55
  switch i16 %11, label %20 [
    i16 16717, label %12
    i16 16716, label %13
    i16 20311, label %14
  ]

12:                                               ; preds = %9
  tail call void @WM_main_add_notifier(i32 noundef 102629376, ptr noundef nonnull %0) #13
  br label %20

13:                                               ; preds = %9
  tail call void @WM_main_add_notifier(i32 noundef 136839168, ptr noundef nonnull %0) #13
  br label %20

14:                                               ; preds = %9
  tail call void @WM_main_add_notifier(i32 noundef 224133120, ptr noundef nonnull %0) #13
  br label %20

15:                                               ; preds = %6
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef nonnull %0) #13
  br label %20

16:                                               ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  tail call void @WM_main_add_notifier(i32 noundef 117768192, ptr noundef nonnull %0) #13
  br label %20

17:                                               ; preds = %6
  %18 = icmp eq ptr %2, %0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  br label %20

20:                                               ; preds = %13, %14, %12, %16, %19, %17, %15, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @node_tree_from_ID(ptr noundef readonly %0) unnamed_addr #4 !PGOFuncName !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !55
  switch i16 %5, label %25 [
    i16 21582, label %24
    i16 16717, label %6
    i16 16716, label %9
    i16 20311, label %12
    i16 17235, label %15
    i16 17748, label %18
    i16 21324, label %21
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  br label %25

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %6, %9, %12, %15, %18, %21, %1, %3, %24
  %26 = phi ptr [ null, %3 ], [ null, %1 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], [ %17, %15 ], [ %20, %18 ], [ %23, %21 ], [ %0, %24 ]
  ret ptr %26
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %0) #13
  %8 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %7, %18
  %11 = load ptr, ptr %4, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = call zeroext i8 @ntreeHasTree(ptr noundef nonnull %11, ptr noundef nonnull %1) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !tbaa !88
  call void @ED_node_tag_update_id(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %10, label %21, !llvm.loop !89

21:                                               ; preds = %18, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @ntreeTexCheckCyclics(ptr noundef nonnull %1) #13
  br label %26

26:                                               ; preds = %2, %25, %21
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ntreeHasTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeTexCheckCyclics(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_sort(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #13
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %68

5:                                                ; preds = %1, %65
  %6 = phi i32 [ %66, %65 ], [ 1, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !91
  %8 = icmp sgt i32 %6, 0
  br label %9

9:                                                ; preds = %62, %5
  %10 = phi ptr [ %7, %5 ], [ %63, %62 ]
  %11 = icmp ne ptr %10, null
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %16, %13 ], [ %10, %9 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp slt i32 %17, %6
  %19 = icmp ne ptr %16, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %13, label %21, !llvm.loop !94

21:                                               ; preds = %13, %9
  %22 = phi ptr [ %10, %9 ], [ %16, %13 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %65, label %24

24:                                               ; preds = %21
  br i1 %8, label %25, label %48

25:                                               ; preds = %24, %42
  %26 = phi i32 [ %46, %42 ], [ 0, %24 ]
  %27 = phi i32 [ %45, %42 ], [ 0, %24 ]
  %28 = phi ptr [ %44, %42 ], [ %22, %24 ]
  %29 = phi ptr [ %43, %42 ], [ %10, %24 ]
  %30 = icmp slt i32 %26, %6
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = tail call fastcc i32 @compare_nodes(ptr noundef %29, ptr noundef nonnull %28) #14, !range !95
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !92
  %38 = add nsw i32 %27, 1
  br label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr %28, align 8, !tbaa !92
  %41 = add nsw i32 %26, 1
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %28) #13
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %2, ptr noundef %29, ptr noundef nonnull %28) #13
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %37, %36 ], [ %29, %39 ]
  %44 = phi ptr [ %28, %36 ], [ %40, %39 ]
  %45 = phi i32 [ %38, %36 ], [ %27, %39 ]
  %46 = phi i32 [ %26, %36 ], [ %41, %39 ]
  %47 = icmp slt i32 %45, %6
  br i1 %47, label %25, label %48, !llvm.loop !96

48:                                               ; preds = %42, %25, %24
  %49 = phi ptr [ %22, %24 ], [ %28, %25 ], [ %44, %42 ]
  %50 = phi i32 [ 0, %24 ], [ %26, %25 ], [ %46, %42 ]
  %51 = icmp sge i32 %50, %6
  %52 = icmp eq ptr %49, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %54
  %55 = phi i32 [ %58, %54 ], [ %50, %48 ]
  %56 = phi ptr [ %57, %54 ], [ %49, %48 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !92
  %58 = add nsw i32 %55, 1
  %59 = icmp sge i32 %58, %6
  %60 = icmp eq ptr %57, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %54, !llvm.loop !97

62:                                               ; preds = %54, %48
  %63 = phi ptr [ %49, %48 ], [ %57, %54 ]
  %64 = phi i1 [ %52, %48 ], [ %60, %54 ]
  br i1 %64, label %65, label %9, !llvm.loop !98

65:                                               ; preds = %21, %62
  %66 = shl i32 %6, 1
  %67 = icmp slt i32 %66, %3
  br i1 %67, label %5, label %68, !llvm.loop !99

68:                                               ; preds = %65, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @compare_nodes(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !101
  %5 = and i32 %4, 1
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, 1
  %9 = and i32 %4, 16
  %10 = and i32 %7, 16
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %25, %2
  %15 = phi i32 [ %5, %2 ], [ %33, %25 ]
  %16 = phi i32 [ %9, %2 ], [ %30, %25 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %37

20:                                               ; preds = %2, %25
  %21 = phi ptr [ %35, %25 ], [ %12, %2 ]
  %22 = phi i32 [ %30, %25 ], [ %9, %2 ]
  %23 = phi i32 [ %33, %25 ], [ %5, %2 ]
  %24 = icmp eq ptr %21, %1
  br i1 %24, label %73, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !101
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %22, i32 1
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 %23, i32 1
  %34 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %20, !llvm.loop !103

37:                                               ; preds = %14, %42
  %38 = phi ptr [ %52, %42 ], [ %18, %14 ]
  %39 = phi i32 [ %47, %42 ], [ %10, %14 ]
  %40 = phi i32 [ %50, %42 ], [ %8, %14 ]
  %41 = icmp eq ptr %38, %0
  br i1 %41, label %73, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !101
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %39, i32 1
  %48 = and i32 %44, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %40, i32 1
  %51 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !102
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %37, !llvm.loop !104

54:                                               ; preds = %42, %14
  %55 = phi i32 [ %8, %14 ], [ %50, %42 ]
  %56 = phi i32 [ %10, %14 ], [ %47, %42 ]
  %57 = and i32 %4, 4096
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %7, 4096
  %60 = icmp eq i32 %59, 0
  br i1 %58, label %62, label %61

61:                                               ; preds = %54
  br i1 %60, label %73, label %63

62:                                               ; preds = %54
  br i1 %60, label %63, label %73

63:                                               ; preds = %61, %62
  %64 = icmp eq i32 %56, 0
  %65 = icmp ne i32 %16, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = icmp eq i32 %55, 0
  %69 = icmp ne i32 %15, 0
  %70 = select i1 %65, i1 true, i1 %69
  %71 = select i1 %68, i1 %70, i1 false
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %20, %37, %67, %63, %62, %61
  %74 = phi i32 [ 0, %61 ], [ 1, %62 ], [ 1, %63 ], [ %72, %67 ], [ 0, %37 ], [ 1, %20 ]
  ret i32 %74
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_to_view(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  tail call void @nodeToView(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) #13
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = load float, ptr %3, align 4, !tbaa !107
  %12 = fmul float %11, %10
  store float %12, ptr %3, align 4, !tbaa !107
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %14 = fmul float %13, %8
  %15 = fdiv float %14, 7.200000e+01
  %16 = load float, ptr %4, align 4, !tbaa !107
  %17 = fmul float %16, %15
  store float %17, ptr %4, align 4, !tbaa !107
  ret void
}

; Function Attrs: optsize
declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_from_view(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fdiv float %1, %10
  %12 = fdiv float %2, %10
  tail call void @nodeFromView(ptr noundef %0, float noundef %11, float noundef %12, ptr noundef %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: optsize
declare void @nodeFromView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_update_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @node_update_hidden(ptr noundef nonnull %2) #14
  br label %10

9:                                                ; preds = %3
  tail call fastcc void @node_update_basis(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #14
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_update_hidden(ptr noundef %0) unnamed_addr #1 !PGOFuncName !108 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %5 = sitofp i16 %4 to float
  %6 = fmul float %5, 7.500000e-01
  call void @node_to_view(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %1 ]
  %12 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %13 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %11) #13
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !109

19:                                               ; preds = %10, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %10 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %31, %24 ], [ %22, %19 ]
  %26 = phi i32 [ %30, %24 ], [ 0, %19 ]
  %27 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %25) #13
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %26, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !88
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !110

33:                                               ; preds = %24
  %34 = load ptr, ptr %21, align 8, !tbaa !88
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi ptr [ null, %19 ], [ %34, %33 ]
  %37 = phi i32 [ 0, %19 ], [ %30, %33 ]
  %38 = call i32 @llvm.smax.i32(i32 %20, i32 %37)
  %39 = icmp ugt i32 %38, 4
  %40 = add nsw i32 %38, -4
  %41 = sitofp i32 %40 to float
  %42 = call float @llvm.fmuladd.f32(float %41, float 5.000000e+00, float %6)
  %43 = select i1 %39, float %42, float %6
  %44 = load float, ptr %2, align 4, !tbaa !107
  %45 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  store float %44, ptr %45, align 8, !tbaa !111
  %46 = call float @llvm.fmuladd.f32(float %43, float 3.000000e+00, float %44)
  %47 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 28
  %48 = load float, ptr %47, align 8, !tbaa !112
  %49 = fadd float %46, %48
  %50 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  store float %49, ptr %50, align 4, !tbaa !113
  %51 = load float, ptr %3, align 4, !tbaa !107
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %53 = sitofp i16 %52 to float
  %54 = call float @llvm.fmuladd.f32(float %53, float -5.000000e-01, float %43)
  %55 = fadd float %51, %54
  %56 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  store float %55, ptr %56, align 4, !tbaa !114
  %57 = call float @llvm.fmuladd.f32(float %43, float -2.000000e+00, float %55)
  %58 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  store float %57, ptr %58, align 8, !tbaa !115
  %59 = sitofp i32 %37 to float
  %60 = fadd float %59, 1.000000e+00
  %61 = fdiv float 0x400921FB60000000, %60
  %62 = icmp eq ptr %36, null
  br i1 %62, label %84, label %63

63:                                               ; preds = %35, %80
  %64 = phi ptr [ %82, %80 ], [ %36, %35 ]
  %65 = phi float [ %81, %80 ], [ %61, %35 ]
  %66 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %64) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load float, ptr %50, align 4, !tbaa !113
  %70 = fsub float %69, %43
  %71 = call float @sinf(float noundef %65) #13
  %72 = call float @llvm.fmuladd.f32(float %71, float %43, float %70)
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 13
  store float %72, ptr %73, align 8, !tbaa !116
  %74 = load float, ptr %58, align 8, !tbaa !115
  %75 = fadd float %43, %74
  %76 = call float @cosf(float noundef %65) #13
  %77 = call float @llvm.fmuladd.f32(float %76, float %43, float %75)
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 14
  store float %77, ptr %78, align 4, !tbaa !119
  %79 = fadd float %61, %65
  br label %80

80:                                               ; preds = %63, %68
  %81 = phi float [ %65, %63 ], [ %79, %68 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !88
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %63, !llvm.loop !120

84:                                               ; preds = %80, %35
  %85 = sitofp i32 %20 to float
  %86 = fadd float %85, 1.000000e+00
  %87 = fdiv float 0xC00921FB60000000, %86
  %88 = load ptr, ptr %7, align 8, !tbaa !88
  %89 = icmp eq ptr %88, null
  br i1 %89, label %111, label %90

90:                                               ; preds = %84, %107
  %91 = phi ptr [ %109, %107 ], [ %88, %84 ]
  %92 = phi float [ %108, %107 ], [ %87, %84 ]
  %93 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %91) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load float, ptr %45, align 8, !tbaa !111
  %97 = fadd float %43, %96
  %98 = call float @sinf(float noundef %92) #13
  %99 = call float @llvm.fmuladd.f32(float %98, float %43, float %97)
  %100 = getelementptr inbounds %struct.bNodeSocket, ptr %91, i64 0, i32 13
  store float %99, ptr %100, align 8, !tbaa !116
  %101 = load float, ptr %58, align 8, !tbaa !115
  %102 = fadd float %43, %101
  %103 = call float @cosf(float noundef %92) #13
  %104 = call float @llvm.fmuladd.f32(float %103, float %43, float %102)
  %105 = getelementptr inbounds %struct.bNodeSocket, ptr %91, i64 0, i32 14
  store float %104, ptr %105, align 4, !tbaa !119
  %106 = fadd float %87, %92
  br label %107

107:                                              ; preds = %90, %95
  %108 = phi float [ %92, %90 ], [ %106, %95 ]
  %109 = load ptr, ptr %91, align 8, !tbaa !88
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %90, !llvm.loop !121

111:                                              ; preds = %107, %84
  %112 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 46
  %113 = load ptr, ptr %112, align 8, !tbaa !122
  %114 = load float, ptr %45, align 8, !tbaa !111
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %116 = sitofp i16 %115 to float
  %117 = call float @llvm.fmuladd.f32(float %116, float -2.500000e-01, float %114)
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %58, align 8, !tbaa !115
  %120 = fptosi float %119 to i32
  %121 = load float, ptr %50, align 4, !tbaa !113
  %122 = call float @llvm.fmuladd.f32(float %116, float 2.500000e-01, float %121)
  %123 = fptosi float %122 to i32
  %124 = load float, ptr %56, align 4, !tbaa !114
  %125 = fptosi float %124 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %113, i32 noundef %118, i32 noundef %120, i32 noundef %123, i32 noundef %125) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_update_basis(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !123 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %2, ptr noundef nonnull %4) #13
  call void @node_to_view(ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %9 = load float, ptr %7, align 4, !tbaa !107
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %11 = sitofp i16 %10 to float
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %89, label %16

16:                                               ; preds = %3
  %17 = sdiv i16 %10, 4
  %18 = sitofp i16 %17 to float
  %19 = fsub float %12, %18
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %21 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  br label %22

22:                                               ; preds = %16, %82
  %23 = phi ptr [ %14, %16 ], [ %83, %82 ]
  %24 = phi float [ %19, %16 ], [ %84, %82 ]
  %25 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %23) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 8, !tbaa !88
  br label %82

29:                                               ; preds = %22
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %23, ptr noundef nonnull %5) #13
  %30 = load ptr, ptr %20, align 8, !tbaa !122
  %31 = load float, ptr %6, align 4, !tbaa !107
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %33 = sext i16 %32 to i32
  %34 = sdiv i16 %32, 2
  %35 = sitofp i16 %34 to float
  %36 = fadd float %31, %35
  %37 = fptosi float %36 to i32
  %38 = fptosi float %24 to i32
  %39 = load float, ptr %21, align 8, !tbaa !124
  %40 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %42 = sitofp i32 %41 to float
  %43 = fmul float %40, %42
  %44 = fdiv float %43, 7.200000e+01
  %45 = sitofp i16 %32 to float
  %46 = fneg float %45
  %47 = call float @llvm.fmuladd.f32(float %39, float %44, float %46)
  %48 = fptosi float %47 to i32
  %49 = call ptr @UI_GetStyle() #13
  %50 = call ptr @uiBlockLayout(ptr noundef %30, i32 noundef 1, i32 noundef 0, i32 noundef %37, i32 noundef %38, i32 noundef %48, i32 noundef %33, i32 noundef 0, ptr noundef %49) #13
  call void @uiLayoutSetContextPointer(ptr noundef %50, ptr noundef nonnull @.str, ptr noundef nonnull %4) #13
  call void @uiLayoutSetContextPointer(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #13
  %51 = call ptr @uiLayoutRow(ptr noundef %50, i32 noundef 1) #13
  call void @uiLayoutSetAlignment(ptr noundef %51, i8 noundef zeroext 3) #13
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !125
  %54 = getelementptr inbounds %struct.bNodeSocketType, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !126
  %56 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 5
  call void %55(ptr noundef %0, ptr noundef %51, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %56) #13
  %57 = load ptr, ptr %20, align 8, !tbaa !122
  call void @uiBlockEndAlign(ptr noundef %57) #13
  %58 = load ptr, ptr %20, align 8, !tbaa !122
  call void @uiBlockLayoutResolve(ptr noundef %58, ptr noundef null, ptr noundef nonnull %8) #13
  %59 = load i32, ptr %8, align 4, !tbaa !129
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %61 = sitofp i16 %60 to float
  %62 = fsub float %24, %61
  %63 = fptosi float %62 to i32
  %64 = call fastcc i32 @min_ii(i32 noundef %59, i32 noundef %63) #14
  store i32 %64, ptr %8, align 4, !tbaa !129
  %65 = load float, ptr %6, align 4, !tbaa !107
  %66 = load float, ptr %21, align 8, !tbaa !124
  %67 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %68 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %69 = sitofp i32 %68 to float
  %70 = fmul float %67, %69
  %71 = fdiv float %70, 7.200000e+01
  %72 = call float @llvm.fmuladd.f32(float %66, float %71, float %65)
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 13
  store float %72, ptr %73, align 8, !tbaa !116
  %74 = sitofp i32 %64 to float
  %75 = fadd float %24, %74
  %76 = fmul float %75, 5.000000e-01
  %77 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 14
  store float %76, ptr %77, align 4, !tbaa !119
  %78 = load ptr, ptr %23, align 8, !tbaa !88
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %29
  %81 = call float @llvm.fmuladd.f32(float %61, float 0xBFB47AE140000000, float %74)
  br label %82

82:                                               ; preds = %27, %80
  %83 = phi ptr [ %28, %27 ], [ %78, %80 ]
  %84 = phi float [ %24, %27 ], [ %81, %80 ]
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %22, !llvm.loop !130

86:                                               ; preds = %29, %82
  %87 = phi float [ %84, %82 ], [ %74, %29 ]
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  br label %89

89:                                               ; preds = %3, %86
  %90 = phi i16 [ %88, %86 ], [ %10, %3 ]
  %91 = phi float [ %87, %86 ], [ %12, %3 ]
  %92 = load float, ptr %6, align 4, !tbaa !107
  %93 = sdiv i16 %90, 2
  %94 = sitofp i16 %93 to float
  %95 = fadd float %92, %94
  %96 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42
  store float %95, ptr %96, align 8, !tbaa !131
  %97 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %98 = load float, ptr %97, align 8, !tbaa !124
  %99 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %100 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %101 = sitofp i32 %100 to float
  %102 = fmul float %99, %101
  %103 = fdiv float %102, 7.200000e+01
  %104 = call float @llvm.fmuladd.f32(float %98, float %103, float %92)
  %105 = fsub float %104, %94
  %106 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 1
  store float %105, ptr %106, align 4, !tbaa !132
  %107 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !101
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %175, label %111

111:                                              ; preds = %89
  %112 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 43
  %113 = load i16, ptr %112, align 8, !tbaa !133
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 44
  %117 = load i16, ptr %116, align 2, !tbaa !134
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %111
  %120 = sdiv i16 %90, 4
  %121 = sitofp i16 %120 to float
  %122 = fsub float %91, %121
  %123 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 3
  store float %122, ptr %123, align 4, !tbaa !135
  br label %133

124:                                              ; preds = %115
  %125 = sitofp i16 %117 to float
  %126 = sitofp i16 %113 to float
  %127 = fdiv float %125, %126
  %128 = sdiv i16 %90, 4
  %129 = sitofp i16 %128 to float
  %130 = fsub float %91, %129
  %131 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 3
  store float %130, ptr %131, align 4, !tbaa !135
  %132 = fcmp ugt float %127, 1.000000e+00
  br i1 %132, label %144, label %133

133:                                              ; preds = %119, %124
  %134 = phi ptr [ %123, %119 ], [ %131, %124 ]
  %135 = phi float [ %122, %119 ], [ %130, %124 ]
  %136 = phi float [ %121, %119 ], [ %129, %124 ]
  %137 = phi float [ 1.000000e+00, %119 ], [ %127, %124 ]
  %138 = sitofp i16 %90 to float
  %139 = fneg float %138
  %140 = call float @llvm.fmuladd.f32(float %98, float %103, float %139)
  %141 = fneg float %137
  %142 = call float @llvm.fmuladd.f32(float %141, float %140, float %135)
  %143 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  store float %142, ptr %143, align 8, !tbaa !136
  br label %161

144:                                              ; preds = %124
  %145 = fneg float %94
  %146 = call float @llvm.fmuladd.f32(float %98, float %103, float %145)
  %147 = fdiv float %146, %127
  %148 = fsub float %146, %147
  %149 = sitofp i16 %90 to float
  %150 = fneg float %149
  %151 = call float @llvm.fmuladd.f32(float %98, float %103, float %150)
  %152 = fsub float %130, %151
  %153 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  store float %152, ptr %153, align 8, !tbaa !136
  %154 = insertelement <2 x float> poison, float %148, i64 0
  %155 = shufflevector <2 x float> %154, <2 x float> poison, <2 x i32> zeroinitializer
  %156 = insertelement <2 x float> poison, float %95, i64 0
  %157 = insertelement <2 x float> %156, float %105, i64 1
  %158 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %155, <2 x float> <float 5.000000e-01, float -5.000000e-01>, <2 x float> %157)
  store <2 x float> %158, ptr %96, align 8, !tbaa !107
  %159 = extractelement <2 x float> %158, i64 0
  %160 = extractelement <2 x float> %158, i64 1
  br label %161

161:                                              ; preds = %144, %133
  %162 = phi float [ %159, %144 ], [ %95, %133 ]
  %163 = phi float [ %160, %144 ], [ %105, %133 ]
  %164 = phi float [ %152, %144 ], [ %142, %133 ]
  %165 = phi ptr [ %131, %144 ], [ %134, %133 ]
  %166 = phi float [ %130, %144 ], [ %135, %133 ]
  %167 = phi float [ %129, %144 ], [ %136, %133 ]
  %168 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  %169 = fsub float %164, %167
  %170 = fcmp olt float %163, %162
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  store float %162, ptr %106, align 4, !tbaa !132
  store float %163, ptr %96, align 8, !tbaa !131
  br label %172

172:                                              ; preds = %171, %161
  %173 = fcmp olt float %166, %164
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  store float %164, ptr %165, align 4, !tbaa !135
  store float %166, ptr %168, align 8, !tbaa !136
  br label %175

175:                                              ; preds = %172, %174, %89
  %176 = phi float [ %91, %89 ], [ %169, %174 ], [ %169, %172 ]
  %177 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !137
  %179 = getelementptr inbounds %struct.bNodeType, ptr %178, i64 0, i32 22
  %180 = load ptr, ptr %179, align 8, !tbaa !138
  %181 = icmp eq ptr %180, null
  %182 = and i32 %108, 2
  %183 = icmp eq i32 %182, 0
  %184 = or i1 %183, %181
  br i1 %184, label %215, label %185

185:                                              ; preds = %175
  %186 = sdiv i16 %90, 4
  %187 = sitofp i16 %186 to float
  %188 = fsub float %176, %187
  %189 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41
  store float 0.000000e+00, ptr %189, align 8, !tbaa !140
  %190 = sext i16 %93 to i32
  %191 = shl nsw i32 %190, 1
  %192 = sitofp i32 %191 to float
  %193 = fneg float %192
  %194 = call float @llvm.fmuladd.f32(float %98, float %103, float %193)
  %195 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 1
  store float %194, ptr %195, align 4, !tbaa !141
  %196 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 2
  store <2 x float> zeroinitializer, ptr %196, align 8, !tbaa !107
  %197 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %198 = load ptr, ptr %197, align 8, !tbaa !122
  %199 = fptosi float %95 to i32
  %200 = fptosi float %188 to i32
  %201 = fptosi float %194 to i32
  %202 = call ptr @UI_GetStyle() #13
  %203 = call ptr @uiBlockLayout(ptr noundef %198, i32 noundef 1, i32 noundef 0, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef 0, i32 noundef 0, ptr noundef %202) #13
  call void @uiLayoutSetContextPointer(ptr noundef %203, ptr noundef nonnull @.str, ptr noundef nonnull %4) #13
  %204 = load ptr, ptr %177, align 8, !tbaa !137
  %205 = getelementptr inbounds %struct.bNodeType, ptr %204, i64 0, i32 22
  %206 = load ptr, ptr %205, align 8, !tbaa !138
  call void %206(ptr noundef %203, ptr noundef %0, ptr noundef nonnull %4) #13
  %207 = load ptr, ptr %197, align 8, !tbaa !122
  call void @uiBlockEndAlign(ptr noundef %207) #13
  %208 = load ptr, ptr %197, align 8, !tbaa !122
  call void @uiBlockLayoutResolve(ptr noundef %208, ptr noundef null, ptr noundef nonnull %8) #13
  %209 = load i32, ptr %8, align 4, !tbaa !129
  %210 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %211 = sdiv i16 %210, 4
  %212 = sext i16 %211 to i32
  %213 = sub nsw i32 %209, %212
  %214 = sitofp i32 %213 to float
  br label %215

215:                                              ; preds = %185, %175
  %216 = phi float [ %214, %185 ], [ %176, %175 ]
  %217 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %218 = load ptr, ptr %217, align 8, !tbaa !88
  %219 = icmp eq ptr %218, null
  br i1 %219, label %285, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  br label %222

222:                                              ; preds = %220, %275
  %223 = phi ptr [ %218, %220 ], [ %276, %275 ]
  %224 = phi float [ %216, %220 ], [ %277, %275 ]
  %225 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %223) #13
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %223, align 8, !tbaa !88
  br label %275

229:                                              ; preds = %222
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %223, ptr noundef nonnull %5) #13
  %230 = load ptr, ptr %221, align 8, !tbaa !122
  %231 = load float, ptr %6, align 4, !tbaa !107
  %232 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %233 = sext i16 %232 to i32
  %234 = sdiv i16 %232, 2
  %235 = sitofp i16 %234 to float
  %236 = fadd float %231, %235
  %237 = fptosi float %236 to i32
  %238 = fptosi float %224 to i32
  %239 = load float, ptr %97, align 8, !tbaa !124
  %240 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %241 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %242 = sitofp i32 %241 to float
  %243 = fmul float %240, %242
  %244 = fdiv float %243, 7.200000e+01
  %245 = sitofp i16 %232 to float
  %246 = fneg float %245
  %247 = call float @llvm.fmuladd.f32(float %239, float %244, float %246)
  %248 = fptosi float %247 to i32
  %249 = call ptr @UI_GetStyle() #13
  %250 = call ptr @uiBlockLayout(ptr noundef %230, i32 noundef 1, i32 noundef 0, i32 noundef %237, i32 noundef %238, i32 noundef %248, i32 noundef %233, i32 noundef 0, ptr noundef %249) #13
  call void @uiLayoutSetContextPointer(ptr noundef %250, ptr noundef nonnull @.str, ptr noundef nonnull %4) #13
  call void @uiLayoutSetContextPointer(ptr noundef %250, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #13
  %251 = call ptr @uiLayoutRow(ptr noundef %250, i32 noundef 1) #13
  %252 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 11
  %253 = load ptr, ptr %252, align 8, !tbaa !125
  %254 = getelementptr inbounds %struct.bNodeSocketType, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !126
  %256 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 5
  call void %255(ptr noundef %0, ptr noundef %251, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %256) #13
  %257 = load ptr, ptr %221, align 8, !tbaa !122
  call void @uiBlockEndAlign(ptr noundef %257) #13
  %258 = load ptr, ptr %221, align 8, !tbaa !122
  call void @uiBlockLayoutResolve(ptr noundef %258, ptr noundef null, ptr noundef nonnull %8) #13
  %259 = load i32, ptr %8, align 4, !tbaa !129
  %260 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %261 = sitofp i16 %260 to float
  %262 = fsub float %224, %261
  %263 = fptosi float %262 to i32
  %264 = call fastcc i32 @min_ii(i32 noundef %259, i32 noundef %263) #14
  store i32 %264, ptr %8, align 4, !tbaa !129
  %265 = load float, ptr %6, align 4, !tbaa !107
  %266 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 13
  store float %265, ptr %266, align 8, !tbaa !116
  %267 = sitofp i32 %264 to float
  %268 = fadd float %224, %267
  %269 = fmul float %268, 5.000000e-01
  %270 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 14
  store float %269, ptr %270, align 4, !tbaa !119
  %271 = load ptr, ptr %223, align 8, !tbaa !88
  %272 = icmp eq ptr %271, null
  br i1 %272, label %279, label %273

273:                                              ; preds = %229
  %274 = call float @llvm.fmuladd.f32(float %261, float 0xBFB47AE140000000, float %267)
  br label %275

275:                                              ; preds = %227, %273
  %276 = phi ptr [ %228, %227 ], [ %271, %273 ]
  %277 = phi float [ %224, %227 ], [ %274, %273 ]
  %278 = icmp eq ptr %276, null
  br i1 %278, label %279, label %222, !llvm.loop !142

279:                                              ; preds = %229, %275
  %280 = phi float [ %277, %275 ], [ %267, %229 ]
  %281 = load ptr, ptr %217, align 8, !tbaa !143
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  br label %291

285:                                              ; preds = %215, %279
  %286 = phi float [ %280, %279 ], [ %216, %215 ]
  %287 = load i32, ptr %107, align 8, !tbaa !101
  %288 = and i32 %287, 6
  %289 = icmp eq i32 %288, 0
  %290 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  br i1 %289, label %291, label %297

291:                                              ; preds = %283, %285
  %292 = phi float [ %280, %283 ], [ %286, %285 ]
  %293 = phi i16 [ %284, %283 ], [ %290, %285 ]
  %294 = sdiv i16 %293, 4
  %295 = sitofp i16 %294 to float
  %296 = fsub float %292, %295
  br label %297

297:                                              ; preds = %285, %291
  %298 = phi i16 [ %293, %291 ], [ %290, %285 ]
  %299 = phi float [ %296, %291 ], [ %286, %285 ]
  %300 = load float, ptr %6, align 4, !tbaa !107
  %301 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  store float %300, ptr %301, align 8, !tbaa !111
  %302 = load float, ptr %97, align 8, !tbaa !124
  %303 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %304 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %305 = sitofp i32 %304 to float
  %306 = fmul float %303, %305
  %307 = fdiv float %306, 7.200000e+01
  %308 = call float @llvm.fmuladd.f32(float %302, float %307, float %300)
  %309 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  store float %308, ptr %309, align 4, !tbaa !113
  %310 = load float, ptr %7, align 4, !tbaa !107
  %311 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  store float %310, ptr %311, align 4, !tbaa !114
  %312 = sext i16 %298 to i32
  %313 = shl nsw i32 %312, 1
  %314 = sitofp i32 %313 to float
  %315 = fsub float %310, %314
  %316 = call fastcc float @min_ff(float noundef %299, float noundef %315) #14
  %317 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  store float %316, ptr %317, align 8, !tbaa !115
  %318 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %319 = load ptr, ptr %318, align 8, !tbaa !122
  %320 = sitofp i16 %298 to float
  %321 = call float @llvm.fmuladd.f32(float %320, float -2.500000e-01, float %300)
  %322 = fptosi float %321 to i32
  %323 = fptosi float %316 to i32
  %324 = call float @llvm.fmuladd.f32(float %320, float 2.500000e-01, float %308)
  %325 = fptosi float %324 to i32
  %326 = fptosi float %310 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %319, i32 noundef %322, i32 noundef %323, i32 noundef %325, i32 noundef %326) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @node_select_area_default(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %5, float noundef %6) #13
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @node_tweak_area_default(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %5, float noundef %6) #13
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @node_get_colorid(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !144
  switch i16 %5, label %25 [
    i16 0, label %26
    i16 1, label %6
    i16 8, label %12
    i16 3, label %13
    i16 4, label %14
    i16 5, label %15
    i16 6, label %16
    i16 33, label %17
    i16 9, label %18
    i16 10, label %19
    i16 13, label %20
    i16 40, label %21
    i16 32, label %22
    i16 12, label %23
    i16 100, label %24
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !101
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 93, i32 95
  br label %26

12:                                               ; preds = %1
  br label %26

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1
  br label %26

19:                                               ; preds = %1
  br label %26

20:                                               ; preds = %1
  br label %26

21:                                               ; preds = %1
  br label %26

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  br label %26

24:                                               ; preds = %1
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %1, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %6
  %27 = phi i32 [ 93, %25 ], [ 102, %24 ], [ 100, %23 ], [ 101, %22 ], [ 103, %21 ], [ 99, %20 ], [ 109, %19 ], [ 108, %18 ], [ 104, %17 ], [ 106, %16 ], [ 97, %15 ], [ 98, %14 ], [ 96, %13 ], [ 105, %12 ], [ %11, %6 ], [ 94, %1 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_socket_circle_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %3, ptr noundef nonnull %7) #13
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %2, ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  call void %13(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 13
  %15 = load float, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 14
  %17 = load float, ptr %16, align 4, !tbaa !119
  call fastcc void @node_circle_draw(float noundef %15, float noundef %17, float noundef %4, ptr noundef nonnull %9, i32 noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_circle_draw(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !146 {
  tail call void @glColor4fv(ptr noundef %3) #13
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glBegin(i32 noundef 9) #13
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ 0, %5 ], [ %14, %6 ]
  %8 = getelementptr inbounds [16 x float], ptr @node_circle_draw.si, i64 0, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !107
  %10 = tail call float @llvm.fmuladd.f32(float %2, float %9, float %0)
  %11 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %7
  %12 = load float, ptr %11, align 4, !tbaa !107
  %13 = tail call float @llvm.fmuladd.f32(float %2, float %12, float %1)
  tail call void @glVertex2f(float noundef %10, float noundef %13) #13
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %16, label %6, !llvm.loop !147

16:                                               ; preds = %6
  tail call void @glEnd() #13
  tail call void @glDisable(i32 noundef 3042) #13
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @UI_ThemeColor(i32 noundef 4) #13
  tail call void @glLineWidth(float noundef 1.500000e+00) #13
  br label %20

19:                                               ; preds = %16
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #13
  br label %20

20:                                               ; preds = %19, %18
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  tail call void @glBegin(i32 noundef 2) #13
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi i64 [ 0, %20 ], [ %29, %21 ]
  %23 = getelementptr inbounds [16 x float], ptr @node_circle_draw.si, i64 0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !107
  %25 = tail call float @llvm.fmuladd.f32(float %2, float %24, float %0)
  %26 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %22
  %27 = load float, ptr %26, align 4, !tbaa !107
  %28 = tail call float @llvm.fmuladd.f32(float %2, float %27, float %1)
  tail call void @glVertex2f(float noundef %25, float noundef %28) #13
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %31, label %21, !llvm.loop !148

31:                                               ; preds = %21
  tail call void @glEnd() #13
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  tail call void @glLineWidth(float noundef 1.000000e+00) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_draw_shadow(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40
  tail call void @uiSetRoundBox(i32 noundef 15) #13
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !149
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !101
  %14 = and i32 %13, 1
  tail call void @ui_dropshadow(ptr noundef nonnull %5, float noundef %2, float noundef %11, float noundef %3, i32 noundef %14) #13
  br label %28

15:                                               ; preds = %4
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD51EB860000000) #13
  tail call void @glEnable(i32 noundef 3042) #13
  %16 = load float, ptr %5, align 4, !tbaa !150
  %17 = fadd float %16, -3.000000e+00
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !151
  %20 = fadd float %19, -3.000000e+00
  %21 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !152
  %23 = fadd float %22, 3.000000e+00
  %24 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !153
  %26 = fadd float %25, 3.000000e+00
  %27 = fadd float %2, 3.000000e+00
  tail call void @uiRoundBox(float noundef %17, float noundef %20, float noundef %23, float noundef %26, float noundef %27) #13
  tail call void @glDisable(i32 noundef 3042) #13
  br label %28

28:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ui_dropshadow(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @node_get_resize_cursor(i32 noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 4
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = and i32 %0, -13
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1003, i32 1002
  br label %9

9:                                                ; preds = %5, %3, %1
  %10 = phi i32 [ 1006, %1 ], [ 1004, %3 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_set_cursor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = call i32 @node_find_indicated_socket(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2, i32 noundef 3) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  store ptr %14, ptr %4, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %2, i64 1
  br label %18

18:                                               ; preds = %16, %26
  %19 = phi ptr [ %14, %16 ], [ %28, %26 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 40
  %21 = load float, ptr %2, align 4, !tbaa !107
  %22 = load float, ptr %17, align 4, !tbaa !107
  %23 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %20, float noundef %21, float noundef %22) #13
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %4, align 8, !tbaa !88
  br i1 %24, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  store ptr %28, ptr %4, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %18, !llvm.loop !155

30:                                               ; preds = %18
  %31 = icmp eq ptr %25, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  %35 = getelementptr inbounds %struct.bNodeType, ptr %34, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !156
  %37 = load float, ptr %2, align 4, !tbaa !107
  %38 = fptosi float %37 to i32
  %39 = load float, ptr %17, align 4, !tbaa !107
  %40 = fptosi float %39 to i32
  %41 = call i32 %36(ptr noundef nonnull %25, i32 noundef %38, i32 noundef %40) #13
  %42 = call i32 @node_get_resize_cursor(i32 noundef %41) #14, !range !157
  br label %43

43:                                               ; preds = %26, %12, %9, %32, %30, %3
  %44 = phi i32 [ 1006, %9 ], [ %42, %32 ], [ 1006, %30 ], [ 1006, %3 ], [ 1006, %12 ], [ 1006, %26 ]
  call void @WM_cursor_set(ptr noundef %0, i32 noundef %44) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_draw_default(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) local_unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !101
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @node_draw_hidden(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #14
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @node_draw_basis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 %5) #14
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_hidden(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 !PGOFuncName !158 {
  %6 = alloca [128 x i8], align 16
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %8 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %7) #14
  %9 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #14
  %10 = fmul float %9, 5.000000e-01
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 2.500000e-01
  %14 = tail call i32 @node_get_colorid(ptr noundef %4) #14, !range !159
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #15
  tail call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %10, float noundef 1.000000e+00) #14
  tail call void @UI_ThemeColor(i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !101
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  tail call void @UI_ThemeColorBlend(i32 noundef %14, i32 noundef 0, float noundef 5.000000e-01) #13
  br label %20

20:                                               ; preds = %19, %5
  %21 = load float, ptr %7, align 4, !tbaa !150
  %22 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !151
  %24 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !152
  %26 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !153
  tail call void @uiRoundBox(float noundef %21, float noundef %23, float noundef %25, float noundef %27, float noundef %10) #13
  %28 = load i32, ptr %15, align 8, !tbaa !101
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %32 = load i32, ptr %15, align 8, !tbaa !101
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 28, i32 29
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef %35, i32 noundef 0, i32 noundef -40) #13
  %36 = load float, ptr %7, align 4, !tbaa !150
  %37 = load float, ptr %22, align 4, !tbaa !151
  %38 = load float, ptr %24, align 4, !tbaa !152
  %39 = load float, ptr %26, align 4, !tbaa !153
  tail call void @uiDrawBox(i32 noundef 2, float noundef %36, float noundef %37, float noundef %38, float noundef %39, float noundef %10) #13
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %40 = load i32, ptr %15, align 8, !tbaa !101
  br label %41

41:                                               ; preds = %31, %20
  %42 = phi i32 [ %40, %31 ], [ %28, %20 ]
  %43 = and i32 %42, 32768
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %46 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  tail call void @glColor3fv(ptr noundef nonnull %46) #13
  %47 = load float, ptr %7, align 4, !tbaa !150
  %48 = fadd float %47, 1.000000e+00
  %49 = load float, ptr %22, align 4, !tbaa !151
  %50 = fadd float %49, 1.000000e+00
  %51 = load float, ptr %24, align 4, !tbaa !152
  %52 = fadd float %51, -1.000000e+00
  %53 = load float, ptr %26, align 4, !tbaa !153
  %54 = fadd float %53, -1.000000e+00
  tail call void @uiDrawBox(i32 noundef 2, float noundef %48, float noundef %50, float noundef %52, float noundef %54, float noundef %10) #13
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %55 = load i32, ptr %15, align 8, !tbaa !101
  br label %56

56:                                               ; preds = %45, %41
  %57 = phi i32 [ %55, %45 ], [ %42, %41 ]
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @UI_ThemeColor(i32 noundef 28) #13
  br label %62

61:                                               ; preds = %56
  tail call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %14, float noundef 0x3FD99999A0000000, i32 noundef 10) #13
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %64 = sitofp i16 %63 to float
  %65 = fmul float %64, 0x3FE3333340000000
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %68 = load ptr, ptr %67, align 8, !tbaa !122
  tail call void @uiBlockSetEmboss(ptr noundef %68, i8 noundef zeroext 1) #13
  %69 = load ptr, ptr %67, align 8, !tbaa !122
  %70 = load float, ptr %7, align 4, !tbaa !150
  %71 = fadd float %70, 1.000000e+01
  %72 = sdiv i32 %66, 2
  %73 = sitofp i32 %72 to float
  %74 = fsub float %71, %73
  %75 = fptosi float %74 to i32
  %76 = fsub float %8, %73
  %77 = fptosi float %76 to i32
  %78 = trunc i32 %66 to i16
  %79 = tail call ptr @uiDefBut(ptr noundef %69, i32 noundef 18944, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %75, i32 noundef %77, i16 noundef signext %78, i16 noundef signext %78, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  tail call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #13
  %80 = load ptr, ptr %67, align 8, !tbaa !122
  tail call void @uiBlockSetEmboss(ptr noundef %80, i8 noundef zeroext 0) #13
  %81 = load float, ptr %7, align 4, !tbaa !150
  %82 = fadd float %81, 1.000000e+01
  tail call void @UI_DrawTriIcon(float noundef %82, float noundef %8, i8 noundef zeroext 104) #13
  %83 = load i32, ptr %15, align 8, !tbaa !101
  %84 = and i32 %83, 512
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call fastcc void @node_draw_mute_line(ptr noundef nonnull %87, ptr noundef %2, ptr noundef nonnull %4) #14
  %88 = load i32, ptr %15, align 8, !tbaa !101
  br label %89

89:                                               ; preds = %86, %62
  %90 = phi i32 [ %88, %86 ], [ %83, %62 ]
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 3, i32 28
  tail call void @UI_ThemeColor(i32 noundef %93) #13
  %94 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 28
  %95 = load float, ptr %94, align 8, !tbaa !112
  %96 = fcmp ogt float %95, 0.000000e+00
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  call void @nodeLabel(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 128) #13
  %98 = load ptr, ptr %67, align 8, !tbaa !122
  %99 = load float, ptr %7, align 4, !tbaa !150
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %101 = sitofp i16 %100 to float
  %102 = call float @llvm.fmuladd.f32(float %101, float 7.500000e-01, float %99)
  %103 = fptosi float %102 to i32
  %104 = fadd float %8, -1.000000e+01
  %105 = fptosi float %104 to i32
  %106 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #14
  %107 = fadd float %106, -1.800000e+01
  %108 = fadd float %107, -1.200000e+01
  %109 = fptosi float %108 to i16
  %110 = call ptr @uiDefBut(ptr noundef %98, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %6, i32 noundef %103, i32 noundef %105, i16 noundef signext %109, i16 noundef signext %100, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  br label %111

111:                                              ; preds = %97, %89
  call void @UI_ThemeColorShade(i32 noundef %14, i32 noundef -10) #13
  %112 = load float, ptr %24, align 4, !tbaa !152
  %113 = fadd float %112, -1.000000e+01
  %114 = fadd float %8, -4.000000e+00
  %115 = fadd float %8, 4.000000e+00
  call void @fdrawline(float noundef %113, float noundef %114, float noundef %113, float noundef %115) #13
  %116 = load float, ptr %24, align 4, !tbaa !152
  %117 = fadd float %116, -1.000000e+01
  %118 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 11
  %119 = load float, ptr %118, align 4, !tbaa !149
  %120 = call float @llvm.fmuladd.f32(float %119, float -3.000000e+00, float %117)
  call void @fdrawline(float noundef %120, float noundef %114, float noundef %120, float noundef %115) #13
  call void @UI_ThemeColorShade(i32 noundef %14, i32 noundef 30) #13
  %121 = load float, ptr %118, align 4, !tbaa !149
  %122 = fsub float 1.000000e+01, %121
  %123 = load float, ptr %24, align 4, !tbaa !152
  %124 = fsub float %123, %122
  call void @fdrawline(float noundef %124, float noundef %114, float noundef %124, float noundef %115) #13
  %125 = load float, ptr %24, align 4, !tbaa !152
  %126 = fsub float %125, %122
  %127 = load float, ptr %118, align 4, !tbaa !149
  %128 = call float @llvm.fmuladd.f32(float %127, float -3.000000e+00, float %126)
  call void @fdrawline(float noundef %128, float noundef %114, float noundef %128, float noundef %115) #13
  %129 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !88
  %131 = icmp eq ptr %130, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %111, %141
  %133 = phi ptr [ %142, %141 ], [ %130, %111 ]
  %134 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %133) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.bNodeSocket, ptr %133, i64 0, i32 8
  %138 = load i16, ptr %137, align 2, !tbaa !160
  %139 = and i16 %138, 1
  %140 = zext nneg i16 %139 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %133, float noundef %13, i32 noundef %140) #14
  br label %141

141:                                              ; preds = %132, %136
  %142 = load ptr, ptr %133, align 8, !tbaa !88
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %132, !llvm.loop !161

144:                                              ; preds = %141, %111
  %145 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %146 = load ptr, ptr %145, align 8, !tbaa !88
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %144, %157
  %149 = phi ptr [ %158, %157 ], [ %146, %144 ]
  %150 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %149) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.bNodeSocket, ptr %149, i64 0, i32 8
  %154 = load i16, ptr %153, align 2, !tbaa !160
  %155 = and i16 %154, 1
  %156 = zext nneg i16 %155 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %149, float noundef %13, i32 noundef %156) #14
  br label %157

157:                                              ; preds = %148, %152
  %158 = load ptr, ptr %149, align 8, !tbaa !88
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %148, !llvm.loop !162

160:                                              ; preds = %157, %144
  %161 = load ptr, ptr %67, align 8, !tbaa !122
  call void @uiEndBlock(ptr noundef %0, ptr noundef %161) #13
  %162 = load ptr, ptr %67, align 8, !tbaa !122
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %162) #13
  store ptr null, ptr %67, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_basis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) unnamed_addr #1 !PGOFuncName !163 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [3 x float], align 4
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.4) #13
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %14 = sitofp i16 %13 to float
  %15 = fmul float %14, 0x3FE99999A0000000
  %16 = call i32 @node_get_colorid(ptr noundef %4) #14, !range !159
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #15
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  call void @nodeSynchronizeID(ptr noundef nonnull %4, i8 noundef zeroext 0) #13
  br label %22

22:                                               ; preds = %21, %6
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %24 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %12, ptr noundef nonnull %23, ptr noundef null) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiEndBlock(ptr noundef %0, ptr noundef %27) #13
  br label %255

28:                                               ; preds = %22
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 0x3FD99999A0000000
  call void @node_draw_shadow(ptr noundef %2, ptr noundef nonnull %4, float noundef %31, float noundef 1.000000e+00) #14
  %32 = icmp eq i32 %16, 93
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @UI_GetThemeColorShade3fv(i32 noundef 93, i32 noundef -20, ptr noundef nonnull %9) #13
  %34 = load float, ptr %9, align 4, !tbaa !107
  %35 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !107
  %37 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !107
  call void @glColor4f(float noundef %34, float noundef %36, float noundef %38, float noundef 1.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  br label %40

39:                                               ; preds = %28
  call void @UI_ThemeColor(i32 noundef %16) #13
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !101
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call void @UI_ThemeColorBlend(i32 noundef %16, i32 noundef 0, float noundef 5.000000e-01) #13
  br label %46

46:                                               ; preds = %45, %40
  call void @uiSetRoundBox(i32 noundef 3) #13
  %47 = load float, ptr %12, align 4, !tbaa !150
  %48 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !153
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %51 = sitofp i16 %50 to float
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !152
  %55 = fmul float %51, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %47, float noundef %52, float noundef %54, float noundef %49, float noundef %55) #13
  %56 = load float, ptr %53, align 4, !tbaa !152
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %58 = sitofp i16 %57 to float
  %59 = call float @llvm.fmuladd.f32(float %58, float 0xBFD6666660000000, float %56)
  %60 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !137
  %62 = getelementptr inbounds %struct.bNodeType, ptr %61, i64 0, i32 15
  %63 = load i16, ptr %62, align 2, !tbaa !167
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %46
  %67 = fsub float %59, %15
  %68 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %68, i8 noundef zeroext 1) #13
  %69 = load ptr, ptr %18, align 8, !tbaa !122
  %70 = fptosi float %67 to i32
  %71 = load float, ptr %48, align 4, !tbaa !153
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %73 = sitofp i16 %72 to float
  %74 = fsub float %71, %73
  %75 = fptosi float %74 to i32
  %76 = fptosi float %15 to i16
  %77 = call ptr @uiDefIconBut(ptr noundef %69, i32 noundef 18944, i32 noundef 1, i32 noundef 79, i32 noundef %70, i32 noundef %75, i16 noundef signext %76, i16 noundef signext %72, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %77, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #13
  %78 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %78, i8 noundef zeroext 0) #13
  br label %79

79:                                               ; preds = %66, %46
  %80 = phi float [ %67, %66 ], [ %59, %46 ]
  %81 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 8
  %82 = load i16, ptr %81, align 4, !tbaa !168
  %83 = icmp eq i16 %82, 2
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = fsub float %80, %15
  %86 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %86, i8 noundef zeroext 1) #13
  %87 = load ptr, ptr %18, align 8, !tbaa !122
  %88 = fptosi float %85 to i32
  %89 = load float, ptr %48, align 4, !tbaa !153
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %91 = sitofp i16 %90 to float
  %92 = fsub float %89, %91
  %93 = fptosi float %92 to i32
  %94 = fptosi float %15 to i16
  %95 = call ptr @uiDefIconBut(ptr noundef %87, i32 noundef 18944, i32 noundef 1, i32 noundef 119, i32 noundef %88, i32 noundef %93, i16 noundef signext %94, i16 noundef signext %90, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %95, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #13
  %96 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %96, i8 noundef zeroext 0) #13
  br label %97

97:                                               ; preds = %84, %79
  %98 = phi float [ %85, %84 ], [ %80, %79 ]
  %99 = load i32, ptr %41, align 8, !tbaa !101
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  call void @UI_ThemeColor(i32 noundef 28) #13
  br label %104

103:                                              ; preds = %97
  call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %16, float noundef 0x3FD99999A0000000, i32 noundef 10) #13
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %106 = sitofp i16 %105 to float
  %107 = fmul float %106, 0x3FE3333340000000
  %108 = fptosi float %107 to i32
  %109 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %109, i8 noundef zeroext 1) #13
  %110 = load ptr, ptr %18, align 8, !tbaa !122
  %111 = load float, ptr %12, align 4, !tbaa !150
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %113 = sitofp i16 %112 to float
  %114 = call float @llvm.fmuladd.f32(float %113, float 5.000000e-01, float %111)
  %115 = sdiv i32 %108, 2
  %116 = sitofp i32 %115 to float
  %117 = fsub float %114, %116
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %48, align 4, !tbaa !153
  %120 = fmul float %113, 5.000000e-01
  %121 = fsub float %119, %120
  %122 = fsub float %121, %116
  %123 = fptosi float %122 to i32
  %124 = trunc i32 %108 to i16
  %125 = call ptr @uiDefBut(ptr noundef %110, i32 noundef 18944, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %118, i32 noundef %123, i16 noundef signext %124, i16 noundef signext %124, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %125, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #13
  %126 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiBlockSetEmboss(ptr noundef %126, i8 noundef zeroext 0) #13
  %127 = load float, ptr %12, align 4, !tbaa !150
  %128 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %129 = sitofp i16 %128 to float
  %130 = call float @llvm.fmuladd.f32(float %129, float 5.000000e-01, float %127)
  %131 = load float, ptr %48, align 4, !tbaa !153
  %132 = fmul float %129, 5.000000e-01
  %133 = fsub float %131, %132
  call void @UI_DrawTriIcon(float noundef %130, float noundef %133, i8 noundef zeroext 118) #13
  call void @nodeLabel(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %8, i32 noundef 128) #13
  %134 = load ptr, ptr %18, align 8, !tbaa !122
  %135 = load float, ptr %12, align 4, !tbaa !150
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %137 = sitofp i16 %136 to float
  %138 = call float @llvm.fmuladd.f32(float %137, float 7.500000e-01, float %135)
  %139 = fptosi float %138 to i32
  %140 = load float, ptr %48, align 4, !tbaa !153
  %141 = fsub float %140, %137
  %142 = fptosi float %141 to i32
  %143 = fsub float %98, %135
  %144 = fadd float %143, -1.800000e+01
  %145 = fptosi float %144 to i16
  %146 = call ptr @uiDefBut(ptr noundef %134, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %8, i32 noundef %139, i32 noundef %142, i16 noundef signext %145, i16 noundef signext %136, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  %147 = call zeroext i8 @nodeIsRegistered(ptr noundef nonnull %4) #13
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %104
  call void @UI_ThemeColor4(i32 noundef 0) #13
  br label %157

150:                                              ; preds = %104
  %151 = load i32, ptr %41, align 8, !tbaa !101
  %152 = and i32 %151, 32768
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  call void @glColor3fv(ptr noundef nonnull %155) #13
  br label %157

156:                                              ; preds = %150
  call void @UI_ThemeColor4(i32 noundef 93) #13
  br label %157

157:                                              ; preds = %154, %156, %149
  call void @glEnable(i32 noundef 3042) #13
  call void @uiSetRoundBox(i32 noundef 12) #13
  %158 = load float, ptr %12, align 4, !tbaa !150
  %159 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %160 = load float, ptr %159, align 4, !tbaa !151
  %161 = load float, ptr %53, align 4, !tbaa !152
  %162 = load float, ptr %48, align 4, !tbaa !153
  %163 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %164 = sitofp i16 %163 to float
  %165 = fsub float %162, %164
  %166 = fmul float %164, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %158, float noundef %160, float noundef %161, float noundef %165, float noundef %166) #13
  call void @glDisable(i32 noundef 3042) #13
  %167 = load i32, ptr %41, align 8, !tbaa !101
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %157
  call void @glEnable(i32 noundef 3042) #13
  call void @glEnable(i32 noundef 2848) #13
  %171 = load i32, ptr %41, align 8, !tbaa !101
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 28, i32 29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %174, i32 noundef 0, i32 noundef -40) #13
  call void @uiSetRoundBox(i32 noundef 15) #13
  %175 = load float, ptr %12, align 4, !tbaa !150
  %176 = load float, ptr %159, align 4, !tbaa !151
  %177 = load float, ptr %53, align 4, !tbaa !152
  %178 = load float, ptr %48, align 4, !tbaa !153
  %179 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %180 = sitofp i16 %179 to float
  %181 = fmul float %180, 0x3FD99999A0000000
  call void @uiDrawBox(i32 noundef 2, float noundef %175, float noundef %176, float noundef %177, float noundef %178, float noundef %181) #13
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  %182 = load i32, ptr %41, align 8, !tbaa !101
  br label %183

183:                                              ; preds = %170, %157
  %184 = phi i32 [ %182, %170 ], [ %167, %157 ]
  %185 = and i32 %184, 512
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  call fastcc void @node_draw_mute_line(ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %4) #14
  br label %188

188:                                              ; preds = %187, %183
  %189 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %190 = load ptr, ptr %189, align 8, !tbaa !88
  %191 = icmp eq ptr %190, null
  br i1 %191, label %207, label %192

192:                                              ; preds = %188, %204
  %193 = phi ptr [ %205, %204 ], [ %190, %188 ]
  %194 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %193) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %198 = sitofp i16 %197 to float
  %199 = fmul float %198, 2.500000e-01
  %200 = getelementptr inbounds %struct.bNodeSocket, ptr %193, i64 0, i32 8
  %201 = load i16, ptr %200, align 2, !tbaa !160
  %202 = and i16 %201, 1
  %203 = zext nneg i16 %202 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %193, float noundef %199, i32 noundef %203) #14
  br label %204

204:                                              ; preds = %192, %196
  %205 = load ptr, ptr %193, align 8, !tbaa !88
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %192, !llvm.loop !169

207:                                              ; preds = %204, %188
  %208 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %209 = load ptr, ptr %208, align 8, !tbaa !88
  %210 = icmp eq ptr %209, null
  br i1 %210, label %226, label %211

211:                                              ; preds = %207, %223
  %212 = phi ptr [ %224, %223 ], [ %209, %207 ]
  %213 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %212) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %217 = sitofp i16 %216 to float
  %218 = fmul float %217, 2.500000e-01
  %219 = getelementptr inbounds %struct.bNodeSocket, ptr %212, i64 0, i32 8
  %220 = load i16, ptr %219, align 2, !tbaa !160
  %221 = and i16 %220, 1
  %222 = zext nneg i16 %221 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %212, float noundef %218, i32 noundef %222) #14
  br label %223

223:                                              ; preds = %211, %215
  %224 = load ptr, ptr %212, align 8, !tbaa !88
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %211, !llvm.loop !170

226:                                              ; preds = %223, %207
  %227 = load i32, ptr %41, align 8, !tbaa !101
  %228 = and i32 %227, 4
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne ptr %11, null
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %252

232:                                              ; preds = %226
  %233 = call ptr @BKE_node_instance_hash_lookup(ptr noundef nonnull %11, i32 %5) #13
  %234 = icmp eq ptr %233, null
  br i1 %234, label %252, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.bNodePreview, ptr %233, i64 0, i32 2
  %237 = load i16, ptr %236, align 8, !tbaa !171
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.bNodePreview, ptr %233, i64 0, i32 3
  %241 = load i16, ptr %240, align 2, !tbaa !174
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.bNodePreview, ptr %233, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !175
  %246 = icmp eq ptr %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 42
  %249 = call zeroext i8 @BLI_rctf_is_empty(ptr noundef nonnull %248) #13
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  call fastcc void @node_draw_preview(ptr noundef nonnull %233, ptr noundef nonnull %248) #14
  br label %252

252:                                              ; preds = %232, %235, %239, %251, %247, %243, %226
  call void @UI_ThemeClearColor(i32 noundef %16) #13
  %253 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiEndBlock(ptr noundef %0, ptr noundef %253) #13
  %254 = load ptr, ptr %18, align 8, !tbaa !122
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %254) #13
  br label %255

255:                                              ; preds = %252, %26
  store ptr null, ptr %18, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_update_nodetree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  tail call fastcc void @node_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !176

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !177 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %12) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !88
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %28
  %18 = phi ptr [ %13, %15 ], [ %30, %28 ]
  %19 = phi i16 [ 0, %15 ], [ %29, %28 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 40
  tail call void @BLI_rctf_union(ptr noundef nonnull %16, ptr noundef nonnull %20) #13
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !101
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %18) #13
  %27 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 15
  store i16 %19, ptr %27, align 2, !tbaa !179
  tail call fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %18, i32 %26) #14
  br label %28

28:                                               ; preds = %17, %25
  %29 = add i16 %19, 1
  %30 = load ptr, ptr %18, align 8, !tbaa !88
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !180

32:                                               ; preds = %28, %7, %11
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br label %38

38:                                               ; preds = %36, %43
  %39 = phi ptr [ %34, %36 ], [ %44, %43 ]
  %40 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @node_draw_link(ptr noundef nonnull %37, ptr noundef %2, ptr noundef nonnull %39) #13
  br label %43

43:                                               ; preds = %38, %42
  %44 = load ptr, ptr %39, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38, !llvm.loop !181

46:                                               ; preds = %43, %32
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %47 = load ptr, ptr %8, align 8, !tbaa !88
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %46, %59
  %50 = phi ptr [ %61, %59 ], [ %47, %46 ]
  %51 = phi i16 [ %60, %59 ], [ 0, %46 ]
  %52 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !101
  %54 = and i32 %53, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %50) #13
  %58 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 15
  store i16 %51, ptr %58, align 2, !tbaa !179
  tail call fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %50, i32 %57) #14
  br label %59

59:                                               ; preds = %49, %56
  %60 = add i16 %51, 1
  %61 = load ptr, ptr %50, align 8, !tbaa !88
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %49, !llvm.loop !182

63:                                               ; preds = %59, %46, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) unnamed_addr #1 !PGOFuncName !183 {
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 %5) #13
  br label %13

13:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: optsize
declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_draw_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawnodespace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #13
  tail call void @glClear(i32 noundef 16384) #13
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %6) #13
  %7 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !187
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !190
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !192
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !193
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %14, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #13
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = load float, ptr %21, align 8, !tbaa !107
  %29 = fdiv float %28, %27
  store float %29, ptr %21, align 8, !tbaa !107
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %31 = fmul float %30, %25
  %32 = fdiv float %31, 7.200000e+01
  %33 = load float, ptr %22, align 4, !tbaa !107
  %34 = fdiv float %33, %32
  store float %34, ptr %22, align 4, !tbaa !107
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #13
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  tail call void @glEnable(i32 noundef 3479) #13
  tail call void @snode_set_context(ptr noundef %0) #13
  %35 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 17, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !194
  %37 = icmp eq ptr %36, null
  br i1 %37, label %108, label %38

38:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %39 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_center_get(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %39) #13
  %40 = getelementptr inbounds %struct.bNodeTreePath, ptr %36, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %40, ptr noundef nonnull %3) #14
  %41 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !154
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %42, i64 0, i32 6
  call fastcc void @copy_v2_v2(ptr noundef nonnull %45, ptr noundef nonnull %3) #14
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %47
  %48 = phi ptr [ %51, %47 ], [ %36, %46 ]
  %49 = phi i32 [ %55, %47 ], [ 0, %46 ]
  %50 = getelementptr inbounds %struct.bNodeTreePath, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !195
  %52 = icmp ne ptr %51, null
  %53 = icmp ult i32 %49, 2
  %54 = select i1 %52, i1 %53, i1 false
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %47, label %56, !llvm.loop !197

56:                                               ; preds = %47
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %56, %68
  %59 = phi i32 [ %70, %68 ], [ %49, %56 ]
  %60 = phi ptr [ %69, %68 ], [ %48, %56 ]
  %61 = getelementptr inbounds %struct.bNodeTreePath, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !198
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bNodeTreePath, ptr %60, i64 0, i32 5
  call fastcc void @snode_setup_v2d(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %65) #14
  %66 = getelementptr inbounds %struct.bNodeTreePath, ptr %60, i64 0, i32 3
  %67 = load i32, ptr %66, align 8
  call fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %62, i32 %67) #14
  call fastcc void @draw_group_overlay(ptr noundef %0, ptr noundef %1) #14
  br label %68

68:                                               ; preds = %58, %64
  %69 = load ptr, ptr %60, align 8, !tbaa !199
  %70 = add nsw i32 %59, -1
  %71 = icmp sgt i32 %59, 1
  br i1 %71, label %58, label %72, !llvm.loop !200

72:                                               ; preds = %68, %56
  %73 = phi ptr [ %48, %56 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.bNodeTreePath, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !198
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  call fastcc void @snode_setup_v2d(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3) #14
  %78 = select i1 %57, i32 2, i32 106
  %79 = call float @ED_node_grid_size() #14
  call void @UI_view2d_multi_grid_draw(ptr noundef nonnull %6, i32 noundef %78, float noundef %79, i32 noundef 5, i32 noundef 2) #13
  %80 = getelementptr inbounds %struct.bNodeTreePath, ptr %73, i64 0, i32 3
  %81 = load i32, ptr %80, align 8
  call void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef %1, ptr noundef %5, i32 %81) #13
  %82 = load i32, ptr %80, align 8
  call fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %75, i32 %82) #14
  br label %83

83:                                               ; preds = %77, %72
  call void @glEnable(i32 noundef 3042) #13
  call void @glEnable(i32 noundef 2848) #13
  %84 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 27
  %85 = load ptr, ptr %84, align 8, !tbaa !88
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %90

87:                                               ; preds = %95, %90
  %88 = load ptr, ptr %91, align 8, !tbaa !88
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90, !llvm.loop !201

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %88, %87 ], [ %85, %83 ]
  %92 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !88
  %94 = icmp eq ptr %93, null
  br i1 %94, label %87, label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %99, %95 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.LinkData, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !202
  call void @node_draw_link(ptr noundef nonnull %6, ptr noundef %5, ptr noundef %98) #13
  %99 = load ptr, ptr %96, align 8, !tbaa !88
  %100 = icmp eq ptr %99, null
  br i1 %100, label %87, label %95, !llvm.loop !204

101:                                              ; preds = %87, %83
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  %102 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %103 = load i16, ptr %102, align 8, !tbaa !205
  %104 = and i16 %103, 4
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 1) #13
  br label %107

107:                                              ; preds = %106, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %111

108:                                              ; preds = %2
  %109 = tail call float @ED_node_grid_size() #14
  tail call void @UI_view2d_multi_grid_draw(ptr noundef nonnull %6, i32 noundef 2, float noundef %109, i32 noundef 5, i32 noundef 2) #13
  %110 = load i32, ptr @NODE_INSTANCE_KEY_NONE, align 4
  tail call void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i32 %110) #13
  br label %111

111:                                              ; preds = %108, %107
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #13
  call void @UI_view2d_view_restore(ptr noundef %0) #13
  %112 = load ptr, ptr %35, align 8, !tbaa !194
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %116 = load i16, ptr %115, align 8, !tbaa !205
  %117 = and i16 %116, 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #13
  br label %120

120:                                              ; preds = %114, %119, %111
  call fastcc void @draw_tree_path(ptr noundef nonnull %5) #14
  %121 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext 10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #13
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %121) #13
  call void @UI_view2d_scrollers_free(ptr noundef %121) #13
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !206 {
  %3 = load float, ptr %1, align 4, !tbaa !107
  store float %3, ptr %0, align 4, !tbaa !107
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !107
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @snode_setup_v2d(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !207 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %5 = load float, ptr %2, align 4, !tbaa !107
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !107
  tail call void @UI_view2d_center_set(ptr noundef nonnull %4, float noundef %5, float noundef %7) #13
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #14
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !208
  %12 = sitofp i16 %11 to float
  %13 = fdiv float %9, %12
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 11
  store float %13, ptr %14, align 4, !tbaa !149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #1 !PGOFuncName !209 {
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  tail call fastcc void @node_uiblocks_init(ptr noundef %0, ptr noundef %2) #14
  tail call void @node_update_nodetree(ptr noundef %0, ptr noundef %2) #14
  tail call void @node_draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i32 %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_group_overlay(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !210 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %4 = load float, ptr %3, align 8, !tbaa.struct !211
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa.struct !212
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %8 = load float, ptr %7, align 8, !tbaa.struct !213
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa.struct !214
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 106, i32 noundef 0, i32 noundef -70) #13
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @uiSetRoundBox(i32 noundef 0) #13
  tail call void @uiDrawBox(i32 noundef 9, float noundef %4, float noundef %8, float noundef %6, float noundef %10, float noundef 0.000000e+00) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %11 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.8, i16 noundef signext 0) #13
  %12 = fptosi float %4 to i32
  %13 = fptosi float %8 to i32
  %14 = fptosi float %6 to i32
  %15 = fptosi float %10 to i32
  tail call void @uiExplicitBoundsBlock(ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #13
  tail call void @uiBlockSetFlag(ptr noundef %11, i32 noundef 8192) #13
  tail call void @uiEndBlock(ptr noundef %0, ptr noundef %11) #13
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_multi_grid_draw(ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @draw_nodespace_back_pix(ptr noundef, ptr noundef, ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tree_path(ptr noundef %0) unnamed_addr #1 !PGOFuncName !215 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #15
  call void @ED_node_tree_path_get_fixedbuf(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 256) #13
  call void @UI_ThemeColor(i32 noundef 4) #13
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %4 = sitofp i16 %3 to float
  %5 = fmul float %4, 1.500000e+00
  call void @BLF_draw_default(float noundef %5, float noundef %5, float noundef 0.000000e+00, ptr noundef nonnull %2, i64 noundef 256) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @uiExplicitBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !216 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !217 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !218 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !151
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !153
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !219 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !153
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !151
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_toggle_button_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !220 {
  tail call void @node_select_single(ptr noundef %0, ptr noundef %1) #13
  %4 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %2, i16 noundef signext 0, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare void @UI_DrawTriIcon(float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_mute_line(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !221 {
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 25, i8 noundef zeroext 0, i32 noundef 25) #13
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !222

11:                                               ; preds = %7, %3
  tail call void @glDisable(i32 noundef 3042) #13
  tail call void @glDisable(i32 noundef 2848) #13
  ret void
}

; Function Attrs: optsize
declare void @nodeLabel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !223 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !152
  %4 = load float, ptr %0, align 4, !tbaa !150
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_select_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_draw_link_bezier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @nodeSynchronizeID(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3fv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @nodeIsRegistered(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_node_instance_hash_lookup(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_is_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_preview(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !224 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %1) #14
  %5 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %7 = load <2 x i16>, ptr %6, align 8, !tbaa !55
  %8 = sitofp <2 x i16> %7 to <2 x float>
  %9 = insertelement <2 x float> poison, float %4, i64 0
  %10 = insertelement <2 x float> %9, float %5, i64 1
  %11 = fdiv <2 x float> %10, %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !211
  %12 = extractelement <2 x float> %11, i64 0
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = extractelement <2 x float> %8, i64 1
  %17 = fneg float %16
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %12, float %5)
  %19 = fmul float %18, 5.000000e-01
  %20 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !151
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !151
  %23 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !153
  %25 = fsub float %24, %19
  store float %25, ptr %23, align 4, !tbaa !153
  %26 = load float, ptr %3, align 4, !tbaa !150
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !152
  br label %43

29:                                               ; preds = %2
  %30 = extractelement <2 x float> %8, i64 0
  %31 = fneg float %30
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %13, float %4)
  %33 = fmul float %32, 5.000000e-01
  %34 = load float, ptr %3, align 4, !tbaa !150
  %35 = fadd float %33, %34
  store float %35, ptr %3, align 4, !tbaa !150
  %36 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !152
  %38 = fsub float %37, %33
  store float %38, ptr %36, align 4, !tbaa !152
  %39 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !151
  %41 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !153
  br label %43

43:                                               ; preds = %29, %15
  %44 = phi float [ %25, %15 ], [ %42, %29 ]
  %45 = phi float [ %28, %15 ], [ %38, %29 ]
  %46 = phi float [ %22, %15 ], [ %40, %29 ]
  %47 = phi float [ %26, %15 ], [ %35, %29 ]
  %48 = phi float [ %12, %15 ], [ %13, %29 ]
  %49 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %50 = fdiv float %4, 1.000000e+01
  call fastcc void @node_draw_preview_background(float noundef %50, ptr noundef nonnull %3) #14
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  tail call void @glPixelZoom(float noundef %48, float noundef %48) #13
  %51 = load i16, ptr %6, align 8, !tbaa !171
  %52 = sext i16 %51 to i32
  %53 = load i16, ptr %49, align 2, !tbaa !174
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !175
  tail call void @glaDrawPixelsTex(float noundef %47, float noundef %46, i32 noundef %52, i32 noundef %54, i32 noundef 6408, i32 noundef 5121, i32 noundef 9729, ptr noundef %56) #13
  tail call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  tail call void @glDisable(i32 noundef 3042) #13
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef 100) #13
  tail call void @fdrawbox(float noundef %47, float noundef %46, float noundef %45, float noundef %44) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_preview_background(float noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !225 {
  tail call void @glColor3ub(i8 noundef zeroext 120, i8 noundef zeroext 120, i8 noundef zeroext 120) #13
  %3 = load float, ptr %1, align 4, !tbaa !150
  %4 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !151
  %6 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !152
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !153
  tail call void @glRectf(float noundef %3, float noundef %5, float noundef %7, float noundef %9) #13
  tail call void @glColor3ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96) #13
  %10 = load float, ptr %4, align 4, !tbaa !151
  %11 = load float, ptr %8, align 4, !tbaa !153
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load float, ptr %6, align 4, !tbaa !152
  br label %15

15:                                               ; preds = %13, %41
  %16 = phi float [ %42, %41 ], [ %11, %13 ]
  %17 = phi float [ %43, %41 ], [ %14, %13 ]
  %18 = phi float [ %44, %41 ], [ %10, %13 ]
  %19 = load float, ptr %1, align 4, !tbaa !150
  %20 = fcmp olt float %19, %17
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = fadd float %18, %0
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi float [ %17, %21 ], [ %37, %23 ]
  %25 = phi float [ %19, %21 ], [ %36, %23 ]
  %26 = fadd float %25, %0
  %27 = fcmp ogt float %26, %24
  %28 = fsub float %24, %25
  %29 = select i1 %27, float %28, float %0
  %30 = load float, ptr %8, align 4, !tbaa !153
  %31 = fcmp ogt float %22, %30
  %32 = fsub float %30, %18
  %33 = select i1 %31, float %32, float %0
  %34 = fadd float %25, %29
  %35 = fadd float %18, %33
  tail call void @glRectf(float noundef %25, float noundef %18, float noundef %34, float noundef %35) #13
  %36 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %25)
  %37 = load float, ptr %6, align 4, !tbaa !152
  %38 = fcmp olt float %36, %37
  br i1 %38, label %23, label %39, !llvm.loop !226

39:                                               ; preds = %23
  %40 = load float, ptr %8, align 4, !tbaa !153
  br label %41

41:                                               ; preds = %39, %15
  %42 = phi float [ %40, %39 ], [ %16, %15 ]
  %43 = phi float [ %37, %39 ], [ %17, %15 ]
  %44 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %18)
  %45 = fcmp olt float %44, %42
  br i1 %45, label %15, label %46, !llvm.loop !227

46:                                               ; preds = %41
  %47 = load float, ptr %4, align 4, !tbaa !151
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi float [ %42, %46 ], [ %11, %2 ]
  %50 = phi float [ %47, %46 ], [ %10, %2 ]
  %51 = fadd float %50, %0
  %52 = fcmp olt float %51, %49
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load float, ptr %6, align 4, !tbaa !152
  br label %55

55:                                               ; preds = %53, %82
  %56 = phi float [ %83, %82 ], [ %49, %53 ]
  %57 = phi float [ %84, %82 ], [ %54, %53 ]
  %58 = phi float [ %85, %82 ], [ %51, %53 ]
  %59 = load float, ptr %1, align 4, !tbaa !150
  %60 = fadd float %59, %0
  %61 = fcmp olt float %60, %57
  br i1 %61, label %62, label %82

62:                                               ; preds = %55
  %63 = fadd float %58, %0
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi float [ %57, %62 ], [ %78, %64 ]
  %66 = phi float [ %60, %62 ], [ %77, %64 ]
  %67 = fadd float %66, %0
  %68 = fcmp ogt float %67, %65
  %69 = fsub float %65, %66
  %70 = select i1 %68, float %69, float %0
  %71 = load float, ptr %8, align 4, !tbaa !153
  %72 = fcmp ogt float %63, %71
  %73 = fsub float %71, %58
  %74 = select i1 %72, float %73, float %0
  %75 = fadd float %66, %70
  %76 = fadd float %58, %74
  tail call void @glRectf(float noundef %66, float noundef %58, float noundef %75, float noundef %76) #13
  %77 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %66)
  %78 = load float, ptr %6, align 4, !tbaa !152
  %79 = fcmp olt float %77, %78
  br i1 %79, label %64, label %80, !llvm.loop !228

80:                                               ; preds = %64
  %81 = load float, ptr %8, align 4, !tbaa !153
  br label %82

82:                                               ; preds = %80, %55
  %83 = phi float [ %81, %80 ], [ %56, %55 ]
  %84 = phi float [ %78, %80 ], [ %57, %55 ]
  %85 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %58)
  %86 = fcmp olt float %85, %83
  br i1 %86, label %55, label %87, !llvm.loop !229

87:                                               ; preds = %82, %48
  ret void
}

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_uiblocks_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !230 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %2 ]
  %9 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #13
  %10 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %11 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %3, i16 noundef signext 0) #13
  %12 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 46
  store ptr %11, ptr %12, align 8, !tbaa !122
  call void @uiBlockSetHandleFunc(ptr noundef %11, ptr noundef nonnull @do_node_internal_buttons, ptr noundef nonnull %8) #13
  %13 = load ptr, ptr %12, align 8, !tbaa !122
  call void @uiBlockSetFlag(ptr noundef %13, i32 noundef 8192) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !231

16:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_node_internal_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 !PGOFuncName !232 {
  %4 = icmp eq i32 %2, 12
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !233
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ED_node_tag_update_id(ptr noundef nonnull %10) #14
  br label %13

13:                                               ; preds = %5, %8, %12, %3
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_node_tree_path_get_fixedbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!34 = !{!35, !39, i64 8948}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!46, !41, i64 280}
!46 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !42, i64 36, !37, i64 40, !47, i64 56, !41, i64 216, !41, i64 224, !39, i64 232, !39, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !37, i64 256, !40, i64 264, !41, i64 280, !41, i64 288, !37, i64 296, !36, i64 360, !36, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !40, i64 376, !41, i64 392}
!47 = !{!"View2D", !48, i64 0, !48, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!48 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!49 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!50 = !{!51, !36, i64 100}
!51 = !{!"bNodeTree", !52, i64 0, !41, i64 120, !41, i64 128, !37, i64 136, !41, i64 200, !41, i64 208, !37, i64 216, !40, i64 224, !40, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !39, i64 276, !39, i64 278, !36, i64 280, !36, i64 284, !39, i64 288, !39, i64 290, !36, i64 292, !48, i64 296, !40, i64 312, !40, i64 328, !41, i64 344, !53, i64 352, !36, i64 356, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !41, i64 408, !41, i64 416, !41, i64 424}
!52 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!53 = !{!"bNodeInstanceKey", !36, i64 0}
!54 = !{!51, !36, i64 256}
!55 = !{!39, !39, i64 0}
!56 = !{!"node_draw.c:node_tree_from_ID"}
!57 = !{!58, !41, i64 768}
!58 = !{!"Material", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !59, i64 224, !60, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !39, i64 372, !39, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !39, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !39, i64 588, !39, i64 590, !41, i64 592, !41, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !39, i64 876, !39, i64 878, !36, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !41, i64 920, !40, i64 928}
!59 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!60 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!61 = !{!62, !41, i64 512}
!62 = !{!"Lamp", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !36, i64 132, !39, i64 136, !39, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !39, i64 208, !39, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !39, i64 340, !37, i64 342, !41, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !41, i64 504, !41, i64 512}
!63 = !{!64, !41, i64 520}
!64 = !{!"World", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !41, i64 336, !41, i64 344, !41, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !41, i64 512, !41, i64 520}
!65 = !{!66, !41, i64 248}
!66 = !{!"Scene", !52, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !67, i64 280, !74, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !75, i64 4400, !76, i64 4416, !79, i64 4600, !41, i64 4608, !80, i64 4616, !41, i64 4640, !81, i64 4648, !81, i64 4656, !69, i64 4664, !70, i64 4824, !82, i64 4888, !41, i64 4952}
!67 = !{!"RenderData", !68, i64 0, !41, i64 248, !41, i64 256, !71, i64 264, !72, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !48, i64 544, !48, i64 560, !49, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !73, i64 2616, !36, i64 3976, !36, i64 3980}
!68 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !69, i64 24, !70, i64 184}
!69 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!70 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!71 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!72 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!73 = !{!"BakeData", !68, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!74 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!75 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!76 = !{!"GameData", !75, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !77, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !78, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!77 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!78 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!79 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!80 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!81 = !{!"long", !37, i64 0}
!82 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!83 = !{!84, !41, i64 336}
!84 = !{!"Tex", !52, i64 0, !41, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !36, i64 252, !36, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !85, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !37, i64 408, !37, i64 409}
!85 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!86 = !{!87, !41, i64 392}
!87 = !{!"FreestyleLineStyle", !52, i64 0, !41, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !36, i64 148, !42, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !36, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !36, i64 208, !36, i64 212, !42, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !36, i64 244, !37, i64 248, !41, i64 392, !40, i64 400, !40, i64 416, !40, i64 432, !40, i64 448}
!88 = !{!41, !41, i64 0}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!51, !41, i64 224}
!92 = !{!93, !41, i64 0}
!93 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !40, i64 200, !40, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !40, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !42, i64 380, !42, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !48, i64 400, !48, i64 416, !48, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!94 = distinct !{!94, !90}
!95 = !{i32 0, i32 2}
!96 = distinct !{!96, !90}
!97 = distinct !{!97, !90}
!98 = distinct !{!98, !90}
!99 = distinct !{!99, !90}
!100 = !{!"node_draw.c:compare_nodes"}
!101 = !{!93, !36, i64 168}
!102 = !{!93, !41, i64 232}
!103 = distinct !{!103, !90}
!104 = distinct !{!104, !90}
!105 = !{!35, !42, i64 10908}
!106 = !{!35, !36, i64 8524}
!107 = !{!42, !42, i64 0}
!108 = !{!"node_draw.c:node_update_hidden"}
!109 = distinct !{!109, !90}
!110 = distinct !{!110, !90}
!111 = !{!93, !42, i64 400}
!112 = !{!93, !42, i64 296}
!113 = !{!93, !42, i64 404}
!114 = !{!93, !42, i64 412}
!115 = !{!93, !42, i64 408}
!116 = !{!117, !42, i64 248}
!117 = !{!"bNodeSocket", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 96, !41, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !41, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !41, i64 256, !39, i64 264, !39, i64 266, !36, i64 268, !41, i64 272, !36, i64 280, !36, i64 284, !41, i64 288, !41, i64 296, !118, i64 304}
!118 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !41, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!119 = !{!117, !42, i64 252}
!120 = distinct !{!120, !90}
!121 = distinct !{!121, !90}
!122 = !{!93, !41, i64 456}
!123 = !{!"node_draw.c:node_update_basis"}
!124 = !{!93, !42, i64 288}
!125 = !{!117, !41, i64 176}
!126 = !{!127, !41, i64 64}
!127 = !{!"bNodeSocketType", !37, i64 0, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !128, i64 128, !128, i64 160, !36, i64 192, !36, i64 196}
!128 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!129 = !{!36, !36, i64 0}
!130 = distinct !{!130, !90}
!131 = !{!93, !42, i64 432}
!132 = !{!93, !42, i64 436}
!133 = !{!93, !39, i64 448}
!134 = !{!93, !39, i64 450}
!135 = !{!93, !42, i64 444}
!136 = !{!93, !42, i64 440}
!137 = !{!93, !41, i64 32}
!138 = !{!139, !41, i64 544}
!139 = !{!"bNodeType", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !36, i64 84, !37, i64 88, !37, i64 152, !36, i64 408, !42, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !41, i64 448, !41, i64 456, !37, i64 464, !41, i64 528, !41, i64 536, !41, i64 544, !41, i64 552, !41, i64 560, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !41, i64 616, !41, i64 624, !41, i64 632, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !41, i64 696, !41, i64 704, !41, i64 712, !128, i64 720}
!140 = !{!93, !42, i64 416}
!141 = !{!93, !42, i64 420}
!142 = distinct !{!142, !90}
!143 = !{!93, !41, i64 200}
!144 = !{!139, !39, i64 436}
!145 = !{!127, !41, i64 72}
!146 = !{!"node_draw.c:node_circle_draw"}
!147 = distinct !{!147, !90}
!148 = distinct !{!148, !90}
!149 = !{!46, !42, i64 236}
!150 = !{!48, !42, i64 0}
!151 = !{!48, !42, i64 8}
!152 = !{!48, !42, i64 4}
!153 = !{!48, !42, i64 12}
!154 = !{!46, !41, i64 288}
!155 = distinct !{!155, !90}
!156 = !{!139, !41, i64 576}
!157 = !{i32 1002, i32 1007}
!158 = !{!"node_draw.c:node_draw_hidden"}
!159 = !{i32 93, i32 110}
!160 = !{!117, !39, i64 170}
!161 = distinct !{!161, !90}
!162 = distinct !{!162, !90}
!163 = !{!"node_draw.c:node_draw_basis"}
!164 = !{!165, !41, i64 16}
!165 = !{!"PointerRNA", !166, i64 0, !41, i64 8, !41, i64 16}
!166 = !{!"", !41, i64 0}
!167 = !{!139, !39, i64 438}
!168 = !{!93, !39, i64 172}
!169 = distinct !{!169, !90}
!170 = distinct !{!170, !90}
!171 = !{!172, !39, i64 16}
!172 = !{!"bNodePreview", !173, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20}
!173 = !{!"bNodeInstanceHashEntry", !53, i64 0, !39, i64 4, !39, i64 6}
!174 = !{!172, !39, i64 18}
!175 = !{!172, !41, i64 8}
!176 = distinct !{!176, !90}
!177 = !{!"node_draw.c:node_update"}
!178 = !{!139, !41, i64 536}
!179 = !{!93, !39, i64 186}
!180 = distinct !{!180, !90}
!181 = distinct !{!181, !90}
!182 = distinct !{!182, !90}
!183 = !{!"node_draw.c:node_draw"}
!184 = !{!139, !41, i64 528}
!185 = !{!186, !41, i64 136}
!186 = !{!"wmWindow", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !39, i64 132, !39, i64 134, !41, i64 136, !41, i64 144, !41, i64 152, !36, i64 160, !36, i64 164, !41, i64 168, !40, i64 176, !40, i64 192, !40, i64 208, !40, i64 224, !40, i64 240}
!187 = !{!188, !36, i64 20}
!188 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !189, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!189 = !{!"double", !37, i64 0}
!190 = !{!191, !36, i64 176}
!191 = !{!"ARegion", !41, i64 0, !41, i64 8, !47, i64 16, !49, i64 176, !49, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!192 = !{!188, !36, i64 24}
!193 = !{!191, !36, i64 184}
!194 = !{!46, !41, i64 272}
!195 = !{!196, !41, i64 8}
!196 = !{!"bNodeTreePath", !41, i64 0, !41, i64 8, !41, i64 16, !53, i64 24, !36, i64 28, !37, i64 32, !37, i64 40}
!197 = distinct !{!197, !90}
!198 = !{!196, !41, i64 16}
!199 = !{!196, !41, i64 0}
!200 = distinct !{!200, !90}
!201 = distinct !{!201, !90}
!202 = !{!203, !41, i64 16}
!203 = !{!"LinkData", !41, i64 0, !41, i64 8, !41, i64 16}
!204 = distinct !{!204, !90}
!205 = !{!46, !39, i64 232}
!206 = !{!"node_draw.c:copy_v2_v2"}
!207 = !{!"node_draw.c:snode_setup_v2d"}
!208 = !{!191, !39, i64 208}
!209 = !{!"node_draw.c:draw_nodetree"}
!210 = !{!"node_draw.c:draw_group_overlay"}
!211 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107, i64 12, i64 4, !107}
!212 = !{i64 0, i64 4, !107, i64 4, i64 4, !107, i64 8, i64 4, !107}
!213 = !{i64 0, i64 4, !107, i64 4, i64 4, !107}
!214 = !{i64 0, i64 4, !107}
!215 = !{!"node_draw.c:draw_tree_path"}
!216 = !{!"node_draw.c:min_ii"}
!217 = !{!"node_draw.c:min_ff"}
!218 = !{!"node_draw.c:BLI_rctf_cent_y"}
!219 = !{!"node_draw.c:BLI_rctf_size_y"}
!220 = !{!"node_draw.c:node_toggle_button_cb"}
!221 = !{!"node_draw.c:node_draw_mute_line"}
!222 = distinct !{!222, !90}
!223 = !{!"node_draw.c:BLI_rctf_size_x"}
!224 = !{!"node_draw.c:node_draw_preview"}
!225 = !{!"node_draw.c:node_draw_preview_background"}
!226 = distinct !{!226, !90}
!227 = distinct !{!227, !90}
!228 = distinct !{!228, !90}
!229 = distinct !{!229, !90}
!230 = !{!"node_draw.c:node_uiblocks_init"}
!231 = distinct !{!231, !90}
!232 = !{!"node_draw.c:do_node_internal_buttons"}
!233 = !{!46, !41, i64 216}
