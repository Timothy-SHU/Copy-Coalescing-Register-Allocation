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
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
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
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1, ptr %9, align 4, !tbaa !21
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
  %8 = load i32, ptr %7, align 8, !tbaa !25
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %16
  ]

9:                                                ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 0) #13
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !26
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
define internal fastcc ptr @node_tree_from_ID(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !26
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
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  br label %25

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !56
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
  %11 = load ptr, ptr %4, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = call zeroext i8 @ntreeHasTree(ptr noundef nonnull %11, ptr noundef nonnull %1) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !tbaa !58
  call void @ED_node_tag_update_id(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %10, label %21, !llvm.loop !59

21:                                               ; preds = %18, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !25
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
  %7 = load ptr, ptr %2, align 8, !tbaa !61
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
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp slt i32 %17, %6
  %19 = icmp ne ptr %16, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %13, label %21, !llvm.loop !64

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
  %34 = tail call fastcc i32 @compare_nodes(ptr noundef %29, ptr noundef nonnull %28) #14, !range !65
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !62
  %38 = add nsw i32 %27, 1
  br label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr %28, align 8, !tbaa !62
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
  br i1 %47, label %25, label %48, !llvm.loop !66

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
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = add nsw i32 %55, 1
  %59 = icmp sge i32 %58, %6
  %60 = icmp eq ptr %57, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %54, !llvm.loop !67

62:                                               ; preds = %54, %48
  %63 = phi ptr [ %49, %48 ], [ %57, %54 ]
  %64 = phi i1 [ %52, %48 ], [ %60, %54 ]
  br i1 %64, label %65, label %9, !llvm.loop !68

65:                                               ; preds = %21, %62
  %66 = shl i32 %6, 1
  %67 = icmp slt i32 %66, %3
  br i1 %67, label %5, label %68, !llvm.loop !69

68:                                               ; preds = %65, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @compare_nodes(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = and i32 %4, 1
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = and i32 %7, 1
  %9 = and i32 %4, 16
  %10 = and i32 %7, 16
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %25, %2
  %15 = phi i32 [ %5, %2 ], [ %33, %25 ]
  %16 = phi i32 [ %9, %2 ], [ %30, %25 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !71
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
  %27 = load i32, ptr %26, align 8, !tbaa !70
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 %22, i32 1
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 %23, i32 1
  %34 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = icmp eq ptr %35, null
  br i1 %36, label %14, label %20, !llvm.loop !72

37:                                               ; preds = %14, %42
  %38 = phi ptr [ %52, %42 ], [ %18, %14 ]
  %39 = phi i32 [ %47, %42 ], [ %10, %14 ]
  %40 = phi i32 [ %50, %42 ], [ %8, %14 ]
  %41 = icmp eq ptr %38, %0
  br i1 %41, label %73, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !70
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %39, i32 1
  %48 = and i32 %44, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %40, i32 1
  %51 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %37, !llvm.loop !73

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
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = load float, ptr %3, align 4, !tbaa !76
  %12 = fmul float %11, %10
  store float %12, ptr %3, align 4, !tbaa !76
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %14 = fmul float %13, %8
  %15 = fdiv float %14, 7.200000e+01
  %16 = load float, ptr %4, align 4, !tbaa !76
  %17 = fmul float %16, %15
  store float %17, ptr %4, align 4, !tbaa !76
  ret void
}

; Function Attrs: optsize
declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_from_view(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
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
  %5 = load i32, ptr %4, align 8, !tbaa !70
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
define internal fastcc void @node_update_hidden(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %5 = sitofp i16 %4 to float
  %6 = fmul float %5, 7.500000e-01
  call void @node_to_view(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %1 ]
  %12 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %13 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %11) #13
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !77

19:                                               ; preds = %10, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %10 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %31, %24 ], [ %22, %19 ]
  %26 = phi i32 [ %30, %24 ], [ 0, %19 ]
  %27 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %25) #13
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %26, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !78

33:                                               ; preds = %24
  %34 = load ptr, ptr %21, align 8, !tbaa !58
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
  %44 = load float, ptr %2, align 4, !tbaa !76
  %45 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  store float %44, ptr %45, align 8, !tbaa !79
  %46 = call float @llvm.fmuladd.f32(float %43, float 3.000000e+00, float %44)
  %47 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 28
  %48 = load float, ptr %47, align 8, !tbaa !80
  %49 = fadd float %46, %48
  %50 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 1
  store float %49, ptr %50, align 4, !tbaa !81
  %51 = load float, ptr %3, align 4, !tbaa !76
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %53 = sitofp i16 %52 to float
  %54 = call float @llvm.fmuladd.f32(float %53, float -5.000000e-01, float %43)
  %55 = fadd float %51, %54
  %56 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 3
  store float %55, ptr %56, align 4, !tbaa !82
  %57 = call float @llvm.fmuladd.f32(float %43, float -2.000000e+00, float %55)
  %58 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40, i32 2
  store float %57, ptr %58, align 8, !tbaa !83
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
  %69 = load float, ptr %50, align 4, !tbaa !81
  %70 = fsub float %69, %43
  %71 = call float @sinf(float noundef %65) #13
  %72 = call float @llvm.fmuladd.f32(float %71, float %43, float %70)
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 13
  store float %72, ptr %73, align 8, !tbaa !84
  %74 = load float, ptr %58, align 8, !tbaa !83
  %75 = fadd float %43, %74
  %76 = call float @cosf(float noundef %65) #13
  %77 = call float @llvm.fmuladd.f32(float %76, float %43, float %75)
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %64, i64 0, i32 14
  store float %77, ptr %78, align 4, !tbaa !87
  %79 = fadd float %61, %65
  br label %80

80:                                               ; preds = %63, %68
  %81 = phi float [ %65, %63 ], [ %79, %68 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !58
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %63, !llvm.loop !88

84:                                               ; preds = %80, %35
  %85 = sitofp i32 %20 to float
  %86 = fadd float %85, 1.000000e+00
  %87 = fdiv float 0xC00921FB60000000, %86
  %88 = load ptr, ptr %7, align 8, !tbaa !58
  %89 = icmp eq ptr %88, null
  br i1 %89, label %111, label %90

90:                                               ; preds = %84, %107
  %91 = phi ptr [ %109, %107 ], [ %88, %84 ]
  %92 = phi float [ %108, %107 ], [ %87, %84 ]
  %93 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %91) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load float, ptr %45, align 8, !tbaa !79
  %97 = fadd float %43, %96
  %98 = call float @sinf(float noundef %92) #13
  %99 = call float @llvm.fmuladd.f32(float %98, float %43, float %97)
  %100 = getelementptr inbounds %struct.bNodeSocket, ptr %91, i64 0, i32 13
  store float %99, ptr %100, align 8, !tbaa !84
  %101 = load float, ptr %58, align 8, !tbaa !83
  %102 = fadd float %43, %101
  %103 = call float @cosf(float noundef %92) #13
  %104 = call float @llvm.fmuladd.f32(float %103, float %43, float %102)
  %105 = getelementptr inbounds %struct.bNodeSocket, ptr %91, i64 0, i32 14
  store float %104, ptr %105, align 4, !tbaa !87
  %106 = fadd float %87, %92
  br label %107

107:                                              ; preds = %90, %95
  %108 = phi float [ %92, %90 ], [ %106, %95 ]
  %109 = load ptr, ptr %91, align 8, !tbaa !58
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %90, !llvm.loop !89

111:                                              ; preds = %107, %84
  %112 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 46
  %113 = load ptr, ptr %112, align 8, !tbaa !90
  %114 = load float, ptr %45, align 8, !tbaa !79
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %116 = sitofp i16 %115 to float
  %117 = call float @llvm.fmuladd.f32(float %116, float -2.500000e-01, float %114)
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %58, align 8, !tbaa !83
  %120 = fptosi float %119 to i32
  %121 = load float, ptr %50, align 4, !tbaa !81
  %122 = call float @llvm.fmuladd.f32(float %116, float 2.500000e-01, float %121)
  %123 = fptosi float %122 to i32
  %124 = load float, ptr %56, align 4, !tbaa !82
  %125 = fptosi float %124 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %113, i32 noundef %118, i32 noundef %120, i32 noundef %123, i32 noundef %125) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_update_basis(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
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
  %9 = load float, ptr %7, align 4, !tbaa !76
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %11 = sitofp i16 %10 to float
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !58
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
  %28 = load ptr, ptr %23, align 8, !tbaa !58
  br label %82

29:                                               ; preds = %22
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %23, ptr noundef nonnull %5) #13
  %30 = load ptr, ptr %20, align 8, !tbaa !90
  %31 = load float, ptr %6, align 4, !tbaa !76
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %33 = sext i16 %32 to i32
  %34 = sdiv i16 %32, 2
  %35 = sitofp i16 %34 to float
  %36 = fadd float %31, %35
  %37 = fptosi float %36 to i32
  %38 = fptosi float %24 to i32
  %39 = load float, ptr %21, align 8, !tbaa !91
  %40 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
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
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct.bNodeSocketType, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  %56 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 5
  call void %55(ptr noundef %0, ptr noundef %51, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %56) #13
  %57 = load ptr, ptr %20, align 8, !tbaa !90
  call void @uiBlockEndAlign(ptr noundef %57) #13
  %58 = load ptr, ptr %20, align 8, !tbaa !90
  call void @uiBlockLayoutResolve(ptr noundef %58, ptr noundef null, ptr noundef nonnull %8) #13
  %59 = load i32, ptr %8, align 4, !tbaa !96
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %61 = sitofp i16 %60 to float
  %62 = fsub float %24, %61
  %63 = fptosi float %62 to i32
  %64 = call fastcc i32 @min_ii(i32 noundef %59, i32 noundef %63) #14
  store i32 %64, ptr %8, align 4, !tbaa !96
  %65 = load float, ptr %6, align 4, !tbaa !76
  %66 = load float, ptr %21, align 8, !tbaa !91
  %67 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %68 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
  %69 = sitofp i32 %68 to float
  %70 = fmul float %67, %69
  %71 = fdiv float %70, 7.200000e+01
  %72 = call float @llvm.fmuladd.f32(float %66, float %71, float %65)
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 13
  store float %72, ptr %73, align 8, !tbaa !84
  %74 = sitofp i32 %64 to float
  %75 = fadd float %24, %74
  %76 = fmul float %75, 5.000000e-01
  %77 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 14
  store float %76, ptr %77, align 4, !tbaa !87
  %78 = load ptr, ptr %23, align 8, !tbaa !58
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %29
  %81 = call float @llvm.fmuladd.f32(float %61, float 0xBFB47AE140000000, float %74)
  br label %82

82:                                               ; preds = %27, %80
  %83 = phi ptr [ %28, %27 ], [ %78, %80 ]
  %84 = phi float [ %24, %27 ], [ %81, %80 ]
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %22, !llvm.loop !97

86:                                               ; preds = %29, %82
  %87 = phi float [ %84, %82 ], [ %74, %29 ]
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  br label %89

89:                                               ; preds = %3, %86
  %90 = phi i16 [ %88, %86 ], [ %10, %3 ]
  %91 = phi float [ %87, %86 ], [ %12, %3 ]
  %92 = load float, ptr %6, align 4, !tbaa !76
  %93 = sdiv i16 %90, 2
  %94 = sitofp i16 %93 to float
  %95 = fadd float %92, %94
  %96 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42
  store float %95, ptr %96, align 8, !tbaa !98
  %97 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %98 = load float, ptr %97, align 8, !tbaa !91
  %99 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %100 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
  %101 = sitofp i32 %100 to float
  %102 = fmul float %99, %101
  %103 = fdiv float %102, 7.200000e+01
  %104 = call float @llvm.fmuladd.f32(float %98, float %103, float %92)
  %105 = fsub float %104, %94
  %106 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 1
  store float %105, ptr %106, align 4, !tbaa !99
  %107 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !70
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %175, label %111

111:                                              ; preds = %89
  %112 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 43
  %113 = load i16, ptr %112, align 8, !tbaa !100
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 44
  %117 = load i16, ptr %116, align 2, !tbaa !101
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %111
  %120 = sdiv i16 %90, 4
  %121 = sitofp i16 %120 to float
  %122 = fsub float %91, %121
  %123 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 3
  store float %122, ptr %123, align 4, !tbaa !102
  br label %133

124:                                              ; preds = %115
  %125 = sitofp i16 %117 to float
  %126 = sitofp i16 %113 to float
  %127 = fdiv float %125, %126
  %128 = sdiv i16 %90, 4
  %129 = sitofp i16 %128 to float
  %130 = fsub float %91, %129
  %131 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 3
  store float %130, ptr %131, align 4, !tbaa !102
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
  store float %142, ptr %143, align 8, !tbaa !103
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
  store float %152, ptr %153, align 8, !tbaa !103
  %154 = insertelement <2 x float> poison, float %148, i64 0
  %155 = shufflevector <2 x float> %154, <2 x float> poison, <2 x i32> zeroinitializer
  %156 = insertelement <2 x float> poison, float %95, i64 0
  %157 = insertelement <2 x float> %156, float %105, i64 1
  %158 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %155, <2 x float> <float 5.000000e-01, float -5.000000e-01>, <2 x float> %157)
  store <2 x float> %158, ptr %96, align 8, !tbaa !76
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
  store float %162, ptr %106, align 4, !tbaa !99
  store float %163, ptr %96, align 8, !tbaa !98
  br label %172

172:                                              ; preds = %171, %161
  %173 = fcmp olt float %166, %164
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  store float %164, ptr %165, align 4, !tbaa !102
  store float %166, ptr %168, align 8, !tbaa !103
  br label %175

175:                                              ; preds = %172, %174, %89
  %176 = phi float [ %91, %89 ], [ %169, %174 ], [ %169, %172 ]
  %177 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !104
  %179 = getelementptr inbounds %struct.bNodeType, ptr %178, i64 0, i32 22
  %180 = load ptr, ptr %179, align 8, !tbaa !105
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
  store float 0.000000e+00, ptr %189, align 8, !tbaa !107
  %190 = sext i16 %93 to i32
  %191 = shl nsw i32 %190, 1
  %192 = sitofp i32 %191 to float
  %193 = fneg float %192
  %194 = call float @llvm.fmuladd.f32(float %98, float %103, float %193)
  %195 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 1
  store float %194, ptr %195, align 4, !tbaa !108
  %196 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 2
  store <2 x float> zeroinitializer, ptr %196, align 8, !tbaa !76
  %197 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %198 = load ptr, ptr %197, align 8, !tbaa !90
  %199 = fptosi float %95 to i32
  %200 = fptosi float %188 to i32
  %201 = fptosi float %194 to i32
  %202 = call ptr @UI_GetStyle() #13
  %203 = call ptr @uiBlockLayout(ptr noundef %198, i32 noundef 1, i32 noundef 0, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef 0, i32 noundef 0, ptr noundef %202) #13
  call void @uiLayoutSetContextPointer(ptr noundef %203, ptr noundef nonnull @.str, ptr noundef nonnull %4) #13
  %204 = load ptr, ptr %177, align 8, !tbaa !104
  %205 = getelementptr inbounds %struct.bNodeType, ptr %204, i64 0, i32 22
  %206 = load ptr, ptr %205, align 8, !tbaa !105
  call void %206(ptr noundef %203, ptr noundef %0, ptr noundef nonnull %4) #13
  %207 = load ptr, ptr %197, align 8, !tbaa !90
  call void @uiBlockEndAlign(ptr noundef %207) #13
  %208 = load ptr, ptr %197, align 8, !tbaa !90
  call void @uiBlockLayoutResolve(ptr noundef %208, ptr noundef null, ptr noundef nonnull %8) #13
  %209 = load i32, ptr %8, align 4, !tbaa !96
  %210 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %211 = sdiv i16 %210, 4
  %212 = sext i16 %211 to i32
  %213 = sub nsw i32 %209, %212
  %214 = sitofp i32 %213 to float
  br label %215

215:                                              ; preds = %185, %175
  %216 = phi float [ %214, %185 ], [ %176, %175 ]
  %217 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %218 = load ptr, ptr %217, align 8, !tbaa !58
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
  %228 = load ptr, ptr %223, align 8, !tbaa !58
  br label %275

229:                                              ; preds = %222
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %223, ptr noundef nonnull %5) #13
  %230 = load ptr, ptr %221, align 8, !tbaa !90
  %231 = load float, ptr %6, align 4, !tbaa !76
  %232 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %233 = sext i16 %232 to i32
  %234 = sdiv i16 %232, 2
  %235 = sitofp i16 %234 to float
  %236 = fadd float %231, %235
  %237 = fptosi float %236 to i32
  %238 = fptosi float %224 to i32
  %239 = load float, ptr %97, align 8, !tbaa !91
  %240 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %241 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
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
  %253 = load ptr, ptr %252, align 8, !tbaa !92
  %254 = getelementptr inbounds %struct.bNodeSocketType, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !93
  %256 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 5
  call void %255(ptr noundef %0, ptr noundef %251, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %256) #13
  %257 = load ptr, ptr %221, align 8, !tbaa !90
  call void @uiBlockEndAlign(ptr noundef %257) #13
  %258 = load ptr, ptr %221, align 8, !tbaa !90
  call void @uiBlockLayoutResolve(ptr noundef %258, ptr noundef null, ptr noundef nonnull %8) #13
  %259 = load i32, ptr %8, align 4, !tbaa !96
  %260 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %261 = sitofp i16 %260 to float
  %262 = fsub float %224, %261
  %263 = fptosi float %262 to i32
  %264 = call fastcc i32 @min_ii(i32 noundef %259, i32 noundef %263) #14
  store i32 %264, ptr %8, align 4, !tbaa !96
  %265 = load float, ptr %6, align 4, !tbaa !76
  %266 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 13
  store float %265, ptr %266, align 8, !tbaa !84
  %267 = sitofp i32 %264 to float
  %268 = fadd float %224, %267
  %269 = fmul float %268, 5.000000e-01
  %270 = getelementptr inbounds %struct.bNodeSocket, ptr %223, i64 0, i32 14
  store float %269, ptr %270, align 4, !tbaa !87
  %271 = load ptr, ptr %223, align 8, !tbaa !58
  %272 = icmp eq ptr %271, null
  br i1 %272, label %279, label %273

273:                                              ; preds = %229
  %274 = call float @llvm.fmuladd.f32(float %261, float 0xBFB47AE140000000, float %267)
  br label %275

275:                                              ; preds = %227, %273
  %276 = phi ptr [ %228, %227 ], [ %271, %273 ]
  %277 = phi float [ %224, %227 ], [ %274, %273 ]
  %278 = icmp eq ptr %276, null
  br i1 %278, label %279, label %222, !llvm.loop !109

279:                                              ; preds = %229, %275
  %280 = phi float [ %277, %275 ], [ %267, %229 ]
  %281 = load ptr, ptr %217, align 8, !tbaa !110
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  br label %291

285:                                              ; preds = %215, %279
  %286 = phi float [ %280, %279 ], [ %216, %215 ]
  %287 = load i32, ptr %107, align 8, !tbaa !70
  %288 = and i32 %287, 6
  %289 = icmp eq i32 %288, 0
  %290 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
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
  %300 = load float, ptr %6, align 4, !tbaa !76
  %301 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  store float %300, ptr %301, align 8, !tbaa !79
  %302 = load float, ptr %97, align 8, !tbaa !91
  %303 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %304 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
  %305 = sitofp i32 %304 to float
  %306 = fmul float %303, %305
  %307 = fdiv float %306, 7.200000e+01
  %308 = call float @llvm.fmuladd.f32(float %302, float %307, float %300)
  %309 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  store float %308, ptr %309, align 4, !tbaa !81
  %310 = load float, ptr %7, align 4, !tbaa !76
  %311 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  store float %310, ptr %311, align 4, !tbaa !82
  %312 = sext i16 %298 to i32
  %313 = shl nsw i32 %312, 1
  %314 = sitofp i32 %313 to float
  %315 = fsub float %310, %314
  %316 = call fastcc float @min_ff(float noundef %299, float noundef %315) #14
  %317 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  store float %316, ptr %317, align 8, !tbaa !83
  %318 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %319 = load ptr, ptr %318, align 8, !tbaa !90
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
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !111
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
  %8 = load i32, ptr %7, align 8, !tbaa !70
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
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !112
  call void %13(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 13
  %15 = load float, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 14
  %17 = load float, ptr %16, align 4, !tbaa !87
  call fastcc void @node_circle_draw(float noundef %15, float noundef %17, float noundef %4, ptr noundef nonnull %9, i32 noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_circle_draw(float noundef %0, float noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  tail call void @glColor4fv(ptr noundef %3) #13
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glBegin(i32 noundef 9) #13
  br label %6

6:                                                ; preds = %5, %6
  %7 = phi i64 [ 0, %5 ], [ %14, %6 ]
  %8 = getelementptr inbounds [16 x float], ptr @node_circle_draw.si, i64 0, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !76
  %10 = tail call float @llvm.fmuladd.f32(float %2, float %9, float %0)
  %11 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %7
  %12 = load float, ptr %11, align 4, !tbaa !76
  %13 = tail call float @llvm.fmuladd.f32(float %2, float %12, float %1)
  tail call void @glVertex2f(float noundef %10, float noundef %13) #13
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %16, label %6, !llvm.loop !113

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
  %24 = load float, ptr %23, align 4, !tbaa !76
  %25 = tail call float @llvm.fmuladd.f32(float %2, float %24, float %0)
  %26 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %22
  %27 = load float, ptr %26, align 4, !tbaa !76
  %28 = tail call float @llvm.fmuladd.f32(float %2, float %27, float %1)
  tail call void @glVertex2f(float noundef %25, float noundef %28) #13
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %31, label %21, !llvm.loop !114

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
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !115
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = and i32 %13, 1
  tail call void @ui_dropshadow(ptr noundef nonnull %5, float noundef %2, float noundef %11, float noundef %3, i32 noundef %14) #13
  br label %28

15:                                               ; preds = %4
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD51EB860000000) #13
  tail call void @glEnable(i32 noundef 3042) #13
  %16 = load float, ptr %5, align 4, !tbaa !116
  %17 = fadd float %16, -3.000000e+00
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !117
  %20 = fadd float %19, -3.000000e+00
  %21 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !118
  %23 = fadd float %22, 3.000000e+00
  %24 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !119
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
  %7 = load ptr, ptr %6, align 8, !tbaa !120
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
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  store ptr %14, ptr %4, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %2, i64 1
  br label %18

18:                                               ; preds = %16, %26
  %19 = phi ptr [ %14, %16 ], [ %28, %26 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 40
  %21 = load float, ptr %2, align 4, !tbaa !76
  %22 = load float, ptr %17, align 4, !tbaa !76
  %23 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %20, float noundef %21, float noundef %22) #13
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %4, align 8, !tbaa !58
  br i1 %24, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  store ptr %28, ptr %4, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %18, !llvm.loop !121

30:                                               ; preds = %18
  %31 = icmp eq ptr %25, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !104
  %35 = getelementptr inbounds %struct.bNodeType, ptr %34, i64 0, i32 26
  %36 = load ptr, ptr %35, align 8, !tbaa !122
  %37 = load float, ptr %2, align 4, !tbaa !76
  %38 = fptosi float %37 to i32
  %39 = load float, ptr %17, align 4, !tbaa !76
  %40 = fptosi float %39 to i32
  %41 = call i32 %36(ptr noundef nonnull %25, i32 noundef %38, i32 noundef %40) #13
  %42 = call i32 @node_get_resize_cursor(i32 noundef %41) #14, !range !123
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
  %8 = load i32, ptr %7, align 8, !tbaa !70
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
define internal fastcc void @node_draw_hidden(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
  %6 = alloca [128 x i8], align 16
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %8 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %7) #14
  %9 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #14
  %10 = fmul float %9, 5.000000e-01
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %12 = sitofp i16 %11 to float
  %13 = fmul float %12, 2.500000e-01
  %14 = tail call i32 @node_get_colorid(ptr noundef %4) #14, !range !124
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #15
  tail call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %10, float noundef 1.000000e+00) #14
  tail call void @UI_ThemeColor(i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !70
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  tail call void @UI_ThemeColorBlend(i32 noundef %14, i32 noundef 0, float noundef 5.000000e-01) #13
  br label %20

20:                                               ; preds = %19, %5
  %21 = load float, ptr %7, align 4, !tbaa !116
  %22 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !117
  %24 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !118
  %26 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !119
  tail call void @uiRoundBox(float noundef %21, float noundef %23, float noundef %25, float noundef %27, float noundef %10) #13
  %28 = load i32, ptr %15, align 8, !tbaa !70
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %32 = load i32, ptr %15, align 8, !tbaa !70
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 28, i32 29
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef %35, i32 noundef 0, i32 noundef -40) #13
  %36 = load float, ptr %7, align 4, !tbaa !116
  %37 = load float, ptr %22, align 4, !tbaa !117
  %38 = load float, ptr %24, align 4, !tbaa !118
  %39 = load float, ptr %26, align 4, !tbaa !119
  tail call void @uiDrawBox(i32 noundef 2, float noundef %36, float noundef %37, float noundef %38, float noundef %39, float noundef %10) #13
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %40 = load i32, ptr %15, align 8, !tbaa !70
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
  %47 = load float, ptr %7, align 4, !tbaa !116
  %48 = fadd float %47, 1.000000e+00
  %49 = load float, ptr %22, align 4, !tbaa !117
  %50 = fadd float %49, 1.000000e+00
  %51 = load float, ptr %24, align 4, !tbaa !118
  %52 = fadd float %51, -1.000000e+00
  %53 = load float, ptr %26, align 4, !tbaa !119
  %54 = fadd float %53, -1.000000e+00
  tail call void @uiDrawBox(i32 noundef 2, float noundef %48, float noundef %50, float noundef %52, float noundef %54, float noundef %10) #13
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %55 = load i32, ptr %15, align 8, !tbaa !70
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
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %64 = sitofp i16 %63 to float
  %65 = fmul float %64, 0x3FE3333340000000
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %68 = load ptr, ptr %67, align 8, !tbaa !90
  tail call void @uiBlockSetEmboss(ptr noundef %68, i8 noundef zeroext 1) #13
  %69 = load ptr, ptr %67, align 8, !tbaa !90
  %70 = load float, ptr %7, align 4, !tbaa !116
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
  %80 = load ptr, ptr %67, align 8, !tbaa !90
  tail call void @uiBlockSetEmboss(ptr noundef %80, i8 noundef zeroext 0) #13
  %81 = load float, ptr %7, align 4, !tbaa !116
  %82 = fadd float %81, 1.000000e+01
  tail call void @UI_DrawTriIcon(float noundef %82, float noundef %8, i8 noundef zeroext 104) #13
  %83 = load i32, ptr %15, align 8, !tbaa !70
  %84 = and i32 %83, 512
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call fastcc void @node_draw_mute_line(ptr noundef nonnull %87, ptr noundef %2, ptr noundef nonnull %4) #14
  %88 = load i32, ptr %15, align 8, !tbaa !70
  br label %89

89:                                               ; preds = %86, %62
  %90 = phi i32 [ %88, %86 ], [ %83, %62 ]
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 3, i32 28
  tail call void @UI_ThemeColor(i32 noundef %93) #13
  %94 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 28
  %95 = load float, ptr %94, align 8, !tbaa !80
  %96 = fcmp ogt float %95, 0.000000e+00
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  call void @nodeLabel(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 128) #13
  %98 = load ptr, ptr %67, align 8, !tbaa !90
  %99 = load float, ptr %7, align 4, !tbaa !116
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
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
  %112 = load float, ptr %24, align 4, !tbaa !118
  %113 = fadd float %112, -1.000000e+01
  %114 = fadd float %8, -4.000000e+00
  %115 = fadd float %8, 4.000000e+00
  call void @fdrawline(float noundef %113, float noundef %114, float noundef %113, float noundef %115) #13
  %116 = load float, ptr %24, align 4, !tbaa !118
  %117 = fadd float %116, -1.000000e+01
  %118 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 11
  %119 = load float, ptr %118, align 4, !tbaa !115
  %120 = call float @llvm.fmuladd.f32(float %119, float -3.000000e+00, float %117)
  call void @fdrawline(float noundef %120, float noundef %114, float noundef %120, float noundef %115) #13
  call void @UI_ThemeColorShade(i32 noundef %14, i32 noundef 30) #13
  %121 = load float, ptr %118, align 4, !tbaa !115
  %122 = fsub float 1.000000e+01, %121
  %123 = load float, ptr %24, align 4, !tbaa !118
  %124 = fsub float %123, %122
  call void @fdrawline(float noundef %124, float noundef %114, float noundef %124, float noundef %115) #13
  %125 = load float, ptr %24, align 4, !tbaa !118
  %126 = fsub float %125, %122
  %127 = load float, ptr %118, align 4, !tbaa !115
  %128 = call float @llvm.fmuladd.f32(float %127, float -3.000000e+00, float %126)
  call void @fdrawline(float noundef %128, float noundef %114, float noundef %128, float noundef %115) #13
  %129 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = icmp eq ptr %130, null
  br i1 %131, label %144, label %132

132:                                              ; preds = %111, %141
  %133 = phi ptr [ %142, %141 ], [ %130, %111 ]
  %134 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %133) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.bNodeSocket, ptr %133, i64 0, i32 8
  %138 = load i16, ptr %137, align 2, !tbaa !125
  %139 = and i16 %138, 1
  %140 = zext nneg i16 %139 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %133, float noundef %13, i32 noundef %140) #14
  br label %141

141:                                              ; preds = %132, %136
  %142 = load ptr, ptr %133, align 8, !tbaa !58
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %132, !llvm.loop !126

144:                                              ; preds = %141, %111
  %145 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %146 = load ptr, ptr %145, align 8, !tbaa !58
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %144, %157
  %149 = phi ptr [ %158, %157 ], [ %146, %144 ]
  %150 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %149) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.bNodeSocket, ptr %149, i64 0, i32 8
  %154 = load i16, ptr %153, align 2, !tbaa !125
  %155 = and i16 %154, 1
  %156 = zext nneg i16 %155 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %149, float noundef %13, i32 noundef %156) #14
  br label %157

157:                                              ; preds = %148, %152
  %158 = load ptr, ptr %149, align 8, !tbaa !58
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %148, !llvm.loop !127

160:                                              ; preds = %157, %144
  %161 = load ptr, ptr %67, align 8, !tbaa !90
  call void @uiEndBlock(ptr noundef %0, ptr noundef %161) #13
  %162 = load ptr, ptr %67, align 8, !tbaa !90
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %162) #13
  store ptr null, ptr %67, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_basis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [3 x float], align 4
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.4) #13
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %13 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %14 = sitofp i16 %13 to float
  %15 = fmul float %14, 0x3FE99999A0000000
  %16 = call i32 @node_get_colorid(ptr noundef %4) #14, !range !124
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #15
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %19 = load ptr, ptr %18, align 8, !tbaa !90
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
  %27 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiEndBlock(ptr noundef %0, ptr noundef %27) #13
  br label %255

28:                                               ; preds = %22
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %30 = sitofp i16 %29 to float
  %31 = fmul float %30, 0x3FD99999A0000000
  call void @node_draw_shadow(ptr noundef %2, ptr noundef nonnull %4, float noundef %31, float noundef 1.000000e+00) #14
  %32 = icmp eq i32 %16, 93
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @UI_GetThemeColorShade3fv(i32 noundef 93, i32 noundef -20, ptr noundef nonnull %9) #13
  %34 = load float, ptr %9, align 4, !tbaa !76
  %35 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !76
  %37 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !76
  call void @glColor4f(float noundef %34, float noundef %36, float noundef %38, float noundef 1.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  br label %40

39:                                               ; preds = %28
  call void @UI_ThemeColor(i32 noundef %16) #13
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !70
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call void @UI_ThemeColorBlend(i32 noundef %16, i32 noundef 0, float noundef 5.000000e-01) #13
  br label %46

46:                                               ; preds = %45, %40
  call void @uiSetRoundBox(i32 noundef 3) #13
  %47 = load float, ptr %12, align 4, !tbaa !116
  %48 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !119
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %51 = sitofp i16 %50 to float
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !118
  %55 = fmul float %51, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %47, float noundef %52, float noundef %54, float noundef %49, float noundef %55) #13
  %56 = load float, ptr %53, align 4, !tbaa !118
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %58 = sitofp i16 %57 to float
  %59 = call float @llvm.fmuladd.f32(float %58, float 0xBFD6666660000000, float %56)
  %60 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = getelementptr inbounds %struct.bNodeType, ptr %61, i64 0, i32 15
  %63 = load i16, ptr %62, align 2, !tbaa !131
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %46
  %67 = fsub float %59, %15
  %68 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %68, i8 noundef zeroext 1) #13
  %69 = load ptr, ptr %18, align 8, !tbaa !90
  %70 = fptosi float %67 to i32
  %71 = load float, ptr %48, align 4, !tbaa !119
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %73 = sitofp i16 %72 to float
  %74 = fsub float %71, %73
  %75 = fptosi float %74 to i32
  %76 = fptosi float %15 to i16
  %77 = call ptr @uiDefIconBut(ptr noundef %69, i32 noundef 18944, i32 noundef 1, i32 noundef 79, i32 noundef %70, i32 noundef %75, i16 noundef signext %76, i16 noundef signext %72, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %77, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.5) #13
  %78 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %78, i8 noundef zeroext 0) #13
  br label %79

79:                                               ; preds = %66, %46
  %80 = phi float [ %67, %66 ], [ %59, %46 ]
  %81 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 8
  %82 = load i16, ptr %81, align 4, !tbaa !132
  %83 = icmp eq i16 %82, 2
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = fsub float %80, %15
  %86 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %86, i8 noundef zeroext 1) #13
  %87 = load ptr, ptr %18, align 8, !tbaa !90
  %88 = fptosi float %85 to i32
  %89 = load float, ptr %48, align 4, !tbaa !119
  %90 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %91 = sitofp i16 %90 to float
  %92 = fsub float %89, %91
  %93 = fptosi float %92 to i32
  %94 = fptosi float %15 to i16
  %95 = call ptr @uiDefIconBut(ptr noundef %87, i32 noundef 18944, i32 noundef 1, i32 noundef 119, i32 noundef %88, i32 noundef %93, i16 noundef signext %94, i16 noundef signext %90, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %95, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #13
  %96 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %96, i8 noundef zeroext 0) #13
  br label %97

97:                                               ; preds = %84, %79
  %98 = phi float [ %85, %84 ], [ %80, %79 ]
  %99 = load i32, ptr %41, align 8, !tbaa !70
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
  %105 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %106 = sitofp i16 %105 to float
  %107 = fmul float %106, 0x3FE3333340000000
  %108 = fptosi float %107 to i32
  %109 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %109, i8 noundef zeroext 1) #13
  %110 = load ptr, ptr %18, align 8, !tbaa !90
  %111 = load float, ptr %12, align 4, !tbaa !116
  %112 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %113 = sitofp i16 %112 to float
  %114 = call float @llvm.fmuladd.f32(float %113, float 5.000000e-01, float %111)
  %115 = sdiv i32 %108, 2
  %116 = sitofp i32 %115 to float
  %117 = fsub float %114, %116
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %48, align 4, !tbaa !119
  %120 = fmul float %113, 5.000000e-01
  %121 = fsub float %119, %120
  %122 = fsub float %121, %116
  %123 = fptosi float %122 to i32
  %124 = trunc i32 %108 to i16
  %125 = call ptr @uiDefBut(ptr noundef %110, i32 noundef 18944, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %118, i32 noundef %123, i16 noundef signext %124, i16 noundef signext %124, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #13
  call void @uiButSetFunc(ptr noundef %125, ptr noundef nonnull @node_toggle_button_cb, ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #13
  %126 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiBlockSetEmboss(ptr noundef %126, i8 noundef zeroext 0) #13
  %127 = load float, ptr %12, align 4, !tbaa !116
  %128 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %129 = sitofp i16 %128 to float
  %130 = call float @llvm.fmuladd.f32(float %129, float 5.000000e-01, float %127)
  %131 = load float, ptr %48, align 4, !tbaa !119
  %132 = fmul float %129, 5.000000e-01
  %133 = fsub float %131, %132
  call void @UI_DrawTriIcon(float noundef %130, float noundef %133, i8 noundef zeroext 118) #13
  call void @nodeLabel(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %8, i32 noundef 128) #13
  %134 = load ptr, ptr %18, align 8, !tbaa !90
  %135 = load float, ptr %12, align 4, !tbaa !116
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %137 = sitofp i16 %136 to float
  %138 = call float @llvm.fmuladd.f32(float %137, float 7.500000e-01, float %135)
  %139 = fptosi float %138 to i32
  %140 = load float, ptr %48, align 4, !tbaa !119
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
  %151 = load i32, ptr %41, align 8, !tbaa !70
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
  %158 = load float, ptr %12, align 4, !tbaa !116
  %159 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %160 = load float, ptr %159, align 4, !tbaa !117
  %161 = load float, ptr %53, align 4, !tbaa !118
  %162 = load float, ptr %48, align 4, !tbaa !119
  %163 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %164 = sitofp i16 %163 to float
  %165 = fsub float %162, %164
  %166 = fmul float %164, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %158, float noundef %160, float noundef %161, float noundef %165, float noundef %166) #13
  call void @glDisable(i32 noundef 3042) #13
  %167 = load i32, ptr %41, align 8, !tbaa !70
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %157
  call void @glEnable(i32 noundef 3042) #13
  call void @glEnable(i32 noundef 2848) #13
  %171 = load i32, ptr %41, align 8, !tbaa !70
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 28, i32 29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %174, i32 noundef 0, i32 noundef -40) #13
  call void @uiSetRoundBox(i32 noundef 15) #13
  %175 = load float, ptr %12, align 4, !tbaa !116
  %176 = load float, ptr %159, align 4, !tbaa !117
  %177 = load float, ptr %53, align 4, !tbaa !118
  %178 = load float, ptr %48, align 4, !tbaa !119
  %179 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %180 = sitofp i16 %179 to float
  %181 = fmul float %180, 0x3FD99999A0000000
  call void @uiDrawBox(i32 noundef 2, float noundef %175, float noundef %176, float noundef %177, float noundef %178, float noundef %181) #13
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  %182 = load i32, ptr %41, align 8, !tbaa !70
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
  %190 = load ptr, ptr %189, align 8, !tbaa !58
  %191 = icmp eq ptr %190, null
  br i1 %191, label %207, label %192

192:                                              ; preds = %188, %204
  %193 = phi ptr [ %205, %204 ], [ %190, %188 ]
  %194 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %193) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %198 = sitofp i16 %197 to float
  %199 = fmul float %198, 2.500000e-01
  %200 = getelementptr inbounds %struct.bNodeSocket, ptr %193, i64 0, i32 8
  %201 = load i16, ptr %200, align 2, !tbaa !125
  %202 = and i16 %201, 1
  %203 = zext nneg i16 %202 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %193, float noundef %199, i32 noundef %203) #14
  br label %204

204:                                              ; preds = %192, %196
  %205 = load ptr, ptr %193, align 8, !tbaa !58
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %192, !llvm.loop !133

207:                                              ; preds = %204, %188
  %208 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %209 = load ptr, ptr %208, align 8, !tbaa !58
  %210 = icmp eq ptr %209, null
  br i1 %210, label %226, label %211

211:                                              ; preds = %207, %223
  %212 = phi ptr [ %224, %223 ], [ %209, %207 ]
  %213 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %212) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
  %217 = sitofp i16 %216 to float
  %218 = fmul float %217, 2.500000e-01
  %219 = getelementptr inbounds %struct.bNodeSocket, ptr %212, i64 0, i32 8
  %220 = load i16, ptr %219, align 2, !tbaa !125
  %221 = and i16 %220, 1
  %222 = zext nneg i16 %221 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %212, float noundef %218, i32 noundef %222) #14
  br label %223

223:                                              ; preds = %211, %215
  %224 = load ptr, ptr %212, align 8, !tbaa !58
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %211, !llvm.loop !134

226:                                              ; preds = %223, %207
  %227 = load i32, ptr %41, align 8, !tbaa !70
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
  %237 = load i16, ptr %236, align 8, !tbaa !135
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %252, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.bNodePreview, ptr %233, i64 0, i32 3
  %241 = load i16, ptr %240, align 2, !tbaa !138
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.bNodePreview, ptr %233, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !139
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
  %253 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiEndBlock(ptr noundef %0, ptr noundef %253) #13
  %254 = load ptr, ptr %18, align 8, !tbaa !90
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %254) #13
  br label %255

255:                                              ; preds = %252, %26
  store ptr null, ptr %18, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_update_nodetree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  tail call fastcc void @node_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !140

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !141
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
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %12) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !58
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
  %22 = load i32, ptr %21, align 8, !tbaa !70
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %18) #13
  %27 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 15
  store i16 %19, ptr %27, align 2, !tbaa !142
  tail call fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %18, i32 %26) #14
  br label %28

28:                                               ; preds = %17, %25
  %29 = add i16 %19, 1
  %30 = load ptr, ptr %18, align 8, !tbaa !58
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !llvm.loop !143

32:                                               ; preds = %28, %7, %11
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !58
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
  %44 = load ptr, ptr %39, align 8, !tbaa !58
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38, !llvm.loop !144

46:                                               ; preds = %43, %32
  tail call void @glDisable(i32 noundef 2848) #13
  tail call void @glDisable(i32 noundef 3042) #13
  %47 = load ptr, ptr %8, align 8, !tbaa !58
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %46, %59
  %50 = phi ptr [ %61, %59 ], [ %47, %46 ]
  %51 = phi i16 [ %60, %59 ], [ 0, %46 ]
  %52 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !70
  %54 = and i32 %53, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %50) #13
  %58 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 15
  store i16 %51, ptr %58, align 2, !tbaa !142
  tail call fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %50, i32 %57) #14
  br label %59

59:                                               ; preds = %49, %56
  %60 = add i16 %51, 1
  %61 = load ptr, ptr %50, align 8, !tbaa !58
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %49, !llvm.loop !145

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
define internal fastcc void @node_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !146
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
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !149
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !152
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !154
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !155
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %14, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #13
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !75
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = load float, ptr %21, align 8, !tbaa !76
  %29 = fdiv float %28, %27
  store float %29, ptr %21, align 8, !tbaa !76
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !74
  %31 = fmul float %30, %25
  %32 = fdiv float %31, 7.200000e+01
  %33 = load float, ptr %22, align 4, !tbaa !76
  %34 = fdiv float %33, %32
  store float %34, ptr %22, align 4, !tbaa !76
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #13
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #13
  tail call void @glEnable(i32 noundef 3479) #13
  tail call void @snode_set_context(ptr noundef %0) #13
  %35 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 17, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !156
  %37 = icmp eq ptr %36, null
  br i1 %37, label %108, label %38

38:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %39 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_center_get(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %39) #13
  %40 = getelementptr inbounds %struct.bNodeTreePath, ptr %36, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %40, ptr noundef nonnull %3) #14
  %41 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !120
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
  %51 = load ptr, ptr %50, align 8, !tbaa !157
  %52 = icmp ne ptr %51, null
  %53 = icmp ult i32 %49, 2
  %54 = select i1 %52, i1 %53, i1 false
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %47, label %56, !llvm.loop !159

56:                                               ; preds = %47
  %57 = icmp eq i32 %49, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %56, %68
  %59 = phi i32 [ %70, %68 ], [ %49, %56 ]
  %60 = phi ptr [ %69, %68 ], [ %48, %56 ]
  %61 = getelementptr inbounds %struct.bNodeTreePath, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !160
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
  %69 = load ptr, ptr %60, align 8, !tbaa !161
  %70 = add nsw i32 %59, -1
  %71 = icmp sgt i32 %59, 1
  br i1 %71, label %58, label %72, !llvm.loop !162

72:                                               ; preds = %68, %56
  %73 = phi ptr [ %48, %56 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.bNodeTreePath, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !160
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
  %85 = load ptr, ptr %84, align 8, !tbaa !58
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %90

87:                                               ; preds = %95, %90
  %88 = load ptr, ptr %91, align 8, !tbaa !58
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90, !llvm.loop !163

90:                                               ; preds = %83, %87
  %91 = phi ptr [ %88, %87 ], [ %85, %83 ]
  %92 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = icmp eq ptr %93, null
  br i1 %94, label %87, label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %99, %95 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.LinkData, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !164
  call void @node_draw_link(ptr noundef nonnull %6, ptr noundef %5, ptr noundef %98) #13
  %99 = load ptr, ptr %96, align 8, !tbaa !58
  %100 = icmp eq ptr %99, null
  br i1 %100, label %87, label %95, !llvm.loop !166

101:                                              ; preds = %87, %83
  call void @glDisable(i32 noundef 2848) #13
  call void @glDisable(i32 noundef 3042) #13
  %102 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %103 = load i16, ptr %102, align 8, !tbaa !167
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
  %112 = load ptr, ptr %35, align 8, !tbaa !156
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %116 = load i16, ptr %115, align 8, !tbaa !167
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
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %1, align 4, !tbaa !76
  store float %3, ptr %0, align 4, !tbaa !76
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !76
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @snode_setup_v2d(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %5 = load float, ptr %2, align 4, !tbaa !76
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !76
  tail call void @UI_view2d_center_set(ptr noundef nonnull %4, float noundef %5, float noundef %7) #13
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #14
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %11 = load i16, ptr %10, align 8, !tbaa !168
  %12 = sitofp i16 %11 to float
  %13 = fdiv float %9, %12
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 11
  store float %13, ptr %14, align 4, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #1 {
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  tail call fastcc void @node_uiblocks_init(ptr noundef %0, ptr noundef %2) #14
  tail call void @node_update_nodetree(ptr noundef %0, ptr noundef %2) #14
  tail call void @node_draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i32 %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_group_overlay(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %4 = load float, ptr %3, align 8, !tbaa.struct !169
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %6 = load float, ptr %5, align 4, !tbaa.struct !170
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %8 = load float, ptr %7, align 8, !tbaa.struct !171
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %10 = load float, ptr %9, align 4, !tbaa.struct !172
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
define internal fastcc void @draw_tree_path(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #15
  call void @ED_node_tree_path_get_fixedbuf(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 256) #13
  call void @UI_ThemeColor(i32 noundef 4) #13
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !5
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
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 {
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
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !117
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !119
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !119
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !117
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
define internal void @node_toggle_button_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @node_select_single(ptr noundef %0, ptr noundef %1) #13
  %4 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %2, i16 noundef signext 0, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare void @UI_DrawTriIcon(float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_mute_line(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  tail call void @glEnable(i32 noundef 3042) #13
  tail call void @glEnable(i32 noundef 2848) #13
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void @node_draw_link_bezier(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 25, i8 noundef zeroext 0, i32 noundef 25) #13
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !173

11:                                               ; preds = %7, %3
  tail call void @glDisable(i32 noundef 3042) #13
  tail call void @glDisable(i32 noundef 2848) #13
  ret void
}

; Function Attrs: optsize
declare void @nodeLabel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !118
  %4 = load float, ptr %0, align 4, !tbaa !116
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
define internal fastcc void @node_draw_preview(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.rctf, align 4
  %4 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %1) #14
  %5 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %7 = load <2 x i16>, ptr %6, align 8, !tbaa !26
  %8 = sitofp <2 x i16> %7 to <2 x float>
  %9 = insertelement <2 x float> poison, float %4, i64 0
  %10 = insertelement <2 x float> %9, float %5, i64 1
  %11 = fdiv <2 x float> %10, %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !169
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
  %21 = load float, ptr %20, align 4, !tbaa !117
  %22 = fadd float %19, %21
  store float %22, ptr %20, align 4, !tbaa !117
  %23 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !119
  %25 = fsub float %24, %19
  store float %25, ptr %23, align 4, !tbaa !119
  %26 = load float, ptr %3, align 4, !tbaa !116
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !118
  br label %43

29:                                               ; preds = %2
  %30 = extractelement <2 x float> %8, i64 0
  %31 = fneg float %30
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %13, float %4)
  %33 = fmul float %32, 5.000000e-01
  %34 = load float, ptr %3, align 4, !tbaa !116
  %35 = fadd float %33, %34
  store float %35, ptr %3, align 4, !tbaa !116
  %36 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !118
  %38 = fsub float %37, %33
  store float %38, ptr %36, align 4, !tbaa !118
  %39 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %40 = load float, ptr %39, align 4, !tbaa !117
  %41 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  %42 = load float, ptr %41, align 4, !tbaa !119
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
  %51 = load i16, ptr %6, align 8, !tbaa !135
  %52 = sext i16 %51 to i32
  %53 = load i16, ptr %49, align 2, !tbaa !138
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  tail call void @glaDrawPixelsTex(float noundef %47, float noundef %46, i32 noundef %52, i32 noundef %54, i32 noundef 6408, i32 noundef 5121, i32 noundef 9729, ptr noundef %56) #13
  tail call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #13
  tail call void @glDisable(i32 noundef 3042) #13
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef 100) #13
  tail call void @fdrawbox(float noundef %47, float noundef %46, float noundef %45, float noundef %44) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_draw_preview_background(float noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  tail call void @glColor3ub(i8 noundef zeroext 120, i8 noundef zeroext 120, i8 noundef zeroext 120) #13
  %3 = load float, ptr %1, align 4, !tbaa !116
  %4 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !117
  %6 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !118
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !119
  tail call void @glRectf(float noundef %3, float noundef %5, float noundef %7, float noundef %9) #13
  tail call void @glColor3ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96) #13
  %10 = load float, ptr %4, align 4, !tbaa !117
  %11 = load float, ptr %8, align 4, !tbaa !119
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load float, ptr %6, align 4, !tbaa !118
  br label %15

15:                                               ; preds = %13, %41
  %16 = phi float [ %42, %41 ], [ %11, %13 ]
  %17 = phi float [ %43, %41 ], [ %14, %13 ]
  %18 = phi float [ %44, %41 ], [ %10, %13 ]
  %19 = load float, ptr %1, align 4, !tbaa !116
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
  %30 = load float, ptr %8, align 4, !tbaa !119
  %31 = fcmp ogt float %22, %30
  %32 = fsub float %30, %18
  %33 = select i1 %31, float %32, float %0
  %34 = fadd float %25, %29
  %35 = fadd float %18, %33
  tail call void @glRectf(float noundef %25, float noundef %18, float noundef %34, float noundef %35) #13
  %36 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %25)
  %37 = load float, ptr %6, align 4, !tbaa !118
  %38 = fcmp olt float %36, %37
  br i1 %38, label %23, label %39, !llvm.loop !174

39:                                               ; preds = %23
  %40 = load float, ptr %8, align 4, !tbaa !119
  br label %41

41:                                               ; preds = %39, %15
  %42 = phi float [ %40, %39 ], [ %16, %15 ]
  %43 = phi float [ %37, %39 ], [ %17, %15 ]
  %44 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %18)
  %45 = fcmp olt float %44, %42
  br i1 %45, label %15, label %46, !llvm.loop !175

46:                                               ; preds = %41
  %47 = load float, ptr %4, align 4, !tbaa !117
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi float [ %42, %46 ], [ %11, %2 ]
  %50 = phi float [ %47, %46 ], [ %10, %2 ]
  %51 = fadd float %50, %0
  %52 = fcmp olt float %51, %49
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load float, ptr %6, align 4, !tbaa !118
  br label %55

55:                                               ; preds = %53, %82
  %56 = phi float [ %83, %82 ], [ %49, %53 ]
  %57 = phi float [ %84, %82 ], [ %54, %53 ]
  %58 = phi float [ %85, %82 ], [ %51, %53 ]
  %59 = load float, ptr %1, align 4, !tbaa !116
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
  %71 = load float, ptr %8, align 4, !tbaa !119
  %72 = fcmp ogt float %63, %71
  %73 = fsub float %71, %58
  %74 = select i1 %72, float %73, float %0
  %75 = fadd float %66, %70
  %76 = fadd float %58, %74
  tail call void @glRectf(float noundef %66, float noundef %58, float noundef %75, float noundef %76) #13
  %77 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %66)
  %78 = load float, ptr %6, align 4, !tbaa !118
  %79 = fcmp olt float %77, %78
  br i1 %79, label %64, label %80, !llvm.loop !176

80:                                               ; preds = %64
  %81 = load float, ptr %8, align 4, !tbaa !119
  br label %82

82:                                               ; preds = %80, %55
  %83 = phi float [ %81, %80 ], [ %56, %55 ]
  %84 = phi float [ %78, %80 ], [ %57, %55 ]
  %85 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %58)
  %86 = fcmp olt float %85, %83
  br i1 %86, label %55, label %87, !llvm.loop !177

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
define internal fastcc void @node_uiblocks_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %2 ]
  %9 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #13
  %10 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %11 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %3, i16 noundef signext 0) #13
  %12 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 46
  store ptr %11, ptr %12, align 8, !tbaa !90
  call void @uiBlockSetHandleFunc(ptr noundef %11, ptr noundef nonnull @do_node_internal_buttons, ptr noundef nonnull %8) #13
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  call void @uiBlockSetFlag(ptr noundef %13, i32 noundef 8192) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !178

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
define internal void @do_node_internal_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 12
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !179
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8948}
!6 = !{!"UserDef", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !7, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !7, i64 8484, !7, i64 8488, !7, i64 8492, !10, i64 8496, !10, i64 8498, !7, i64 8500, !7, i64 8504, !7, i64 8508, !7, i64 8512, !7, i64 8516, !7, i64 8520, !7, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !11, i64 8536, !11, i64 8552, !11, i64 8568, !11, i64 8584, !11, i64 8600, !11, i64 8616, !11, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !7, i64 8912, !7, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !13, i64 8956, !13, i64 8960, !7, i64 8964, !10, i64 8968, !10, i64 8970, !13, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !14, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !7, i64 10896, !7, i64 10900, !13, i64 10904, !13, i64 10908, !7, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !15, i64 10928}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"ListBase", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!15 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !10, i64 24, !8, i64 26}
!16 = !{!17, !12, i64 280}
!17 = !{!"SpaceNode", !12, i64 0, !12, i64 8, !11, i64 16, !7, i64 32, !13, i64 36, !8, i64 40, !18, i64 56, !12, i64 216, !12, i64 224, !10, i64 232, !10, i64 234, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252, !8, i64 256, !11, i64 264, !12, i64 280, !12, i64 288, !8, i64 296, !7, i64 360, !7, i64 364, !10, i64 368, !10, i64 370, !10, i64 372, !10, i64 374, !11, i64 376, !12, i64 392}
!18 = !{!"View2D", !19, i64 0, !19, i64 16, !20, i64 32, !20, i64 48, !20, i64 64, !8, i64 80, !8, i64 88, !13, i64 96, !13, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !12, i64 128, !7, i64 136, !7, i64 140, !12, i64 144, !12, i64 152}
!19 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!20 = !{!"rcti", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!21 = !{!22, !7, i64 100}
!22 = !{!"bNodeTree", !23, i64 0, !12, i64 120, !12, i64 128, !8, i64 136, !12, i64 200, !12, i64 208, !8, i64 216, !11, i64 224, !11, i64 240, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !10, i64 276, !10, i64 278, !7, i64 280, !7, i64 284, !10, i64 288, !10, i64 290, !7, i64 292, !19, i64 296, !11, i64 312, !11, i64 328, !12, i64 344, !24, i64 352, !7, i64 356, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424}
!23 = !{!"ID", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !10, i64 98, !7, i64 100, !7, i64 104, !7, i64 108, !12, i64 112}
!24 = !{!"bNodeInstanceKey", !7, i64 0}
!25 = !{!22, !7, i64 256}
!26 = !{!10, !10, i64 0}
!27 = !{!28, !12, i64 768}
!28 = !{!"Material", !23, i64 0, !12, i64 120, !10, i64 128, !10, i64 130, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !29, i64 224, !30, i64 312, !13, i64 328, !13, i64 332, !13, i64 336, !13, i64 340, !13, i64 344, !13, i64 348, !13, i64 352, !10, i64 356, !10, i64 358, !10, i64 360, !8, i64 362, !8, i64 363, !13, i64 364, !13, i64 368, !10, i64 372, !10, i64 374, !13, i64 376, !13, i64 380, !13, i64 384, !13, i64 388, !10, i64 392, !10, i64 394, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !10, i64 412, !10, i64 414, !10, i64 416, !10, i64 418, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !13, i64 456, !8, i64 460, !13, i64 524, !13, i64 528, !13, i64 532, !7, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !10, i64 544, !10, i64 546, !10, i64 548, !8, i64 550, !8, i64 551, !10, i64 552, !10, i64 554, !13, i64 556, !13, i64 560, !8, i64 564, !13, i64 580, !13, i64 584, !10, i64 588, !10, i64 590, !12, i64 592, !12, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !10, i64 612, !10, i64 614, !13, i64 616, !13, i64 620, !8, i64 624, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !13, i64 800, !13, i64 804, !13, i64 808, !13, i64 812, !13, i64 816, !10, i64 820, !10, i64 822, !8, i64 824, !8, i64 836, !13, i64 848, !13, i64 852, !13, i64 856, !13, i64 860, !13, i64 864, !13, i64 868, !13, i64 872, !10, i64 876, !10, i64 878, !7, i64 880, !10, i64 884, !10, i64 886, !8, i64 888, !10, i64 904, !10, i64 906, !10, i64 908, !10, i64 910, !10, i64 912, !8, i64 914, !12, i64 920, !11, i64 928}
!29 = !{!"VolumeSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !13, i64 52, !13, i64 56, !13, i64 60, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84}
!30 = !{!"GameSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!31 = !{!32, !12, i64 512}
!32 = !{!"Lamp", !23, i64 0, !12, i64 120, !10, i64 128, !10, i64 130, !7, i64 132, !10, i64 136, !10, i64 138, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !12, i64 200, !10, i64 208, !10, i64 210, !13, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !10, i64 240, !10, i64 242, !10, i64 244, !10, i64 246, !8, i64 248, !8, i64 249, !10, i64 250, !10, i64 252, !10, i64 254, !10, i64 256, !10, i64 258, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !10, i64 276, !10, i64 278, !10, i64 280, !10, i64 282, !10, i64 284, !10, i64 286, !13, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 320, !13, i64 324, !13, i64 328, !13, i64 332, !13, i64 336, !10, i64 340, !8, i64 342, !12, i64 344, !8, i64 352, !10, i64 496, !10, i64 498, !8, i64 500, !12, i64 504, !12, i64 512}
!33 = !{!34, !12, i64 520}
!34 = !{!"World", !23, i64 0, !12, i64 120, !10, i64 128, !10, i64 130, !10, i64 132, !10, i64 134, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !10, i64 264, !10, i64 266, !10, i64 268, !10, i64 270, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !10, i64 288, !10, i64 290, !10, i64 292, !10, i64 294, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 320, !10, i64 324, !10, i64 326, !10, i64 328, !10, i64 330, !10, i64 332, !10, i64 334, !12, i64 336, !12, i64 344, !12, i64 352, !8, i64 360, !10, i64 504, !10, i64 506, !8, i64 508, !12, i64 512, !12, i64 520}
!35 = !{!36, !12, i64 248}
!36 = !{!"Scene", !23, i64 0, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !11, i64 152, !12, i64 168, !12, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !7, i64 232, !7, i64 236, !7, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !37, i64 280, !44, i64 4264, !11, i64 4296, !11, i64 4312, !12, i64 4328, !12, i64 4336, !12, i64 4344, !12, i64 4352, !12, i64 4360, !12, i64 4368, !10, i64 4376, !10, i64 4378, !7, i64 4380, !11, i64 4384, !45, i64 4400, !46, i64 4416, !49, i64 4600, !12, i64 4608, !50, i64 4616, !12, i64 4640, !51, i64 4648, !51, i64 4656, !39, i64 4664, !40, i64 4824, !52, i64 4888, !12, i64 4952}
!37 = !{!"RenderData", !38, i64 0, !12, i64 248, !12, i64 256, !41, i64 264, !42, i64 328, !7, i64 400, !7, i64 404, !7, i64 408, !13, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !10, i64 432, !10, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !7, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !7, i64 484, !7, i64 488, !10, i64 492, !10, i64 494, !7, i64 496, !7, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !7, i64 516, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !19, i64 544, !19, i64 560, !20, i64 576, !11, i64 592, !10, i64 608, !10, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !7, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !13, i64 660, !13, i64 664, !10, i64 668, !10, i64 670, !13, i64 672, !13, i64 676, !8, i64 680, !7, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !7, i64 2520, !10, i64 2524, !10, i64 2526, !13, i64 2528, !13, i64 2532, !10, i64 2536, !10, i64 2538, !13, i64 2540, !10, i64 2544, !10, i64 2546, !7, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !13, i64 2560, !13, i64 2564, !12, i64 2568, !7, i64 2576, !13, i64 2580, !8, i64 2584, !43, i64 2616, !7, i64 3976, !7, i64 3980}
!38 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !13, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !39, i64 24, !40, i64 184}
!39 = !{!"ColorManagedViewSettings", !7, i64 0, !7, i64 4, !8, i64 8, !8, i64 72, !13, i64 136, !13, i64 140, !12, i64 144, !12, i64 152}
!40 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!41 = !{!"QuicktimeCodecSettings", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48, !10, i64 50, !7, i64 52, !7, i64 56, !7, i64 60}
!42 = !{!"FFMpegCodecData", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !13, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !12, i64 64}
!43 = !{!"BakeData", !38, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !13, i64 1280, !13, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!44 = !{!"AudioData", !7, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !7, i64 16, !10, i64 20, !10, i64 22, !13, i64 24, !13, i64 28}
!45 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!46 = !{!"GameData", !45, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !47, i64 40, !10, i64 64, !10, i64 66, !13, i64 68, !48, i64 72, !13, i64 128, !13, i64 132, !7, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!47 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !13, i64 8, !13, i64 12, !12, i64 16}
!48 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !7, i64 40, !13, i64 44, !13, i64 48, !10, i64 52, !10, i64 54}
!49 = !{!"UnitSettings", !13, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!50 = !{!"PhysicsSettings", !8, i64 0, !7, i64 12, !7, i64 16, !7, i64 20}
!51 = !{!"long", !8, i64 0}
!52 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!53 = !{!54, !12, i64 336}
!54 = !{!"Tex", !23, i64 0, !12, i64 120, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !7, i64 252, !7, i64 256, !10, i64 260, !10, i64 262, !10, i64 264, !10, i64 266, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !55, i64 296, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !8, i64 408, !8, i64 409}
!55 = !{!"ImageUser", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !7, i64 36}
!56 = !{!57, !12, i64 392}
!57 = !{!"FreestyleLineStyle", !23, i64 0, !12, i64 120, !13, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !7, i64 148, !13, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !7, i64 192, !10, i64 196, !10, i64 198, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !7, i64 208, !7, i64 212, !13, i64 216, !10, i64 220, !10, i64 222, !10, i64 224, !8, i64 226, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !10, i64 240, !10, i64 242, !7, i64 244, !8, i64 248, !12, i64 392, !11, i64 400, !11, i64 416, !11, i64 432, !11, i64 448}
!58 = !{!12, !12, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!22, !12, i64 224}
!62 = !{!63, !12, i64 0}
!63 = !{!"bNode", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !8, i64 40, !8, i64 104, !7, i64 168, !10, i64 172, !10, i64 174, !10, i64 176, !10, i64 178, !10, i64 180, !10, i64 182, !10, i64 184, !10, i64 186, !8, i64 188, !11, i64 200, !11, i64 216, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !11, i64 264, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !7, i64 308, !8, i64 312, !10, i64 376, !10, i64 378, !13, i64 380, !13, i64 384, !10, i64 388, !10, i64 390, !12, i64 392, !19, i64 400, !19, i64 416, !19, i64 432, !10, i64 448, !10, i64 450, !7, i64 452, !12, i64 456}
!64 = distinct !{!64, !60}
!65 = !{i32 0, i32 2}
!66 = distinct !{!66, !60}
!67 = distinct !{!67, !60}
!68 = distinct !{!68, !60}
!69 = distinct !{!69, !60}
!70 = !{!63, !7, i64 168}
!71 = !{!63, !12, i64 232}
!72 = distinct !{!72, !60}
!73 = distinct !{!73, !60}
!74 = !{!6, !13, i64 10908}
!75 = !{!6, !7, i64 8524}
!76 = !{!13, !13, i64 0}
!77 = distinct !{!77, !60}
!78 = distinct !{!78, !60}
!79 = !{!63, !13, i64 400}
!80 = !{!63, !13, i64 296}
!81 = !{!63, !13, i64 404}
!82 = !{!63, !13, i64 412}
!83 = !{!63, !13, i64 408}
!84 = !{!85, !13, i64 248}
!85 = !{!"bNodeSocket", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !8, i64 96, !12, i64 160, !10, i64 168, !10, i64 170, !10, i64 172, !10, i64 174, !12, i64 176, !8, i64 184, !13, i64 248, !13, i64 252, !12, i64 256, !10, i64 264, !10, i64 266, !7, i64 268, !12, i64 272, !7, i64 280, !7, i64 284, !12, i64 288, !12, i64 296, !86, i64 304}
!86 = !{!"bNodeStack", !8, i64 0, !13, i64 16, !13, i64 20, !12, i64 24, !10, i64 32, !10, i64 34, !10, i64 36, !10, i64 38, !10, i64 40, !10, i64 42, !8, i64 44}
!87 = !{!85, !13, i64 252}
!88 = distinct !{!88, !60}
!89 = distinct !{!89, !60}
!90 = !{!63, !12, i64 456}
!91 = !{!63, !13, i64 288}
!92 = !{!85, !12, i64 176}
!93 = !{!94, !12, i64 64}
!94 = !{!"bNodeSocketType", !8, i64 0, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !95, i64 128, !95, i64 160, !7, i64 192, !7, i64 196}
!95 = !{!"ExtensionRNA", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!96 = !{!7, !7, i64 0}
!97 = distinct !{!97, !60}
!98 = !{!63, !13, i64 432}
!99 = !{!63, !13, i64 436}
!100 = !{!63, !10, i64 448}
!101 = !{!63, !10, i64 450}
!102 = !{!63, !13, i64 444}
!103 = !{!63, !13, i64 440}
!104 = !{!63, !12, i64 32}
!105 = !{!106, !12, i64 544}
!106 = !{!"bNodeType", !12, i64 0, !12, i64 8, !10, i64 16, !8, i64 18, !7, i64 84, !8, i64 88, !8, i64 152, !7, i64 408, !13, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !10, i64 436, !10, i64 438, !10, i64 440, !12, i64 448, !12, i64 456, !8, i64 464, !12, i64 528, !12, i64 536, !12, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !95, i64 720}
!107 = !{!63, !13, i64 416}
!108 = !{!63, !13, i64 420}
!109 = distinct !{!109, !60}
!110 = !{!63, !12, i64 200}
!111 = !{!106, !10, i64 436}
!112 = !{!94, !12, i64 72}
!113 = distinct !{!113, !60}
!114 = distinct !{!114, !60}
!115 = !{!17, !13, i64 236}
!116 = !{!19, !13, i64 0}
!117 = !{!19, !13, i64 8}
!118 = !{!19, !13, i64 4}
!119 = !{!19, !13, i64 12}
!120 = !{!17, !12, i64 288}
!121 = distinct !{!121, !60}
!122 = !{!106, !12, i64 576}
!123 = !{i32 1002, i32 1007}
!124 = !{i32 93, i32 110}
!125 = !{!85, !10, i64 170}
!126 = distinct !{!126, !60}
!127 = distinct !{!127, !60}
!128 = !{!129, !12, i64 16}
!129 = !{!"PointerRNA", !130, i64 0, !12, i64 8, !12, i64 16}
!130 = !{!"", !12, i64 0}
!131 = !{!106, !10, i64 438}
!132 = !{!63, !10, i64 172}
!133 = distinct !{!133, !60}
!134 = distinct !{!134, !60}
!135 = !{!136, !10, i64 16}
!136 = !{!"bNodePreview", !137, i64 0, !12, i64 8, !10, i64 16, !10, i64 18, !7, i64 20}
!137 = !{!"bNodeInstanceHashEntry", !24, i64 0, !10, i64 4, !10, i64 6}
!138 = !{!136, !10, i64 18}
!139 = !{!136, !12, i64 8}
!140 = distinct !{!140, !60}
!141 = !{!106, !12, i64 536}
!142 = !{!63, !10, i64 186}
!143 = distinct !{!143, !60}
!144 = distinct !{!144, !60}
!145 = distinct !{!145, !60}
!146 = !{!106, !12, i64 528}
!147 = !{!148, !12, i64 136}
!148 = !{!"wmWindow", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !8, i64 40, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !7, i64 128, !10, i64 132, !10, i64 134, !12, i64 136, !12, i64 144, !12, i64 152, !7, i64 160, !7, i64 164, !12, i64 168, !11, i64 176, !11, i64 192, !11, i64 208, !11, i64 224, !11, i64 240}
!149 = !{!150, !7, i64 20}
!150 = !{!"wmEvent", !12, i64 0, !12, i64 8, !10, i64 16, !10, i64 18, !7, i64 20, !7, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !10, i64 44, !10, i64 46, !7, i64 48, !7, i64 52, !151, i64 56, !7, i64 64, !7, i64 68, !10, i64 72, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !12, i64 88, !12, i64 96, !10, i64 104, !10, i64 106, !7, i64 108, !12, i64 112}
!151 = !{!"double", !8, i64 0}
!152 = !{!153, !7, i64 176}
!153 = !{!"ARegion", !12, i64 0, !12, i64 8, !18, i64 16, !20, i64 176, !20, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !13, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !12, i64 240, !11, i64 248, !11, i64 264, !11, i64 280, !11, i64 296, !11, i64 312, !11, i64 328, !11, i64 344, !12, i64 360, !12, i64 368, !12, i64 376}
!154 = !{!150, !7, i64 24}
!155 = !{!153, !7, i64 184}
!156 = !{!17, !12, i64 272}
!157 = !{!158, !12, i64 8}
!158 = !{!"bNodeTreePath", !12, i64 0, !12, i64 8, !12, i64 16, !24, i64 24, !7, i64 28, !8, i64 32, !8, i64 40}
!159 = distinct !{!159, !60}
!160 = !{!158, !12, i64 16}
!161 = !{!158, !12, i64 0}
!162 = distinct !{!162, !60}
!163 = distinct !{!163, !60}
!164 = !{!165, !12, i64 16}
!165 = !{!"LinkData", !12, i64 0, !12, i64 8, !12, i64 16}
!166 = distinct !{!166, !60}
!167 = !{!17, !10, i64 232}
!168 = !{!153, !10, i64 208}
!169 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76}
!170 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76}
!171 = !{i64 0, i64 4, !76, i64 4, i64 4, !76}
!172 = !{i64 0, i64 4, !76}
!173 = distinct !{!173, !60}
!174 = distinct !{!174, !60}
!175 = distinct !{!175, !60}
!176 = distinct !{!176, !60}
!177 = distinct !{!177, !60}
!178 = distinct !{!178, !60}
!179 = !{!17, !12, i64 216}
