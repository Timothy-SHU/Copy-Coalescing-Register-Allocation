; ModuleID = 'blender/source/blender/editors/space_node/space_node.c'
source_filename = "blender/source/blender/editors/space_node/space_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeInstanceKey = type { i32 }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bNodeTreePath = type { ptr, ptr, ptr, %struct.bNodeInstanceKey, i32, [2 x float], [64 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
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
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"node tree path\00", align 1
@NODE_INSTANCE_KEY_BASE = external local_unnamed_addr constant %struct.bNodeInstanceKey, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"buttons for node\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"node tools\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"selected_nodes\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"active_node\00", align 1
@node_context_dir = dso_local global [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"spacetype node\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"spacetype node region\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"spacetype view3d tools region\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"initnode\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"header for node\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"main area for node\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@RNA_Node = external global %struct.StructRNA, align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"node_previews\00", align 1
@RNA_NodeInstanceHash = external global %struct.StructRNA, align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Node Editor\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"NODE_OT_add_file\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"NODE_OT_add_mask\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Node Generic\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Node\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tree_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %11(ptr noundef nonnull %9) #15
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %8, !llvm.loop !50

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %15 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %18 = tail call ptr %17(i64 noundef 104, ptr noundef nonnull @.str) #15
  %19 = getelementptr inbounds %struct.bNodeTreePath, ptr %18, i64 0, i32 2
  store ptr %1, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.bNodeTreePath, ptr %18, i64 0, i32 3
  %21 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !54
  store i32 %21, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.bNodeTreePath, ptr %18, i64 0, i32 5
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !55
  store float %24, ptr %22, align 4, !tbaa !55
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct.bNodeTreePath, ptr %18, i64 0, i32 5, i64 1
  store float %26, ptr %27, align 4, !tbaa !55
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.bNodeTreePath, ptr %18, i64 0, i32 6
  %31 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %32 = tail call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %31, i64 noundef 64) #15
  br label %33

33:                                               ; preds = %29, %16
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %18) #15
  tail call void @id_us_ensure_real(ptr noundef nonnull %1) #15
  br label %34

34:                                               ; preds = %33, %13
  %35 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %35, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  store ptr %1, ptr %36, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 7
  store ptr %2, ptr %37, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 8
  store ptr %3, ptr %38, align 8, !tbaa !59
  %39 = load ptr, ptr %14, align 8, !tbaa !60
  %40 = icmp ne ptr %1, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 25
  %45 = getelementptr inbounds %struct.bNodeTreePath, ptr %39, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !54
  store i32 %46, ptr %44, align 8, !tbaa !54
  br label %47

47:                                               ; preds = %34, %43
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_ensure_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_node_set_active_viewer_key(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 25
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %3, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !54
  store i32 %12, ptr %10, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tree_push(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !53
  %9 = icmp eq ptr %2, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %7, null
  %12 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 3
  br i1 %11, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 3
  %15 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = load i32, ptr %14, align 8
  %18 = tail call i32 @BKE_node_instance_key(i32 %17, ptr noundef %16, ptr noundef nonnull %2) #15
  br label %21

19:                                               ; preds = %10
  %20 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !54
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %20, %19 ], [ %18, %13 ]
  store i32 %22, ptr %12, align 8
  %23 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 6
  %24 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %24, i64 noundef 64) #15
  br label %29

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 3
  %28 = load i32, ptr @NODE_INSTANCE_KEY_BASE, align 4, !tbaa !54
  store i32 %28, ptr %27, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %31 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 5
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6
  %33 = load float, ptr %32, align 4, !tbaa !55
  store float %33, ptr %31, align 4, !tbaa !55
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 6, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !55
  %36 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 5, i64 1
  store float %35, ptr %36, align 4, !tbaa !55
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %5) #15
  tail call void @id_us_ensure_real(ptr noundef %1) #15
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %37, align 8, !tbaa !56
  %38 = load ptr, ptr %6, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = icmp ne ptr %40, null
  %42 = icmp ne ptr %38, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %40, i64 0, i32 25
  %46 = getelementptr inbounds %struct.bNodeTreePath, ptr %38, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !54
  store i32 %47, ptr %45, align 8, !tbaa !54
  br label %48

48:                                               ; preds = %29, %44
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #15
  ret void
}

declare i32 @BKE_node_instance_key(i32, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tree_pop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  tail call void @BLI_remlink(ptr noundef nonnull %2, ptr noundef %4) #15
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef %4) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.bNodeTreePath, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  store ptr %11, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %9, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 25
  %20 = getelementptr inbounds %struct.bNodeTreePath, ptr %9, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !54
  store i32 %21, ptr %19, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %7, %18
  tail call void @WM_main_add_notifier(i32 noundef 67436544, ptr noundef null) #15
  br label %23

23:                                               ; preds = %1, %22
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_node_tree_depth(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #15
  ret i32 %3
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_node_tree_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %16, %13 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  br label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 1
  %15 = add nuw nsw i32 %8, 1
  %16 = load ptr, ptr %14, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !61

18:                                               ; preds = %13, %2, %10
  %19 = phi ptr [ %12, %10 ], [ null, %2 ], [ null, %13 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_node_tree_path_length(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %17, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %1 ]
  %8 = phi i32 [ %15, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.bNodeTreePath, ptr %6, i64 0, i32 6
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %11 = trunc i64 %10 to i32
  %12 = icmp ne i32 %7, 0
  %13 = zext i1 %12 to i32
  %14 = add i32 %8, %13
  %15 = add i32 %14, %11
  %16 = add nuw nsw i32 %7, 1
  %17 = load ptr, ptr %6, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !62

19:                                               ; preds = %5, %1
  %20 = phi i32 [ 0, %1 ], [ %15, %5 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @ED_node_tree_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #7 {
  store i8 0, ptr %1, align 1, !tbaa !63
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %19
  %7 = phi ptr [ %23, %19 ], [ %4, %2 ]
  %8 = phi i32 [ %22, %19 ], [ 0, %2 ]
  %9 = phi ptr [ %21, %19 ], [ %1, %2 ]
  %10 = icmp eq i32 %8, 0
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %7, i64 0, i32 6
  br i1 %10, label %12, label %15

12:                                               ; preds = %6
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %11) #15
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %11) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16
  %18 = add i64 %17, 1
  br label %19

19:                                               ; preds = %12, %15
  %20 = phi i64 [ %14, %12 ], [ %18, %15 ]
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  %22 = add nuw nsw i32 %8, 1
  %23 = load ptr, ptr %7, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !64

25:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_tree_path_get_fixedbuf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  store i8 0, ptr %1, align 1, !tbaa !63
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3, %30
  %8 = phi ptr [ %34, %30 ], [ %5, %3 ]
  %9 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %10 = phi i32 [ %28, %30 ], [ %2, %3 ]
  %11 = phi ptr [ %32, %30 ], [ %1, %3 ]
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bNodeTreePath, ptr %8, i64 0, i32 6
  %15 = sext i32 %10 to i64
  %16 = tail call ptr @BLI_strncpy(ptr noundef %11, ptr noundef nonnull %14, i64 noundef %15) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #16
  %18 = trunc i64 %17 to i32
  br label %26

19:                                               ; preds = %7
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds %struct.bNodeTreePath, ptr %8, i64 0, i32 6
  %22 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %11, i64 noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull %21) #15
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #16
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 1
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi i32 [ %18, %13 ], [ %25, %19 ]
  %28 = sub nsw i32 %10, %27
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = sext i32 %27 to i64
  %32 = getelementptr inbounds i8, ptr %11, i64 %31
  %33 = add nuw nsw i32 %9, 1
  %34 = load ptr, ptr %8, align 8, !tbaa !49
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !llvm.loop !65

36:                                               ; preds = %30, %26, %3
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @snode_group_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 5
  %13 = getelementptr inbounds %struct.bNodeTreePath, ptr %9, i64 0, i32 5
  %14 = load float, ptr %12, align 4, !tbaa !55
  %15 = load float, ptr %13, align 4, !tbaa !55
  %16 = fsub float %14, %15
  %17 = getelementptr inbounds %struct.bNodeTreePath, ptr %5, i64 0, i32 5, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.bNodeTreePath, ptr %9, i64 0, i32 5, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fsub float %18, %20
  store float %16, ptr %1, align 4, !tbaa !55
  store float %21, ptr %2, align 4, !tbaa !55
  br label %23

22:                                               ; preds = %7, %3
  store float 0.000000e+00, ptr %2, align 4, !tbaa !55
  store float 0.000000e+00, ptr %1, align 4, !tbaa !55
  br label %23

23:                                               ; preds = %22, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @node_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.2) #15
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !67
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !70
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @node_has_tools_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 5) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.3) #15
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 5, ptr %11, align 2, !tbaa !67
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !70
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_node() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.6) #15
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 16, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #15
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @node_new, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @node_free, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @node_init, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @node_duplicate, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @node_operatortypes, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @node_keymap, ptr %10, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @node_area_listener, ptr %11, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @node_area_refresh, ptr %12, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @node_context, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @node_dropboxes, ptr %14, align 8, !tbaa !82
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.8) #15
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @node_main_area_init, ptr %18, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @node_main_area_draw, ptr %19, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @node_region_listener, ptr %20, align 8, !tbaa !87
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 11
  store ptr @node_cursor, ptr %21, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 23
  store i16 1, ptr %22, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 51, ptr %23, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %16) #15
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %26 = tail call ptr %25(i64 noundef 184, ptr noundef nonnull @.str.8) #15
  %27 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 19
  store i32 26, ptr %28, align 4, !tbaa !91
  %29 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 20
  store i32 83, ptr %29, align 8, !tbaa !90
  %30 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 6
  store ptr @node_region_listener, ptr %30, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 3
  store ptr @node_header_area_init, ptr %31, align 8, !tbaa !85
  %32 = getelementptr inbounds %struct.ARegionType, ptr %26, i64 0, i32 5
  store ptr @node_header_area_draw, ptr %32, align 8, !tbaa !86
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %26) #15
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %34 = tail call ptr %33(i64 noundef 184, ptr noundef nonnull @.str.8) #15
  %35 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 2
  store i32 4, ptr %35, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 18
  store i32 180, ptr %36, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 20
  store i32 17, ptr %37, align 8, !tbaa !90
  %38 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 6
  store ptr @node_region_listener, ptr %38, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 3
  store ptr @node_buttons_area_init, ptr %39, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 5
  store ptr @node_buttons_area_draw, ptr %40, align 8, !tbaa !86
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %34) #15
  tail call void @node_buttons_register(ptr noundef %34) #15
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %42 = tail call ptr %41(i64 noundef 184, ptr noundef nonnull @.str.9) #15
  %43 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 2
  store i32 5, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 18
  store i32 160, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 19
  store i32 50, ptr %45, align 4, !tbaa !91
  %46 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 20
  store i32 17, ptr %46, align 8, !tbaa !90
  %47 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 6
  store ptr @node_region_listener, ptr %47, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 3
  store ptr @node_toolbar_area_init, ptr %48, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 5
  store ptr @node_toolbar_area_draw, ptr %49, align 8, !tbaa !86
  tail call void @BLI_addhead(ptr noundef nonnull %24, ptr noundef %42) #15
  tail call void @node_toolbar_register(ptr noundef %42) #15
  tail call void @BKE_spacetype_register(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @node_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %3 = tail call ptr %2(i64 noundef 400, ptr noundef nonnull @.str.10) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 3
  store i32 16, ptr %4, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 9
  store i16 12, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 15
  store float 1.000000e+00, ptr %6, align 4, !tbaa !95
  %7 = tail call ptr @ntreeTypeGetIterator() #15
  %8 = getelementptr inbounds %struct.GHashIterator, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 20
  %15 = getelementptr inbounds %struct.bNodeTreeType, ptr %13, i64 0, i32 1
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %15) #15
  br label %17

17:                                               ; preds = %11, %1
  tail call void @BLI_ghashIterator_free(ptr noundef %7) #15
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %19 = tail call ptr %18(i64 noundef 384, ptr noundef nonnull @.str.11) #15
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %19) #15
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  store i16 1, ptr %21, align 2, !tbaa !67
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  store i16 2, ptr %22, align 8, !tbaa !69
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %24 = tail call ptr %23(i64 noundef 384, ptr noundef nonnull @.str.2) #15
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  store i16 4, ptr %25, align 2, !tbaa !67
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 9
  store i16 4, ptr %26, align 8, !tbaa !69
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %28 = tail call ptr %27(i64 noundef 384, ptr noundef nonnull @.str.3) #15
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %28) #15
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 8
  store i16 5, ptr %29, align 2, !tbaa !67
  %30 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 9
  store i16 3, ptr %30, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 10
  store i16 1, ptr %31, align 2, !tbaa !70
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %33 = tail call ptr %32(i64 noundef 384, ptr noundef nonnull @.str.12) #15
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef %33) #15
  %34 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 8
  store i16 0, ptr %34, align 2, !tbaa !67
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !100
  %36 = sitofp i16 %35 to float
  %37 = fmul float %36, 0xC0299999A0000000
  %38 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2
  store float %37, ptr %38, align 8, !tbaa !104
  %39 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 0, i32 2
  store float %37, ptr %39, align 8, !tbaa !105
  %40 = fmul float %36, 0x4043333340000000
  %41 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 0, i32 1
  store float %40, ptr %41, align 4, !tbaa !106
  %42 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 0, i32 3
  store float %40, ptr %42, align 4, !tbaa !107
  %43 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !108
  %44 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 5
  store float 1.000000e+00, ptr %44, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 5, i64 1
  store float 1.000000e+00, ptr %45, align 4, !tbaa !55
  %46 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 6
  store float 3.200000e+04, ptr %46, align 8, !tbaa !55
  %47 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 6, i64 1
  store float 3.200000e+04, ptr %47, align 4, !tbaa !55
  %48 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 7
  store float 0x3FB70A3D80000000, ptr %48, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 8
  store float 0x40027AE140000000, ptr %49, align 4, !tbaa !110
  %50 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 9
  store i16 10, ptr %50, align 8, !tbaa !111
  %51 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 12
  store i16 3, ptr %51, align 2, !tbaa !112
  %52 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 2, i32 11
  store i16 0, ptr %52, align 4, !tbaa !113
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @node_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef nonnull %6) #15
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5, !llvm.loop !114

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @node_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #11 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @node_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !49
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 17
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret ptr %3
}

declare void @node_operatortypes() #2

declare void @node_keymap(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @node_area_listener(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %7) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 24
  %12 = load i16, ptr %11, align 2, !tbaa !120
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i16 [ %12, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !121
  %17 = add i32 %16, -16777216
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 8)
  switch i32 %18, label %164 [
    i32 3, label %19
    i32 5, label %49
    i32 6, label %70
    i32 12, label %81
    i32 4, label %87
    i32 14, label %95
    i32 16, label %100
    i32 2, label %105
    i32 20, label %110
    i32 9, label %123
    i32 19, label %138
    i32 22, label %153
    i32 0, label %159
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !123
  switch i32 %21, label %164 [
    i32 327680, label %22
    i32 196608, label %36
    i32 851968, label %37
    i32 1179648, label %38
    i32 6619136, label %48
  ]

22:                                               ; preds = %19
  %23 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #15
  %24 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 17, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = icmp ne ptr %23, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %31 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 5
  %32 = load float, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 5, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !55
  tail call void @UI_view2d_center_set(ptr noundef nonnull %30, float noundef %32, float noundef %34) #15
  br label %35

35:                                               ; preds = %29, %22
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

36:                                               ; preds = %19
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

37:                                               ; preds = %19
  tail call void @ED_area_tag_redraw(ptr noundef %1) #15
  br label %164

38:                                               ; preds = %19
  %39 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %164, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %43 = load i16, ptr %42, align 8, !tbaa !94
  %44 = and i16 %43, 32
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %164, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 25
  store i16 1, ptr %47, align 4, !tbaa !124
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

48:                                               ; preds = %19
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

49:                                               ; preds = %13
  %50 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %164, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !123
  switch i32 %54, label %58 [
    i32 1966080, label %55
    i32 2031616, label %56
    i32 2097152, label %57
  ]

55:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

56:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

57:                                               ; preds = %52
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !125
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %164

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = icmp eq ptr %64, null
  br i1 %65, label %164, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !126
  %69 = tail call zeroext i8 @nodeSetActiveID(ptr noundef nonnull %64, i16 noundef signext 16717, ptr noundef %68) #15
  br label %164

70:                                               ; preds = %13
  %71 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = tail call zeroext i8 @ED_node_is_texture(ptr noundef %5) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %164, label %76

76:                                               ; preds = %73, %70
  %77 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !123
  %79 = icmp eq i32 %78, 327680
  br i1 %79, label %80, label %164

80:                                               ; preds = %76
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

81:                                               ; preds = %13
  %82 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #15
  %83 = icmp ne i8 %82, 0
  %84 = icmp eq i16 %14, 1
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %164

86:                                               ; preds = %81
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

87:                                               ; preds = %13
  %88 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #15
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %164, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !123
  %93 = icmp eq i32 %92, 1245184
  br i1 %93, label %94, label %164

94:                                               ; preds = %90
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

95:                                               ; preds = %13
  %96 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !123
  switch i32 %97, label %164 [
    i32 458752, label %98
    i32 1114112, label %99
  ]

98:                                               ; preds = %95
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

99:                                               ; preds = %95
  tail call void @ED_area_tag_redraw(ptr noundef %1) #15
  br label %164

100:                                              ; preds = %13
  %101 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %102 = load i32, ptr %101, align 8, !tbaa !125
  switch i32 %102, label %164 [
    i32 1, label %103
    i32 6, label %104
  ]

103:                                              ; preds = %100
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

104:                                              ; preds = %100
  tail call void @ED_area_tag_redraw(ptr noundef %1) #15
  br label %164

105:                                              ; preds = %13
  %106 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !123
  %108 = icmp eq i32 %107, 262144
  br i1 %108, label %109, label %164

109:                                              ; preds = %105
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

110:                                              ; preds = %13
  %111 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %112 = load i32, ptr %111, align 8, !tbaa !125
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %164

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %116 = load ptr, ptr %115, align 8, !tbaa !57
  %117 = icmp eq ptr %116, null
  br i1 %117, label %164, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bNodeTree, ptr %116, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !127
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

123:                                              ; preds = %13
  %124 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %125 = load i32, ptr %124, align 8, !tbaa !125
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #15
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %164, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %132 = load ptr, ptr %131, align 8, !tbaa !57
  %133 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !126
  %135 = tail call zeroext i8 @nodeUpdateID(ptr noundef %132, ptr noundef %134) #15
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %130
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

138:                                              ; preds = %13
  %139 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %140 = load i32, ptr %139, align 8, !tbaa !125
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #15
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %147 = load ptr, ptr %146, align 8, !tbaa !57
  %148 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %149 = load ptr, ptr %148, align 8, !tbaa !126
  %150 = tail call zeroext i8 @nodeUpdateID(ptr noundef %147, ptr noundef %149) #15
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %145
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

153:                                              ; preds = %13
  %154 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %5) #15
  %155 = icmp ne i8 %154, 0
  %156 = icmp eq i16 %14, 2
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

159:                                              ; preds = %13
  %160 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !123
  %162 = icmp eq i32 %161, 393216
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call void @ED_area_tag_refresh(ptr noundef %1) #15
  br label %164

164:                                              ; preds = %100, %95, %159, %163, %153, %158, %138, %145, %152, %142, %123, %130, %137, %127, %110, %122, %118, %114, %109, %105, %103, %104, %98, %99, %87, %94, %90, %81, %86, %73, %80, %76, %49, %56, %58, %62, %66, %57, %55, %35, %36, %37, %48, %19, %41, %46, %38, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_area_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  tail call void @snode_set_context(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !127
  switch i32 %10, label %51 [
    i32 0, label %11
    i32 1, label %31
    i32 2, label %44
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !129
  switch i16 %15, label %51 [
    i16 16717, label %16
    i16 16716, label %21
    i16 20311, label %26
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 77
  %18 = load i8, ptr %17, align 1, !tbaa !130
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #15
  br label %51

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Lamp, ptr %13, i64 0, i32 71
  %23 = load i16, ptr %22, align 2, !tbaa !134
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #15
  br label %51

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.World, ptr %13, i64 0, i32 72
  %28 = load i16, ptr %27, align 2, !tbaa !136
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #15
  br label %51

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 16
  %35 = load i8, ptr %34, align 2, !tbaa !138
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 25
  %39 = load i16, ptr %38, align 4, !tbaa !124
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  store i16 0, ptr %38, align 4, !tbaa !124
  %42 = tail call i32 @node_render_changed_exec(ptr noundef %0, ptr noundef null) #15
  br label %51

43:                                               ; preds = %37
  tail call void @ED_node_composite_job(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %33) #15
  br label %51

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.Tex, ptr %46, i64 0, i32 61
  %48 = load i8, ptr %47, align 8, !tbaa !156
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @ED_preview_shader_job(ptr noundef %0, ptr noundef %1, ptr noundef %46, ptr noundef null, ptr noundef null, i32 noundef 100, i32 noundef 100, i32 noundef 2) #15
  br label %51

51:                                               ; preds = %44, %50, %8, %31, %43, %41, %26, %30, %11, %21, %25, %16, %20, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @node_context_dir) #15
  br label %54

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15, %27
  %20 = phi ptr [ %29, %27 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !159
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void @CTX_data_list_add(ptr noundef %2, ptr noundef %26, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %20) #15
  br label %27

27:                                               ; preds = %19, %25
  %28 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !161

31:                                               ; preds = %27, %15, %11
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 1) #15
  br label %54

32:                                               ; preds = %8
  %33 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @nodeGetActive(ptr noundef nonnull %37) #15
  %41 = load ptr, ptr %36, align 8, !tbaa !56
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %41, ptr noundef nonnull @RNA_Node, ptr noundef %40) #15
  br label %42

42:                                               ; preds = %39, %35
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 0) #15
  br label %54

43:                                               ; preds = %32
  %44 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 24
  %52 = load ptr, ptr %51, align 8, !tbaa !162
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %48, ptr noundef nonnull @RNA_NodeInstanceHash, ptr noundef %52) #15
  br label %53

53:                                               ; preds = %50, %46
  tail call void @CTX_data_type_set(ptr noundef %2, i16 noundef signext 0) #15
  br label %54

54:                                               ; preds = %43, %53, %42, %31, %7
  %55 = phi i32 [ 1, %7 ], [ 1, %31 ], [ 1, %42 ], [ 1, %53 ], [ 0, %43 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @node_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #15
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @node_ima_drop_poll, ptr noundef nonnull @node_id_path_drop_copy) #15
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @node_mask_drop_poll, ptr noundef nonnull @node_id_drop_copy) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !163
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !164
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #15
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !165
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #15
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %12) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !165
  %16 = tail call ptr @WM_keymap_find(ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #15
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #15
  %20 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.14, i32 noundef 16, i32 noundef 0) #15
  %21 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %13, ptr noundef %20) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @drawnodespace(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = add i32 %6, -50331648
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 8)
  switch i32 %8, label %29 [
    i32 12, label %9
    i32 0, label %13
    i32 1, label %28
    i32 3, label %28
    i32 4, label %28
    i32 10, label %28
    i32 14, label %28
    i32 20, label %28
    i32 2, label %16
    i32 15, label %20
    i32 19, label %24
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !123
  %12 = icmp eq i32 %11, 458752
  br i1 %12, label %28, label %29

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !123
  switch i32 %15, label %29 [
    i32 196608, label %28
    i32 262144, label %28
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = icmp eq i32 %18, 1245184
  br i1 %19, label %28, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !125
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %28, label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !125
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %16, %4, %4, %4, %4, %4, %4, %13, %13, %9
  tail call void @ED_region_tag_redraw(ptr noundef %2) #15
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %13, %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_cursor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !170
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !173
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !174
  %17 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !175
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %14, float noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #15
  tail call void @node_set_cursor(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %21) #15
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !176
  %24 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !177
  %25 = sitofp i32 %24 to float
  %26 = fmul float %23, %25
  %27 = fdiv float %26, 7.200000e+01
  %28 = load float, ptr %21, align 8, !tbaa !55
  %29 = fdiv float %28, %27
  store float %29, ptr %21, align 8, !tbaa !55
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !176
  %31 = fmul float %30, %25
  %32 = fdiv float %31, 7.200000e+01
  %33 = load float, ptr %22, align 4, !tbaa !55
  %34 = fdiv float %33, %32
  store float %34, ptr %22, align 4, !tbaa !55
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @snode_set_context(ptr noundef %0) #15
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #15
  ret void
}

declare void @node_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @node_toolbar_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 16, i32 noundef 0) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_toolbar_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #15
  ret void
}

declare void @node_toolbar_register(ptr noundef) local_unnamed_addr #2

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

declare ptr @ntreeTypeGetIterator() local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_center_set(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_node_is_compositor(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_node_is_shader(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @nodeSetActiveID(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_node_is_texture(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @snode_set_context(ptr noundef) local_unnamed_addr #2

declare void @ED_preview_shader_job(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @node_render_changed_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_composite_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_list_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_type_set(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @node_ima_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #12 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !178
  switch i32 %5, label %19 [
    i32 0, label %6
    i32 2, label %12
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !129
  %11 = icmp eq i16 %10, 19785
  br i1 %11, label %20, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !181
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %14, 696
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i32
  br label %20

19:                                               ; preds = %6, %3
  br label %20

20:                                               ; preds = %12, %6, %19
  %21 = phi i32 [ 1, %6 ], [ 0, %19 ], [ %18, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @node_id_path_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull %9) #15
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !63
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  tail call void @RNA_string_set(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull %11) #15
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @node_mask_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #12 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !178
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !129
  %12 = icmp eq i16 %11, 21325
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %7, %13
  %15 = phi i32 [ 1, %7 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @node_id_drop_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %7) #15
  ret void
}

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drawnodespace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @node_set_cursor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 264}
!35 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !42, i64 56, !36, i64 216, !36, i64 224, !45, i64 232, !45, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !40, i64 360, !40, i64 364, !45, i64 368, !45, i64 370, !45, i64 372, !45, i64 374, !39, i64 376, !36, i64 392}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!43 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!"short", !37, i64 0}
!46 = !{!47, !36, i64 0}
!47 = !{!"bNodeTreePath", !36, i64 0, !36, i64 8, !36, i64 16, !48, i64 24, !40, i64 28, !37, i64 32, !37, i64 40}
!48 = !{!"bNodeInstanceKey", !40, i64 0}
!49 = !{!36, !36, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!47, !36, i64 16}
!54 = !{!40, !40, i64 0}
!55 = !{!41, !41, i64 0}
!56 = !{!35, !36, i64 288}
!57 = !{!35, !36, i64 280}
!58 = !{!35, !36, i64 216}
!59 = !{!35, !36, i64 224}
!60 = !{!35, !36, i64 272}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
!63 = !{!37, !37, i64 0}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = !{!47, !36, i64 8}
!67 = !{!68, !45, i64 214}
!68 = !{!"ARegion", !36, i64 0, !36, i64 8, !42, i64 16, !44, i64 176, !44, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !41, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!69 = !{!68, !45, i64 216}
!70 = !{!68, !45, i64 218}
!71 = !{!72, !40, i64 80}
!72 = !{!"SpaceType", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !39, i64 176, !39, i64 192, !40, i64 208}
!73 = !{!72, !36, i64 88}
!74 = !{!72, !36, i64 96}
!75 = !{!72, !36, i64 104}
!76 = !{!72, !36, i64 136}
!77 = !{!72, !36, i64 144}
!78 = !{!72, !36, i64 152}
!79 = !{!72, !36, i64 120}
!80 = !{!72, !36, i64 128}
!81 = !{!72, !36, i64 168}
!82 = !{!72, !36, i64 160}
!83 = !{!84, !40, i64 16}
!84 = !{!"ARegionType", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 120, !39, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!85 = !{!84, !36, i64 24}
!86 = !{!84, !36, i64 40}
!87 = !{!84, !36, i64 48}
!88 = !{!84, !36, i64 88}
!89 = !{!84, !45, i64 176}
!90 = !{!84, !40, i64 168}
!91 = !{!84, !40, i64 164}
!92 = !{!84, !40, i64 160}
!93 = !{!35, !40, i64 32}
!94 = !{!35, !45, i64 232}
!95 = !{!35, !41, i64 252}
!96 = !{!97, !36, i64 8}
!97 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!98 = !{!99, !36, i64 16}
!99 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!100 = !{!101, !45, i64 8948}
!101 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !41, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !102, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!103 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !45, i64 24, !37, i64 26}
!104 = !{!68, !41, i64 16}
!105 = !{!68, !41, i64 24}
!106 = !{!68, !41, i64 20}
!107 = !{!68, !41, i64 28}
!108 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55}
!109 = !{!68, !41, i64 112}
!110 = !{!68, !41, i64 116}
!111 = !{!68, !45, i64 120}
!112 = !{!68, !45, i64 126}
!113 = !{!68, !45, i64 124}
!114 = distinct !{!114, !51, !52}
!115 = !{!116, !36, i64 96}
!116 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !44, i64 56, !37, i64 72, !37, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!117 = !{!118, !36, i64 184}
!118 = !{!"bScreen", !119, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !36, i64 232, !36, i64 240}
!119 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!120 = !{!35, !45, i64 370}
!121 = !{!122, !40, i64 36}
!122 = !{!"wmNotifier", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !36, i64 56}
!123 = !{!122, !40, i64 40}
!124 = !{!35, !45, i64 372}
!125 = !{!122, !40, i64 48}
!126 = !{!122, !36, i64 56}
!127 = !{!128, !40, i64 256}
!128 = !{!"bNodeTree", !119, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !45, i64 276, !45, i64 278, !40, i64 280, !40, i64 284, !45, i64 288, !45, i64 290, !40, i64 292, !43, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !48, i64 352, !40, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!129 = !{!45, !45, i64 0}
!130 = !{!131, !37, i64 543}
!131 = !{!"Material", !119, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !132, i64 224, !133, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !45, i64 356, !45, i64 358, !45, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !45, i64 372, !45, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !45, i64 392, !45, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !45, i64 412, !45, i64 414, !45, i64 416, !45, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !45, i64 544, !45, i64 546, !45, i64 548, !37, i64 550, !37, i64 551, !45, i64 552, !45, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !45, i64 588, !45, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !45, i64 612, !45, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !45, i64 820, !45, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !45, i64 876, !45, i64 878, !40, i64 880, !45, i64 884, !45, i64 886, !37, i64 888, !45, i64 904, !45, i64 906, !45, i64 908, !45, i64 910, !45, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!132 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !45, i64 64, !45, i64 66, !45, i64 68, !45, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!133 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!134 = !{!135, !45, i64 498}
!135 = !{!"Lamp", !119, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !40, i64 132, !45, i64 136, !45, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !36, i64 200, !45, i64 208, !45, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !37, i64 248, !37, i64 249, !45, i64 250, !45, i64 252, !45, i64 254, !45, i64 256, !45, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !45, i64 276, !45, i64 278, !45, i64 280, !45, i64 282, !45, i64 284, !45, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !45, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !45, i64 496, !45, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!136 = !{!137, !45, i64 506}
!137 = !{!"World", !119, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !45, i64 132, !45, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !45, i64 264, !45, i64 266, !45, i64 268, !45, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !45, i64 288, !45, i64 290, !45, i64 292, !45, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !45, i64 324, !45, i64 326, !45, i64 328, !45, i64 330, !45, i64 332, !45, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !45, i64 504, !45, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!138 = !{!139, !37, i64 246}
!139 = !{!"Scene", !119, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !45, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !140, i64 280, !147, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !45, i64 4376, !45, i64 4378, !40, i64 4380, !39, i64 4384, !148, i64 4400, !149, i64 4416, !152, i64 4600, !36, i64 4608, !153, i64 4616, !36, i64 4640, !154, i64 4648, !154, i64 4656, !142, i64 4664, !143, i64 4824, !155, i64 4888, !36, i64 4952}
!140 = !{!"RenderData", !141, i64 0, !36, i64 248, !36, i64 256, !144, i64 264, !145, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !45, i64 432, !45, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !40, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !40, i64 484, !40, i64 488, !45, i64 492, !45, i64 494, !40, i64 496, !40, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !43, i64 544, !43, i64 560, !44, i64 576, !39, i64 592, !45, i64 608, !45, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !41, i64 660, !41, i64 664, !45, i64 668, !45, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !45, i64 1708, !45, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !45, i64 2524, !45, i64 2526, !41, i64 2528, !41, i64 2532, !45, i64 2536, !45, i64 2538, !41, i64 2540, !45, i64 2544, !45, i64 2546, !40, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !146, i64 2616, !40, i64 3976, !40, i64 3980}
!141 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !45, i64 8, !45, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !142, i64 24, !143, i64 184}
!142 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!143 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!144 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !45, i64 48, !45, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!145 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!146 = !{!"BakeData", !141, i64 0, !37, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!147 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !45, i64 20, !45, i64 22, !41, i64 24, !41, i64 28}
!148 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!149 = !{!"GameData", !148, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !37, i64 34, !150, i64 40, !45, i64 64, !45, i64 66, !41, i64 68, !151, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!150 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!151 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !45, i64 52, !45, i64 54}
!152 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !45, i64 6}
!153 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!154 = !{!"long", !37, i64 0}
!155 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!156 = !{!157, !37, i64 408}
!157 = !{!"Tex", !119, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !45, i64 260, !45, i64 262, !45, i64 264, !45, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !158, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!158 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !40, i64 36}
!159 = !{!160, !40, i64 168}
!160 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !45, i64 172, !45, i64 174, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !45, i64 184, !45, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !45, i64 376, !45, i64 378, !41, i64 380, !41, i64 384, !45, i64 388, !45, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !45, i64 448, !45, i64 450, !40, i64 452, !36, i64 456}
!161 = distinct !{!161, !51, !52}
!162 = !{!128, !36, i64 344}
!163 = !{!68, !45, i64 208}
!164 = !{!68, !45, i64 210}
!165 = !{!166, !36, i64 296}
!166 = !{!"wmWindowManager", !119, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !40, i64 152, !45, i64 156, !45, i64 158, !39, i64 160, !39, i64 176, !167, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!167 = !{!"ReportList", !39, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!168 = !{!169, !36, i64 136}
!169 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !40, i64 128, !45, i64 132, !45, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!170 = !{!171, !40, i64 20}
!171 = !{!"wmEvent", !36, i64 0, !36, i64 8, !45, i64 16, !45, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !45, i64 44, !45, i64 46, !40, i64 48, !40, i64 52, !172, i64 56, !40, i64 64, !40, i64 68, !45, i64 72, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !36, i64 88, !36, i64 96, !45, i64 104, !45, i64 106, !40, i64 108, !36, i64 112}
!172 = !{!"double", !37, i64 0}
!173 = !{!68, !40, i64 176}
!174 = !{!171, !40, i64 24}
!175 = !{!68, !40, i64 184}
!176 = !{!101, !41, i64 10908}
!177 = !{!101, !40, i64 8524}
!178 = !{!179, !40, i64 20}
!179 = !{!"wmDrag", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !37, i64 32, !172, i64 1056, !36, i64 1064, !41, i64 1072, !40, i64 1076, !40, i64 1080, !37, i64 1084, !40, i64 1284}
!180 = !{!179, !36, i64 24}
!181 = !{!179, !40, i64 16}
!182 = !{!183, !36, i64 48}
!183 = !{!"wmDropBox", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !45, i64 56}
