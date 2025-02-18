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
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @ED_node_grid_size() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %2 = sitofp i16 %1 to float
  ret float %2
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tree_update(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  tail call void @snode_set_context(ptr noundef %0) #9
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

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #3

declare void @snode_set_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tag_update_id(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !54
  switch i16 %5, label %24 [
    i16 21582, label %25
    i16 16717, label %6
    i16 16716, label %9
    i16 20311, label %12
    i16 17235, label %15
    i16 17748, label %18
    i16 21324, label %21
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  br label %25

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %3
  %26 = phi ptr [ undef, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %0, %3 ]
  %27 = phi i1 [ true, %24 ], [ false, %21 ], [ false, %18 ], [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %6 ], [ false, %3 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %1
  br label %29

29:                                               ; preds = %25, %28
  %30 = phi ptr [ %26, %25 ], [ null, %28 ]
  %31 = icmp eq ptr %30, null
  %32 = select i1 %2, i1 true, i1 %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %30, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !86
  switch i32 %35, label %44 [
    i32 0, label %36
    i32 1, label %42
    i32 2, label %43
  ]

36:                                               ; preds = %33
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #9
  %37 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !54
  switch i16 %38, label %47 [
    i16 16717, label %39
    i16 16716, label %40
    i16 20311, label %41
  ]

39:                                               ; preds = %36
  tail call void @WM_main_add_notifier(i32 noundef 102629376, ptr noundef %0) #9
  br label %47

40:                                               ; preds = %36
  tail call void @WM_main_add_notifier(i32 noundef 136839168, ptr noundef %0) #9
  br label %47

41:                                               ; preds = %36
  tail call void @WM_main_add_notifier(i32 noundef 224133120, ptr noundef %0) #9
  br label %47

42:                                               ; preds = %33
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef %0) #9
  br label %47

43:                                               ; preds = %33
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #9
  tail call void @WM_main_add_notifier(i32 noundef 117768192, ptr noundef %0) #9
  br label %47

44:                                               ; preds = %33
  %45 = icmp eq ptr %30, %0
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #9
  br label %47

47:                                               ; preds = %40, %41, %39, %43, %46, %44, %42, %36, %29
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %0) #9
  %8 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %7, %18
  %11 = load ptr, ptr %4, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = call zeroext i8 @ntreeHasTree(ptr noundef nonnull %11, ptr noundef nonnull %1) #9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !tbaa !87
  call void @ED_node_tag_update_id(ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %16, %10
  %19 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %10, label %21, !llvm.loop !88

21:                                               ; preds = %18, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !86
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @ntreeTexCheckCyclics(ptr noundef nonnull %1) #9
  br label %26

26:                                               ; preds = %2, %25, %21
  ret void
}

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ntreeHasTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ntreeTexCheckCyclics(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_sort(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #9
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %143

5:                                                ; preds = %1, %140
  %6 = phi i32 [ %141, %140 ], [ 1, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !91
  %8 = icmp sgt i32 %6, 0
  %9 = icmp sgt i32 %6, 0
  br label %10

10:                                               ; preds = %137, %5
  %11 = phi ptr [ %7, %5 ], [ %138, %137 ]
  %12 = icmp ne ptr %11, null
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %16 = phi ptr [ %17, %14 ], [ %11, %10 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp slt i32 %18, %6
  %20 = icmp ne ptr %17, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %14, label %22, !llvm.loop !94

22:                                               ; preds = %14, %10
  %23 = phi ptr [ %11, %10 ], [ %17, %14 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %140, label %25

25:                                               ; preds = %22
  br i1 %9, label %26, label %123

26:                                               ; preds = %25, %117
  %27 = phi i32 [ %121, %117 ], [ 0, %25 ]
  %28 = phi i32 [ %120, %117 ], [ 0, %25 ]
  %29 = phi ptr [ %119, %117 ], [ %23, %25 ]
  %30 = phi ptr [ %118, %117 ], [ %11, %25 ]
  %31 = icmp slt i32 %27, %6
  %32 = icmp ne ptr %29, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %123

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !95
  %37 = and i32 %36, 1
  %38 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !95
  %40 = and i32 %39, 1
  %41 = and i32 %36, 16
  %42 = and i32 %39, 16
  %43 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !96
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %57, %34
  %47 = phi i32 [ %37, %34 ], [ %65, %57 ]
  %48 = phi i32 [ %41, %34 ], [ %62, %57 ]
  %49 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %69

52:                                               ; preds = %34, %57
  %53 = phi ptr [ %67, %57 ], [ %44, %34 ]
  %54 = phi i32 [ %62, %57 ], [ %41, %34 ]
  %55 = phi i32 [ %65, %57 ], [ %37, %34 ]
  %56 = icmp eq ptr %53, %29
  br i1 %56, label %108, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !95
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %54, i32 1
  %63 = and i32 %59, 1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %55, i32 1
  %66 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = icmp eq ptr %67, null
  br i1 %68, label %46, label %52, !llvm.loop !97

69:                                               ; preds = %46, %74
  %70 = phi ptr [ %84, %74 ], [ %50, %46 ]
  %71 = phi i32 [ %79, %74 ], [ %42, %46 ]
  %72 = phi i32 [ %82, %74 ], [ %40, %46 ]
  %73 = icmp eq ptr %70, %30
  br i1 %73, label %108, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 7
  %76 = load i32, ptr %75, align 8, !tbaa !95
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 %71, i32 1
  %80 = and i32 %76, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %72, i32 1
  %83 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 19
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %69, !llvm.loop !98

86:                                               ; preds = %74, %46
  %87 = phi i32 [ %40, %46 ], [ %82, %74 ]
  %88 = phi i32 [ %42, %46 ], [ %79, %74 ]
  %89 = and i32 %36, 4096
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %39, 4096
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %108, label %94

94:                                               ; preds = %86
  %95 = and i32 %39, 4096
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %90, i1 true, i1 %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = icmp eq i32 %88, 0
  %100 = icmp ne i32 %48, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = icmp eq i32 %87, 0
  %104 = icmp ne i32 %47, 0
  %105 = select i1 %100, i1 true, i1 %104
  %106 = select i1 %103, i1 %105, i1 false
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %52, %69, %94, %86, %98, %102
  %109 = phi i32 [ 1, %98 ], [ %107, %102 ], [ 0, %86 ], [ 1, %94 ], [ 0, %69 ], [ 1, %52 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load ptr, ptr %30, align 8, !tbaa !92
  %113 = add nsw i32 %28, 1
  br label %117

114:                                              ; preds = %108
  %115 = load ptr, ptr %29, align 8, !tbaa !92
  %116 = add nsw i32 %27, 1
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef nonnull %29) #9
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %2, ptr noundef %30, ptr noundef nonnull %29) #9
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi ptr [ %112, %111 ], [ %30, %114 ]
  %119 = phi ptr [ %29, %111 ], [ %115, %114 ]
  %120 = phi i32 [ %113, %111 ], [ %28, %114 ]
  %121 = phi i32 [ %27, %111 ], [ %116, %114 ]
  %122 = icmp slt i32 %120, %6
  br i1 %122, label %26, label %123, !llvm.loop !99

123:                                              ; preds = %117, %26, %25
  %124 = phi ptr [ %23, %25 ], [ %119, %117 ], [ %29, %26 ]
  %125 = phi i32 [ 0, %25 ], [ %121, %117 ], [ %27, %26 ]
  %126 = icmp sge i32 %125, %6
  %127 = icmp eq ptr %124, null
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %137, label %129

129:                                              ; preds = %123, %129
  %130 = phi i32 [ %133, %129 ], [ %125, %123 ]
  %131 = phi ptr [ %132, %129 ], [ %124, %123 ]
  %132 = load ptr, ptr %131, align 8, !tbaa !92
  %133 = add nsw i32 %130, 1
  %134 = icmp sge i32 %133, %6
  %135 = icmp eq ptr %132, null
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %137, label %129, !llvm.loop !100

137:                                              ; preds = %129, %123
  %138 = phi ptr [ %124, %123 ], [ %132, %129 ]
  %139 = phi i1 [ %127, %123 ], [ %135, %129 ]
  br i1 %139, label %140, label %10, !llvm.loop !101

140:                                              ; preds = %22, %137
  %141 = shl i32 %6, 1
  %142 = icmp slt i32 %141, %3
  br i1 %142, label %5, label %143, !llvm.loop !102

143:                                              ; preds = %140, %1
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_to_view(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  tail call void @nodeToView(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) #9
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = load float, ptr %3, align 4, !tbaa !105
  %12 = fmul float %11, %10
  store float %12, ptr %3, align 4, !tbaa !105
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %14 = fmul float %13, %8
  %15 = fdiv float %14, 7.200000e+01
  %16 = load float, ptr %4, align 4, !tbaa !105
  %17 = fmul float %16, %15
  store float %17, ptr %4, align 4, !tbaa !105
  ret void
}

declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_from_view(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fdiv float %1, %10
  %12 = fdiv float %2, %10
  tail call void @nodeFromView(ptr noundef %0, float noundef %11, float noundef %12, ptr noundef %3, ptr noundef %4) #9
  ret void
}

declare void @nodeFromView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_update_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !95
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %145, label %15

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %17 = sitofp i16 %16 to float
  %18 = fmul float %17, 7.500000e-01
  call void @nodeToView(ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %19 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %21 = sitofp i32 %20 to float
  %22 = fmul float %19, %21
  %23 = fdiv float %22, 7.200000e+01
  %24 = load float, ptr %9, align 4, !tbaa !105
  %25 = fmul float %24, %23
  store float %25, ptr %9, align 4, !tbaa !105
  %26 = load float, ptr %10, align 4, !tbaa !105
  %27 = fmul float %26, %23
  store float %27, ptr %10, align 4, !tbaa !105
  %28 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %15, %31
  %32 = phi ptr [ %38, %31 ], [ %29, %15 ]
  %33 = phi i32 [ %37, %31 ], [ 0, %15 ]
  %34 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %32) #9
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %33, %36
  %38 = load ptr, ptr %32, align 8, !tbaa !87
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %31, !llvm.loop !106

40:                                               ; preds = %31, %15
  %41 = phi i32 [ 0, %15 ], [ %37, %31 ]
  %42 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !87
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %40, %45
  %46 = phi ptr [ %52, %45 ], [ %43, %40 ]
  %47 = phi i32 [ %51, %45 ], [ 0, %40 ]
  %48 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %46) #9
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = add nuw nsw i32 %47, %50
  %52 = load ptr, ptr %46, align 8, !tbaa !87
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %45, !llvm.loop !107

54:                                               ; preds = %45, %40
  %55 = phi i32 [ 0, %40 ], [ %51, %45 ]
  %56 = call i32 @llvm.smax.i32(i32 %41, i32 %55)
  %57 = icmp ugt i32 %56, 4
  %58 = add nsw i32 %56, -4
  %59 = sitofp i32 %58 to float
  %60 = call float @llvm.fmuladd.f32(float %59, float 5.000000e+00, float %18)
  %61 = select i1 %57, float %60, float %18
  %62 = load float, ptr %9, align 4, !tbaa !105
  %63 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  store float %62, ptr %63, align 8, !tbaa !108
  %64 = call float @llvm.fmuladd.f32(float %61, float 3.000000e+00, float %62)
  %65 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 28
  %66 = load float, ptr %65, align 8, !tbaa !109
  %67 = fadd float %64, %66
  %68 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  store float %67, ptr %68, align 4, !tbaa !110
  %69 = load float, ptr %10, align 4, !tbaa !105
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %71 = sitofp i16 %70 to float
  %72 = call float @llvm.fmuladd.f32(float %71, float -5.000000e-01, float %61)
  %73 = fadd float %69, %72
  %74 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  store float %73, ptr %74, align 4, !tbaa !111
  %75 = call float @llvm.fmuladd.f32(float %61, float -2.000000e+00, float %73)
  %76 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  store float %75, ptr %76, align 8, !tbaa !112
  %77 = sitofp i32 %55 to float
  %78 = fadd float %77, 1.000000e+00
  %79 = fdiv float 0x400921FB60000000, %78
  %80 = load ptr, ptr %42, align 8, !tbaa !87
  %81 = icmp eq ptr %80, null
  br i1 %81, label %103, label %82

82:                                               ; preds = %54, %99
  %83 = phi ptr [ %101, %99 ], [ %80, %54 ]
  %84 = phi float [ %100, %99 ], [ %79, %54 ]
  %85 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %83) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load float, ptr %68, align 4, !tbaa !110
  %89 = fsub float %88, %61
  %90 = call float @sinf(float noundef %84) #9
  %91 = call float @llvm.fmuladd.f32(float %90, float %61, float %89)
  %92 = getelementptr inbounds %struct.bNodeSocket, ptr %83, i64 0, i32 13
  store float %91, ptr %92, align 8, !tbaa !113
  %93 = load float, ptr %76, align 8, !tbaa !112
  %94 = fadd float %61, %93
  %95 = call float @cosf(float noundef %84) #9
  %96 = call float @llvm.fmuladd.f32(float %95, float %61, float %94)
  %97 = getelementptr inbounds %struct.bNodeSocket, ptr %83, i64 0, i32 14
  store float %96, ptr %97, align 4, !tbaa !116
  %98 = fadd float %79, %84
  br label %99

99:                                               ; preds = %87, %82
  %100 = phi float [ %84, %82 ], [ %98, %87 ]
  %101 = load ptr, ptr %83, align 8, !tbaa !87
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %82, !llvm.loop !117

103:                                              ; preds = %99, %54
  %104 = sitofp i32 %41 to float
  %105 = fadd float %104, 1.000000e+00
  %106 = fdiv float 0xC00921FB60000000, %105
  %107 = load ptr, ptr %28, align 8, !tbaa !87
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %103, %126
  %110 = phi ptr [ %128, %126 ], [ %107, %103 ]
  %111 = phi float [ %127, %126 ], [ %106, %103 ]
  %112 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %110) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load float, ptr %63, align 8, !tbaa !108
  %116 = fadd float %61, %115
  %117 = call float @sinf(float noundef %111) #9
  %118 = call float @llvm.fmuladd.f32(float %117, float %61, float %116)
  %119 = getelementptr inbounds %struct.bNodeSocket, ptr %110, i64 0, i32 13
  store float %118, ptr %119, align 8, !tbaa !113
  %120 = load float, ptr %76, align 8, !tbaa !112
  %121 = fadd float %61, %120
  %122 = call float @cosf(float noundef %111) #9
  %123 = call float @llvm.fmuladd.f32(float %122, float %61, float %121)
  %124 = getelementptr inbounds %struct.bNodeSocket, ptr %110, i64 0, i32 14
  store float %123, ptr %124, align 4, !tbaa !116
  %125 = fadd float %106, %111
  br label %126

126:                                              ; preds = %114, %109
  %127 = phi float [ %111, %109 ], [ %125, %114 ]
  %128 = load ptr, ptr %110, align 8, !tbaa !87
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %109, !llvm.loop !118

130:                                              ; preds = %126, %103
  %131 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %132 = load ptr, ptr %131, align 8, !tbaa !119
  %133 = load float, ptr %63, align 8, !tbaa !108
  %134 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %135 = sitofp i16 %134 to float
  %136 = call float @llvm.fmuladd.f32(float %135, float -2.500000e-01, float %133)
  %137 = fptosi float %136 to i32
  %138 = load float, ptr %76, align 8, !tbaa !112
  %139 = fptosi float %138 to i32
  %140 = load float, ptr %68, align 4, !tbaa !110
  %141 = call float @llvm.fmuladd.f32(float %135, float 2.500000e-01, float %140)
  %142 = fptosi float %141 to i32
  %143 = load float, ptr %74, align 4, !tbaa !111
  %144 = fptosi float %143 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %132, i32 noundef %137, i32 noundef %139, i32 noundef %142, i32 noundef %144) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %451

145:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %2, ptr noundef nonnull %4) #9
  call void @nodeToView(ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %146 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %147 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %148 = sitofp i32 %147 to float
  %149 = fmul float %146, %148
  %150 = fdiv float %149, 7.200000e+01
  %151 = load float, ptr %6, align 4, !tbaa !105
  %152 = fmul float %151, %150
  store float %152, ptr %6, align 4, !tbaa !105
  %153 = load float, ptr %7, align 4, !tbaa !105
  %154 = fmul float %153, %150
  store float %154, ptr %7, align 4, !tbaa !105
  %155 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %156 = sitofp i16 %155 to float
  %157 = fsub float %154, %156
  %158 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 18
  %159 = load ptr, ptr %158, align 8, !tbaa !120
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %145
  %162 = sdiv i16 %155, 4
  %163 = sitofp i16 %162 to float
  %164 = fsub float %157, %163
  br label %165

165:                                              ; preds = %161, %145
  %166 = phi float [ %164, %161 ], [ %157, %145 ]
  %167 = load ptr, ptr %158, align 8, !tbaa !87
  %168 = icmp eq ptr %167, null
  br i1 %168, label %234, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %171 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  br label %172

172:                                              ; preds = %169, %230
  %173 = phi ptr [ %167, %169 ], [ %232, %230 ]
  %174 = phi float [ %166, %169 ], [ %231, %230 ]
  %175 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %173) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %230

177:                                              ; preds = %172
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %173, ptr noundef nonnull %5) #9
  %178 = load ptr, ptr %170, align 8, !tbaa !119
  %179 = load float, ptr %6, align 4, !tbaa !105
  %180 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %181 = sext i16 %180 to i32
  %182 = sdiv i32 %181, 2
  %183 = sitofp i32 %182 to float
  %184 = fadd float %179, %183
  %185 = fptosi float %184 to i32
  %186 = fptosi float %174 to i32
  %187 = load float, ptr %171, align 8, !tbaa !121
  %188 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %189 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %190 = sitofp i32 %189 to float
  %191 = fmul float %188, %190
  %192 = fdiv float %191, 7.200000e+01
  %193 = sitofp i16 %180 to float
  %194 = fneg float %193
  %195 = call float @llvm.fmuladd.f32(float %187, float %192, float %194)
  %196 = fptosi float %195 to i32
  %197 = call ptr @UI_GetStyle() #9
  %198 = call ptr @uiBlockLayout(ptr noundef %178, i32 noundef 1, i32 noundef 0, i32 noundef %185, i32 noundef %186, i32 noundef %196, i32 noundef %181, i32 noundef 0, ptr noundef %197) #9
  call void @uiLayoutSetContextPointer(ptr noundef %198, ptr noundef nonnull @.str, ptr noundef nonnull %4) #9
  call void @uiLayoutSetContextPointer(ptr noundef %198, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #9
  %199 = call ptr @uiLayoutRow(ptr noundef %198, i32 noundef 1) #9
  call void @uiLayoutSetAlignment(ptr noundef %199, i8 noundef zeroext 3) #9
  %200 = getelementptr inbounds %struct.bNodeSocket, ptr %173, i64 0, i32 11
  %201 = load ptr, ptr %200, align 8, !tbaa !122
  %202 = getelementptr inbounds %struct.bNodeSocketType, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !123
  %204 = getelementptr inbounds %struct.bNodeSocket, ptr %173, i64 0, i32 5
  call void %203(ptr noundef %0, ptr noundef %199, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %204) #9
  %205 = load ptr, ptr %170, align 8, !tbaa !119
  call void @uiBlockEndAlign(ptr noundef %205) #9
  %206 = load ptr, ptr %170, align 8, !tbaa !119
  call void @uiBlockLayoutResolve(ptr noundef %206, ptr noundef null, ptr noundef nonnull %8) #9
  %207 = load i32, ptr %8, align 4, !tbaa !126
  %208 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %209 = sitofp i16 %208 to float
  %210 = fsub float %174, %209
  %211 = fptosi float %210 to i32
  %212 = call i32 @llvm.smin.i32(i32 %207, i32 %211)
  store i32 %212, ptr %8, align 4, !tbaa !126
  %213 = load float, ptr %6, align 4, !tbaa !105
  %214 = load float, ptr %171, align 8, !tbaa !121
  %215 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %216 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %217 = sitofp i32 %216 to float
  %218 = fmul float %215, %217
  %219 = fdiv float %218, 7.200000e+01
  %220 = call float @llvm.fmuladd.f32(float %214, float %219, float %213)
  %221 = getelementptr inbounds %struct.bNodeSocket, ptr %173, i64 0, i32 13
  store float %220, ptr %221, align 8, !tbaa !113
  %222 = sitofp i32 %212 to float
  %223 = fadd float %174, %222
  %224 = fmul float %223, 5.000000e-01
  %225 = getelementptr inbounds %struct.bNodeSocket, ptr %173, i64 0, i32 14
  store float %224, ptr %225, align 4, !tbaa !116
  %226 = load ptr, ptr %173, align 8, !tbaa !127
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %177
  %229 = call float @llvm.fmuladd.f32(float %209, float 0xBFB47AE140000000, float %222)
  br label %230

230:                                              ; preds = %228, %177, %172
  %231 = phi float [ %174, %172 ], [ %229, %228 ], [ %222, %177 ]
  %232 = load ptr, ptr %173, align 8, !tbaa !87
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %172, !llvm.loop !128

234:                                              ; preds = %230, %165
  %235 = phi float [ %166, %165 ], [ %231, %230 ]
  %236 = load float, ptr %6, align 4, !tbaa !105
  %237 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %238 = sdiv i16 %237, 2
  %239 = sitofp i16 %238 to float
  %240 = fadd float %236, %239
  %241 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42
  store float %240, ptr %241, align 8, !tbaa !129
  %242 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %243 = load float, ptr %242, align 8, !tbaa !121
  %244 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %245 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %246 = sitofp i32 %245 to float
  %247 = fmul float %244, %246
  %248 = fdiv float %247, 7.200000e+01
  %249 = call float @llvm.fmuladd.f32(float %243, float %248, float %236)
  %250 = fsub float %249, %239
  %251 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 1
  store float %250, ptr %251, align 4, !tbaa !130
  %252 = load i32, ptr %11, align 8, !tbaa !95
  %253 = and i32 %252, 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %304, label %255

255:                                              ; preds = %234
  %256 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 43
  %257 = load i16, ptr %256, align 8, !tbaa !131
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 44
  %261 = load i16, ptr %260, align 2, !tbaa !132
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = sitofp i16 %261 to float
  %265 = sitofp i16 %257 to float
  %266 = fdiv float %264, %265
  br label %267

267:                                              ; preds = %263, %259, %255
  %268 = phi float [ %266, %263 ], [ 1.000000e+00, %259 ], [ 1.000000e+00, %255 ]
  %269 = sdiv i16 %237, 4
  %270 = sitofp i16 %269 to float
  %271 = fsub float %235, %270
  %272 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 3
  store float %271, ptr %272, align 4, !tbaa !133
  %273 = fcmp ugt float %268, 1.000000e+00
  br i1 %273, label %281, label %274

274:                                              ; preds = %267
  %275 = sitofp i16 %237 to float
  %276 = fneg float %275
  %277 = call float @llvm.fmuladd.f32(float %243, float %248, float %276)
  %278 = fneg float %268
  %279 = call float @llvm.fmuladd.f32(float %278, float %277, float %271)
  %280 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  store float %279, ptr %280, align 8, !tbaa !134
  br label %293

281:                                              ; preds = %267
  %282 = fneg float %239
  %283 = call float @llvm.fmuladd.f32(float %243, float %248, float %282)
  %284 = fdiv float %283, %268
  %285 = fsub float %283, %284
  %286 = sitofp i16 %237 to float
  %287 = fneg float %286
  %288 = call float @llvm.fmuladd.f32(float %243, float %248, float %287)
  %289 = fsub float %271, %288
  %290 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  store float %289, ptr %290, align 8, !tbaa !134
  %291 = call float @llvm.fmuladd.f32(float %285, float 5.000000e-01, float %240)
  store float %291, ptr %241, align 8, !tbaa !129
  %292 = call float @llvm.fmuladd.f32(float %285, float -5.000000e-01, float %250)
  store float %292, ptr %251, align 4, !tbaa !130
  br label %293

293:                                              ; preds = %281, %274
  %294 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 42, i32 2
  %295 = load float, ptr %294, align 8, !tbaa !134
  %296 = fsub float %295, %270
  %297 = load float, ptr %251, align 4, !tbaa !130
  %298 = load float, ptr %241, align 8, !tbaa !129
  %299 = fcmp olt float %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  store float %298, ptr %251, align 4, !tbaa !130
  store float %297, ptr %241, align 8, !tbaa !129
  br label %301

301:                                              ; preds = %300, %293
  %302 = fcmp olt float %271, %295
  br i1 %302, label %303, label %304

303:                                              ; preds = %301
  store float %295, ptr %272, align 4, !tbaa !133
  store float %271, ptr %294, align 8, !tbaa !134
  br label %304

304:                                              ; preds = %303, %301, %234
  %305 = phi float [ %235, %234 ], [ %296, %303 ], [ %296, %301 ]
  %306 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %307 = load ptr, ptr %306, align 8, !tbaa !135
  %308 = getelementptr inbounds %struct.bNodeType, ptr %307, i64 0, i32 22
  %309 = load ptr, ptr %308, align 8, !tbaa !136
  %310 = icmp eq ptr %309, null
  %311 = and i32 %252, 2
  %312 = icmp eq i32 %311, 0
  %313 = or i1 %312, %310
  br i1 %313, label %345, label %314

314:                                              ; preds = %304
  %315 = sdiv i16 %237, 4
  %316 = sitofp i16 %315 to float
  %317 = fsub float %305, %316
  %318 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41
  store float 0.000000e+00, ptr %318, align 8, !tbaa !138
  %319 = sext i16 %238 to i32
  %320 = shl nsw i32 %319, 1
  %321 = sitofp i32 %320 to float
  %322 = fneg float %321
  %323 = call float @llvm.fmuladd.f32(float %243, float %248, float %322)
  %324 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 1
  store float %323, ptr %324, align 4, !tbaa !139
  %325 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 2
  store float 0.000000e+00, ptr %325, align 8, !tbaa !140
  %326 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 41, i32 3
  store float 0.000000e+00, ptr %326, align 4, !tbaa !141
  %327 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %328 = load ptr, ptr %327, align 8, !tbaa !119
  %329 = fptosi float %240 to i32
  %330 = fptosi float %317 to i32
  %331 = fptosi float %323 to i32
  %332 = call ptr @UI_GetStyle() #9
  %333 = call ptr @uiBlockLayout(ptr noundef %328, i32 noundef 1, i32 noundef 0, i32 noundef %329, i32 noundef %330, i32 noundef %331, i32 noundef 0, i32 noundef 0, ptr noundef %332) #9
  call void @uiLayoutSetContextPointer(ptr noundef %333, ptr noundef nonnull @.str, ptr noundef nonnull %4) #9
  %334 = load ptr, ptr %306, align 8, !tbaa !135
  %335 = getelementptr inbounds %struct.bNodeType, ptr %334, i64 0, i32 22
  %336 = load ptr, ptr %335, align 8, !tbaa !136
  call void %336(ptr noundef %333, ptr noundef %0, ptr noundef nonnull %4) #9
  %337 = load ptr, ptr %327, align 8, !tbaa !119
  call void @uiBlockEndAlign(ptr noundef %337) #9
  %338 = load ptr, ptr %327, align 8, !tbaa !119
  call void @uiBlockLayoutResolve(ptr noundef %338, ptr noundef null, ptr noundef nonnull %8) #9
  %339 = load i32, ptr %8, align 4, !tbaa !126
  %340 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %341 = sdiv i16 %340, 4
  %342 = sext i16 %341 to i32
  %343 = sub nsw i32 %339, %342
  %344 = sitofp i32 %343 to float
  br label %345

345:                                              ; preds = %314, %304
  %346 = phi float [ %344, %314 ], [ %305, %304 ]
  %347 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %348 = load ptr, ptr %347, align 8, !tbaa !87
  %349 = icmp eq ptr %348, null
  br i1 %349, label %407, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  br label %352

352:                                              ; preds = %350, %403
  %353 = phi ptr [ %348, %350 ], [ %405, %403 ]
  %354 = phi float [ %346, %350 ], [ %404, %403 ]
  %355 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %353) #9
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %403

357:                                              ; preds = %352
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef nonnull %353, ptr noundef nonnull %5) #9
  %358 = load ptr, ptr %351, align 8, !tbaa !119
  %359 = load float, ptr %6, align 4, !tbaa !105
  %360 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %361 = sext i16 %360 to i32
  %362 = sdiv i32 %361, 2
  %363 = sitofp i32 %362 to float
  %364 = fadd float %359, %363
  %365 = fptosi float %364 to i32
  %366 = fptosi float %354 to i32
  %367 = load float, ptr %242, align 8, !tbaa !121
  %368 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %369 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %370 = sitofp i32 %369 to float
  %371 = fmul float %368, %370
  %372 = fdiv float %371, 7.200000e+01
  %373 = sitofp i16 %360 to float
  %374 = fneg float %373
  %375 = call float @llvm.fmuladd.f32(float %367, float %372, float %374)
  %376 = fptosi float %375 to i32
  %377 = call ptr @UI_GetStyle() #9
  %378 = call ptr @uiBlockLayout(ptr noundef %358, i32 noundef 1, i32 noundef 0, i32 noundef %365, i32 noundef %366, i32 noundef %376, i32 noundef %361, i32 noundef 0, ptr noundef %377) #9
  call void @uiLayoutSetContextPointer(ptr noundef %378, ptr noundef nonnull @.str, ptr noundef nonnull %4) #9
  call void @uiLayoutSetContextPointer(ptr noundef %378, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #9
  %379 = call ptr @uiLayoutRow(ptr noundef %378, i32 noundef 1) #9
  %380 = getelementptr inbounds %struct.bNodeSocket, ptr %353, i64 0, i32 11
  %381 = load ptr, ptr %380, align 8, !tbaa !122
  %382 = getelementptr inbounds %struct.bNodeSocketType, ptr %381, i64 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !123
  %384 = getelementptr inbounds %struct.bNodeSocket, ptr %353, i64 0, i32 5
  call void %383(ptr noundef %0, ptr noundef %379, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %384) #9
  %385 = load ptr, ptr %351, align 8, !tbaa !119
  call void @uiBlockEndAlign(ptr noundef %385) #9
  %386 = load ptr, ptr %351, align 8, !tbaa !119
  call void @uiBlockLayoutResolve(ptr noundef %386, ptr noundef null, ptr noundef nonnull %8) #9
  %387 = load i32, ptr %8, align 4, !tbaa !126
  %388 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %389 = sitofp i16 %388 to float
  %390 = fsub float %354, %389
  %391 = fptosi float %390 to i32
  %392 = call i32 @llvm.smin.i32(i32 %387, i32 %391)
  store i32 %392, ptr %8, align 4, !tbaa !126
  %393 = load float, ptr %6, align 4, !tbaa !105
  %394 = getelementptr inbounds %struct.bNodeSocket, ptr %353, i64 0, i32 13
  store float %393, ptr %394, align 8, !tbaa !113
  %395 = sitofp i32 %392 to float
  %396 = fadd float %354, %395
  %397 = fmul float %396, 5.000000e-01
  %398 = getelementptr inbounds %struct.bNodeSocket, ptr %353, i64 0, i32 14
  store float %397, ptr %398, align 4, !tbaa !116
  %399 = load ptr, ptr %353, align 8, !tbaa !127
  %400 = icmp eq ptr %399, null
  br i1 %400, label %403, label %401

401:                                              ; preds = %357
  %402 = call float @llvm.fmuladd.f32(float %389, float 0xBFB47AE140000000, float %395)
  br label %403

403:                                              ; preds = %401, %357, %352
  %404 = phi float [ %354, %352 ], [ %402, %401 ], [ %395, %357 ]
  %405 = load ptr, ptr %353, align 8, !tbaa !87
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %352, !llvm.loop !142

407:                                              ; preds = %403, %345
  %408 = phi float [ %346, %345 ], [ %404, %403 ]
  %409 = load ptr, ptr %347, align 8, !tbaa !143
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %415

411:                                              ; preds = %407
  %412 = load i32, ptr %11, align 8, !tbaa !95
  %413 = and i32 %412, 6
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %411, %407
  %416 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %417 = sdiv i16 %416, 4
  %418 = sitofp i16 %417 to float
  %419 = fsub float %408, %418
  br label %420

420:                                              ; preds = %411, %415
  %421 = phi float [ %419, %415 ], [ %408, %411 ]
  %422 = load float, ptr %6, align 4, !tbaa !105
  %423 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40
  store float %422, ptr %423, align 8, !tbaa !108
  %424 = load float, ptr %242, align 8, !tbaa !121
  %425 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %426 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %427 = sitofp i32 %426 to float
  %428 = fmul float %425, %427
  %429 = fdiv float %428, 7.200000e+01
  %430 = call float @llvm.fmuladd.f32(float %424, float %429, float %422)
  %431 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 1
  store float %430, ptr %431, align 4, !tbaa !110
  %432 = load float, ptr %7, align 4, !tbaa !105
  %433 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 3
  store float %432, ptr %433, align 4, !tbaa !111
  %434 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %435 = sext i16 %434 to i32
  %436 = shl nsw i32 %435, 1
  %437 = sitofp i32 %436 to float
  %438 = fsub float %432, %437
  %439 = fcmp olt float %421, %438
  %440 = select i1 %439, float %421, float %438
  %441 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 40, i32 2
  store float %440, ptr %441, align 8, !tbaa !112
  %442 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 46
  %443 = load ptr, ptr %442, align 8, !tbaa !119
  %444 = sitofp i16 %434 to float
  %445 = call float @llvm.fmuladd.f32(float %444, float -2.500000e-01, float %422)
  %446 = fptosi float %445 to i32
  %447 = fptosi float %440 to i32
  %448 = call float @llvm.fmuladd.f32(float %444, float 2.500000e-01, float %430)
  %449 = fptosi float %448 to i32
  %450 = fptosi float %432 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %443, i32 noundef %446, i32 noundef %447, i32 noundef %449, i32 noundef %450) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %451

451:                                              ; preds = %420, %130
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @node_select_area_default(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %5, float noundef %6) #9
  %8 = zext i8 %7 to i32
  ret i32 %8
}

declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @node_tweak_area_default(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 40
  %5 = sitofp i32 %1 to float
  %6 = sitofp i32 %2 to float
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %4, float noundef %5, float noundef %6) #9
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @node_get_colorid(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !135
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
  %8 = load i32, ptr %7, align 8, !tbaa !95
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

; Function Attrs: nounwind uwtable
define dso_local void @node_socket_circle_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %3, ptr noundef nonnull %7) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %2, ptr noundef nonnull %8) #9
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = getelementptr inbounds %struct.bNodeSocketType, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  call void %13(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 13
  %15 = load float, ptr %14, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 14
  %17 = load float, ptr %16, align 4, !tbaa !116
  call void @glColor4fv(ptr noundef nonnull %9) #9
  call void @glEnable(i32 noundef 3042) #9
  call void @glBegin(i32 noundef 9) #9
  br label %18

18:                                               ; preds = %6, %18
  %19 = phi i64 [ 0, %6 ], [ %26, %18 ]
  %20 = getelementptr inbounds [16 x float], ptr @node_circle_draw.si, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !105
  %22 = call float @llvm.fmuladd.f32(float %4, float %21, float %15)
  %23 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %19
  %24 = load float, ptr %23, align 4, !tbaa !105
  %25 = call float @llvm.fmuladd.f32(float %4, float %24, float %17)
  call void @glVertex2f(float noundef %22, float noundef %25) #9
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %18, !llvm.loop !146

28:                                               ; preds = %18
  call void @glEnd() #9
  call void @glDisable(i32 noundef 3042) #9
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @UI_ThemeColor(i32 noundef 4) #9
  call void @glLineWidth(float noundef 1.500000e+00) #9
  br label %32

31:                                               ; preds = %28
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -106) #9
  br label %32

32:                                               ; preds = %31, %30
  call void @glEnable(i32 noundef 3042) #9
  call void @glEnable(i32 noundef 2848) #9
  call void @glBegin(i32 noundef 2) #9
  br label %33

33:                                               ; preds = %32, %33
  %34 = phi i64 [ 0, %32 ], [ %41, %33 ]
  %35 = getelementptr inbounds [16 x float], ptr @node_circle_draw.si, i64 0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !105
  %37 = call float @llvm.fmuladd.f32(float %4, float %36, float %15)
  %38 = getelementptr inbounds [16 x float], ptr @node_circle_draw.co, i64 0, i64 %34
  %39 = load float, ptr %38, align 4, !tbaa !105
  %40 = call float @llvm.fmuladd.f32(float %4, float %39, float %17)
  call void @glVertex2f(float noundef %37, float noundef %40) #9
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %43, label %33, !llvm.loop !147

43:                                               ; preds = %33
  call void @glEnd() #9
  call void @glDisable(i32 noundef 2848) #9
  call void @glDisable(i32 noundef 3042) #9
  call void @glLineWidth(float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  ret void
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_draw_shadow(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40
  tail call void @uiSetRoundBox(i32 noundef 15) #9
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !148
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !95
  %14 = and i32 %13, 1
  tail call void @ui_dropshadow(ptr noundef nonnull %5, float noundef %2, float noundef %11, float noundef %3, i32 noundef %14) #9
  br label %28

15:                                               ; preds = %4
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD51EB860000000) #9
  tail call void @glEnable(i32 noundef 3042) #9
  %16 = load float, ptr %5, align 4, !tbaa !149
  %17 = fadd float %16, -3.000000e+00
  %18 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !150
  %20 = fadd float %19, -3.000000e+00
  %21 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !151
  %23 = fadd float %22, 3.000000e+00
  %24 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 40, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !152
  %26 = fadd float %25, 3.000000e+00
  %27 = fadd float %2, 3.000000e+00
  tail call void @uiRoundBox(float noundef %17, float noundef %20, float noundef %23, float noundef %26, float noundef %27) #9
  tail call void @glDisable(i32 noundef 3042) #9
  br label %28

28:                                               ; preds = %15, %9
  ret void
}

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #3

declare void @ui_dropshadow(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glEnable(i32 noundef) local_unnamed_addr #3

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glDisable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @node_get_resize_cursor(i32 noundef %0) local_unnamed_addr #5 {
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

; Function Attrs: nounwind uwtable
define dso_local void @node_set_cursor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %3
  %10 = call i32 @node_find_indicated_socket(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %2, i32 noundef 3) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  store ptr %14, ptr %4, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds float, ptr %2, i64 1
  br label %18

18:                                               ; preds = %16, %25
  %19 = phi ptr [ %14, %16 ], [ %28, %25 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 40
  %21 = load float, ptr %2, align 4, !tbaa !105
  %22 = load float, ptr %17, align 4, !tbaa !105
  %23 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %20, float noundef %21, float noundef %22) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  store ptr %28, ptr %4, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !154

30:                                               ; preds = %25, %18, %12
  %31 = load ptr, ptr %4, align 8, !tbaa !87
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !135
  %36 = getelementptr inbounds %struct.bNodeType, ptr %35, i64 0, i32 26
  %37 = load ptr, ptr %36, align 8, !tbaa !155
  %38 = load float, ptr %2, align 4, !tbaa !105
  %39 = fptosi float %38 to i32
  %40 = getelementptr inbounds float, ptr %2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !105
  %42 = fptosi float %41 to i32
  %43 = call i32 %37(ptr noundef nonnull %31, i32 noundef %39, i32 noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %33
  %46 = icmp ult i32 %43, 4
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = and i32 %43, -13
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 1003, i32 1002
  br label %51

51:                                               ; preds = %47, %45, %33, %9, %30, %3
  %52 = phi i32 [ 1006, %9 ], [ 1006, %30 ], [ 1006, %3 ], [ 1006, %33 ], [ 1004, %45 ], [ %50, %47 ]
  call void @WM_cursor_set(ptr noundef %0, i32 noundef %52) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

declare i32 @node_find_indicated_socket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @node_draw_default(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5) local_unnamed_addr #1 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [128 x i8], align 16
  %11 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !95
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %180, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %17 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !150
  %19 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !152
  %21 = fadd float %18, %20
  %22 = fmul float %21, 5.000000e-01
  %23 = fsub float %20, %18
  %24 = fmul float %23, 5.000000e-01
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %26 = sitofp i16 %25 to float
  %27 = fmul float %26, 2.500000e-01
  %28 = tail call i32 @node_get_colorid(ptr noundef %4), !range !156
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #9
  tail call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %24, float noundef 1.000000e+00)
  tail call void @UI_ThemeColor(i32 noundef %28) #9
  %29 = load i32, ptr %11, align 8, !tbaa !95
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %15
  tail call void @UI_ThemeColorBlend(i32 noundef %28, i32 noundef 0, float noundef 5.000000e-01) #9
  br label %33

33:                                               ; preds = %32, %15
  %34 = load float, ptr %16, align 4, !tbaa !149
  %35 = load float, ptr %17, align 4, !tbaa !150
  %36 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !151
  %38 = load float, ptr %19, align 4, !tbaa !152
  tail call void @uiRoundBox(float noundef %34, float noundef %35, float noundef %37, float noundef %38, float noundef %24) #9
  %39 = load i32, ptr %11, align 8, !tbaa !95
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2848) #9
  %43 = load i32, ptr %11, align 8, !tbaa !95
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 28, i32 29
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef %46, i32 noundef 0, i32 noundef -40) #9
  %47 = load float, ptr %16, align 4, !tbaa !149
  %48 = load float, ptr %17, align 4, !tbaa !150
  %49 = load float, ptr %36, align 4, !tbaa !151
  %50 = load float, ptr %19, align 4, !tbaa !152
  tail call void @uiDrawBox(i32 noundef 2, float noundef %47, float noundef %48, float noundef %49, float noundef %50, float noundef %24) #9
  tail call void @glDisable(i32 noundef 2848) #9
  tail call void @glDisable(i32 noundef 3042) #9
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, ptr %11, align 8, !tbaa !95
  %53 = and i32 %52, 32768
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2848) #9
  %56 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  tail call void @glColor3fv(ptr noundef nonnull %56) #9
  %57 = load float, ptr %16, align 4, !tbaa !149
  %58 = fadd float %57, 1.000000e+00
  %59 = load float, ptr %17, align 4, !tbaa !150
  %60 = fadd float %59, 1.000000e+00
  %61 = load float, ptr %36, align 4, !tbaa !151
  %62 = fadd float %61, -1.000000e+00
  %63 = load float, ptr %19, align 4, !tbaa !152
  %64 = fadd float %63, -1.000000e+00
  tail call void @uiDrawBox(i32 noundef 2, float noundef %58, float noundef %60, float noundef %62, float noundef %64, float noundef %24) #9
  tail call void @glDisable(i32 noundef 2848) #9
  tail call void @glDisable(i32 noundef 3042) #9
  br label %65

65:                                               ; preds = %55, %51
  %66 = load i32, ptr %11, align 8, !tbaa !95
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @UI_ThemeColor(i32 noundef 28) #9
  br label %71

70:                                               ; preds = %65
  tail call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %28, float noundef 0x3FD99999A0000000, i32 noundef 10) #9
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %73 = sitofp i16 %72 to float
  %74 = fmul float %73, 0x3FE3333340000000
  %75 = fptosi float %74 to i32
  %76 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %77 = load ptr, ptr %76, align 8, !tbaa !119
  tail call void @uiBlockSetEmboss(ptr noundef %77, i8 noundef zeroext 1) #9
  %78 = load ptr, ptr %76, align 8, !tbaa !119
  %79 = load float, ptr %16, align 4, !tbaa !149
  %80 = fadd float %79, 1.000000e+01
  %81 = sdiv i32 %75, 2
  %82 = sitofp i32 %81 to float
  %83 = fsub float %80, %82
  %84 = fptosi float %83 to i32
  %85 = fsub float %22, %82
  %86 = fptosi float %85 to i32
  %87 = trunc i32 %75 to i16
  %88 = tail call ptr @uiDefBut(ptr noundef %78, i32 noundef 18944, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %84, i32 noundef %86, i16 noundef signext %87, i16 noundef signext %87, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  tail call void @uiButSetFunc(ptr noundef %88, ptr noundef nonnull @node_toggle_button_cb, ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %89 = load ptr, ptr %76, align 8, !tbaa !119
  tail call void @uiBlockSetEmboss(ptr noundef %89, i8 noundef zeroext 0) #9
  %90 = load float, ptr %16, align 4, !tbaa !149
  %91 = fadd float %90, 1.000000e+01
  tail call void @UI_DrawTriIcon(float noundef %91, float noundef %22, i8 noundef zeroext 104) #9
  %92 = load i32, ptr %11, align 8, !tbaa !95
  %93 = and i32 %92, 512
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %71
  %96 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2848) #9
  %97 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 23
  %98 = load ptr, ptr %97, align 8, !tbaa !87
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %95 ]
  tail call void @node_draw_link_bezier(ptr noundef nonnull %96, ptr noundef %2, ptr noundef nonnull %101, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 25, i8 noundef zeroext 0, i32 noundef 25) #9
  %102 = load ptr, ptr %101, align 8, !tbaa !87
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %100, !llvm.loop !157

104:                                              ; preds = %100, %95
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @glDisable(i32 noundef 2848) #9
  br label %105

105:                                              ; preds = %104, %71
  %106 = load i32, ptr %11, align 8, !tbaa !95
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 3, i32 28
  tail call void @UI_ThemeColor(i32 noundef %109) #9
  %110 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 28
  %111 = load float, ptr %110, align 8, !tbaa !109
  %112 = fcmp ogt float %111, 0.000000e+00
  br i1 %112, label %113, label %128

113:                                              ; preds = %105
  call void @nodeLabel(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %10, i32 noundef 128) #9
  %114 = load ptr, ptr %76, align 8, !tbaa !119
  %115 = load float, ptr %16, align 4, !tbaa !149
  %116 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %117 = sitofp i16 %116 to float
  %118 = call float @llvm.fmuladd.f32(float %117, float 7.500000e-01, float %115)
  %119 = fptosi float %118 to i32
  %120 = fadd float %22, -1.000000e+01
  %121 = fptosi float %120 to i32
  %122 = load float, ptr %36, align 4, !tbaa !151
  %123 = fsub float %122, %115
  %124 = fadd float %123, -1.800000e+01
  %125 = fadd float %124, -1.200000e+01
  %126 = fptosi float %125 to i16
  %127 = call ptr @uiDefBut(ptr noundef %114, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %10, i32 noundef %119, i32 noundef %121, i16 noundef signext %126, i16 noundef signext %116, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  br label %128

128:                                              ; preds = %113, %105
  call void @UI_ThemeColorShade(i32 noundef %28, i32 noundef -10) #9
  %129 = load float, ptr %36, align 4, !tbaa !151
  %130 = fadd float %129, -1.000000e+01
  %131 = fadd float %22, -4.000000e+00
  %132 = fadd float %22, 4.000000e+00
  call void @fdrawline(float noundef %130, float noundef %131, float noundef %130, float noundef %132) #9
  %133 = load float, ptr %36, align 4, !tbaa !151
  %134 = fadd float %133, -1.000000e+01
  %135 = getelementptr inbounds %struct.SpaceNode, ptr %2, i64 0, i32 11
  %136 = load float, ptr %135, align 4, !tbaa !148
  %137 = call float @llvm.fmuladd.f32(float %136, float -3.000000e+00, float %134)
  call void @fdrawline(float noundef %137, float noundef %131, float noundef %137, float noundef %132) #9
  call void @UI_ThemeColorShade(i32 noundef %28, i32 noundef 30) #9
  %138 = load float, ptr %135, align 4, !tbaa !148
  %139 = fsub float 1.000000e+01, %138
  %140 = load float, ptr %36, align 4, !tbaa !151
  %141 = fsub float %140, %139
  call void @fdrawline(float noundef %141, float noundef %131, float noundef %141, float noundef %132) #9
  %142 = load float, ptr %36, align 4, !tbaa !151
  %143 = fsub float %142, %139
  %144 = load float, ptr %135, align 4, !tbaa !148
  %145 = call float @llvm.fmuladd.f32(float %144, float -3.000000e+00, float %143)
  call void @fdrawline(float noundef %145, float noundef %131, float noundef %145, float noundef %132) #9
  %146 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %147 = load ptr, ptr %146, align 8, !tbaa !87
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %128, %158
  %150 = phi ptr [ %159, %158 ], [ %147, %128 ]
  %151 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %150) #9
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.bNodeSocket, ptr %150, i64 0, i32 8
  %155 = load i16, ptr %154, align 2, !tbaa !158
  %156 = and i16 %155, 1
  %157 = zext nneg i16 %156 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %150, float noundef %27, i32 noundef %157)
  br label %158

158:                                              ; preds = %153, %149
  %159 = load ptr, ptr %150, align 8, !tbaa !87
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %149, !llvm.loop !159

161:                                              ; preds = %158, %128
  %162 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %163 = load ptr, ptr %162, align 8, !tbaa !87
  %164 = icmp eq ptr %163, null
  br i1 %164, label %177, label %165

165:                                              ; preds = %161, %174
  %166 = phi ptr [ %175, %174 ], [ %163, %161 ]
  %167 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %166) #9
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.bNodeSocket, ptr %166, i64 0, i32 8
  %171 = load i16, ptr %170, align 2, !tbaa !158
  %172 = and i16 %171, 1
  %173 = zext nneg i16 %172 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %166, float noundef %27, i32 noundef %173)
  br label %174

174:                                              ; preds = %169, %165
  %175 = load ptr, ptr %166, align 8, !tbaa !87
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %165, !llvm.loop !160

177:                                              ; preds = %174, %161
  %178 = load ptr, ptr %76, align 8, !tbaa !119
  call void @uiEndBlock(ptr noundef %0, ptr noundef %178) #9
  %179 = load ptr, ptr %76, align 8, !tbaa !119
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %179) #9
  store ptr null, ptr %76, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #9
  br label %523

180:                                              ; preds = %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %181 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !161
  %183 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40
  %184 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %185 = sitofp i16 %184 to float
  %186 = fmul float %185, 0x3FE99999A0000000
  %187 = call i32 @node_get_colorid(ptr noundef %4), !range !156
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #9
  %188 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %189 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 46
  %190 = load ptr, ptr %189, align 8, !tbaa !119
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %180
  call void @nodeSynchronizeID(ptr noundef %4, i8 noundef zeroext 0) #9
  br label %193

193:                                              ; preds = %192, %180
  %194 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %195 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %183, ptr noundef nonnull %194, ptr noundef null) #9
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiEndBlock(ptr noundef %0, ptr noundef %198) #9
  br label %522

199:                                              ; preds = %193
  %200 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %201 = sitofp i16 %200 to float
  %202 = fmul float %201, 0x3FD99999A0000000
  call void @node_draw_shadow(ptr noundef %2, ptr noundef %4, float noundef %202, float noundef 1.000000e+00)
  %203 = icmp eq i32 %187, 93
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @UI_GetThemeColorShade3fv(i32 noundef 93, i32 noundef -20, ptr noundef nonnull %9) #9
  %205 = load float, ptr %9, align 4, !tbaa !105
  %206 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !105
  %208 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !105
  call void @glColor4f(float noundef %205, float noundef %207, float noundef %209, float noundef 1.000000e+00) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %211

210:                                              ; preds = %199
  call void @UI_ThemeColor(i32 noundef %187) #9
  br label %211

211:                                              ; preds = %210, %204
  %212 = load i32, ptr %11, align 8, !tbaa !95
  %213 = and i32 %212, 512
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  call void @UI_ThemeColorBlend(i32 noundef %187, i32 noundef 0, float noundef 5.000000e-01) #9
  br label %216

216:                                              ; preds = %215, %211
  call void @uiSetRoundBox(i32 noundef 3) #9
  %217 = load float, ptr %183, align 4, !tbaa !149
  %218 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 3
  %219 = load float, ptr %218, align 4, !tbaa !152
  %220 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %221 = sitofp i16 %220 to float
  %222 = fsub float %219, %221
  %223 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 1
  %224 = load float, ptr %223, align 4, !tbaa !151
  %225 = fmul float %221, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %217, float noundef %222, float noundef %224, float noundef %219, float noundef %225) #9
  %226 = load float, ptr %223, align 4, !tbaa !151
  %227 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %228 = sitofp i16 %227 to float
  %229 = call float @llvm.fmuladd.f32(float %228, float 0xBFD6666660000000, float %226)
  %230 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !135
  %232 = getelementptr inbounds %struct.bNodeType, ptr %231, i64 0, i32 15
  %233 = load i16, ptr %232, align 2, !tbaa !164
  %234 = and i16 %233, 4
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %216
  %237 = fsub float %229, %186
  %238 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %238, i8 noundef zeroext 1) #9
  %239 = load ptr, ptr %189, align 8, !tbaa !119
  %240 = fptosi float %237 to i32
  %241 = load float, ptr %218, align 4, !tbaa !152
  %242 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %243 = sitofp i16 %242 to float
  %244 = fsub float %241, %243
  %245 = fptosi float %244 to i32
  %246 = fptosi float %186 to i16
  %247 = call ptr @uiDefIconBut(ptr noundef %239, i32 noundef 18944, i32 noundef 1, i32 noundef 79, i32 noundef %240, i32 noundef %245, i16 noundef signext %246, i16 noundef signext %242, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  call void @uiButSetFunc(ptr noundef %247, ptr noundef nonnull @node_toggle_button_cb, ptr noundef %4, ptr noundef nonnull @.str.5) #9
  %248 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %248, i8 noundef zeroext 0) #9
  br label %249

249:                                              ; preds = %236, %216
  %250 = phi float [ %237, %236 ], [ %229, %216 ]
  %251 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 8
  %252 = load i16, ptr %251, align 4, !tbaa !165
  %253 = icmp eq i16 %252, 2
  br i1 %253, label %254, label %267

254:                                              ; preds = %249
  %255 = fsub float %250, %186
  %256 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %256, i8 noundef zeroext 1) #9
  %257 = load ptr, ptr %189, align 8, !tbaa !119
  %258 = fptosi float %255 to i32
  %259 = load float, ptr %218, align 4, !tbaa !152
  %260 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %261 = sitofp i16 %260 to float
  %262 = fsub float %259, %261
  %263 = fptosi float %262 to i32
  %264 = fptosi float %186 to i16
  %265 = call ptr @uiDefIconBut(ptr noundef %257, i32 noundef 18944, i32 noundef 1, i32 noundef 119, i32 noundef %258, i32 noundef %263, i16 noundef signext %264, i16 noundef signext %260, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  call void @uiButSetFunc(ptr noundef %265, ptr noundef nonnull @node_toggle_button_cb, ptr noundef %4, ptr noundef nonnull @.str.6) #9
  %266 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %266, i8 noundef zeroext 0) #9
  br label %267

267:                                              ; preds = %254, %249
  %268 = phi float [ %255, %254 ], [ %250, %249 ]
  %269 = load i32, ptr %11, align 8, !tbaa !95
  %270 = and i32 %269, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  call void @UI_ThemeColor(i32 noundef 28) #9
  br label %274

273:                                              ; preds = %267
  call void @UI_ThemeColorBlendShade(i32 noundef 3, i32 noundef %187, float noundef 0x3FD99999A0000000, i32 noundef 10) #9
  br label %274

274:                                              ; preds = %273, %272
  %275 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %276 = sitofp i16 %275 to float
  %277 = fmul float %276, 0x3FE3333340000000
  %278 = fptosi float %277 to i32
  %279 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %279, i8 noundef zeroext 1) #9
  %280 = load ptr, ptr %189, align 8, !tbaa !119
  %281 = load float, ptr %183, align 4, !tbaa !149
  %282 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %283 = sitofp i16 %282 to float
  %284 = call float @llvm.fmuladd.f32(float %283, float 5.000000e-01, float %281)
  %285 = sdiv i32 %278, 2
  %286 = sitofp i32 %285 to float
  %287 = fsub float %284, %286
  %288 = fptosi float %287 to i32
  %289 = load float, ptr %218, align 4, !tbaa !152
  %290 = fmul float %283, 5.000000e-01
  %291 = fsub float %289, %290
  %292 = fsub float %291, %286
  %293 = fptosi float %292 to i32
  %294 = trunc i32 %278 to i16
  %295 = call ptr @uiDefBut(ptr noundef %280, i32 noundef 18944, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %288, i32 noundef %293, i16 noundef signext %294, i16 noundef signext %294, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  call void @uiButSetFunc(ptr noundef %295, ptr noundef nonnull @node_toggle_button_cb, ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %296 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiBlockSetEmboss(ptr noundef %296, i8 noundef zeroext 0) #9
  %297 = load float, ptr %183, align 4, !tbaa !149
  %298 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %299 = sitofp i16 %298 to float
  %300 = call float @llvm.fmuladd.f32(float %299, float 5.000000e-01, float %297)
  %301 = load float, ptr %218, align 4, !tbaa !152
  %302 = fmul float %299, 5.000000e-01
  %303 = fsub float %301, %302
  call void @UI_DrawTriIcon(float noundef %300, float noundef %303, i8 noundef zeroext 118) #9
  call void @nodeLabel(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8, i32 noundef 128) #9
  %304 = load ptr, ptr %189, align 8, !tbaa !119
  %305 = load float, ptr %183, align 4, !tbaa !149
  %306 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %307 = sitofp i16 %306 to float
  %308 = call float @llvm.fmuladd.f32(float %307, float 7.500000e-01, float %305)
  %309 = fptosi float %308 to i32
  %310 = load float, ptr %218, align 4, !tbaa !152
  %311 = fsub float %310, %307
  %312 = fptosi float %311 to i32
  %313 = fsub float %268, %305
  %314 = fadd float %313, -1.800000e+01
  %315 = fptosi float %314 to i16
  %316 = call ptr @uiDefBut(ptr noundef %304, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %8, i32 noundef %309, i32 noundef %312, i16 noundef signext %315, i16 noundef signext %306, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  %317 = call zeroext i8 @nodeIsRegistered(ptr noundef %4) #9
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %274
  call void @UI_ThemeColor4(i32 noundef 0) #9
  br label %327

320:                                              ; preds = %274
  %321 = load i32, ptr %11, align 8, !tbaa !95
  %322 = and i32 %321, 32768
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 16
  call void @glColor3fv(ptr noundef nonnull %325) #9
  br label %327

326:                                              ; preds = %320
  call void @UI_ThemeColor4(i32 noundef 93) #9
  br label %327

327:                                              ; preds = %326, %324, %319
  call void @glEnable(i32 noundef 3042) #9
  call void @uiSetRoundBox(i32 noundef 12) #9
  %328 = load float, ptr %183, align 4, !tbaa !149
  %329 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 40, i32 2
  %330 = load float, ptr %329, align 4, !tbaa !150
  %331 = load float, ptr %223, align 4, !tbaa !151
  %332 = load float, ptr %218, align 4, !tbaa !152
  %333 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %334 = sitofp i16 %333 to float
  %335 = fsub float %332, %334
  %336 = fmul float %334, 0x3FD99999A0000000
  call void @uiRoundBox(float noundef %328, float noundef %330, float noundef %331, float noundef %335, float noundef %336) #9
  call void @glDisable(i32 noundef 3042) #9
  %337 = load i32, ptr %11, align 8, !tbaa !95
  %338 = and i32 %337, 1
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %352, label %340

340:                                              ; preds = %327
  call void @glEnable(i32 noundef 3042) #9
  call void @glEnable(i32 noundef 2848) #9
  %341 = load i32, ptr %11, align 8, !tbaa !95
  %342 = and i32 %341, 16
  %343 = icmp eq i32 %342, 0
  %344 = select i1 %343, i32 28, i32 29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %344, i32 noundef 0, i32 noundef -40) #9
  call void @uiSetRoundBox(i32 noundef 15) #9
  %345 = load float, ptr %183, align 4, !tbaa !149
  %346 = load float, ptr %329, align 4, !tbaa !150
  %347 = load float, ptr %223, align 4, !tbaa !151
  %348 = load float, ptr %218, align 4, !tbaa !152
  %349 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %350 = sitofp i16 %349 to float
  %351 = fmul float %350, 0x3FD99999A0000000
  call void @uiDrawBox(i32 noundef 2, float noundef %345, float noundef %346, float noundef %347, float noundef %348, float noundef %351) #9
  call void @glDisable(i32 noundef 2848) #9
  call void @glDisable(i32 noundef 3042) #9
  br label %352

352:                                              ; preds = %340, %327
  %353 = load i32, ptr %11, align 8, !tbaa !95
  %354 = and i32 %353, 512
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %365, label %356

356:                                              ; preds = %352
  call void @glEnable(i32 noundef 3042) #9
  call void @glEnable(i32 noundef 2848) #9
  %357 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 23
  %358 = load ptr, ptr %357, align 8, !tbaa !87
  %359 = icmp eq ptr %358, null
  br i1 %359, label %364, label %360

360:                                              ; preds = %356, %360
  %361 = phi ptr [ %362, %360 ], [ %358, %356 ]
  call void @node_draw_link_bezier(ptr noundef nonnull %188, ptr noundef %2, ptr noundef nonnull %361, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 25, i8 noundef zeroext 0, i32 noundef 25) #9
  %362 = load ptr, ptr %361, align 8, !tbaa !87
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %360, !llvm.loop !157

364:                                              ; preds = %360, %356
  call void @glDisable(i32 noundef 3042) #9
  call void @glDisable(i32 noundef 2848) #9
  br label %365

365:                                              ; preds = %364, %352
  %366 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 17
  %367 = load ptr, ptr %366, align 8, !tbaa !87
  %368 = icmp eq ptr %367, null
  br i1 %368, label %384, label %369

369:                                              ; preds = %365, %381
  %370 = phi ptr [ %382, %381 ], [ %367, %365 ]
  %371 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %370) #9
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %369
  %374 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %375 = sitofp i16 %374 to float
  %376 = fmul float %375, 2.500000e-01
  %377 = getelementptr inbounds %struct.bNodeSocket, ptr %370, i64 0, i32 8
  %378 = load i16, ptr %377, align 2, !tbaa !158
  %379 = and i16 %378, 1
  %380 = zext nneg i16 %379 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %370, float noundef %376, i32 noundef %380)
  br label %381

381:                                              ; preds = %373, %369
  %382 = load ptr, ptr %370, align 8, !tbaa !87
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %369, !llvm.loop !166

384:                                              ; preds = %381, %365
  %385 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 18
  %386 = load ptr, ptr %385, align 8, !tbaa !87
  %387 = icmp eq ptr %386, null
  br i1 %387, label %403, label %388

388:                                              ; preds = %384, %400
  %389 = phi ptr [ %401, %400 ], [ %386, %384 ]
  %390 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %389) #9
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %388
  %393 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %394 = sitofp i16 %393 to float
  %395 = fmul float %394, 2.500000e-01
  %396 = getelementptr inbounds %struct.bNodeSocket, ptr %389, i64 0, i32 8
  %397 = load i16, ptr %396, align 2, !tbaa !158
  %398 = and i16 %397, 1
  %399 = zext nneg i16 %398 to i32
  call void @node_socket_circle_draw(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %389, float noundef %395, i32 noundef %399)
  br label %400

400:                                              ; preds = %392, %388
  %401 = load ptr, ptr %389, align 8, !tbaa !87
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %388, !llvm.loop !167

403:                                              ; preds = %400, %384
  %404 = load i32, ptr %11, align 8, !tbaa !95
  %405 = and i32 %404, 4
  %406 = icmp ne i32 %405, 0
  %407 = icmp ne ptr %182, null
  %408 = select i1 %406, i1 %407, i1 false
  br i1 %408, label %409, label %519

409:                                              ; preds = %403
  %410 = call ptr @BKE_node_instance_hash_lookup(ptr noundef nonnull %182, i32 %5) #9
  %411 = icmp eq ptr %410, null
  br i1 %411, label %519, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.bNodePreview, ptr %410, i64 0, i32 2
  %414 = load i16, ptr %413, align 8, !tbaa !168
  %415 = icmp eq i16 %414, 0
  br i1 %415, label %519, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.bNodePreview, ptr %410, i64 0, i32 3
  %418 = load i16, ptr %417, align 2, !tbaa !171
  %419 = icmp eq i16 %418, 0
  br i1 %419, label %519, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.bNodePreview, ptr %410, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !172
  %423 = icmp eq ptr %422, null
  br i1 %423, label %519, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 42
  %426 = call zeroext i8 @BLI_rctf_is_empty(ptr noundef nonnull %425) #9
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %519

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 42, i32 1
  %430 = load float, ptr %429, align 4
  %431 = load float, ptr %425, align 4
  %432 = fsub float %430, %431
  %433 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 42, i32 3
  %434 = load float, ptr %433, align 4
  %435 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 42, i32 2
  %436 = load float, ptr %435, align 4
  %437 = fsub float %434, %436
  %438 = load i16, ptr %413, align 8, !tbaa !168
  %439 = sitofp i16 %438 to float
  %440 = fdiv float %432, %439
  %441 = load i16, ptr %417, align 2, !tbaa !171
  %442 = sitofp i16 %441 to float
  %443 = fdiv float %437, %442
  %444 = fcmp olt float %440, %443
  br i1 %444, label %445, label %451

445:                                              ; preds = %428
  %446 = fneg float %442
  %447 = call float @llvm.fmuladd.f32(float %446, float %440, float %437)
  %448 = fmul float %447, 5.000000e-01
  %449 = fadd float %436, %448
  %450 = fsub float %434, %448
  br label %457

451:                                              ; preds = %428
  %452 = fneg float %439
  %453 = call float @llvm.fmuladd.f32(float %452, float %443, float %432)
  %454 = fmul float %453, 5.000000e-01
  %455 = fadd float %431, %454
  %456 = fsub float %430, %454
  br label %457

457:                                              ; preds = %451, %445
  %458 = phi float [ %450, %445 ], [ %434, %451 ]
  %459 = phi float [ %449, %445 ], [ %436, %451 ]
  %460 = phi float [ %430, %445 ], [ %456, %451 ]
  %461 = phi float [ %431, %445 ], [ %455, %451 ]
  %462 = phi float [ %440, %445 ], [ %443, %451 ]
  %463 = fdiv float %432, 1.000000e+01
  call void @glColor3ub(i8 noundef zeroext 120, i8 noundef zeroext 120, i8 noundef zeroext 120) #9
  call void @glRectf(float noundef %461, float noundef %459, float noundef %460, float noundef %458) #9
  call void @glColor3ub(i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96) #9
  %464 = fcmp olt float %459, %458
  br i1 %464, label %465, label %487

465:                                              ; preds = %457
  %466 = fcmp olt float %461, %460
  br label %467

467:                                              ; preds = %484, %465
  %468 = phi float [ %459, %465 ], [ %485, %484 ]
  br i1 %466, label %469, label %484

469:                                              ; preds = %467
  %470 = fadd float %463, %468
  %471 = fcmp ogt float %470, %458
  %472 = fsub float %458, %468
  %473 = select i1 %471, float %472, float %463
  %474 = fadd float %468, %473
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi float [ %461, %469 ], [ %482, %475 ]
  %477 = fadd float %463, %476
  %478 = fcmp ogt float %477, %460
  %479 = fsub float %460, %476
  %480 = select i1 %478, float %479, float %463
  %481 = fadd float %476, %480
  call void @glRectf(float noundef %476, float noundef %468, float noundef %481, float noundef %474) #9
  %482 = call float @llvm.fmuladd.f32(float %463, float 2.000000e+00, float %476)
  %483 = fcmp olt float %482, %460
  br i1 %483, label %475, label %484, !llvm.loop !173

484:                                              ; preds = %475, %467
  %485 = call float @llvm.fmuladd.f32(float %463, float 2.000000e+00, float %468)
  %486 = fcmp olt float %485, %458
  br i1 %486, label %467, label %487, !llvm.loop !174

487:                                              ; preds = %484, %457
  %488 = fadd float %463, %459
  %489 = fcmp olt float %488, %458
  br i1 %489, label %490, label %513

490:                                              ; preds = %487
  %491 = fadd float %463, %461
  %492 = fcmp olt float %491, %460
  br label %493

493:                                              ; preds = %510, %490
  %494 = phi float [ %488, %490 ], [ %511, %510 ]
  br i1 %492, label %495, label %510

495:                                              ; preds = %493
  %496 = fadd float %463, %494
  %497 = fcmp ogt float %496, %458
  %498 = fsub float %458, %494
  %499 = select i1 %497, float %498, float %463
  %500 = fadd float %494, %499
  br label %501

501:                                              ; preds = %501, %495
  %502 = phi float [ %491, %495 ], [ %508, %501 ]
  %503 = fadd float %463, %502
  %504 = fcmp ogt float %503, %460
  %505 = fsub float %460, %502
  %506 = select i1 %504, float %505, float %463
  %507 = fadd float %502, %506
  call void @glRectf(float noundef %502, float noundef %494, float noundef %507, float noundef %500) #9
  %508 = call float @llvm.fmuladd.f32(float %463, float 2.000000e+00, float %502)
  %509 = fcmp olt float %508, %460
  br i1 %509, label %501, label %510, !llvm.loop !175

510:                                              ; preds = %501, %493
  %511 = call float @llvm.fmuladd.f32(float %463, float 2.000000e+00, float %494)
  %512 = fcmp olt float %511, %458
  br i1 %512, label %493, label %513, !llvm.loop !176

513:                                              ; preds = %510, %487
  call void @glEnable(i32 noundef 3042) #9
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  call void @glPixelZoom(float noundef %462, float noundef %462) #9
  %514 = load i16, ptr %413, align 8, !tbaa !168
  %515 = sext i16 %514 to i32
  %516 = load i16, ptr %417, align 2, !tbaa !171
  %517 = sext i16 %516 to i32
  %518 = load ptr, ptr %421, align 8, !tbaa !172
  call void @glaDrawPixelsTex(float noundef %461, float noundef %459, i32 noundef %515, i32 noundef %517, i32 noundef 6408, i32 noundef 5121, i32 noundef 9729, ptr noundef %518) #9
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  call void @glDisable(i32 noundef 3042) #9
  call void @UI_ThemeColorShadeAlpha(i32 noundef 2, i32 noundef -15, i32 noundef 100) #9
  call void @fdrawbox(float noundef %461, float noundef %459, float noundef %460, float noundef %458) #9
  br label %519

519:                                              ; preds = %513, %424, %420, %416, %412, %409, %403
  call void @UI_ThemeClearColor(i32 noundef %187) #9
  %520 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiEndBlock(ptr noundef %0, ptr noundef %520) #9
  %521 = load ptr, ptr %189, align 8, !tbaa !119
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %521) #9
  br label %522

522:                                              ; preds = %197, %519
  store ptr null, ptr %189, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %523

523:                                              ; preds = %522, %177
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_update_nodetree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.bNodeType, ptr %9, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !177
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void %11(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #9
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !178

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) local_unnamed_addr #1 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @BLI_rctf_init_minmax(ptr noundef nonnull %12) #9
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr %8, align 8, !tbaa !87
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %36
  %19 = phi ptr [ %14, %16 ], [ %38, %36 ]
  %20 = phi i32 [ 0, %16 ], [ %37, %36 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 40
  tail call void @BLI_rctf_union(ptr noundef nonnull %17, ptr noundef nonnull %21) #9
  %22 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !95
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %19) #9
  %28 = trunc i32 %20 to i16
  %29 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 15
  store i16 %28, ptr %29, align 2, !tbaa !179
  %30 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  tail call void %33(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %19, i32 %27) #9
  br label %36

36:                                               ; preds = %35, %26, %18
  %37 = add nuw nsw i32 %20, 1
  %38 = load ptr, ptr %19, align 8, !tbaa !87
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %18, !llvm.loop !181

40:                                               ; preds = %36, %13
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glEnable(i32 noundef 2848) #9
  %41 = getelementptr inbounds %struct.bNodeTree, ptr %3, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br label %46

46:                                               ; preds = %44, %51
  %47 = phi ptr [ %42, %44 ], [ %52, %51 ]
  %48 = tail call i32 @nodeLinkIsHidden(ptr noundef nonnull %47) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @node_draw_link(ptr noundef nonnull %45, ptr noundef %2, ptr noundef nonnull %47) #9
  br label %51

51:                                               ; preds = %46, %50
  %52 = load ptr, ptr %47, align 8, !tbaa !87
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %46, !llvm.loop !182

54:                                               ; preds = %51, %40
  tail call void @glDisable(i32 noundef 2848) #9
  tail call void @glDisable(i32 noundef 3042) #9
  %55 = load ptr, ptr %8, align 8, !tbaa !87
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %54, %74
  %58 = phi ptr [ %76, %74 ], [ %55, %54 ]
  %59 = phi i32 [ %75, %74 ], [ 0, %54 ]
  %60 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !95
  %62 = and i32 %61, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = tail call i32 @BKE_node_instance_key(i32 %4, ptr noundef nonnull %3, ptr noundef nonnull %58) #9
  %66 = trunc i32 %59 to i16
  %67 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 15
  store i16 %66, ptr %67, align 2, !tbaa !179
  %68 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !135
  %70 = getelementptr inbounds %struct.bNodeType, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !180
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  tail call void %71(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %58, i32 %65) #9
  br label %74

74:                                               ; preds = %73, %64, %57
  %75 = add nuw nsw i32 %59, 1
  %76 = load ptr, ptr %58, align 8, !tbaa !87
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %57, !llvm.loop !183

78:                                               ; preds = %74, %54, %5
  ret void
}

declare void @BLI_rctf_init_minmax(ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_union(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @nodeLinkIsHidden(ptr noundef) local_unnamed_addr #3

declare void @node_draw_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @drawnodespace(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.wmEvent, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !186
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !189
  %14 = sub nsw i32 %11, %13
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.wmEvent, ptr %9, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !191
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !192
  %20 = sub nsw i32 %17, %19
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 16
  %23 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %15, float noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #9
  %24 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %25 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !104
  %26 = sitofp i32 %25 to float
  %27 = fmul float %24, %26
  %28 = fdiv float %27, 7.200000e+01
  %29 = load float, ptr %22, align 8, !tbaa !105
  %30 = fdiv float %29, %28
  store float %30, ptr %22, align 8, !tbaa !105
  %31 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !103
  %32 = fmul float %31, %26
  %33 = fdiv float %32, 7.200000e+01
  %34 = load float, ptr %23, align 4, !tbaa !105
  %35 = fdiv float %34, %33
  store float %35, ptr %23, align 4, !tbaa !105
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #9
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  tail call void @glEnable(i32 noundef 3479) #9
  tail call void @snode_set_context(ptr noundef %0) #9
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 17, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !193
  %38 = icmp eq ptr %37, null
  br i1 %38, label %152, label %39

39:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %40 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_center_get(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %40) #9
  %41 = getelementptr inbounds %struct.bNodeTreePath, ptr %37, i64 0, i32 5
  %42 = load float, ptr %4, align 4, !tbaa !105
  store float %42, ptr %41, align 4, !tbaa !105
  %43 = load float, ptr %40, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.bNodeTreePath, ptr %37, i64 0, i32 5, i64 1
  store float %43, ptr %44, align 4, !tbaa !105
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !153
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.bNodeTree, ptr %46, i64 0, i32 6
  store float %42, ptr %49, align 4, !tbaa !105
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %46, i64 0, i32 6, i64 1
  store float %43, ptr %50, align 4, !tbaa !105
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %52
  %53 = phi ptr [ %56, %52 ], [ %37, %51 ]
  %54 = phi i32 [ %60, %52 ], [ 0, %51 ]
  %55 = getelementptr inbounds %struct.bNodeTreePath, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !194
  %57 = icmp ne ptr %56, null
  %58 = icmp ult i32 %54, 2
  %59 = select i1 %57, i1 %58, i1 false
  %60 = add nuw nsw i32 %54, 1
  br i1 %59, label %52, label %61, !llvm.loop !196

61:                                               ; preds = %52
  %62 = icmp eq i32 %54, 0
  br i1 %62, label %102, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %65 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %66 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %67 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 11
  %68 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %69 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  br label %70

70:                                               ; preds = %63, %98
  %71 = phi i32 [ %54, %63 ], [ %100, %98 ]
  %72 = phi ptr [ %53, %63 ], [ %99, %98 ]
  %73 = getelementptr inbounds %struct.bNodeTreePath, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !197
  %75 = icmp eq ptr %74, null
  br i1 %75, label %98, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.bNodeTreePath, ptr %72, i64 0, i32 5
  %78 = load float, ptr %77, align 4, !tbaa !105
  %79 = getelementptr inbounds %struct.bNodeTreePath, ptr %72, i64 0, i32 5, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !105
  call void @UI_view2d_center_set(ptr noundef nonnull %7, float noundef %78, float noundef %80) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  %81 = load float, ptr %65, align 4, !tbaa !151
  %82 = load float, ptr %64, align 4, !tbaa !149
  %83 = fsub float %81, %82
  %84 = load i16, ptr %66, align 8, !tbaa !198
  %85 = sitofp i16 %84 to float
  %86 = fdiv float %83, %85
  store float %86, ptr %67, align 4, !tbaa !148
  %87 = getelementptr inbounds %struct.bNodeTreePath, ptr %72, i64 0, i32 3
  %88 = load i32, ptr %87, align 8
  call fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %74, i32 %88)
  %89 = load float, ptr %64, align 8, !tbaa.struct !199
  %90 = load float, ptr %65, align 4, !tbaa.struct !200
  %91 = load float, ptr %68, align 8, !tbaa.struct !201
  %92 = load float, ptr %69, align 4, !tbaa.struct !202
  call void @UI_ThemeColorShadeAlpha(i32 noundef 106, i32 noundef 0, i32 noundef -70) #9
  call void @glEnable(i32 noundef 3042) #9
  call void @uiSetRoundBox(i32 noundef 0) #9
  call void @uiDrawBox(i32 noundef 9, float noundef %89, float noundef %91, float noundef %90, float noundef %92, float noundef 0.000000e+00) #9
  call void @glDisable(i32 noundef 3042) #9
  %93 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.8, i16 noundef signext 0) #9
  %94 = fptosi float %89 to i32
  %95 = fptosi float %91 to i32
  %96 = fptosi float %90 to i32
  %97 = fptosi float %92 to i32
  call void @uiExplicitBoundsBlock(ptr noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97) #9
  call void @uiBlockSetFlag(ptr noundef %93, i32 noundef 8192) #9
  call void @uiEndBlock(ptr noundef %0, ptr noundef %93) #9
  br label %98

98:                                               ; preds = %70, %76
  %99 = load ptr, ptr %72, align 8, !tbaa !203
  %100 = add nsw i32 %71, -1
  %101 = icmp sgt i32 %71, 1
  br i1 %101, label %70, label %102, !llvm.loop !204

102:                                              ; preds = %98, %61
  %103 = phi ptr [ %53, %61 ], [ %99, %98 ]
  %104 = getelementptr inbounds %struct.bNodeTreePath, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !197
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %102
  %108 = load float, ptr %4, align 4, !tbaa !105
  %109 = load float, ptr %40, align 4, !tbaa !105
  call void @UI_view2d_center_set(ptr noundef nonnull %7, float noundef %108, float noundef %109) #9
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #9
  %110 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %111 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !151
  %113 = load float, ptr %110, align 4, !tbaa !149
  %114 = fsub float %112, %113
  %115 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %116 = load i16, ptr %115, align 8, !tbaa !198
  %117 = sitofp i16 %116 to float
  %118 = fdiv float %114, %117
  %119 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 11
  store float %118, ptr %119, align 4, !tbaa !148
  %120 = icmp eq i32 %54, 0
  %121 = select i1 %120, i32 2, i32 106
  %122 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %123 = sitofp i16 %122 to float
  call void @UI_view2d_multi_grid_draw(ptr noundef nonnull %7, i32 noundef %121, float noundef %123, i32 noundef 5, i32 noundef 2) #9
  %124 = getelementptr inbounds %struct.bNodeTreePath, ptr %103, i64 0, i32 3
  %125 = load i32, ptr %124, align 8
  call void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef %1, ptr noundef %6, i32 %125) #9
  %126 = load i32, ptr %124, align 8
  call fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %105, i32 %126)
  br label %127

127:                                              ; preds = %107, %102
  call void @glEnable(i32 noundef 3042) #9
  call void @glEnable(i32 noundef 2848) #9
  %128 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 27
  %129 = load ptr, ptr %128, align 8, !tbaa !87
  %130 = icmp eq ptr %129, null
  br i1 %130, label %145, label %134

131:                                              ; preds = %139, %134
  %132 = load ptr, ptr %135, align 8, !tbaa !87
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134, !llvm.loop !205

134:                                              ; preds = %127, %131
  %135 = phi ptr [ %132, %131 ], [ %129, %127 ]
  %136 = getelementptr inbounds %struct.bNodeLinkDrag, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !87
  %138 = icmp eq ptr %137, null
  br i1 %138, label %131, label %139

139:                                              ; preds = %134, %139
  %140 = phi ptr [ %143, %139 ], [ %137, %134 ]
  %141 = getelementptr inbounds %struct.LinkData, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !206
  call void @node_draw_link(ptr noundef nonnull %7, ptr noundef %6, ptr noundef %142) #9
  %143 = load ptr, ptr %140, align 8, !tbaa !87
  %144 = icmp eq ptr %143, null
  br i1 %144, label %131, label %139, !llvm.loop !208

145:                                              ; preds = %131, %127
  call void @glDisable(i32 noundef 2848) #9
  call void @glDisable(i32 noundef 3042) #9
  %146 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 9
  %147 = load i16, ptr %146, align 8, !tbaa !209
  %148 = and i16 %147, 4
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 1) #9
  br label %151

151:                                              ; preds = %150, %145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %156

152:                                              ; preds = %2
  %153 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %154 = sitofp i16 %153 to float
  tail call void @UI_view2d_multi_grid_draw(ptr noundef nonnull %7, i32 noundef 2, float noundef %154, i32 noundef 5, i32 noundef 2) #9
  %155 = load i32, ptr @NODE_INSTANCE_KEY_NONE, align 4
  tail call void @draw_nodespace_back_pix(ptr noundef %0, ptr noundef %1, ptr noundef %6, i32 %155) #9
  br label %156

156:                                              ; preds = %152, %151
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9
  call void @UI_view2d_view_restore(ptr noundef %0) #9
  %157 = load ptr, ptr %36, align 8, !tbaa !193
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 9
  %161 = load i16, ptr %160, align 8, !tbaa !209
  %162 = and i16 %161, 4
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  call void @ED_gpencil_draw_view2d(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %165

165:                                              ; preds = %159, %164, %156
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #9
  call void @ED_node_tree_path_get_fixedbuf(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 256) #9
  call void @UI_ThemeColor(i32 noundef 4) #9
  %166 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !34
  %167 = sitofp i16 %166 to float
  %168 = fmul float %167, 1.500000e+00
  call void @BLF_draw_default(float noundef %168, float noundef %168, float noundef 0.000000e+00, ptr noundef nonnull %3, i64 noundef 256) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #9
  %169 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext 10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #9
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %169) #9
  call void @UI_view2d_scrollers_free(ptr noundef %169) #9
  ret void
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #3

declare void @glClear(i32 noundef) local_unnamed_addr #3

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_view2d_center_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #1 {
  %5 = alloca [32 x i8], align 16
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %4 ]
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %11) #9
  %13 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %14 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %5, i16 noundef signext 0) #9
  %15 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 46
  store ptr %14, ptr %15, align 8, !tbaa !119
  call void @uiBlockSetHandleFunc(ptr noundef %14, ptr noundef nonnull @do_node_internal_buttons, ptr noundef nonnull %11) #9
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  call void @uiBlockSetFlag(ptr noundef %16, i32 noundef 8192) #9
  %17 = load ptr, ptr %11, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !210

19:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19, %31
  %24 = phi ptr [ %33, %31 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  %27 = getelementptr inbounds %struct.bNodeType, ptr %26, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  call void %28(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %24) #9
  br label %31

31:                                               ; preds = %30, %23
  %32 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !178

35:                                               ; preds = %31, %19
  call void @node_draw_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef %2, i32 %3)
  ret void
}

declare void @UI_view2d_multi_grid_draw(ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @draw_nodespace_back_pix(ptr noundef, ptr noundef, ptr noundef, i32) local_unnamed_addr #3

declare void @ED_gpencil_draw_view2d(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #3

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #3

declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

declare void @uiExplicitBoundsBlock(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @UI_GetStyle() local_unnamed_addr #3

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #3

declare void @uiBlockLayoutResolve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @glColor4fv(ptr noundef) local_unnamed_addr #3

declare void @glBegin(i32 noundef) local_unnamed_addr #3

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #3

declare void @glEnd() local_unnamed_addr #3

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #3

declare void @glLineWidth(float noundef) local_unnamed_addr #3

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glColor3fv(ptr noundef) local_unnamed_addr #3

declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @node_toggle_button_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @node_select_single(ptr noundef %0, ptr noundef %1) #9
  %4 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef %2, i16 noundef signext 0, ptr noundef null) #9
  ret void
}

declare void @UI_DrawTriIcon(float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @nodeLabel(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @node_select_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @node_draw_link_bezier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @nodeSynchronizeID(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UI_GetThemeColorShade3fv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @nodeIsRegistered(ptr noundef) local_unnamed_addr #3

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #3

declare ptr @BKE_node_instance_hash_lookup(ptr noundef, i32) local_unnamed_addr #3

declare zeroext i8 @BLI_rctf_is_empty(ptr noundef) local_unnamed_addr #3

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #3

declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_node_internal_buttons(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 12
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @ED_node_tag_update_id(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %5, %8, %12, %3
  ret void
}

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ED_node_tree_path_get_fixedbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!54 = !{!39, !39, i64 0}
!55 = !{!56, !41, i64 768}
!56 = !{!"Material", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !57, i64 224, !58, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !39, i64 372, !39, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !39, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !39, i64 588, !39, i64 590, !41, i64 592, !41, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !39, i64 876, !39, i64 878, !36, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !41, i64 920, !40, i64 928}
!57 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!58 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!59 = !{!60, !41, i64 512}
!60 = !{!"Lamp", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !36, i64 132, !39, i64 136, !39, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !39, i64 208, !39, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !39, i64 340, !37, i64 342, !41, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !41, i64 504, !41, i64 512}
!61 = !{!62, !41, i64 520}
!62 = !{!"World", !52, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !41, i64 336, !41, i64 344, !41, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !41, i64 512, !41, i64 520}
!63 = !{!64, !41, i64 248}
!64 = !{!"Scene", !52, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !65, i64 280, !72, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !73, i64 4400, !74, i64 4416, !77, i64 4600, !41, i64 4608, !78, i64 4616, !41, i64 4640, !79, i64 4648, !79, i64 4656, !67, i64 4664, !68, i64 4824, !80, i64 4888, !41, i64 4952}
!65 = !{!"RenderData", !66, i64 0, !41, i64 248, !41, i64 256, !69, i64 264, !70, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !48, i64 544, !48, i64 560, !49, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !71, i64 2616, !36, i64 3976, !36, i64 3980}
!66 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !67, i64 24, !68, i64 184}
!67 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!68 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!69 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!70 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!71 = !{!"BakeData", !66, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!72 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!73 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!74 = !{!"GameData", !73, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !75, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !76, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!75 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!76 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!77 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!78 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!79 = !{!"long", !37, i64 0}
!80 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!81 = !{!82, !41, i64 336}
!82 = !{!"Tex", !52, i64 0, !41, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !36, i64 252, !36, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !83, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !37, i64 408, !37, i64 409}
!83 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!84 = !{!85, !41, i64 392}
!85 = !{!"FreestyleLineStyle", !52, i64 0, !41, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !36, i64 148, !42, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !36, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !36, i64 208, !36, i64 212, !42, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !36, i64 244, !37, i64 248, !41, i64 392, !40, i64 400, !40, i64 416, !40, i64 432, !40, i64 448}
!86 = !{!51, !36, i64 256}
!87 = !{!41, !41, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!51, !41, i64 224}
!92 = !{!93, !41, i64 0}
!93 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !40, i64 200, !40, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !40, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !42, i64 380, !42, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !48, i64 400, !48, i64 416, !48, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!94 = distinct !{!94, !89, !90}
!95 = !{!93, !36, i64 168}
!96 = !{!93, !41, i64 232}
!97 = distinct !{!97, !89, !90}
!98 = distinct !{!98, !89, !90}
!99 = distinct !{!99, !89, !90}
!100 = distinct !{!100, !89, !90}
!101 = distinct !{!101, !89, !90}
!102 = distinct !{!102, !89, !90}
!103 = !{!35, !42, i64 10908}
!104 = !{!35, !36, i64 8524}
!105 = !{!42, !42, i64 0}
!106 = distinct !{!106, !89, !90}
!107 = distinct !{!107, !89, !90}
!108 = !{!93, !42, i64 400}
!109 = !{!93, !42, i64 296}
!110 = !{!93, !42, i64 404}
!111 = !{!93, !42, i64 412}
!112 = !{!93, !42, i64 408}
!113 = !{!114, !42, i64 248}
!114 = !{!"bNodeSocket", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 96, !41, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !41, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !41, i64 256, !39, i64 264, !39, i64 266, !36, i64 268, !41, i64 272, !36, i64 280, !36, i64 284, !41, i64 288, !41, i64 296, !115, i64 304}
!115 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !41, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!116 = !{!114, !42, i64 252}
!117 = distinct !{!117, !89, !90}
!118 = distinct !{!118, !89, !90}
!119 = !{!93, !41, i64 456}
!120 = !{!93, !41, i64 216}
!121 = !{!93, !42, i64 288}
!122 = !{!114, !41, i64 176}
!123 = !{!124, !41, i64 64}
!124 = !{!"bNodeSocketType", !37, i64 0, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !125, i64 128, !125, i64 160, !36, i64 192, !36, i64 196}
!125 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!126 = !{!36, !36, i64 0}
!127 = !{!114, !41, i64 0}
!128 = distinct !{!128, !89, !90}
!129 = !{!93, !42, i64 432}
!130 = !{!93, !42, i64 436}
!131 = !{!93, !39, i64 448}
!132 = !{!93, !39, i64 450}
!133 = !{!93, !42, i64 444}
!134 = !{!93, !42, i64 440}
!135 = !{!93, !41, i64 32}
!136 = !{!137, !41, i64 544}
!137 = !{!"bNodeType", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !36, i64 84, !37, i64 88, !37, i64 152, !36, i64 408, !42, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !41, i64 448, !41, i64 456, !37, i64 464, !41, i64 528, !41, i64 536, !41, i64 544, !41, i64 552, !41, i64 560, !41, i64 568, !41, i64 576, !41, i64 584, !41, i64 592, !41, i64 600, !41, i64 608, !41, i64 616, !41, i64 624, !41, i64 632, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !41, i64 696, !41, i64 704, !41, i64 712, !125, i64 720}
!138 = !{!93, !42, i64 416}
!139 = !{!93, !42, i64 420}
!140 = !{!93, !42, i64 424}
!141 = !{!93, !42, i64 428}
!142 = distinct !{!142, !89, !90}
!143 = !{!93, !41, i64 200}
!144 = !{!137, !39, i64 436}
!145 = !{!124, !41, i64 72}
!146 = distinct !{!146, !89, !90}
!147 = distinct !{!147, !89, !90}
!148 = !{!46, !42, i64 236}
!149 = !{!48, !42, i64 0}
!150 = !{!48, !42, i64 8}
!151 = !{!48, !42, i64 4}
!152 = !{!48, !42, i64 12}
!153 = !{!46, !41, i64 288}
!154 = distinct !{!154, !89, !90}
!155 = !{!137, !41, i64 576}
!156 = !{i32 93, i32 110}
!157 = distinct !{!157, !89, !90}
!158 = !{!114, !39, i64 170}
!159 = distinct !{!159, !89, !90}
!160 = distinct !{!160, !89, !90}
!161 = !{!162, !41, i64 16}
!162 = !{!"PointerRNA", !163, i64 0, !41, i64 8, !41, i64 16}
!163 = !{!"", !41, i64 0}
!164 = !{!137, !39, i64 438}
!165 = !{!93, !39, i64 172}
!166 = distinct !{!166, !89, !90}
!167 = distinct !{!167, !89, !90}
!168 = !{!169, !39, i64 16}
!169 = !{!"bNodePreview", !170, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20}
!170 = !{!"bNodeInstanceHashEntry", !53, i64 0, !39, i64 4, !39, i64 6}
!171 = !{!169, !39, i64 18}
!172 = !{!169, !41, i64 8}
!173 = distinct !{!173, !89, !90}
!174 = distinct !{!174, !89, !90}
!175 = distinct !{!175, !89, !90}
!176 = distinct !{!176, !89, !90}
!177 = !{!137, !41, i64 536}
!178 = distinct !{!178, !89, !90}
!179 = !{!93, !39, i64 186}
!180 = !{!137, !41, i64 528}
!181 = distinct !{!181, !89, !90}
!182 = distinct !{!182, !89, !90}
!183 = distinct !{!183, !89, !90}
!184 = !{!185, !41, i64 136}
!185 = !{!"wmWindow", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !39, i64 132, !39, i64 134, !41, i64 136, !41, i64 144, !41, i64 152, !36, i64 160, !36, i64 164, !41, i64 168, !40, i64 176, !40, i64 192, !40, i64 208, !40, i64 224, !40, i64 240}
!186 = !{!187, !36, i64 20}
!187 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !188, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!188 = !{!"double", !37, i64 0}
!189 = !{!190, !36, i64 176}
!190 = !{!"ARegion", !41, i64 0, !41, i64 8, !47, i64 16, !49, i64 176, !49, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!191 = !{!187, !36, i64 24}
!192 = !{!190, !36, i64 184}
!193 = !{!46, !41, i64 272}
!194 = !{!195, !41, i64 8}
!195 = !{!"bNodeTreePath", !41, i64 0, !41, i64 8, !41, i64 16, !53, i64 24, !36, i64 28, !37, i64 32, !37, i64 40}
!196 = distinct !{!196, !89, !90}
!197 = !{!195, !41, i64 16}
!198 = !{!190, !39, i64 208}
!199 = !{i64 0, i64 4, !105, i64 4, i64 4, !105, i64 8, i64 4, !105, i64 12, i64 4, !105}
!200 = !{i64 0, i64 4, !105, i64 4, i64 4, !105, i64 8, i64 4, !105}
!201 = !{i64 0, i64 4, !105, i64 4, i64 4, !105}
!202 = !{i64 0, i64 4, !105}
!203 = !{!195, !41, i64 0}
!204 = distinct !{!204, !89, !90}
!205 = distinct !{!205, !89, !90}
!206 = !{!207, !41, i64 16}
!207 = !{!"LinkData", !41, i64 0, !41, i64 8, !41, i64 16}
!208 = distinct !{!208, !89, !90}
!209 = !{!46, !39, i64 232}
!210 = distinct !{!210, !89, !90}
!211 = !{!46, !41, i64 216}
